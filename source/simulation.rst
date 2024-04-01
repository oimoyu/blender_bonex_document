Simulation
==========

.. raw:: html

    <a href="../image/simulation_setting.png" target="_blank">
        <img src="../image/simulation_setting.png" style="width: 20%;" />
    </a>

**Bake All**: click the button, the physics result will be baked into keyframe. There are 3 process phases. ①.gathering kinematic rigidbody data. ②.physx calculating process, if you check the debug option, you can see the progress in the PhysX Visual Debugger. In this process you can press ESC to stop bake. ③. Setting bone keyframe, this is a long progress, you should wait it patiently.

**Playback simulate**: If enable, simulate during playback.

**Set Keyframe Mode**: Blender Setting Keyframe has a big performance issuse. So I provide two way to set keyframe. "Normal": set keyframe by advanced API, using more time. "Fast": set keyframe by basic api, faster, but it will cause existing keyframes to become linear. "Fast" is a better choice if you won't be setting any keyframes manually on the bones that will be simulated.

**Bake range**: Set simulation range for baking.

**Selected Bone Only**: If enable, only selected bones will be simulated.

**Inherit Linear Velocity**: If enabled, linear velocity is calculated as the initial velocity based on the relative displacements of the two frames preceding the starting simulation frame.

**Debug**: If enable, simulated numbers are displayed in the PhysX Visual Debugger. PhysX Visual Debugger Download: https://developer.nvidia.com/physx-visual-debugger

**Tip**: To restore rest pose use Alt+R or Atl+G