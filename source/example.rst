Parameters with Examples
==============================

Parameters Tips
------------------------

**Parameter adjustment techniques, the following techniques are also applicable to other physics engines**

For rigid bodies on a chain, it is equivalent to having a spring between them to connect them two by one. You need to adjust the appropriate parameters to make it meet the results you want.

①The first is to maintain the shape. The rigid body chain will sag due to the influence of gravity. If you don’t want it to sag due to gravity, then adjust the gravity to 0, or reduce the mass or increase the stiffness of the connection (pay attention to the arrangement of the parameters, because one parameter changes will lead to other aspects changes)

②The relationship between mass and spring stiffness. When a rigid body chain shakes, it is affected by the force of the spring connection and the inertial force of the rigid body. The greater the mass, the greater the inertial force and the better the shaking; the greater the spring stiffness, the spring will The greater the force required to deform, the harder it is to shake. For example, imagine that a piece of iron is tied to a spring and a piece of paper is tied to the spring. Which one shakes better? It should be noted that the greater the stiffness of the spring, the greater the rebound force. Therefore, when the spring of large stiffness shakes, it will rock back and forth around the initial position.

③The relationship between spring stiffness and damping. Damping is the force that prevents the spring from returning to the origin. The greater the damping, the greater the resistance (the resistance will not exceed the rebound force of the spring). It slows down the rebound due to spring stiffness, and is the parameter you want if you don't want the rigid body to rock back and forth around its initial position, or if you want the motion to look a little softer.

④The relationship between mass and motion. The greater the mass, the greater the inertial force. If you want to express the feeling of an object staying in the air, counter-intuitively, you need to increase the mass, because a rigid body with a small mass is more likely to be pulled by the spring stiffness and return quickly, the time in the air is not long, and an object with a larger mass has a larger inertial force, and the same spring stiffness takes more time to pull it, so it can reflect the feeling of being in the air.

Generally speaking, there is no need to twist, so the angle limit in the direction of the twist axis can be set to 0


Example
------------

Furry Ear and Tail
^^^^^^^^^^^^^^^^^^^^^^^
For the tail, you want medium stiffness so it can bounce back, and medium damping so it looks more natural.
For the ears, you can refer to the settings of the tail, but you can give higher damping to reflect the soft effect.

Hair
^^^^^^^^^^^^^^^^^^^^^^^
For hair, you need lower stiffness because hair is very soft, and higher damping because hair is very light and subject to greater air resistance. And decrease the bounce Coefficient, cause hair is soft and light, when it collides with other things it will not bounce too much in real world.

Cloth
^^^^^^^^^^^^^^^^^^^^^^^
For cloth, refer to the parameters of hair to increase gravity or stiffness

Breast
^^^^^^^^^^^^^^^^^^^^^^^
For the breast, a slightly higher stiffness is needed to produce a certain rocking effect and reflect elasticity. At the same time, adjusting the displacement limit slightly higher than 0 can achieve better physical effects.


需要注意的是，kinimatic刚体的父骨骼中，不应出现dynamic刚体。因为子骨骼的变换受到父骨骼的影响，而kinimatic刚体的运动又会影响dynamic刚体，导致循环作用，搞乱模拟结果。
如果你仍然需要制作像两端挂绳一样的效果，那么尾部设置的kinimatic刚体需要使用copy transform骨骼约束，将其绑定到空物体上，使其位移和旋转钧脱离父骨骼的影响才能正常使用（要注意connected不要勾选，否则会锁定位置导致异常）
