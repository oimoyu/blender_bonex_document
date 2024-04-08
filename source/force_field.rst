Force Field
===========

.. raw:: html

    <a href="../image/force_field_setting.png" target="_blank">
        <img src="../image/force_field_setting.png" style="width: 20%;" />
    </a>

Create Force Field
----------------------
click "+" button to create a force field, set the reference obj to an arrows empty object, then the force will be added to rigidbody.


Force Field Setting
----------------------

**Name**: name of force field custom by user.

**Reference Object**: determine the force direction and magnitude. An arrows empty object is recommended, the scale of Z axis represents the force magnitude, and the direction of Z axis represents the force direction.

**Force Base Factor**: The magnitude of the force is determined by the scale of the reference object multiplied by the base factor.

Animation
----------------------
You can change the direction and size of the force field by setting keyframes for the rotation or scale of the empty object corresponding to the force field. During the simulation, the z axis scale will be captured and passed to the scene as the size of the force (note that setting keyframes here refers to setting keyframes for the scale of the empty object, not value in the addon panel)

.. raw:: html

    <video width="100%" controls src="../video/force_field.mp4">
      Your browser does not support the video tag.
    </video>
