FasdUAS 1.101.10   ��   ��    k             l     ��  ��      QLX version 1.0     � 	 	     Q L X   v e r s i o n   1 . 0   
  
 l     ��  ��      by Alec Sparks     �      b y   A l e c   S p a r k s      l     ��  ��      alecsparks.com     �      a l e c s p a r k s . c o m      l     ��������  ��  ��        l   �     O    �    l  �     O   �   !   k   � " "  # $ # l   ��������  ��  ��   $  % & % Q    $ ' ( ) ' l    * + , * r     - . - n     / 0 / 4   �� 1
�� 
cobj 1 m    ������ 0 l    2���� 2 c     3 4 3 1    ��
�� 
actQ 4 m    ��
�� 
list��  ��   . o      ���� 0 last_cue Last_Cue + , &check if QLX.scpt is running from QLab    , � 5 5 L c h e c k   i f   Q L X . s c p t   i s   r u n n i n g   f r o m   Q L a b ( R      ������
�� .ascrerr ****      � ****��  ��   ) R     $�� 6��
�� .ascrerr ****      � **** 6 m   " # 7 7 � 8 8 r Q L X   c a n   o n l y   b e   u s e d   i n   t h e   c o n t e x t   o f   a   Q L a b   S c r i p t   C u e .��   &  9 : 9 l  % %��������  ��  ��   :  ; < ; Q   %� = > ? = k   (� @ @  A B A r   ( / C D C c   ( - E F E l  ( + G���� G n   ( + H I H 1   ) +��
�� 
qNam I o   ( )���� 0 last_cue Last_Cue��  ��   F m   + ,��
�� 
TEXT D o      ���� 0 cue_name Cue_Name B  J K J r   0 8 L M L n   0 6 N O N 1   4 6��
�� 
qNam O 4   0 4�� P
�� 
aCue P m   2 3 Q Q � R R  Q L X L I S T M o      ���� $0 console_cue_list Console_Cue_List K  S T S l  9 Z U V W U r   9 Z X Y X c   9 V Z [ Z l  9 T \���� \ n   9 T ] ^ ] 7  : T�� _ `
�� 
cha  _ l  > P a���� a I  > P���� b
�� .sysooffslong    ��� null��   b �� c d
�� 
psof c m   C F e e � f f  Q L X d �� g��
�� 
psin g o   I J���� 0 cue_name Cue_Name��  ��  ��   ` m   Q S������ ^ o   9 :���� 0 cue_name Cue_Name��  ��   [ m   T U��
�� 
TEXT Y o      ���� 0 cue_basename Cue_Basename V  trim off comments    W � h h " t r i m   o f f   c o m m e n t s T  i j i l  [ [��������  ��  ��   j  k l k r   [ x m n m b   [ t o p o b   [ k q r q b   [ g s t s m   [ ^ u u � v v   # "   |   n c   - u   - w   1   t l  ^ f w���� w n   ^ f x y x 1   d f��
�� 
qNam y 4   ^ d�� z
�� 
aCue z m   ` c { { � | | 
 Q L X I P��  ��   r m   g j } } � ~ ~    p l  k s ����  n   k s � � � 1   q s��
�� 
qNam � 4   k q�� �
�� 
aCue � m   m p � � � � �  Q L X P O R T��  ��   n o      ���� 0 append Append l  � � � r   y � � � � m   y | � � � � �  e c h o   " � o      ���� 0 prep Prep �  � � � r   � � � � � m   � � � � � � �   � o      ���� "0 complete_script Complete_Script �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � ���
�� boovfals � o      ���� 0 debug Debug �  � � � Z  � � � ����� � ?  � � � � � l  � � ����� � I  � ����� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � m   � � � � � � � 
 D E B U G � �� ���
�� 
psin � o   � ����� 0 cue_name Cue_Name��  ��  ��   � m   � �����   � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 debug Debug��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  QLXSET    � � � �  Q L X S E T �  � � � Z   �� � ��� � � =  � � � � � l  � � ����� � c   � � � � � l  � � ����� � n   � � � � � 7  � ��� � �
�� 
cha  � m   � �����  � m   � �����  � o   � ����� 0 cue_basename Cue_Basename��  ��   � m   � ���
�� 
TEXT��  ��   � m   � � � � � � �  Q L X S E T   � k   �� � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � c   � � � � � l  � � ����� � n   � � � � � 7  � ��� � �
�� 
cha  � m   � �����  � m   � ������� � o   � ����� 0 cue_basename Cue_Basename��  ��   � m   � ���
�� 
TEXT��  ��   � o      ���� 0 
parameters 
Parameters �  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � �����  � l  � � ����� � n  � � � � � I   � ��� ����� 0 splitstring splitString �  � � � o   � ����� 0 
parameters 
Parameters �  ��� � m   � � � � � � �   ��  ��   �  f   � ���  ��   � o      ���� 0 sett Sett �  � � � r   � � � � c   �  � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � �����  � l  � � ����� � n  � � � � � I   � ��� ����� 0 splitstring splitString �  � � � o   � ����� 0 
parameters 
Parameters �  ��� � m   � � � � � � �   ��  ��   �  f   � ���  ��   � m   � ���
�� 
TEXT � o      ���� 
0 val Val �  � � � l ����~��  �  �~   �  � � � Z  � � � ��} � l  ��|�{ � =  � � � o  �z�z 0 sett Sett � m   � � � � �  C u e L i s t�|  �{   � r   � � � o  �y�y 
0 val Val � n       � � � 1  �x
�x 
qNam � 4  �w �
�w 
aCue � m     �  Q L X L I S T �  l %�v�u = % o  !�t�t 0 sett Sett m  !$ �  P o r t�v  �u   	
	 r  (4 o  (+�s�s 
0 val Val n       1  13�r
�r 
qNam 4  +1�q
�q 
aCue m  -0 �  Q L X P O R T
  l 7>�p�o = 7> o  7:�n�n 0 sett Sett m  := �  I P�p  �o    r  AM o  AD�m�m 
0 val Val n       1  JL�l
�l 
qNam 4  DJ�k
�k 
aCue m  FI   �!! 
 Q L X I P "#" l PW$�j�i$ = PW%&% o  PS�h�h 0 sett Sett& m  SV'' �((  P a t h�j  �i  # )�g) k  Z|** +,+ r  Zo-.- l Zk/�f�e/ c  Zk010 l Zi2�d�c2 n  Zi343 7 ]i�b56
�b 
cha 5 m  ae�a�a 6 m  fh�`�`��4 o  Z]�_�_ 0 
parameters 
Parameters�d  �c  1 m  ij�^
�^ 
TEXT�f  �e  . o      �]�] 
0 val Val, 7�\7 r  p|898 o  ps�[�[ 
0 val Val9 n      :;: 1  y{�Z
�Z 
qNam; 4  sy�Y<
�Y 
aCue< m  ux== �>>  Q L X P A T H�\  �g  �}   � ?�X? l ���W�V�U�W  �V  �U  �X  ��   � k  ��@@ ABA l ���T�S�R�T  �S  �R  B CDC l ���QEF�Q  E &  No Cue Number supplied. Basic GO   F �GG @ N o   C u e   N u m b e r   s u p p l i e d .   B a s i c   G OD HIH Z  �zJKL�PJ l ��M�O�NM = ��NON o  ���M�M 0 cue_basename Cue_BasenameO m  ��PP �QQ 
 Q L X G O�O  �N  K k  ��RR STS l ���L�K�J�L  �K  �J  T UVU r  ��WXW b  ��YZY b  ��[\[ b  ��]^] o  ���I�I 0 prep Prep^ m  ��__ �``  C u e  \ o  ���H�H $0 console_cue_list Console_Cue_ListZ o  ���G�G 0 append AppendX o      �F�F "0 complete_script Complete_ScriptV aba l ���E�D�C�E  �D  �C  b c�Bc l ���Ade�A  d  Go to Cue Number specfied   e �ff 2 G o   t o   C u e   N u m b e r   s p e c f i e d�B  L ghg = ��iji l ��k�@�?k c  ��lml l ��n�>�=n n  ��opo 7 ���<qr
�< 
cha q m  ���;�; r m  ���:�: p o  ���9�9 0 cue_basename Cue_Basename�>  �=  m m  ���8
�8 
TEXT�@  �?  j m  ��ss �tt  Q L X G O  h uvu k  ��ww xyx l ���7�6�5�7  �6  �5  y z{z r  ��|}| l ��~�4�3~ c  ��� l ����2�1� n  ����� 7 ���0��
�0 
cha � m  ���/�/ � m  ���.�.��� o  ���-�- 0 cue_basename Cue_Basename�2  �1  � m  ���,
�, 
TEXT�4  �3  } o      �+�+ 0 
parameters 
Parameters{ ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���*�* 0 prep Prep� m  ���� ���  C u e  � o  ���)�) $0 console_cue_list Console_Cue_List� m  ���� ���   � o  ���(�( 0 
parameters 
Parameters� o  ���'�' 0 append Append� o      �&�& "0 complete_script Complete_Script� ��� l ���%�$�#�%  �$  �#  � ��"� l ���!���!  �  Command. Prepend '$ '   � ��� * C o m m a n d .   P r e p e n d   ' $   '�"  v ��� = ���� l ��� �� c  ���� l � ���� n  � ��� 7 � ���
� 
cha � m  ���� � m  ���� � o  ���� 0 cue_basename Cue_Basename�  �  � m   �
� 
TEXT�   �  � m  �� ��� 
 Q L X C  � ��� k  	4�� ��� l 		����  �  �  � ��� r  	��� l 	���� c  	��� l 	���� n  	��� 7 ���
� 
cha � m  �� � m  ����� o  	�� 0 cue_basename Cue_Basename�  �  � m  �
� 
TEXT�  �  � o      �� 0 
parameters 
Parameters� ��� r  2��� b  .��� b  *��� b  &��� o  "�
�
 0 prep Prep� m  "%�� ���  $  � o  &)�	�	 0 
parameters 
Parameters� o  *-�� 0 append Append� o      �� "0 complete_script Complete_Script� ��� l 33����  �  �  � ��� l 33����  �  
EOS Events   � ���  E O S   E v e n t s�  � ��� = 7L��� l 7H��� � c  7H��� l 7F������ n  7F��� 7 :F����
�� 
cha � m  >@���� � m  AE���� � o  7:���� 0 cue_basename Cue_Basename��  ��  � m  FG��
�� 
TEXT�  �   � m  HK�� ���  Q L X  � ���� k  Ov�� ��� l OO��������  ��  ��  � ��� r  Od��� l O`������ c  O`��� l O^������ n  O^��� 7 R^����
�� 
cha � m  VZ���� � m  []������� o  OR���� 0 cue_basename Cue_Basename��  ��  � m  ^_��
�� 
TEXT��  ��  � o      ���� 0 
parameters 
Parameters� ��� r  et��� b  ep��� b  el��� o  eh���� 0 prep Prep� o  hk���� 0 
parameters 
Parameters� o  lo���� 0 append Append� o      ���� "0 complete_script Complete_Script� ���� l uu��������  ��  ��  ��  ��  �P  I ��� l {{��������  ��  ��  � ��� I {������
�� .sysoexecTEXT���     TEXT� b  {���� o  {~���� "0 complete_script Complete_Script� m  ~��� ���  & >   / d e v / n u l l &��  � � � l ����������  ��  ��     Z  ������ o  ������ 0 debug Debug I ������
�� .sysodlogaskr        TEXT o  ������ "0 complete_script Complete_Script��  ��  ��   �� l ����������  ��  ��  ��   �  l ����������  ��  ��   	��	 l ����������  ��  ��  ��   > R      ��

�� .ascrerr ****      � ****
 o      ���� 0 error_message Error_Message ����
�� 
errn o      ���� 0 error_number Error_Number��   ? k  ��  r  �� b  �� m  �� � >   F i x   a n d   c l i c k   " C o m p i l e   S c r i p t " o  ������ 0 error_number Error_Number o      ���� 0 error_append Error_Append  l ����������  ��  ��   �� Z  ���� l ������ = �� o  ������ 0 error_number Error_Number m  �������\��  ��   R  ������
�� .ascrerr ****      � **** b  �� !  m  ��"" �## > I n v a l i d   C u e   N a m e   o r   P a r a m e t e r s .! o  ������ 0 error_append Error_Append��  ��   R  ����$��
�� .ascrerr ****      � ****$ b  ��%&% o  ������ 0 error_message Error_Message& o  ������ 0 error_number Error_Number��  ��   < '��' l ����������  ��  ��  ��   ! 4   ��(
�� 
qDoc( m    ����    	Workspace     �))  W o r k s p a c e  m     **�                                                                                  QLAB  alis    F  Macintosh HD               �@��H+  �R�QLab.app                                                       ��%��z�        ����  	                Applications    �@��      ����    �R�  #Macintosh HD:Applications: QLab.app     Q L a b . a p p    M a c i n t o s h   H D  Applications/QLab.app   / ��    
 Qlab     �++  Q l a b  ,-, l     ��������  ��  ��  - .��. i     /0/ I      ��1���� 0 splitstring splitString1 232 o      ���� 0 astring aString3 4��4 o      ���� 0 	delimiter  ��  ��  0 k     !55 676 r     898 J     ����  9 o      ���� 0 retval retVal7 :;: r    
<=< n   >?> 1    ��
�� 
txdl? 1    ��
�� 
ascr= o      ���� 0 prevdelimiter prevDelimiter; @A@ r    BCB J    DD E��E o    ���� 0 	delimiter  ��  C n     FGF 1    ��
�� 
txdlG 1    ��
�� 
ascrA HIH r    JKJ n    LML 2    ��
�� 
citmM o    ���� 0 astring aStringK o      ���� 0 retval retValI NON r    PQP o    ���� 0 prevdelimiter prevDelimiterQ n     RSR 1    ��
�� 
txdlS 1    ��
�� 
ascrO T��T L    !UU o     ���� 0 retval retVal��  ��       ��VWX��  V ������ 0 splitstring splitString
�� .aevtoappnull  �   � ****W ��0����YZ���� 0 splitstring splitString�� ��[�� [  ������ 0 astring aString�� 0 	delimiter  ��  Y ���������� 0 astring aString�� 0 	delimiter  �� 0 retval retVal�� 0 prevdelimiter prevDelimiterZ ������
�� 
ascr
�� 
txdl
�� 
citm�� "jvE�O��,E�O�kv��,FO��-E�O���,FO�X ��\��~]^�}
�� .aevtoappnull  �   � ****\ k    �__  �|�|  �  �~  ] �{�z�{ 0 error_message Error_Message�z 0 error_number Error_Number^ E*�y�x�w�v�u�t�s 7�r�q�p�o Q�n�m�l e�k�j�i�h u { } ��g ��f ��e�d ��c ��b�a ��`�_ ��^ �  '�]=P_s���\�����[�Z�Y`�X�W"
�y 
qDoc
�x 
actQ
�w 
list
�v 
cobj�u 0 last_cue Last_Cue�t  �s  
�r 
qNam
�q 
TEXT�p 0 cue_name Cue_Name
�o 
aCue�n $0 console_cue_list Console_Cue_List
�m 
cha 
�l 
psof
�k 
psin�j 
�i .sysooffslong    ��� null�h 0 cue_basename Cue_Basename�g 0 append Append�f 0 prep Prep�e "0 complete_script Complete_Script�d 0 debug Debug�c �b �a 0 
parameters 
Parameters�` 0 splitstring splitString�_ 0 sett Sett�^ 
0 val Val�] �\ 
�[ .sysoexecTEXT���     TEXT
�Z .sysodlogaskr        TEXT�Y 0 error_message Error_Message` �V�U�T
�V 
errn�U 0 error_number Error_Number�T  �X 0 error_append Error_Append�W�\�}���*�k/� *�,�&�i/E�W X  )j�Oy��,�&E�O*��/�,E�O�[�\[Z*a a a �a  \Zi2�&E` Oa *�a /�,%a %*�a /�,%E` Oa E` Oa E` OfE` O*a a  a �a  j 
eE` Y hO_ [�\[Zk\Za !2�&a "  �_ [�\[Za #\Zi2�&E` $O)_ $a %l+ &�k/E` 'O)_ $a (l+ &�l/�&E` )O_ 'a *  _ )*�a +/�,FY d_ 'a ,  _ )*�a -/�,FY K_ 'a .  _ )*�a //�,FY 2_ 'a 0  '_ $[�\[Za 1\Zi2�&E` )O_ )*�a 2/�,FY hOPY_ a 3  _ a 4%�%_ %E` OPY �_ [�\[Zk\Za 12�&a 5  6_ [�\[Za !\Zi2�&E` $O_ a 6%�%a 7%_ $%_ %E` OPY �_ [�\[Zk\Za 82�&a 9  0_ [�\[Za 1\Zi2�&E` $O_ a :%_ $%_ %E` OPY E_ [�\[Zk\Za 2�&a ;  ,_ [�\[Za 8\Zi2�&E` $O_ _ $%_ %E` OPY hO_ a <%j =O_  _ j >Y hOPOPW ,X ? @a A�%E` BO�a C  )ja D_ B%Y )j��%OPUUascr  ��ޭ