FasdUAS 1.101.10   ��   ��    k             l     ��  ��      QLX version 1.1     � 	 	     Q L X   v e r s i o n   1 . 1   
  
 l     ��  ��      www.qlx.io     �      w w w . q l x . i o      l     ��  ��      by Alec Sparks     �      b y   A l e c   S p a r k s      l     ��  ��      alecsparks.com     �      a l e c s p a r k s . c o m      l     ��������  ��  ��        l   �     O    �   !   l  � " # $ " O   � % & % k   � ' '  ( ) ( l   ��������  ��  ��   )  * + * Q    $ , - . , l    / 0 1 / r     2 3 2 n     4 5 4 4   �� 6
�� 
cobj 6 m    ������ 5 l    7���� 7 c     8 9 8 1    ��
�� 
actQ 9 m    ��
�� 
list��  ��   3 o      ���� 0 last_cue Last_Cue 0 , &check if QLX.scpt is running from QLab    1 � : : L c h e c k   i f   Q L X . s c p t   i s   r u n n i n g   f r o m   Q L a b - R      ������
�� .ascrerr ****      � ****��  ��   . R     $�� ;��
�� .ascrerr ****      � **** ; m   " # < < � = = r Q L X   c a n   o n l y   b e   u s e d   i n   t h e   c o n t e x t   o f   a   Q L a b   S c r i p t   C u e .��   +  > ? > l  % %��������  ��  ��   ?  @ A @ Q   %� B C D B k   (� E E  F G F r   ( / H I H c   ( - J K J l  ( + L���� L n   ( + M N M 1   ) +��
�� 
qNam N o   ( )���� 0 last_cue Last_Cue��  ��   K m   + ,��
�� 
TEXT I o      ���� 0 cue_name Cue_Name G  O P O r   0 8 Q R Q n   0 6 S T S 1   4 6��
�� 
qNam T 4   0 4�� U
�� 
aCue U m   2 3 V V � W W  Q L X L I S T R o      ���� $0 console_cue_list Console_Cue_List P  X Y X l  9 Z Z [ \ Z r   9 Z ] ^ ] c   9 V _ ` _ l  9 T a���� a n   9 T b c b 7  : T�� d e
�� 
cha  d l  > P f���� f I  > P���� g
�� .sysooffslong    ��� null��   g �� h i
�� 
psof h m   C F j j � k k  Q L X i �� l��
�� 
psin l o   I J���� 0 cue_name Cue_Name��  ��  ��   e m   Q S������ c o   9 :���� 0 cue_name Cue_Name��  ��   ` m   T U��
�� 
TEXT ^ o      ���� 0 cue_basename Cue_Basename [  trim off comments    \ � m m " t r i m   o f f   c o m m e n t s Y  n o n l  [ [��������  ��  ��   o  p q p r   [ x r s r b   [ t t u t b   [ k v w v b   [ g x y x m   [ ^ z z � { {   # "   |   n c   - u   - w   1   y l  ^ f |���� | n   ^ f } ~ } 1   d f��
�� 
qNam ~ 4   ^ d�� 
�� 
aCue  m   ` c � � � � � 
 Q L X I P��  ��   w m   g j � � � � �    u l  k s ����� � n   k s � � � 1   q s��
�� 
qNam � 4   k q�� �
�� 
aCue � m   m p � � � � �  Q L X P O R T��  ��   s o      ���� 0 append Append q  � � � r   y � � � � m   y | � � � � �  e c h o   " � o      ���� 0 prep Prep �  � � � r   � � � � � m   � � � � � � �   � o      ���� "0 complete_script Complete_Script �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � ���
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
0 val Val �  � � � l ��~�}�  �~  �}   �  � � � Z  � � � ��| � l  ��{�z � =  � � � o  �y�y 0 sett Sett � m   � � � � �  C u e L i s t�{  �z   � r     o  �x�x 
0 val Val n       1  �w
�w 
qNam 4  �v
�v 
aCue m   �  Q L X L I S T �  l %	�u�t	 = %

 o  !�s�s 0 sett Sett m  !$ �  P o r t�u  �t    r  (4 o  (+�r�r 
0 val Val n       1  13�q
�q 
qNam 4  +1�p
�p 
aCue m  -0 �  Q L X P O R T  l 7>�o�n = 7> o  7:�m�m 0 sett Sett m  := �  I P�o  �n    r  AM !  o  AD�l�l 
0 val Val! n      "#" 1  JL�k
�k 
qNam# 4  DJ�j$
�j 
aCue$ m  FI%% �&& 
 Q L X I P '(' l PW)�i�h) = PW*+* o  PS�g�g 0 sett Sett+ m  SV,, �--  P a t h�i  �h  ( .�f. k  Z|// 010 r  Zo232 l Zk4�e�d4 c  Zk565 l Zi7�c�b7 n  Zi898 7 ]i�a:;
�a 
cha : m  ae�`�` ; m  fh�_�_��9 o  Z]�^�^ 0 
parameters 
Parameters�c  �b  6 m  ij�]
�] 
TEXT�e  �d  3 o      �\�\ 
0 val Val1 <�[< r  p|=>= o  ps�Z�Z 
0 val Val> n      ?@? 1  y{�Y
�Y 
qNam@ 4  sy�XA
�X 
aCueA m  uxBB �CC  Q L X P A T H�[  �f  �|   � D�WD l ���V�U�T�V  �U  �T  �W  ��   � k  ��EE FGF l ���S�R�Q�S  �R  �Q  G HIH l ���PJK�P  J &  No Cue Number supplied. Basic GO   K �LL @ N o   C u e   N u m b e r   s u p p l i e d .   B a s i c   G OI MNM Z  �zOPQ�OO l ��R�N�MR = ��STS o  ���L�L 0 cue_basename Cue_BasenameT m  ��UU �VV 
 Q L X G O�N  �M  P k  ��WW XYX l ���K�J�I�K  �J  �I  Y Z[Z r  ��\]\ b  ��^_^ b  ��`a` b  ��bcb o  ���H�H 0 prep Prepc m  ��dd �ee  C u e  a o  ���G�G $0 console_cue_list Console_Cue_List_ o  ���F�F 0 append Append] o      �E�E "0 complete_script Complete_Script[ fgf l ���D�C�B�D  �C  �B  g h�Ah l ���@ij�@  i  Go to Cue Number specfied   j �kk 2 G o   t o   C u e   N u m b e r   s p e c f i e d�A  Q lml = ��non l ��p�?�>p c  ��qrq l ��s�=�<s n  ��tut 7 ���;vw
�; 
cha v m  ���:�: w m  ���9�9 u o  ���8�8 0 cue_basename Cue_Basename�=  �<  r m  ���7
�7 
TEXT�?  �>  o m  ��xx �yy  Q L X G O  m z{z k  ��|| }~} l ���6�5�4�6  �5  �4  ~ � r  ����� l ����3�2� c  ����� l ����1�0� n  ����� 7 ���/��
�/ 
cha � m  ���.�. � m  ���-�-��� o  ���,�, 0 cue_basename Cue_Basename�1  �0  � m  ���+
�+ 
TEXT�3  �2  � o      �*�* 0 
parameters 
Parameters� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���)�) 0 prep Prep� m  ���� ���  C u e  � o  ���(�( $0 console_cue_list Console_Cue_List� m  ���� ���   � o  ���'�' 0 
parameters 
Parameters� o  ���&�& 0 append Append� o      �%�% "0 complete_script Complete_Script� ��� l ���$�#�"�$  �#  �"  � ��!� l ��� ���   �  Command. Prepend '$ '   � ��� * C o m m a n d .   P r e p e n d   ' $   '�!  { ��� = ���� l ����� c  ���� l � ���� n  � ��� 7 � ���
� 
cha � m  ���� � m  ���� � o  ���� 0 cue_basename Cue_Basename�  �  � m   �
� 
TEXT�  �  � m  �� ��� 
 Q L X C  � ��� k  	4�� ��� l 		����  �  �  � ��� r  	��� l 	���� c  	��� l 	���� n  	��� 7 ���
� 
cha � m  �� � m  ����� o  	�� 0 cue_basename Cue_Basename�  �  � m  �
� 
TEXT�  �  � o      �
�
 0 
parameters 
Parameters� ��� r  2��� b  .��� b  *��� b  &��� o  "�	�	 0 prep Prep� m  "%�� ���  $  � o  &)�� 0 
parameters 
Parameters� o  *-�� 0 append Append� o      �� "0 complete_script Complete_Script� ��� l 33����  �  �  � ��� l 33����  �  
EOS Events   � ���  E O S   E v e n t s�  � ��� = 7L��� l 7H�� ��� c  7H��� l 7F������ n  7F��� 7 :F����
�� 
cha � m  >@���� � m  AE���� � o  7:���� 0 cue_basename Cue_Basename��  ��  � m  FG��
�� 
TEXT�   ��  � m  HK�� ���  Q L X  � ���� k  Ov�� ��� l OO��������  ��  ��  � ��� r  Od��� l O`������ c  O`��� l O^������ n  O^��� 7 R^����
�� 
cha � m  VZ���� � m  []������� o  OR���� 0 cue_basename Cue_Basename��  ��  � m  ^_��
�� 
TEXT��  ��  � o      ���� 0 
parameters 
Parameters� ��� r  et��� b  ep��� b  el��� o  eh���� 0 prep Prep� o  hk���� 0 
parameters 
Parameters� o  lo���� 0 append Append� o      ���� "0 complete_script Complete_Script� ���� l uu��������  ��  ��  ��  ��  �O  N ��� l {{��������  ��  ��  � ��� I {������
�� .sysoexecTEXT���     TEXT� b  {�   o  {~���� "0 complete_script Complete_Script m  ~� �  & >   / d e v / n u l l &��  �  l ����������  ��  ��    Z  ��	���� o  ������ 0 debug Debug	 I ����
��
�� .sysodlogaskr        TEXT
 o  ������ "0 complete_script Complete_Script��  ��  ��   �� l ����������  ��  ��  ��   �  l ����������  ��  ��   �� l ����������  ��  ��  ��   C R      ��
�� .ascrerr ****      � **** o      ���� 0 error_message Error_Message ����
�� 
errn o      ���� 0 error_number Error_Number��   D k  ��  r  �� b  �� m  �� � >   F i x   a n d   c l i c k   " C o m p i l e   S c r i p t " o  ������ 0 error_number Error_Number o      ���� 0 error_append Error_Append  l ����������  ��  ��   �� Z  ����  l ��!����! = ��"#" o  ������ 0 error_number Error_Number# m  �������\��  ��   R  ����$��
�� .ascrerr ****      � ****$ b  ��%&% m  ��'' �(( > I n v a l i d   C u e   N a m e   o r   P a r a m e t e r s .& o  ������ 0 error_append Error_Append��  ��    R  ����)��
�� .ascrerr ****      � ****) b  ��*+* o  ������ 0 error_message Error_Message+ o  ������ 0 error_number Error_Number��  ��   A ,��, l ����������  ��  ��  ��   & 4   ��-
�� 
qDoc- m    ����  #  	Workspace    $ �..  W o r k s p a c e ! m     //�                                                                                  QLAB  alis    F  Macintosh HD               �@��H+  �R�QLab.app                                                       ��%��z�        ����  	                Applications    �@��      ����    �R�  #Macintosh HD:Applications: QLab.app     Q L a b . a p p    M a c i n t o s h   H D  Applications/QLab.app   / ��    
 Qlab     �00  Q l a b  121 l     ��������  ��  ��  2 3��3 i     454 I      ��6���� 0 splitstring splitString6 787 o      ���� 0 astring aString8 9��9 o      ���� 0 	delimiter  ��  ��  5 k     !:: ;<; r     =>= J     ����  > o      ���� 0 retval retVal< ?@? r    
ABA n   CDC 1    ��
�� 
txdlD 1    ��
�� 
ascrB o      ���� 0 prevdelimiter prevDelimiter@ EFE r    GHG J    II J��J o    ���� 0 	delimiter  ��  H n     KLK 1    ��
�� 
txdlL 1    ��
�� 
ascrF MNM r    OPO n    QRQ 2    ��
�� 
citmR o    ���� 0 astring aStringP o      ���� 0 retval retValN STS r    UVU o    ���� 0 prevdelimiter prevDelimiterV n     WXW 1    ��
�� 
txdlX 1    ��
�� 
ascrT Y��Y L    !ZZ o     ���� 0 retval retVal��  ��       ��[\]��  [ ������ 0 splitstring splitString
�� .aevtoappnull  �   � ****\ ��5����^_���� 0 splitstring splitString�� ��`�� `  ������ 0 astring aString�� 0 	delimiter  ��  ^ ���������� 0 astring aString�� 0 	delimiter  �� 0 retval retVal�� 0 prevdelimiter prevDelimiter_ ������
�� 
ascr
�� 
txdl
�� 
citm�� "jvE�O��,E�O�kv��,FO��-E�O���,FO�] �a�~�}bc�|
� .aevtoappnull  �   � ****a k    �dd  �{�{  �~  �}  b �z�y�z 0 error_message Error_Message�y 0 error_number Error_Numberc E/�x�w�v�u�t�s�r <�q�p�o�n V�m�l�k j�j�i�h�g z � � ��f ��e ��d�c ��b ��a�` ��_�^ ��] �%,�\BUdx���[����Z�Y�Xe�W�V'
�x 
qDoc
�w 
actQ
�v 
list
�u 
cobj�t 0 last_cue Last_Cue�s  �r  
�q 
qNam
�p 
TEXT�o 0 cue_name Cue_Name
�n 
aCue�m $0 console_cue_list Console_Cue_List
�l 
cha 
�k 
psof
�j 
psin�i 
�h .sysooffslong    ��� null�g 0 cue_basename Cue_Basename�f 0 append Append�e 0 prep Prep�d "0 complete_script Complete_Script�c 0 debug Debug�b �a �` 0 
parameters 
Parameters�_ 0 splitstring splitString�^ 0 sett Sett�] 
0 val Val�\ �[ 
�Z .sysoexecTEXT���     TEXT
�Y .sysodlogaskr        TEXT�X 0 error_message Error_Messagee �U�T�S
�U 
errn�T 0 error_number Error_Number�S  �W 0 error_append Error_Append�V�\�|���*�k/� *�,�&�i/E�W X  )j�Oy��,�&E�O*��/�,E�O�[�\[Z*a a a �a  \Zi2�&E` Oa *�a /�,%a %*�a /�,%E` Oa E` Oa E` OfE` O*a a  a �a  j 
eE` Y hO_ [�\[Zk\Za !2�&a "  �_ [�\[Za #\Zi2�&E` $O)_ $a %l+ &�k/E` 'O)_ $a (l+ &�l/�&E` )O_ 'a *  _ )*�a +/�,FY d_ 'a ,  _ )*�a -/�,FY K_ 'a .  _ )*�a //�,FY 2_ 'a 0  '_ $[�\[Za 1\Zi2�&E` )O_ )*�a 2/�,FY hOPY_ a 3  _ a 4%�%_ %E` OPY �_ [�\[Zk\Za 12�&a 5  6_ [�\[Za !\Zi2�&E` $O_ a 6%�%a 7%_ $%_ %E` OPY �_ [�\[Zk\Za 82�&a 9  0_ [�\[Za 1\Zi2�&E` $O_ a :%_ $%_ %E` OPY E_ [�\[Zk\Za 2�&a ;  ,_ [�\[Za 8\Zi2�&E` $O_ _ $%_ %E` OPY hO_ a <%j =O_  _ j >Y hOPOPW ,X ? @a A�%E` BO�a C  )ja D_ B%Y )j��%OPUU ascr  ��ޭ