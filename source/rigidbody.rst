Rigid body
==========

Basic usage
-------------
In bone post mode, click the "Start Modify" button to access the Rigid Body modification interface. Within this interface, you have press "C" to set selected bones as rigid body bones, which allows them to be driven by physx during animations. Additionally, you can view the shape of the rigid body and change the properties of the selected rigid body bone in this mode.

Rigid body properties
--------------------------

.. raw:: html

    <a href="../image/rigidbody_setting.png" target="_blank">
        <img src="../image/rigidbody_setting.png" style="width: 20%;" />
    </a>

Within rigid Body modification interface, when you select a rigidody bone, you will see the property in the panel. You can change the value, then the setting will apply to the selected rigidbody bone.


**Dynamic**: A dynamic rigid body is a rigid body calculated by physx and will move under the action of force.

**Kinematic**: The kinematic rigid body is controlled by the user's key frame animation. Its movement is absolute and not affected by any force. And it can collide with the dynamic rigid body to make dynamic rigid body motion.

.. raw:: html

    <video width="100%" controls src="../video/kinematic.mp4">
      Your browser does not support the video tag.
    </video>

......

**Mass**: The mass of a rigid body, obeying various physical laws

**Static Friction Coefficient**: the resistance to the start of motion between two surfaces.

**Dynamic Friction Coefficient**: the resistance to motion when two surfaces are already sliding against each other.

Friction Force only appear when the pressure exist.

**Bounce Coefficient**: reflects the elasticity of the collision.

**Rigidbody Group**: rigidbody belongs to which group. If empty is set, that means this rigidbody will not collide with any thing.

**Collision Group**: rigidbody will collide with which group.

If you want to disable the collision between a certain group of rigid bodies, then disable the collision group of their corresponding group.

Kinematic rigidbodies are not always needed
----------------------------------------------------
If a bone is set to a dynamic rigid body and it has a parent bone, the dynamic bone will be still control by parent.

Modify the Shape of Rigidbody
---------------------------------------
**Switch default shape**: Within rigid Body modification interface, press "T" to switch selected rigidbody shape. Press "S" to scale the rigidbody.

.. raw:: html

    <video width="100%" controls src="../video/scale_rigidbody.mp4">
      Your browser does not support the video tag.
    </video>

......

**Customize Rigidbody Shape**: Within rigid Body modification interface, press "E" to edit selected rigidbody. Physx's dynamic rigid body only supports convex polygons. If it is a concave polygon, it will be baked into a convex polygon according to the vertices. The baked shape can be observed in the Physx Visual Debugger. For physx, the calculation speed of custom mesh rigid bodies is not as fast as its default shape. If there are no special needs, try to use the default shape.

.. raw:: html

    <video width="100%" controls src="../video/edit_shape.mp4">
      Your browser does not support the video tag.
    </video>

......

**Copy Rigidbody Shape**: Within rigid Body modification interface, press ctrl+"M" will copy the active rigidbody shape to other selected rigidbody bone.

.. raw:: html

    <video width="100%" controls src="../video/copy_shape.mp4">
      Your browser does not support the video tag.
    </video>

......

Animation
-----------
A kinimatic rigidbody can be set keyframe to move and rotate to drive the dynamic rigidbody.