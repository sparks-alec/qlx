FasdUAS 1.101.10   ��   ��    k             l     ��  ��      QLX version 1.2     � 	 	     Q L X   v e r s i o n   1 . 2   
  
 l     ��  ��      www.qlx.io     �      w w w . q l x . i o      l     ��  ��      by Alec Sparks     �      b y   A l e c   S p a r k s      l     ��  ��      alecsparks.com     �      a l e c s p a r k s . c o m      l     ��������  ��  ��        l    ]     O     ]   !   l   \ " # $ " O    \ % & % k    [ ' '  ( ) ( l   ��������  ��  ��   )  * + * X    Y ,�� - , k    T . .  / 0 / I   0�� 1��
�� .sysodlogaskr        TEXT 1 c    , 2 3 2 b    * 4 5 4 b    & 6 7 6 l   $ 8���� 8 c    $ 9 : 9 n    " ; < ; 1     "��
�� 
qPre < o     ���� 0 cur   : m   " #��
�� 
TEXT��  ��   7 m   $ % = = � > >    5 n   & ) ? @ ? 1   ' )��
�� 
qTyp @ o   & '���� 0 cur   3 m   * +��
�� 
TEXT��   0  A�� A Z   1 T B C���� B l  1 D D���� D F   1 D E F E l  1 8 G���� G =  1 8 H I H c   1 6 J K J n   1 4 L M L 1   2 4��
�� 
qPre M o   1 2���� 0 cur   K m   4 5��
�� 
TEXT I m   6 7 N N � O O  0 . 0��  ��   F l  ; B P���� P =  ; B Q R Q c   ; @ S T S n   ; > U V U 1   < >��
�� 
qTyp V o   ; <���� 0 cur   T m   > ?��
�� 
TEXT R m   @ A W W � X X  S c r i p t��  ��  ��  ��   C I  G P�� Y��
�� .sysodlogaskr        TEXT Y c   G L Z [ Z n   G J \ ] \ 1   H J��
�� 
qPre ] o   G H���� 0 cur   [ m   J K��
�� 
TEXT��  ��  ��  ��  �� 0 cur   - l    ^���� ^ c     _ ` _ 1    ��
�� 
actQ ` m    ��
�� 
list��  ��   +  a b a l  Z Z��������  ��  ��   b  c d c l  Z Z�� e f��   e , &create list of cues ordered by prewait    f � g g L c r e a t e   l i s t   o f   c u e s   o r d e r e d   b y   p r e w a i t d  h i h l  Z Z��������  ��  ��   i  j k j l  Z Z��������  ��  ��   k  l m l l   Z Z�� n o��   n
J
Dif (q type of Last_Cue is "Script") then						try				set Cue_Name to (q name of Last_Cue) as string								set Console_Cue_List to q name of cue "QLXLIST"				set Cue_Basename to (characters (offset of "QLX" in Cue_Name) thru -1 of Cue_Name) as string --trim off comments								set Netcat_Wait to 0.5				set Append to "#\" | nc -u -w 1 " & (q name of cue "QLXIP") & " " & (q name of cue "QLXPORT")				set Prep to "echo \""				set Complete_Script to ""												--QLXSET				if (length of Cue_Basename is greater than 7) and ((characters 1 thru 7 of Cue_Basename) as string) is "QLXSET " then										set Parameters to ((characters 8 thru -1 of Cue_Basename) as string)					set Sett to first item of (my splitString(Parameters, " "))					set Val to second item of (my splitString(Parameters, " ")) as string										if (Sett is "CueList") then						set q name of cue "QLXLIST" to Val					else if (Sett is "Port") then						set q name of cue "QLXPORT" to Val					else if (Sett is "IP") then						set q name of cue "QLXIP" to Val					else if (Sett is "Path") then						set Val to ((characters 6 thru -1 of Parameters) as string)						set q name of cue "QLXPATH" to Val					end if									else										--No Cue Number supplied. Basic GO					if (Cue_Basename is "QLXGO") then												set Complete_Script to Prep & "Cue " & Console_Cue_List & Append												--Go to Cue Number specfied					else if ((characters 1 thru 6 of Cue_Basename) as string) is "QLXGO " then												set Parameters to ((characters 7 thru -1 of Cue_Basename) as string)						set Complete_Script to Prep & "Cue " & Console_Cue_List & " " & Parameters & Append												--Command. Prepend '$ '					else if ((characters 1 thru 5 of Cue_Basename) as string) is "QLXC " then												set Parameters to ((characters 6 thru -1 of Cue_Basename) as string)						set Complete_Script to Prep & "$ " & Parameters & Append												--EOS Events					else if ((characters 1 thru 4 of Cue_Basename) as string) is "QLX " then												set Parameters to ((characters 5 thru -1 of Cue_Basename) as string)						set Complete_Script to Prep & Parameters & Append											end if										do shell script Complete_Script & "&> /dev/null&"					#display dialog Complete_Script									end if							on error Error_Message number Error_Number				set Error_Append to " Fix and click \"Compile Script\"" & Error_Number								if (Error_Number is -1700) then					error "Invalid Cue Name or Parameters." & Error_Append				else					error Error_Message & Error_Number				end if			end try					end if    o � p p� i f   ( q   t y p e   o f   L a s t _ C u e   i s   " S c r i p t " )   t h e n  	 	 	  	 	 	 t r y  	 	 	 	 s e t   C u e _ N a m e   t o   ( q   n a m e   o f   L a s t _ C u e )   a s   s t r i n g  	 	 	 	  	 	 	 	 s e t   C o n s o l e _ C u e _ L i s t   t o   q   n a m e   o f   c u e   " Q L X L I S T "  	 	 	 	 s e t   C u e _ B a s e n a m e   t o   ( c h a r a c t e r s   ( o f f s e t   o f   " Q L X "   i n   C u e _ N a m e )   t h r u   - 1   o f   C u e _ N a m e )   a s   s t r i n g   - - t r i m   o f f   c o m m e n t s  	 	 	 	  	 	 	 	 s e t   N e t c a t _ W a i t   t o   0 . 5  	 	 	 	 s e t   A p p e n d   t o   " # \ "   |   n c   - u   - w   1   "   &   ( q   n a m e   o f   c u e   " Q L X I P " )   &   "   "   &   ( q   n a m e   o f   c u e   " Q L X P O R T " )  	 	 	 	 s e t   P r e p   t o   " e c h o   \ " "  	 	 	 	 s e t   C o m p l e t e _ S c r i p t   t o   " "  	 	 	 	  	 	 	 	  	 	 	 	 - - Q L X S E T  	 	 	 	 i f   ( l e n g t h   o f   C u e _ B a s e n a m e   i s   g r e a t e r   t h a n   7 )   a n d   ( ( c h a r a c t e r s   1   t h r u   7   o f   C u e _ B a s e n a m e )   a s   s t r i n g )   i s   " Q L X S E T   "   t h e n  	 	 	 	 	  	 	 	 	 	 s e t   P a r a m e t e r s   t o   ( ( c h a r a c t e r s   8   t h r u   - 1   o f   C u e _ B a s e n a m e )   a s   s t r i n g )  	 	 	 	 	 s e t   S e t t   t o   f i r s t   i t e m   o f   ( m y   s p l i t S t r i n g ( P a r a m e t e r s ,   "   " ) )  	 	 	 	 	 s e t   V a l   t o   s e c o n d   i t e m   o f   ( m y   s p l i t S t r i n g ( P a r a m e t e r s ,   "   " ) )   a s   s t r i n g  	 	 	 	 	  	 	 	 	 	 i f   ( S e t t   i s   " C u e L i s t " )   t h e n  	 	 	 	 	 	 s e t   q   n a m e   o f   c u e   " Q L X L I S T "   t o   V a l  	 	 	 	 	 e l s e   i f   ( S e t t   i s   " P o r t " )   t h e n  	 	 	 	 	 	 s e t   q   n a m e   o f   c u e   " Q L X P O R T "   t o   V a l  	 	 	 	 	 e l s e   i f   ( S e t t   i s   " I P " )   t h e n  	 	 	 	 	 	 s e t   q   n a m e   o f   c u e   " Q L X I P "   t o   V a l  	 	 	 	 	 e l s e   i f   ( S e t t   i s   " P a t h " )   t h e n  	 	 	 	 	 	 s e t   V a l   t o   ( ( c h a r a c t e r s   6   t h r u   - 1   o f   P a r a m e t e r s )   a s   s t r i n g )  	 	 	 	 	 	 s e t   q   n a m e   o f   c u e   " Q L X P A T H "   t o   V a l  	 	 	 	 	 e n d   i f  	 	 	 	 	  	 	 	 	 e l s e  	 	 	 	 	  	 	 	 	 	 - - N o   C u e   N u m b e r   s u p p l i e d .   B a s i c   G O  	 	 	 	 	 i f   ( C u e _ B a s e n a m e   i s   " Q L X G O " )   t h e n  	 	 	 	 	 	  	 	 	 	 	 	 s e t   C o m p l e t e _ S c r i p t   t o   P r e p   &   " C u e   "   &   C o n s o l e _ C u e _ L i s t   &   A p p e n d  	 	 	 	 	 	  	 	 	 	 	 	 - - G o   t o   C u e   N u m b e r   s p e c f i e d  	 	 	 	 	 e l s e   i f   ( ( c h a r a c t e r s   1   t h r u   6   o f   C u e _ B a s e n a m e )   a s   s t r i n g )   i s   " Q L X G O   "   t h e n  	 	 	 	 	 	  	 	 	 	 	 	 s e t   P a r a m e t e r s   t o   ( ( c h a r a c t e r s   7   t h r u   - 1   o f   C u e _ B a s e n a m e )   a s   s t r i n g )  	 	 	 	 	 	 s e t   C o m p l e t e _ S c r i p t   t o   P r e p   &   " C u e   "   &   C o n s o l e _ C u e _ L i s t   &   "   "   &   P a r a m e t e r s   &   A p p e n d  	 	 	 	 	 	  	 	 	 	 	 	 - - C o m m a n d .   P r e p e n d   ' $   '  	 	 	 	 	 e l s e   i f   ( ( c h a r a c t e r s   1   t h r u   5   o f   C u e _ B a s e n a m e )   a s   s t r i n g )   i s   " Q L X C   "   t h e n  	 	 	 	 	 	  	 	 	 	 	 	 s e t   P a r a m e t e r s   t o   ( ( c h a r a c t e r s   6   t h r u   - 1   o f   C u e _ B a s e n a m e )   a s   s t r i n g )  	 	 	 	 	 	 s e t   C o m p l e t e _ S c r i p t   t o   P r e p   &   " $   "   &   P a r a m e t e r s   &   A p p e n d  	 	 	 	 	 	  	 	 	 	 	 	 - - E O S   E v e n t s  	 	 	 	 	 e l s e   i f   ( ( c h a r a c t e r s   1   t h r u   4   o f   C u e _ B a s e n a m e )   a s   s t r i n g )   i s   " Q L X   "   t h e n  	 	 	 	 	 	  	 	 	 	 	 	 s e t   P a r a m e t e r s   t o   ( ( c h a r a c t e r s   5   t h r u   - 1   o f   C u e _ B a s e n a m e )   a s   s t r i n g )  	 	 	 	 	 	 s e t   C o m p l e t e _ S c r i p t   t o   P r e p   &   P a r a m e t e r s   &   A p p e n d  	 	 	 	 	 	  	 	 	 	 	 e n d   i f  	 	 	 	 	  	 	 	 	 	 d o   s h e l l   s c r i p t   C o m p l e t e _ S c r i p t   &   " & >   / d e v / n u l l & "  	 	 	 	 	 # d i s p l a y   d i a l o g   C o m p l e t e _ S c r i p t  	 	 	 	 	  	 	 	 	 e n d   i f  	 	 	 	  	 	 	 o n   e r r o r   E r r o r _ M e s s a g e   n u m b e r   E r r o r _ N u m b e r  	 	 	 	 s e t   E r r o r _ A p p e n d   t o   "   F i x   a n d   c l i c k   \ " C o m p i l e   S c r i p t \ " "   &   E r r o r _ N u m b e r  	 	 	 	  	 	 	 	 i f   ( E r r o r _ N u m b e r   i s   - 1 7 0 0 )   t h e n  	 	 	 	 	 e r r o r   " I n v a l i d   C u e   N a m e   o r   P a r a m e t e r s . "   &   E r r o r _ A p p e n d  	 	 	 	 e l s e  	 	 	 	 	 e r r o r   E r r o r _ M e s s a g e   &   E r r o r _ N u m b e r  	 	 	 	 e n d   i f  	 	 	 e n d   t r y  	 	 	  	 	 e n d   i f m  q r q l  Z Z��������  ��  ��   r  s�� s l  Z Z��������  ��  ��  ��   & 4   �� t
�� 
qDoc t m    ����  #  	Workspace    $ � u u  W o r k s p a c e ! m      v v�                                                                                  QLAB  alis    F  Macintosh HD               �B��H+   ��QLab.app                                                       ���z�        ����  	                Applications    �B��      ����     ��  #Macintosh HD:Applications: QLab.app     Q L a b . a p p    M a c i n t o s h   H D  Applications/QLab.app   / ��    
 Qlab     � w w  Q l a b   x y x l     ��������  ��  ��   y  z�� z i      { | { I      �� }���� 0 splitstring splitString }  ~  ~ o      ���� 0 astring aString   ��� � o      ���� 0 	delimiter  ��  ��   | k     ! � �  � � � r      � � � J     ����   � o      ���� 0 retval retVal �  � � � r    
 � � � n    � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr � o      ���� 0 prevdelimiter prevDelimiter �  � � � r     � � � J     � �  ��� � o    ���� 0 	delimiter  ��   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � n     � � � 2    ��
�� 
citm � o    ���� 0 astring aString � o      ���� 0 retval retVal �  � � � r     � � � o    ���� 0 prevdelimiter prevDelimiter � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  ��� � L    ! � � o     ���� 0 retval retVal��  ��       �� � � ���   � ������ 0 splitstring splitString
�� .aevtoappnull  �   � **** � �� |���� � ����� 0 splitstring splitString�� �� ���  �  ������ 0 astring aString�� 0 	delimiter  ��   � ���������� 0 astring aString�� 0 	delimiter  �� 0 retval retVal�� 0 prevdelimiter prevDelimiter � ������
�� 
ascr
�� 
txdl
�� 
citm�� "jvE�O��,E�O�kv��,FO��-E�O���,FO� � �� ����� � ���
�� .aevtoappnull  �   � **** � k     ] � �  ����  ��  ��   � ���� 0 cur   �  v���������������� =���� N W��
�� 
qDoc
�� 
actQ
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
qPre
�� 
TEXT
�� 
qTyp
�� .sysodlogaskr        TEXT
�� 
bool�� ^� Z*�k/ R M*�,�&[��l kh  ��,�&�%��,%�&j O��,�&� 	 ��,�&� �& ��,�&j Y h[OY��OPUU ascr  ��ޭ