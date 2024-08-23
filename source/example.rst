Parameters with Examples
==============================

Parameters Tips
------------------------

**Before Start: Rigidbody parameters is not real time pass, cause it is consume performance. You need to restart playback to see rigidbody parameters changed result.**

**Parameter adjustment techniques, the following techniques are also applicable to other physics engines**

For rigid bodies on a chain, it is equivalent to having a spring between them to connect them two by one. You need to adjust the appropriate parameters to make it meet the results you want.

①The first is to maintain the shape. The rigid body chain will sag due to the influence of gravity. If you don’t want it to sag due to gravity, then adjust the gravity to 0, or reduce the mass or increase the stiffness of the connection (pay attention to the arrangement of the parameters, because one parameter changes will lead to other aspects changes)

②The relationship between mass and spring stiffness. When a rigid body chain shakes, it is affected by the force of the spring connection and the inertial force of the rigid body. The greater the mass, the greater the inertial force and the better the shaking; the greater the spring stiffness, the spring will The greater the force required to deform, the harder it is to shake. For example, imagine that a piece of iron is tied to a spring and a piece of paper is tied to the spring. Which one shakes better? It should be noted that the greater the stiffness of the spring, the greater the rebound force. Therefore, when the spring of large stiffness shakes, it will rock back and forth around the initial position.

③The relationship between spring stiffness and damping. Damping is the force that prevents the spring from returning to the origin. The greater the damping, the greater the resistance (the resistance will not exceed the rebound force of the spring). It slows down the rebound due to spring stiffness, and is the parameter you want if you don't want the rigid body to rock back and forth around its initial position, or if you want the motion to look a little softer.

④The relationship between mass and motion. The greater the mass, the greater the inertial force. If you want to express the feeling of an object staying in the air, counter-intuitively, you need to increase the mass, because a rigid body with a small mass is more likely to be pulled by the spring stiffness and return quickly, the time in the air is not long, and an object with a larger mass has a larger inertial force, and the same spring stiffness takes more time to pull it, so it can reflect the feeling of being in the air.

⑤The scale is important. The simulation is carried out in accordance with the laws of physics. For example, when giving a rigid body to the breast bone, you may find that it cannot shake up and down. You may need to consider whether the scaling is too small, resulting in the bone being too short and the center of mass moment arm being too short. In this case You can try to enlarge the model, but this is often troublesome, then you can try increasing the mass of the rigidbody or decrease stiffness.

Generally speaking, there is no need to twist, so the angle limit in the direction of the twist axis can be set to 0


Example
------------

Example video tutorials will be updated sequentially.

Furry Ear and Tail
^^^^^^^^^^^^^^^^^^^^^^^
For the tail, you want medium stiffness so it can bounce back, and medium damping so it looks more natural.
For the ears, you can refer to the settings of the tail, but you can give higher damping to reflect the soft effect.

.. raw:: html

    <video width="100%" controls src="../video/sakamoto_demo.mp4">
      Your browser does not support the video tag.
    </video>

......

Hair
^^^^^^^^^^^^^^^^^^^^^^^
For hair, you need lower stiffness because hair is very soft, and higher rigidbody damping(not spring damping) because hair is very light and subject to greater air resistance. And decrease the bounce Coefficient, cause hair is soft and light, when it collides with other things it will not bounce too much in real world.

Cloth
^^^^^^^^^^^^^^^^^^^^^^^
For cloth, refer to the parameters of hair, and increase gravity or stiffness

.. raw:: html

    <video width="100%" controls src="../video/ballet_demo.mp4">
      Your browser does not support the video tag.
    </video>

......

Tips for skirt bones, if your skir bones' roll is not correct, you can select bones in edit mode, and "Shift+N -> Cursor" (maybe is not perfect but it is faster than edit manually)

Breast
^^^^^^^^^^^^^^^^^^^^^^^
For the breast, a slightly higher stiffness is needed to produce a certain rocking effect and reflect elasticity. At the same time, adjusting the displacement limit slightly higher than 0 can achieve better physical effects.

.. raw:: html

    <video width="100%" controls src="../video/pudding_demo.mp4">
      Your browser does not support the video tag.
    </video>

......

Simple Ragdoll
^^^^^^^^^^^^^^^^^^^^^^^

.. raw:: html

    <video width="100%" controls src="../video/ragdoll_demo.mp4">
      Your browser does not support the video tag.
    </video>

......

Necklace
^^^^^^^^^^^^^^^^^^^^^^^

.. raw:: html

    <video width="100%" controls src="../video/necklace.mp4">
      Your browser does not support the video tag.
    </video>


.. raw:: html

    <a href="../project/necklace.blend" download style="font-size: 24px; font-weight: bold;">Necklace Example Download</a>
    <br />
    
......

Trickcal Character Demo
^^^^^^^^^^^^^^^^^^^^^^^

.. raw:: html

    <video width="100%" controls src="../video/picora_demo.mp4">
      Your browser does not support the video tag.
    </video>


.. raw:: html

    <a href="../project/烈車拳_release.blend" download style="font-size: 24px; font-weight: bold;">Picora Example Download</a>
    <br />




It should be noted that the dynamic rigid body should not appear in the parent bone of the kinimatic rigid body. Because in Blender, the transformation of the child bone is affected by the parent bone, and in PhysX, the movement of the kinimatic rigid body will affect the dynamic rigid body, which will lead to cyclic effects and mess up the simulation results. If you still want to create such an effect, then the kinimatic rigid body set at the tail needs to use "copy transform" bone constraints so that its displacement and rotation are free from the influence of the parent bone (note that connected is not checked, otherwise the displacement will be locking). Or you can use soft connection to get this.

