# QLX version 1.2
# www.qlx.io
# by Alec Sparks
# alecsparks.com
# provided under MIT License

tell application "QLab"
	tell front workspace
		
		set Ordered_Cues_List to my Sort_Cues(active cues as list)
		
		
		try
			set Cue_Name to (q name of (first item of Ordered_Cues_List)) as string
			
			set Console_Cue_List to q name of cue "QLXLIST"
			set Cue_Basename to (characters (offset of "QLX" in Cue_Name) thru -1 of Cue_Name) as string --trim off comments
			
			set Append to "#\" | nc -u -w 1 " & (q name of cue "QLXIP") & " " & (q name of cue "QLXPORT")
			set Prep to "echo \""
			set Complete_Script to ""
			
			
			--QLXSET
			if (length of Cue_Basename is greater than 7) and ((characters 1 thru 7 of Cue_Basename) as string) is "QLXSET " then
				
				set Parameters to ((characters 8 thru -1 of Cue_Basename) as string)
				set Sett to first item of (my splitString(Parameters, " "))
				set Val to second item of (my splitString(Parameters, " ")) as string
				
				if (Sett is "CueList") then
					set q name of cue "QLXLIST" to Val
				else if (Sett is "Port") then
					set q name of cue "QLXPORT" to Val
				else if (Sett is "IP") then
					set q name of cue "QLXIP" to Val
				else if (Sett is "Path") then
					set Val to ((characters 6 thru -1 of Parameters) as string)
					set q name of cue "QLXPATH" to Val
				end if
				
			else
				
				--No Cue Number supplied. Basic GO
				if (Cue_Basename is "QLXGO") then
					
					set Complete_Script to Prep & "Cue " & Console_Cue_List & Append
					
					--Go to Cue Number specfied
				else if ((characters 1 thru 6 of Cue_Basename) as string) is "QLXGO " then
					
					set Parameters to ((characters 7 thru -1 of Cue_Basename) as string)
					set Complete_Script to Prep & "Cue " & Console_Cue_List & " " & Parameters & Append
					
					--Command. Prepend '$ '
				else if ((characters 1 thru 5 of Cue_Basename) as string) is "QLXC " then
					
					set Parameters to ((characters 6 thru -1 of Cue_Basename) as string)
					set Complete_Script to Prep & "$ " & Parameters & Append
					
					--EOS Events
				else if ((characters 1 thru 4 of Cue_Basename) as string) is "QLX " then
					
					set Parameters to ((characters 5 thru -1 of Cue_Basename) as string)
					set Complete_Script to Prep & Parameters & Append
					
				end if
				
				do shell script Complete_Script & "&> /dev/null&"
				
				if (Cue_Name contains "DEBUG") then
					display dialog Complete_Script
				end if
				
			end if
			
		on error Error_Message number Error_Number
			set Error_Append to " Fix and click \"Compile Script\"" & Error_Number
			
			if (Error_Number is -1700) then
				error "Invalid Cue Name or Parameters." & Error_Append
			else
				error Error_Message & Error_Number
			end if
		end try
		
		
	end tell --Workspace
end tell --Qlab

on splitString(aString, delimiter)
	set retVal to {}
	set prevDelimiter to AppleScript's text item delimiters
	set AppleScript's text item delimiters to {delimiter}
	set retVal to every text item of aString
	set AppleScript's text item delimiters to prevDelimiter
	return retVal
end splitString


#Sort Cues by prewait, lowest to highest.
#Adapted from Simple Sort by http://www.macosxautomation.com/applescript/sbrt/sbrt-05.html

on Sort_Cues(Active_Cues_List)
	
	tell application "QLab"
		tell front workspace
			
			set index_list to {}
			set sorted_list to {}
			repeat (the number of items in Active_Cues_List) times #necessary to remove non-QLX cues from the new list, otherwise we could simply stop after one iteration
				set the low_item to ""
				set low_item_orig to ""
				repeat with i from 1 to (number of items in Active_Cues_List)
					if (i is not in the index_list) then
						set this_item_orig to item i of Active_Cues_List
						set this_item to (pre wait of item i) of Active_Cues_List as number
						if the low_item is "" then
							set the low_item to this_item
							set low_item_orig to this_item_orig
							set the low_item_index to i
						else if this_item comes before the low_item then
							set the low_item to this_item
							set low_item_orig to this_item_orig
							set the low_item_index to i
						end if
					end if
				end repeat
				if ((q type of low_item_orig as string) is "Script" and (q name of low_item_orig as string) contains "QLX") then
					set the end of sorted_list to the low_item_orig
				end if
				set the end of the index_list to the low_item_index
			end repeat
			
			return sorted_list
			
		end tell
	end tell
	
end Sort_Cues