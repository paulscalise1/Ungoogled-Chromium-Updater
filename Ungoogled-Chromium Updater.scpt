FasdUAS 1.101.10   ��   ��    k             i         I      �������� $0 getlatestversion getLatestVersion��  ��    k     D 	 	  
  
 r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �    u n a m e   - m��    o      ���� 0 arch        r        m    	   �   � h t t p s : / / a p i . g i t h u b . c o m / r e p o s / u n g o o g l e d - s o f t w a r e / u n g o o g l e d - c h r o m i u m - m a c o s / r e l e a s e s / l a t e s t  o      ���� 0 releaselink releaseLink      l   ��������  ��  ��        l   ��  ��    S M grab the asset line (which contains �arm64-macos.dmg� or �x86_64-macos.dmg�)     �   �   g r a b   t h e   a s s e t   l i n e   ( w h i c h   c o n t a i n s    a r m 6 4 - m a c o s . d m g    o r    x 8 6 _ 6 4 - m a c o s . d m g  )      r    !   !   I   �� "��
�� .sysoexecTEXT���     TEXT " b     # $ # b     % & % b     ' ( ' b     ) * ) l 	   +���� + m     , , � - -  c u r l   - f s S L  ��  ��   * n     . / . 1    ��
�� 
strq / o    ���� 0 releaselink releaseLink ( m     0 0 � 1 1    |   & l 	   2���� 2 m     3 3 � 4 4  g r e p   - m 1  ��  ��   $ n     5 6 5 1    ��
�� 
strq 6 l    7���� 7 b     8 9 8 o    ���� 0 arch   9 m     : : � ; ;  - m a c o s . d m g��  ��  ��   ! o      ���� 0 	assetline 	assetLine   < = < l  " "��������  ��  ��   =  > ? > l  " "�� @ A��   @ 4 . pull out the �name� field from that JSON line    A � B B \   p u l l   o u t   t h e    n a m e    f i e l d   f r o m   t h a t   J S O N   l i n e ?  C D C r   " 1 E F E I  " /�� G��
�� .sysoexecTEXT���     TEXT G b   " + H I H b   " ) J K J b   " ' L M L l 	 " # N���� N m   " # O O � P P 
 e c h o  ��  ��   M n   # & Q R Q 1   $ &��
�� 
strq R o   # $���� 0 	assetline 	assetLine K m   ' ( S S � T T    |   I l 	 ) * U���� U m   ) * V V � W W H s e d   - E   ' s / . * " n a m e " :   " ( [ ^ " ] + ) " . * / \ 1 / '��  ��  ��   F o      ���� 0 	latestdmg 	latestDmg D  X Y X l  2 2��������  ��  ��   Y  Z [ Z l  2 2�� \ ]��   \ G A strip off the ungoogled-chromium_ prefix and the trailing _� bit    ] � ^ ^ �   s t r i p   o f f   t h e   u n g o o g l e d - c h r o m i u m _   p r e f i x   a n d   t h e   t r a i l i n g   _ &   b i t [  _ ` _ r   2 A a b a I  2 ?�� c��
�� .sysoexecTEXT���     TEXT c b   2 ; d e d b   2 9 f g f b   2 7 h i h l 	 2 3 j���� j m   2 3 k k � l l 
 e c h o  ��  ��   i n   3 6 m n m 1   4 6��
�� 
strq n o   3 4���� 0 	latestdmg 	latestDmg g m   7 8 o o � p p    |   e l 	 9 : q���� q m   9 : r r � s s X s e d   - E   ' s / u n g o o g l e d - c h r o m i u m _ ( [ ^ _ ] + ) _ . * / \ 1 / '��  ��  ��   b o      ���� 0 latestversion latestVersion `  t u t l  B B��������  ��  ��   u  v�� v L   B D w w o   B C���� 0 latestversion latestVersion��     x y x l     ��������  ��  ��   y  z { z l     ��������  ��  ��   {  | } | l     �� ~ ��   ~ E ? Handler: check /Applications/Chromium.app and compare versions     � � � ~   H a n d l e r :   c h e c k   / A p p l i c a t i o n s / C h r o m i u m . a p p   a n d   c o m p a r e   v e r s i o n s }  � � � i     � � � I      �� ����� 0 needsupdate needsUpdate �  ��� � o      ���� 0 latestversion latestVersion��  ��   � k     ` � �  � � � r      � � � m      � � � � � 4 / A p p l i c a t i o n s / C h r o m i u m . a p p � o      ���� 0 apppath appPath �  � � � r     � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b    	 � � � m     � � � � � 
 e c h o   � n     � � � 1    ��
