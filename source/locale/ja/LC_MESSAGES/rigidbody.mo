Þ    #      4              L  A   M  =        Í  æ  g  t   N  n   Ã  â   2  A        W  p   Ú  \   K  q   ¨  ÷   	  \   
  	   o
     y
  4   
  ¹   º
  7   t  2   ¬  ù   ß  3   Ù  #     |   1  }   ®  2   ,  r  _  +   Ò     þ  !     
   >     I  6   _  È     i  _  <   É  Q     Í   X  y  &  q      t     (    ?   °  ²   ð     £  M   5  ¶     n  :  v   ©           6  K   L      W   ®  F       M  ?   Í   @   !  ¶   N!     "  0   "    Á"  H   Ó$     %  4   ;%     p%     w%  U   %  Ý   æ%   **Bounce Coefficient**: reflects the elasticity of the collision. **Collision Group**: rigidbody will collide with which group. **Copy Rigidbody Shape**: Within rigid Body modification interface, press ctrl+"M" will copy the active rigidbody shape to other selected rigidbody bone. **Customize Rigidbody Shape**: Within rigid Body modification interface, press "E" to edit selected rigidbody. Physx's dynamic rigid body only supports convex polygons. If it is a concave polygon, it will be baked into a convex polygon according to the vertices. The baked shape can be checked in the Physx Visual Debugger. For physx, the calculation the speed of custom mesh rigid bodies is not as fast as its default shape. If there are no special needs, try to use the default shape. **Dynamic Friction Coefficient**: the resistance to motion when two surfaces are already sliding against each other. **Dynamic**: A dynamic rigid body is a rigid body calculated by physx and will move under the action of force. **Kinematic**: The kinematic rigid body is controlled by the user's key frame animation. Its movement is absolute and not affected by any force. And it can collide with the dynamic rigid body to make dynamic rigid body motion. **Mass**: The mass of a rigid body, obeying various physical laws **Rigidbody Group**: rigidbody belongs to which group. If empty is set, that means this rigidbody will not collide with any thing. **Rigidbody Shape Refresh Interval**: If you feel laggy in rigidbody modify mode, increase refresh interval time **Static Friction Coefficient**: the resistance to the start of motion between two surfaces. **Switch default shape**: Within rigid Body modification interface, press "T" to switch selected rigidbody shape. **note, that when a bone is set as rigid body, this addon will create a empty object at the bone call driver, and this bone will completely track to this driver. If you want to move bone manually, you can check the tool panel for more operation.** A kinimatic rigidbody can be set keyframe to move and rotate to drive the dynamic rigidbody. Animation Basic usage Ctrl+F,Toggle whether to display rigidbody in front. Ctrl+H,Toggle whether to only display visible pose bone rigidbody shape. You can set this option to only view the visible pose bone corresponding rigidbody shape when there is too much. Ctrl+L, Toggle whether to display rigidbody shape edges F, Toggle whether to display rigidbody shape faces For Example, I want to disable a skirt self collision. Set the rigidbody group to second layer enable, and set the collision group second layer disable, which means skirt is in second group, and skirt will not collide with rigidbody in second group. Friction Force only appear when the pressure exist. H, Toggle whether to hide rigidbody If a bone is set to a dynamic rigid body and it has a parent bone, the dynamic bone will be still controlled by parent bone. If you want to disable the collision internal a certain group, then disable the collision group of their corresponding group. In Rigidbody Modify Mode, Drawing Visible Settings In bone pose mode, click the "Start Modify" button to access the Rigid Body modification interface. Within this interface, you have press "C" to set selected bones as rigid body bones, which allows them to be driven by physx during animations. Additionally, you can view the shape of the rigid body and change the properties of the selected rigid body bone in this mode. Kinematic rigidbodies are not always needed Modify the Shape of Rigidbody Press "S" to scale the rigidbody. Rigid body Rigid body properties W, Toggle whether to display rigidbody soft connection Within rigid Body modification interface, when you select a rigidody bone, you will see the property in the panel. You can change the value, then the setting will apply to the selected rigidbody bone. Project-Id-Version: Blender Bonex Document
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-04-14 19:43+0800
PO-Revision-Date: 2024-04-12 21:33+0800
Last-Translator: 
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.14.0
 **ãã¦ã³ã¹ä¿æ°**: è¡çªã®å¼¾æ§ãåæ ãã¾ãã **ã³ãªã¸ã§ã³ã°ã«ã¼ã**: åä½ã¯ã©ã®ã°ã«ã¼ãã¨è¡çªãã¾ãã **åä½ã·ã§ã¤ãã®ã³ãã¼**: åä½å¤æ´ã¤ã³ã¿ã¼ãã§ã¤ã¹åã§ Ctrl+ãMããæ¼ãã¨ãã¢ã¯ãã£ããªåä½ã·ã§ã¤ããé¸æããä»ã®åä½ãã¼ã³ã«ã³ãã¼ããã¾ãã **åä½å½¢ç¶ã®ã«ã¹ã¿ãã¤ãº**: åä½å¤æ´ã¤ã³ã¿ã¼ãã§ã¤ã¹åã§ããEããæ¼ãã¦ãé¸æããåä½ãç·¨éãã¾ãã Physx ã®dynamicåä½ã¯å¸ããªã´ã³ã®ã¿ããµãã¼ããã¾ãã å¹ããªã´ã³ã®å ´åã¯é ç¹ã«åããã¦å¸ããªã´ã³ã«ãã¤ã¯å¦çããã¾ãã ãã¤ã¯ããå½¢ç¶ã¯ Physx Visual Debugger ã§ç¢ºèªã§ãã¾ãã physx ã®å ´åãã«ã¹ã¿ã  ã¡ãã·ã¥ ãªã¸ãã ããã£ã®è¨ç®éåº¦ã¯ãããã©ã«ãã®ã·ã§ã¤ãã»ã©éãããã¾ããã ç¹å¥ãªå¿è¦ããªãå ´åã¯ãããã©ã«ãã®å½¢ç¶ãä½¿ç¨ãã¦ã¿ã¦ãã ããã **åæ©æ¦ä¿æ°**: 2 ã¤ã®è¡¨é¢ããã§ã«äºãã«æ»ãåã£ã¦ããã¨ãã®åãã«å¯¾ããæµæã **Dynamic**: dynamicåä½ã¯ãphysx ã«ãã£ã¦è¨ç®ãããåä½ã§ãããåã®ä½ç¨ä¸ã§åãã¾ãã **Kinematic**: kinematicåä½ã¯ãã¦ã¼ã¶ã¼ã®ã­ã¼ãã¬ã¼ã  ã¢ãã¡ã¼ã·ã§ã³ã«ãã£ã¦å¶å¾¡ããã¾ãã ãã®åãã¯çµ¶å¯¾çã§ããããããªãåã«ãå½±é¿ããã¾ããã ã¾ããdynamicåä½ã¨è¡çªãã¦dynamicåä½éåãè¡ããã¨ãã§ãã¾ãã **è³ªé**: ãã¾ãã¾ãªç©çæ³åã«å¾ãåä½ã®è³ªé **åä½ã°ã«ã¼ã**: åä½ãã©ã®ã°ã«ã¼ãã«å±ãã¦ãããã ç©ºãè¨­å®ããã¦ããå ´åããã®åä½ã¯ä½ã¨ãè¡çªããªããã¨ãæå³ãã¾ãã **åä½å½¢ç¶ã®æ´æ°éé**: åä½ å¤æ´ã¢ã¼ãã§éããæããå ´åã¯ããªãã¬ãã·ã¥ééæéãå¢ããã¦ãã ãã **éæ©æ¦ä¿æ°**: 2 ã¤ã®è¡¨é¢éã®åãã®éå§ã«å¯¾ããæµæã **ããã©ã«ãã®å½¢ç¶ãåãæ¿ãã**: åä½å¤æ´ã¤ã³ã¿ã¼ãã§ã¤ã¹åã§ããTããæ¼ãã¦ãé¸æãããªã¸ãã ããã£ã®å½¢ç¶ãåãæ¿ãã¾ãã **ãã¼ã³ãåä½ã¨ãã¦è¨­å®ããã¦ããå ´åããã®ã¢ããªã³ã¯ãã¼ã³å¼ã³åºããã©ã¤ãã¼ã§ç©ºã®ãªãã¸ã§ã¯ããä½æãããã®ãã¼ã³ã¯ãã®ãã©ã¤ãã¼ãå®å¨ã«è¿½è·¡ãããã¨ã«æ³¨æãã¦ãã ããã ãã¼ã³ãæåã§ç§»åããå ´åã¯ããã¼ã« ããã«ã§è©³ç´°ãªæä½ãç¢ºèªã§ãã¾ãã** kinematicåä½ãç§»åããã³åè»¢ããã­ã¼ãã¬ã¼ã ãè¨­å®ãã¦ãdynamicåä½ãé§åã§ãã¾ãã ã¢ãã¡ã¼ã·ã§ã³ åºæ¬çãªä½¿ãæ¹ Ctrl+Fãåä½ãåé¢ã«è¡¨ç¤ºãããã©ãããåãæ¿ãã¾ãã Ctrl+Hãå¯è¦ã®ãã¼ãº ãã¼ã³åä½ã·ã§ã¤ãã®ã¿ãè¡¨ç¤ºãããã©ãããåãæ¿ãã¾ãã ãã®ãªãã·ã§ã³ãè¨­å®ããã¨ãåä½ ã·ã§ã¤ãã«å¯¾å¿ããè¡¨ç¤ºããã¦ãããã¼ãº ãã¼ã³ã®ã¿ãè¡¨ç¤ºãããããã«ãªãã¾ãã Ctrl+Lãåä½ã·ã§ã¤ãã®ã¨ãã¸ãè¡¨ç¤ºãããã©ãããåãæ¿ãã¾ã Fãåä½å½¢ç¶ã®é¢ãè¡¨ç¤ºãããã©ãããåãæ¿ãã¾ã ãã¨ãã°ãã¹ã«ã¼ãã®èªå·±è¡çªãç¡å¹ã«ãããã¨ãã¾ãã ãªã¸ããããã£ ã°ã«ã¼ãã 2 çªç®ã®ã¬ã¤ã¤ãæå¹ã«è¨­å®ããè¡çªã°ã«ã¼ãã® 2 çªç®ã®ã¬ã¤ã¤ãç¡å¹ã«è¨­å®ãã¾ããã¤ã¾ããã¹ã«ã¼ãã¯ 2 çªç®ã®ã°ã«ã¼ãã«ãããã¹ã«ã¼ãã¯ 2 çªç®ã®ã°ã«ã¼ãã®ãªã¸ããããã£ã¨è¡çªãã¾ããã æ©æ¦åã¯å§åãå­å¨ããå ´åã«ã®ã¿ç¾ãã¾ãã Hãåä½ãéè¡¨ç¤ºã«ãããã©ãããåãæ¿ãã¾ã ãã¼ã³ãdynamicåä½ã«è¨­å®ããã¦ãããããã«è¦ªãã¼ã³ãããå ´åããã¤ãããã¯ ãã¼ã³ã¯ä¾ç¶ã¨ãã¦è¦ªãã¼ã³ã«ãã£ã¦å¶å¾¡ããã¾ãã ç¹å®ã®ã°ã«ã¼ãåã®ã³ãªã¸ã§ã³ãç¡å¹ã«ãããå ´åã¯ãå¯¾å¿ããã³ãªã¸ã§ã³ã°ã«ã¼ããç¡å¹ã«ãã¾ãã åä½å¤æ´ã¢ã¼ãã§ã®æç»ã®è¡¨ç¤ºè¨­å® ãã¼ã³ ãã¼ãº ã¢ã¼ãã§ã¯ã[å¤æ´éå§] ãã¿ã³ãã¯ãªãã¯ãã¦ãåä½å¤æ´ã¤ã³ã¿ã¼ãã§ã¤ã¹ã«ã¢ã¯ã»ã¹ãã¾ãã ãã®ã¤ã³ã¿ã¼ãã§ã¤ã¹åã§ããCããæ¼ãã¦é¸æãããã¼ã³ãåä½ãã¼ã³ã¨ãã¦è¨­å®ããã¢ãã¡ã¼ã·ã§ã³ä¸­ã« physx ã«ãã£ã¦ãã¼ã³ãé§åã§ããããã«ãã¾ãã ããã«ããã®ã¢ã¼ãã§ã¯ãåä½ã®å½¢ç¶ãè¡¨ç¤ºããããé¸æããåä½ ãã¼ã³ã®ãã­ããã£ãå¤æ´ããããããã¨ãã§ãã¾ãã kinematicåä½ã¯å¿ãããå¿è¦ã¨ããããã§ã¯ããã¾ãã åä½ã®å½¢ç¶ãå¤æ´ãã ãSããæ¼ãã¦åä½ãã¹ã±ã¼ã«ãã¾ãã åä½ åä½ã®ãã­ããã£ Wãåä½ã½ããã³ãã¯ã·ã§ã³ãè¡¨ç¤ºãããã©ãããåãæ¿ãã¾ã åä½å¤æ´ã¤ã³ã¿ã¼ãã§ã¤ã¹åã§åä½ãã¼ã³ãé¸æããã¨ãããã«ã«ãã­ããã£ãè¡¨ç¤ºããã¾ãã å¤ãå¤æ´ããã¨ããã®è¨­å®ãé¸æãã åä½ãã¼ã³ã«é©ç¨ããã¾ãã 