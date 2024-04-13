Additional Constraint
==============================

Sometimes you may notice that the hard constraint in physx is not "hard" (physx hard constraint setting is in rigidbody->joint "angle limit" and "distance limit"). It may be push away from hard constraint when dynamic rigidbody is subjected to a large force.

To avoid this, we should add constraint additional bone constraint in blender.

① In blender, every bone has a property call "connected", this will lock pose bone location from anything. 

② Using additional constraint comes with this addon. "connected" only work for a limited scene, if you want a more option to constraint, use additional constraint function in this addon.

In rigidbody modify mode
-------------------------------

Ctrl+Q, Create additional constraint for selected pose bone.

Alt+Q, Delete additional constraint for selected pose bone.

.. raw:: html

    <video width="100%" controls src="../video/additional_constraint.mp4">
      Your browser does not support the video tag.
    </video>

......

Notice: If you use additional constraint in blender, this addon rigidbody modify mode may not show the real rigidobdy shape location and rotation, the real rigid body transformation is reflected in the driver , to view real transform of rigidbody shape, you should disable additional constraint or you can check driver object directly. 

Constraint In addon BoneX 
-------------------------------
For every dynamic rigidbody, we use the "COPY LOCATION" bone contraint to make sure dynamic bone's location and rotatioin are tracked to the driver object(if "connected" option is on, only rotation will be tracked to driver object). Additional constraints is based on driver constraints to prevent bones from being pushed away from hard constraints.

.. raw:: html

    <a href="../image/bone_constraint.png" target="_blank">
        <img src="../image/bone_constraint.png" style="width: 50%;" />
    </a>
