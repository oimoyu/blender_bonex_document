Scene Setting
=============

.. raw:: html

    <a href="../image/scene_setting.png" target="_blank">
        <img src="../image/scene_setting.png" style="width: 20%;" />
    </a>

**FPS**: Should be consistent with blender, the higher the fps, the higher speed the scene will be. If you want your scene looks faster, you can decrease to speed up the passage of time.

**Gravity**: The force parallel to the global Z axis is normally -9.81.


**Sub Step Number**: Split one animation frame into multiple small frames, and simulation them. Used to solve the penetration problem of high-speed moving objects. This is performance heavy operation,if not necessary, set it as 1.

Sub step means more accurate simulation, but sometimes you may find that the rigidbody never end after increasing this, if this is not you want, you can decrease sub step or increase damping.

Never end movement issues explan: the inaccurate simulation means inaccurate numerical calculation, which will lead the small number is truncated, this means more energy is loosing over time. On the other hand, too accurate means the energy that should be lost is retained, so the simulation results show that it is more inclined to motion. If you want something like the spring toy below, this is absolute you need.

.. raw:: html

    <a href="../image/ikun.png" target="_blank">
        <img src="../image/ikun.png" style="width: 20%;" />
    </a>

The video below shows when a high-speed object moving, increase the sub step means the movement is split into small movement, so the rigidbody can interact.

.. raw:: html

    <video width="100%" controls src="../video/sub_step_num.mp4">
      Your browser does not support the video tag.
    </video>

......

**Position Iteration Number**: The higher the value, the more accurate the location of the simulation results.

**Velocity Iteration Number**: The higher the value, the more accurate the velocity of the simulation results.

A long rigidbody chain or model intersection need to increase iterations, because long chains require iterative diffusion to obtain accurate positions.
