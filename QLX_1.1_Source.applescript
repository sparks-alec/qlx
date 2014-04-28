# QLX version 1.1
# www.qlx.io
# by Alec Sparks
# alecsparks.com

tell application "QLab"
	tell front workspace
		
		try --check if QLX.scpt is running from QLab
			set Last_Cue to last item of (active cues as list)
		on error
			error "QLX can only be used in the context of a QLab Script Cue."
		end try
		
		try
			set Cue_Name to (q name of Last_Cue) as string
			set Console_Cue_List to q name of cue "QLXLIST"
			set Cue_Basename to (characters (offset of "QLX" in Cue_Name) thru -1 of Cue_Name) as string --trim off comments
			
			set Append to "#\" | nc -u -w 1 " & (q name of cue "QLXIP") & " " & (q name of cue "QLXPORT")
			set Prep to "echo \""
			set Complete_Script to ""
			
			set Debug to false
			if (offset of "DEBUG" in Cue_Name) is greater than 0 then set Debug to true
			
			--QLXSET
			if ((length of Cue_Basename is greater than 7) and ((characters 1 thru 7 of Cue_Basename) as string) is "QLXSET ") then
				
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
				
				if Debug then
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