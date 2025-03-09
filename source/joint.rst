Joint
==========

.. raw:: html

    <a href="../image/joint_setting.png" target="_blank">
        <img src="../image/joint_setting.png" style="width: 20%;" />
    </a>

Component of Joint
------------------------
Within rigid Body modification interface, press "C", a rigid body will be created at position of the bone. If the bone has a parent, a joint will be created at the head of the bone to connect the parent bone, the child bone can rotate and move around the joints. If the bone don't have a parent, joints will not be created.The axis in the joint settings means the local axis of the bone (The local axis of the bone can be set to display in the armature properties armature->Data->Viewport Display->Axes). The center of mass of the rigidbody will be fixed at the tail of the bone, so the behavior of collision as a single rigidbody will be a bit strange without a parent bone. 

Joint between two rigidbody can be seen as a spring, two rigidbody is connected by spring force.

Joint Properties
------------------------

**Collide With Neighbor Bone**: If enable, the rigidbody will collide with neighbor bone(bones with parent-child relation). If disable, the rigidbody will not collide with neighbor bone. If a neighbor bone wants to collide with each other, the collision group and this option must both indicate collide. (example: collide group √, this option √, then collide. collide group √, this option ×, then not collide.)

**Stiffness**: determine the stiffness of the spring. 

**Damping**: determine the damping of the spring. 

.. raw:: html

    <video width="100%" controls src="../video/stiffness_damping.mp4">
      Your browser does not support the video tag.
    </video>

......

**Angle Limit**: hard constraint, which limits the rigidbody relative rotation. Due to the limitations of PhysX, only symmetrical angle constraints can be set. If you want to constrain only one side, you can add a kinematic rigid body to the parent bone and place it on the side you want to constrain to constrain the movement of the dynamic rigid body.

**Distance Limit**: hard constraint, which limits the rigidbody relative movement.

**Hard constraints**: the distance constraints and angle constraints set in the panel. This is the constraint range you tell physx should not exceed. If too much force pushes him away from the hard constraint range, it will be subject to a large reaction force trying to return.

**Soft constraints**: The springs connecting rigidbodies can be called soft constraints, that is, the stiffness and damping in the panel. It represents that the rigidbodies will be affected by the spring within the range of hard constraints.

The rotation of the bones in edit mode is important for joint, keep attention to it when you are creating armature.

The initial position of the joint constraint is based on the rest position of the bones. You can reset bones to init position by pressing Alt+R Alt+G Alt+S. 


