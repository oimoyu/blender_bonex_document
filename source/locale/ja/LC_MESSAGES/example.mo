Þ          Ô              j   	     t     {       5     M   ¿  #    ½   1  à   ï  à   Ð     ±  t   Ä     9    >     Ø	     è	     
  g  
  Ï  x  Ô  H      ø  3  Z  ,  v        þ            H   
  Z   S  r  ®  å   !  	    9    !   K  j   m     Ø  J  Ü     '     C     Y    x  é  !  î  ð#  û  ß%  x  Û'                                          	                     
                                         **Parameter adjustment techniques, the following techniques are also applicable to other physics engines** Breast Cloth Example Example video tutorials will be updated sequentially. For cloth, refer to the parameters of hair, and increase gravity or stiffness For hair, you need lower stiffness because hair is very soft, and higher damping because hair is very light and subject to greater air resistance. And decrease the bounce Coefficient, cause hair is soft and light, when it collides with other things it will not bounce too much in real world. For rigid bodies on a chain, it is equivalent to having a spring between them to connect them two by one. You need to adjust the appropriate parameters to make it meet the results you want. For the breast, a slightly higher stiffness is needed to produce a certain rocking effect and reflect elasticity. At the same time, adjusting the displacement limit slightly higher than 0 can achieve better physical effects. For the tail, you want medium stiffness so it can bounce back, and medium damping so it looks more natural. For the ears, you can refer to the settings of the tail, but you can give higher damping to reflect the soft effect. Furry Ear and Tail Generally speaking, there is no need to twist, so the angle limit in the direction of the twist axis can be set to 0 Hair It should be noted that the dynamic rigid body should not appear in the parent bone of the kinimatic rigid body. Because in Blender, the transformation of the child bone is affected by the parent bone, and in PhysX, the movement of the kinimatic rigid body will affect the dynamic rigid body, which will lead to cyclic effects and mess up the simulation results. If you still want to create such an effect, then the kinimatic rigid body set at the tail needs to use "copy transform" bone constraints so that its displacement and rotation are free from the influence of the parent bone (note that connected is not checked, otherwise the displacement will be locking) Parameters Tips Parameters with Examples Simple Ragdoll â The first is to maintain the shape. The rigid body chain will sag due to the influence of gravity. If you donât want it to sag due to gravity, then adjust the gravity to 0, or reduce the mass or increase the stiffness of the connection (pay attention to the arrangement of the parameters, because one parameter changes will lead to other aspects changes) â¡The relationship between mass and spring stiffness. When a rigid body chain shakes, it is affected by the force of the spring connection and the inertial force of the rigid body. The greater the mass, the greater the inertial force and the better the shaking; the greater the spring stiffness, the spring will The greater the force required to deform, the harder it is to shake. For example, imagine that a piece of iron is tied to a spring and a piece of paper is tied to the spring. Which one shakes better? It should be noted that the greater the stiffness of the spring, the greater the rebound force. Therefore, when the spring of large stiffness shakes, it will rock back and forth around the initial position. â¢The relationship between spring stiffness and damping. Damping is the force that prevents the spring from returning to the origin. The greater the damping, the greater the resistance (the resistance will not exceed the rebound force of the spring). It slows down the rebound due to spring stiffness, and is the parameter you want if you don't want the rigid body to rock back and forth around its initial position, or if you want the motion to look a little softer. â£The relationship between mass and motion. The greater the mass, the greater the inertial force. If you want to express the feeling of an object staying in the air, counter-intuitively, you need to increase the mass, because a rigid body with a small mass is more likely to be pulled by the spring stiffness and return quickly, the time in the air is not long, and an object with a larger mass has a larger inertial force, and the same spring stiffness takes more time to pull it, so it can reflect the feeling of being in the air. â¤The scale is important. The simulation is carried out in accordance with the laws of physics. For example, when giving a rigid body to the breast bone, you may find that it cannot shake up and down. You may need to consider whether the scaling is too small, resulting in the bone being too short and the center of mass moment arm being too short. In this case You can try to enlarge the model, but this is often troublesome, then you can try increasing the mass of the rigidbody or decrease stiffness. Project-Id-Version: Blender Bonex Document
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-04-13 16:33+0800
Last-Translator: 
Language-Team: ja <LL@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
Generated-By: Babel 2.14.0
X-Generator: Poedit 3.4.2
 **ãã©ã¡ã¼ã¿èª¿æ´ãã¯ããã¯ãä»¥ä¸ã®ãã¯ããã¯ã¯ä»ã®ç©çã¨ã³ã¸ã³ã«ãé©ç¨ã§ãã¾ã** è¸ å¸ ä¾ ãµã³ãã«ãããªãã¥ã¼ããªã¢ã«ã¯é æ¬¡æ´æ°ããã¾ãã å¸ã®å ´åã¯é«ªã®ãã©ã¡ã¼ã¿ãåç§ããéåãåæ§ãä¸ãã¦ãã ãã é«ªã®å ´åãé«ªã¯éå¸¸ã«æããããããåæ§ã¯ä½ãããå¿è¦ããããé«ªã¯éå¸¸ã«è»½ããç©ºæ°æµæãå¤§ãããããæ¸è¡°ã¯é«ãããå¿è¦ãããã¾ãã ã¾ãããã¦ã³ã¹ä¿æ°ãå°ããããã¨ãé«ªãæãããã¦è»½ããªããç¾å®ä¸çã§ã¯é«ªãä»ã®ãã®ã¨è¡çªãã¦ããã¾ãè·³ã­ãªããªãã¾ãã ãã§ã¼ã³ä¸ã®åä½ã«ã¤ãã¦ã¯ããããã®éã«ãããç½®ãã¦ 2 ã¤ãã¤æ¥ç¶ããã®ã¨åãã§ãã å¸æã®çµæãå¾ãããããã«ãé©åãªãã©ã¡ã¼ã¿ãèª¿æ´ããå¿è¦ãããã¾ãã è¸ã®å ´åãä¸å®ã®æºãå¹æãçã¿åºããå¼¾åæ§ãåæ ããã«ã¯ããããã«é«ãåæ§ãå¿è¦ã§ãã åæã«ãå¤ä½å¶éã 0 ãããããã«å¤§ããèª¿æ´ããã¨ãããè¯ãç©ççå¹æãå¾ããã¨ãã§ãã¾ãã ãã¼ã«ã®å ´åã¯ãè·³ã­è¿ãããã«ä¸­ç¨åº¦ã®åæ§ãå¿è¦ã§ãããèªç¶ã«è¦ããããã«ä¸­ç¨åº¦ã®æ¸è¡°ãå¿è¦ã§ãã è³ã«ã¤ãã¦ã¯ãã¼ã«ã®è¨­å®ãåç§ã§ãã¾ãããã½ããå¹æãåæ ããããã«ããé«ããã³ãã³ã°ãä¸ãããã¨ãã§ãã¾ãã æ¯ç®ã®ãããªè³ã¨ãã£ã½ ä¸è¬çã«ã¯ã­ããå¿è¦ããªããããã­ããè»¸æ¹åã®è§åº¦å¶éã0ã«è¨­å®ã§ãã¾ã é«ª dynaimcåä½ã¯ãkinematicåä½ã®è¦ªãã¼ã³ã«è¡¨ç¤ºãããªããã¨ã«æ³¨æãã¦ãã ããã Blender ã§ã¯å­ãã¼ã³ã®å¤å½¢ã¯è¦ªãã¼ã³ã®å½±é¿ãåãã¾ãããPhysX ã§ã¯ã­ãããã£ãã¯ ãªã¸ãã ããã£ã®åãããã¤ãããã¯ ãªã¸ãã ããã£ã«å½±é¿ãä¸ãããããå¨æçãªå¹æãçºçãã¦ã·ãã¥ã¬ã¼ã·ã§ã³çµæãå°ç¡ãã«ãªã£ã¦ãã¾ãã¾ãã ããã§ããã®ãããªå¹æãä½æãããå ´åã¯ãå°¾é¨ã«è¨­å®ãããã­ãããã£ãã¯ ãªã¸ãã ããã£ã«ãã³ãã¼å¤æããã¼ã³ ã³ã³ã¹ãã¬ã¤ã³ããä½¿ç¨ãã¦ããã®å¤ä½ã¨åè»¢ãè¦ªãã¼ã³ã®å½±é¿ãåããªãããã«ããå¿è¦ãããã¾ã(connectedããã§ãã¯ããã¦ããªããã¨ã«æ³¨æãããã§ãªãã¨å¤ä½ãã­ãã¯ããã) ãã©ã¡ã¼ã¿ã®ãã³ã ãã©ã¡ã¼ã¿ã¨ä¾ ã·ã³ãã«ãªã©ã°ãã¼ã« â 1ã¤ç®ã¯å½¢ç¶ãç¶­æãããã¨ã§ãã åä½ãã§ã¼ã³ã¯éåã®å½±é¿ã«ããããã¿ã¾ãã éåã«ãã£ã¦ããã¿ãçããããªãå ´åã¯ãéåã 0 ã«èª¿æ´ããããè³ªéãæ¸ãããæ¥ç¶ã®åæ§ãé«ãã¾ã (1 ã¤ã®ãã©ã¡ã¼ã¿ã¼ã®å¤æ´ãä»ã®å´é¢ã«å½±é¿ããããããã©ã¡ã¼ã¿ã¼ã®éç½®ã«æ³¨æãã¦ãã ãã) å¤æ´) â¡è³ªéã¨ããåæ§ã®é¢ä¿ã åä½ãã§ã¼ã³ãæºããã¨ãã¹ããªã³ã°æ¥ç¶ã®åã¨åä½ã®æ£æ§åã®å½±é¿ãåãã¾ãã è³ªéãå¤§ããã»ã©æ£æ§åãå¤§ãããªããæºããè¯ããªãã¾ãã ããã®åæ§ãå¤§ããã»ã©ãããã¯å¤å½¢ããã®ã«å¿è¦ãªåãå¤§ãããªããæºãã«ãããªãã¾ãã ãã¨ãã°ãéçãããã«çµã³ä»ããããä¸æã®ç´ãããã«çµã³ä»ãããã¦ããã¨æ³åãã¦ãã ããã ã©ã£ã¡ãããæºãã¾ããï¼ ããã®åæ§ãå¤§ããã»ã©åçºåãå¤§ãããªããã¨ã«æ³¨æãã¦ãã ããã ãã®ãããåæ§ã®å¤§ããªããã¯æºããã¨åæä½ç½®ãä¸­å¿ã«åå¾ã«æºãã¦ãã¾ãã¾ãã â¢ããã®åæ§ã¨æ¸è¡°ã®é¢ä¿ããã³ãã³ã°ã¨ã¯ãã¹ããªã³ã°ãåã®ä½ç½®ã«æ»ããªãããã«ããåã®ãã¨ã§ãã ãã³ãã³ã°ãå¤§ããã»ã©æµæãå¤§ãããªãã¾ãï¼æµæã¯ã¹ããªã³ã°ã®åçºåãè¶ãã¾ããï¼ã ããã®åæ§ã«ãããªãã¦ã³ããéãããåä½ãåæä½ç½®ãä¸­å¿ã«åå¾ã«æºããããªãå ´åãã¾ãã¯ã¢ã¼ã·ã§ã³ãå°ãæãããè¦ãããå ´åã«å¿è¦ãªãã©ã¡ã¼ã¿ã§ãã è³ªéã¨éåã®é¢ä¿ãè³ªéãå¤§ããã»ã©æ£æ§åã¯å¤§ãããªããç©ä½ãå®ã«æµ®ãã¦ããæããè¡¨ç¾ãããã®ã§ããã°ãéã«è³ªéãå¤§ããããå¿è¦ããããè³ªéãå°ããåä½ã¯ããã®ç¡¬ãã«å¼ã£å¼µããã¦ããã«æ»ãããããå®ã«æµ®ãã¦ããæéã¯é·ããªããè³ªéãå¤§ããç©ä½ã¯æ£æ§åãå¤§ãããåãããã®ç¡¬ãã§ãå¼ã£å¼µãã®ã«æéããããã®ã§ãå®ã«æµ®ãã¦ããæããåæ ã§ããã â¤ã¹ã±ã¼ã«ã¯éè¦ã§ãã ã·ãã¥ã¬ã¼ã·ã§ã³ã¯ç©çæ³åã«å¾ã£ã¦å®è¡ããã¾ãã ãã¨ãã°ãè¸ã®éª¨ã«åä½ãä¸ããã¨ãä¸ä¸ã«æ¯ããã¨ãã§ããªãå ´åãããã¾ãã ã¹ã±ã¼ãªã³ã°ãå°ãããã¦ãã¼ã³ãç­ãããããéå¿ã¢ã¼ã¡ã³ã ã¢ã¼ã ãç­ããããããå¯è½æ§ããããã©ãããèæ®ããå¿è¦ãããå ´åãããã¾ãã ãã®å ´åãã¢ãã«ãæ¡å¤§ãã¦ã¿ããã¨ãã§ãã¾ãããããã¯å¤ãã®å ´åé¢åãªã®ã§ãåä½ã®è³ªéãå¢ããããåæ§ãä¸ãããã¨ãè©¦ã¿ããã¨ãã§ãã¾ãã 