�� 
strq � o    ���� 0 latestversion latestVersion � m   	 
 � � � � �     |   s e d   ' s / - . * / / '��   � o      ���� (0 upstreamversionnum upstreamVersionNum �  � � � Q    8 � � � � k    . � �  � � � l   �� � ���   �   does it exist?    � � � �    d o e s   i t   e x i s t ? �  � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � m     � � � � �  t e s t   - d   � n     � � � 1    ��
�� 
strq � o    ���� 0 apppath appPath��   �  � � � l   �� � ���   � %  if so, read its bundle version    � � � � >   i f   s o ,   r e a d   i t s   b u n d l e   v e r s i o n �  ��� � r    . � � � I   ,�� ���
�� .sysoexecTEXT���     TEXT � b    ( � � � b    & � � � l 	    ����� � m      � � � � �  d e f a u l t s   r e a d  ��  ��   � n     % � � � 1   # %��
�� 
strq � l    # ����� � b     # � � � o     !���� 0 apppath appPath � m   ! " � � � � �  / C o n t e n t s / I n f o��  ��   � m   & ' � � � � � 6   C F B u n d l e S h o r t V e r s i o n S t r i n g��   � o      ���� $0 installedversion installedVersion��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   6 8 � �  � � � l  6 6�� � ���   � - ' not installed ? definitely need update    � � � � N   n o t   i n s t a l l e d  !�   d e f i n i t e l y   n e e d   u p d a t e �  ��� � L   6 8 � � m   6 7��
�� boovtrue��   �  � � � l  9 9��������  ��  ��   �  � � � Z   9 E � ����� � =  9 < � � � o   9 :���� $0 installedversion installedVersion � o   : ;���� (0 upstreamversionnum upstreamVersionNum � L   ? A � � m   ? @��
�� boovfals��  ��   �  � � � l  F F��������  ��  ��   �  � � � l  F F�� � ���   � + % compare semver properly with sort -V    � � � � J   c o m p a r e   s e m v e r   p r o p e r l y   w i t h   s o r t   - V �  � � � r   F [ � � � I  F Y�� ���
�� .sysoexecTEXT���     TEXT � b   F U � � � b   F S � � � b   F Q � � � b   F M � � � b   F K � � � l 	 F G ����� � m   F G � � � � �  p r i n t f   ' % s 
 % s '  ��  ��   � n   G J � � � 1   H J��
�� 
strq � o   G H���� $0 installedversion installedVersion � m   K L � � � � �    � n   M P � � � 1   N P��
�� 
strq � o   M N���� (0 upstreamversionnum upstreamVersionNum � m   Q R � � � � �    |   � l 	 S T ����� � m   S T � � � � � $ s o r t   - V   |   h e a d   - n 1��  ��  ��   � o      ���� 0 cmp   �  ��� � L   \ `   >  \ _ o   \ ]���� 0 cmp   o   ] ^���� (0 upstreamversionnum upstreamVersionNum��   �  l     ��������  ��  ��    l     ����   R L Handler: download the DMG, mount it, rsync into /Applications, and clean up    �		 �   H a n d l e r :   d o w n l o a d   t h e   D M G ,   m o u n t   i t ,   r s y n c   i n t o   / A p p l i c a t i o n s ,   a n d   c l e a n   u p 

 i     I      ������ "0 installchromium installChromium �� o      �� 0 latestversion latestVersion��  ��   k     �  r      I    �~�}
�~ .sysoexecTEXT���     TEXT m      �  u n a m e   - m�}   o      �|�| 0 arch    r     m    	 � � h t t p s : / / a p i . g i t h u b . c o m / r e p o s / u n g o o g l e d - s o f t w a r e / u n g o o g l e d - c h r o m i u m - m a c o s / r e l e a s e s / l a t e s t o      �{�{ 0 releaselink releaseLink  l   �z�y�x�z  �y  �x    !  r    "#" I   �w$�v
�w .sysoexecTEXT���     TEXT$ b    %&% b    '(' b    )*) b    +,+ b    -.- l 	  /�u�t/ m    00 �11  c u r l   - f s S L  �u  �t  . n    232 1    �s
�s 
strq3 o    �r�r 0 releaselink releaseLink, l 	  4�q�p4 m    55 �66 ,   |   g r e p   - m 1   ' " n a m e " : . *�q  �p  * o    �o�o 0 arch  ( m    77 �88  - m a c o s . d m g '   |  & l 	  9�n�m9 m    :: �;; H s e d   - E   ' s / . * " n a m e " :   " ( [ ^ " ] + ) " . * / \ 1 / '�n  �m  �v  # o      �l�l 0 	latestdmg 	latestDmg! <=< l     �k�j�i�k  �j  �i  = >?> r     )@A@ b     'BCB b     %DED b     #FGF m     !HH �II � h t t p s : / / g i t h u b . c o m / u n g o o g l e d - s o f t w a r e / u n g o o g l e d - c h r o m i u m - m a c o s / r e l e a s e s / d o w n l o a d /G o   ! "�h�h 0 latestversion latestVersionE m   # $JJ �KK  /C o   % &�g�g 0 	latestdmg 	latestDmgA o      �f�f 0 downloadlink downloadLink? LML l  * *�e�d�c�e  �d  �c  M NON I  * 3�bPQ
�b .sysonotfnull��� ��� TEXTP b   * -RSR m   * +TT �UU > D o w n l o a d i n g   U n g o o g l e d - C h r o m i u m  S o   + ,�a�a 0 latestversion latestVersionQ �`V�_
�` 
apprV m   . /WW �XX 4 U n g o o g l e d - C h r o m i u m   U p d a t e r�_  O YZY I  4 C�^[�]
�^ .sysoexecTEXT���     TEXT[ b   4 ?\]\ b   4 ;^_^ b   4 9`a` m   4 5bb �cc   c u r l   - L   - o   / t m p /a n   5 8ded 1   6 8�\
�\ 
strqe o   5 6�[�[ 0 	latestdmg 	latestDmg_ m   9 :ff �gg   ] n   ; >hih 1   < >�Z
�Z 
strqi o   ; <�Y�Y 0 downloadlink downloadLink�]  Z jkj l  D D�X�W�V�X  �W  �V  k lml r   D Knon b   D Ipqp m   D Grr �ss  / t m p / C h r o m i u m -q o   G H�U�U 0 latestversion latestVersiono o      �T�T 0 
mountpoint 
mountPointm tut I  L W�Sv�R
�S .sysoexecTEXT���     TEXTv b   L Swxw m   L Oyy �zz  m k d i r   - p  x n   O R{|{ 1   P R�Q
�Q 
strq| o   O P�P�P 0 
mountpoint 
mountPoint�R  u }~} I  X o�O�N
�O .sysoexecTEXT���     TEXT b   X k��� b   X g��� b   X c��� b   X _��� m   X [�� ��� ( h d i u t i l   a t t a c h   / t m p /� n   [ ^��� 1   \ ^�M
�M 
strq� o   [ \�L�L 0 	latestdmg 	latestDmg� m   _ b�� ���    - m o u n t p o i n t  � n   c f��� 1   d f�K
�K 
strq� o   c d�J�J 0 
mountpoint 
mountPoint� m   g j�� ���    - n o b r o w s e�N  ~ ��� l  p p�I�H�G�I  �H  �G  � ��� I  p {�F��
�F .sysonotfnull��� ��� TEXT� m   p s�� ��� < I n s t a l l i n g   U n g o o g l e d - C h r o m i u m &� �E��D
�E 
appr� m   t w�� ��� 4 U n g o o g l e d - C h r o m i u m   U p d a t e r�D  � ��� I  | ��C��
�C .sysoexecTEXT���     TEXT� m   | �� ��� B r m   - r f   / A p p l i c a t i o n s / C h r o m i u m . a p p� �B��A
�B 
badm� m   � ��@
�@ boovtrue�A  � ��� I  � ��?��
�? .sysoexecTEXT���     TEXT� b   � ���� b   � ���� m   � ��� ���  c p   - R  � n   � ���� 1   � ��>
�> 
strq� l  � ���=�<� b   � ���� o   � ��;�; 0 
mountpoint 
mountPoint� m   � ��� ���  / C h r o m i u m . a p p�=  �<  � m   � ��� ���    / A p p l i c a t i o n s /� �:��9
�: 
badm� m   � ��8
�8 boovtrue�9  � ��� l  � ��7�6�5�7  �6  �5  � ��� I  � ��4��3
�4 .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ���  h d i u t i l   d e t a c h  � n   � ���� 1   � ��2
�2 
strq� o   � ��1�1 0 
mountpoint 
mountPoint�3  � ��� I  � ��0��/
�0 .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ���  r m   - r f  � n   � ���� 1   � ��.
�. 
strq� o   � ��-�- 0 
mountpoint 
mountPoint�/  � ��� I  � ��,��+
�, .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ���  r m   - f   / t m p /� n   � ���� 1   � ��*
�* 
strq� o   � ��)�) 0 	latestdmg 	latestDmg�+  � ��� I  � ��(��
�( .sysoexecTEXT���     TEXT� m   � ��� ��� r x a t t r   - d r   c o m . a p p l e . q u a r a n t i n e   / A p p l i c a t i o n s / C h r o m i u m . a p p� �'��&
�' 
badm� m   � ��%
�% boovtrue�&  � ��� l  � ��$�#�"�$  �#  �"  � ��!� I  � �� ��
�  .sysonotfnull��� ��� TEXT� b   � ���� b   � ���� m   � ��� ��� P C o m p l e t e d   i n s t a l l   o f   U n g o o g l e d - C h r o m i u m  � o   � ��� 0 latestversion latestVersion� m   � ��� ���  .� ���
� 
appr� m   � ��� ��� 4 U n g o o g l e d - C h r o m i u m   U p d a t e r�  �!   ��� l     ����  �  �  � ��� l     ����  �   Main   � ��� 
   M a i n� ��� l    ���� r     ��� I     ���� $0 getlatestversion getLatestVersion�  �  � o      �� 0 latestversion latestVersion�  �  � ��� l   ����� Z    ������ I    ���� 0 needsupdate needsUpdate� ��� o   	 
�� 0 latestversion latestVersion�  �  � Q    l   k    W  l   ��   . ( two-button dialog: �Later� and �Update�    � P   t w o - b u t t o n   d i a l o g :    L a t e r    a n d    U p d a t e  	
	 r    4 n    0 1   , 0�

�
 
bhit l 	  ,�	� l   ,�� I   ,�
� .sysodlogaskr        TEXT b     b     b     b     m     � d A   n e w   v e r s i o n   o f   U n g o o g l e d - C h r o m i u m   i s   a v a i l a b l e :   o    �� 0 latestversion latestVersion o    �
� 
ret  o    �
� 
ret  l 	  ��  m     � � T h i s   m a y   t a k e   a   f e w   m i n u t e s .   Y o u   w i l l   b e   p r o m p t e d   f o r   a n   a d m i n   p a s s w o r d   t o   i n s t a l l   t h e   u p d a t e .�  �    �� !
�� 
btns  J    """ #$# m    %% �&& 
 L a t e r$ '��' m     (( �))  U p d a t e��  ! ��*+
�� 
dflt* m   # $,, �--  U p d a t e+ ��./
�� 
disp. l 
 % &0����0 m   % &��
�� stic   ��  ��  / ��1��
�� 
givu1 m   ' (������  �  �  �	  �   o      ���� 0 
userchoice 
userChoice
 232 l  5 5��������  ��  ��  3 454 Z   5 U67��86 =  5 <9:9 o   5 8���� 0 
userchoice 
userChoice: m   8 ;;; �<<  U p d a t e7 I   ? E��=���� "0 installchromium installChromium= >��> o   @ A���� 0 latestversion latestVersion��  ��  ��  8 I  H U��?@
�� .sysonotfnull��� ��� TEXT? m   H KAA �BB   U p d a t e   p o s t p o n e d@ ��C��
�� 
apprC m   N QDD �EE 4 U n g o o g l e d - C h r o m i u m   U p d a t e r��  5 F��F l  V V��������  ��  ��  ��   R      ����G
�� .ascrerr ****      � ****��  G ��H��
�� 
errnH d      II m      ���� ���   k   _ lJJ KLK l  _ _��MN��  M + % user hit Esc or the dialog timed out   N �OO J   u s e r   h i t   E s c   o r   t h e   d i a l o g   t i m e d   o u tL P��P I  _ l��QR
�� .sysonotfnull��� ��� TEXTQ m   _ bSS �TT   U p d a t e   p o s t p o n e dR ��U��
�� 
apprU m   e hVV �WW 4 U n g o o g l e d - C h r o m i u m   U p d a t e r��  ��  �  � I  o ���XY
�� .sysonotfnull��� ��� TEXTX b   o xZ[Z b   o t\]\ m   o r^^ �__ 0 C h r o m i u m   i s   u p   t o   d a t e   (] o   r s���� 0 latestversion latestVersion[ m   t w`` �aa  )Y ��b��
�� 
apprb m   { ~cc �dd 4 U n g o o g l e d - C h r o m i u m   U p d a t e r��  �  �  � e��e l     ��������  ��  ��  ��       
��fghijk��������  f ������������������ $0 getlatestversion getLatestVersion�� 0 needsupdate needsUpdate�� "0 installchromium installChromium
�� .aevtoappnull  �   � ****�� 0 latestversion latestVersion��  ��  ��  g �� ����lm���� $0 getlatestversion getLatestVersion��  ��  l ������������ 0 arch  �� 0 releaselink releaseLink�� 0 	assetline 	assetLine�� 0 	latestdmg 	latestDmg�� 0 latestversion latestVersionm  ��  ,�� 0 3 : O S V k o r
�� .sysoexecTEXT���     TEXT
�� 
strq�� E�j E�O�E�O��,%�%�%��%�,%j E�O��,%�%�%j E�O��,%�%�%j E�O�h �� �����no���� 0 needsupdate needsUpdate�� ��p�� p  ���� 0 latestversion latestVersion��  n ������������ 0 latestversion latestVersion�� 0 apppath appPath�� (0 upstreamversionnum upstreamVersionNum�� $0 installedversion installedVersion�� 0 cmp  o  � ��� ��� � � � ����� � � � �
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  �� a�E�O��,%�%j E�O ��,%j O��%�,%�%j E�W 	X 	 
eO��  fY hO��,%�%��,%�%�%j E�O��i ������qr���� "0 installchromium installChromium�� ��s�� s  ���� 0 latestversion latestVersion��  q �������������� 0 latestversion latestVersion�� 0 arch  �� 0 releaselink releaseLink�� 0 	latestdmg 	latestDmg�� 0 downloadlink downloadLink�� 0 
mountpoint 
mountPointr #��0��57:HJT��W��bfry������������������
�� .sysoexecTEXT���     TEXT
�� 
strq
�� 
appr
�� .sysonotfnull��� ��� TEXT
�� 
badm�� ��j E�O�E�O��,%�%�%�%�%j E�O�%�%�%E�O�%��l O��,%�%��,%j Oa �%E�Oa ��,%j Oa ��,%a %��,%a %j Oa �a l Oa a el Oa �a %�,%a %a el Oa ��,%j Oa ��,%j Oa ��,%j Oa a el Oa  �%a !%�a "l j ��t����uv��
�� .aevtoappnull  �   � ****t k     �ww �xx �����  ��  ��  u  v  ����������%(��,����������������;��A��D����ySV^`c�� $0 getlatestversion getLatestVersion�� 0 latestversion latestVersion�� 0 needsupdate needsUpdate
�� 
ret 
�� 
btns
�� 
dflt
�� 
disp
�� stic   
�� 
givu���� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 
userchoice 
userChoice�� "0 installchromium installChromium
�� 
appr
�� .sysonotfnull��� ��� TEXT��  y ������
�� 
errn������  �� �*j+  E�O*�k+  ` H��%�%�%�%���lv������� a ,E` O_ a   *�k+ Y a a a l OPW X  a a a l Y a �%a %a a l k �zz $ 1 3 8 . 0 . 7 2 0 4 . 1 5 7 - 1 . 1��  ��  ��  ascr  ��ޭ