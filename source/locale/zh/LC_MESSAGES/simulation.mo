��          t      �         �    a   �    �  �     �   �  �   \  R   G  }  �  r     
   �  Z  �  m  �	  h   _  �   �  �   �  y   R    �  L   �  �    O   �                           	                               
       **Bake All**: click the button, the physics result will be baked into keyframe. There are 3 process phases. ①.gathering kinematic rigidbody data. ②.physx calculating process, if you check the debug option, you can see the progress in the PhysX Visual Debugger. In this process you can press ESC to stop bake. ③. Setting bone keyframe, this is a long progress, you should wait it patiently. **Bake range**: Set simulation range for baking. If not set bake range will be scene frame range. **Debug**: If enable, addon will try to connect to the PhysX Visual Debugger and display the simulation detail on it.(Only work for debug of addon version, ignore it if you don't need it) Notice, that the PVD need additional consumption, if not neccessary, disable it. **GPU**: If enable, addon will try to use enable GPU acceleration. (Need to download and place two DLL file at the same directory of "physx.exe") **Inherit Linear Velocity**: If enabled, linear velocity is calculated as the initial velocity based on the relative displacements of the two frames preceding the starting simulation frame. **Playback simulate**: If enable, simulate during playback. For simple scene, playback may be smooth, but in a heavy scene, playback may be very laggy, youcan try to disable this, and play animation after bake animation into keyframe. **Selected Bone Only**: If enable, only selected bones will be simulated and draw. **Set Keyframe Mode**: Blender Setting Keyframe has a big performance issuse. So I provide two way to set keyframe. "Normal": set keyframe by advanced API, using more time. "Fast": set keyframe by basic api, faster, but it will cause existing keyframes to become linear. "Fast" is a better choice if you didn't be setting any keyframes manually on the bones that will be simulated. **Threads Number**: The number of threads used in simulation is generally the number of physical cores of the CPU. Simulation Project-Id-Version: Blender Bonex Document
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-04-11 15:59+0800
Last-Translator: 
Language-Team: zh <LL@li.org>
Language: zh
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
Generated-By: Babel 2.14.0
X-Generator: Poedit 3.4.2
 **全部烘焙**：点击该按钮，物理结果将被烘焙到关键帧中。 有 3 个过程阶段。 ①.收集运动学刚体数据。 ②.physx计算过程，如果勾选debug选项，可以在PhysX Visual Debugger中看到进度。 在此过程中可以按ESC键停止烘烤。 ③. 设置骨骼关键帧，这是一个漫长的过程，需要耐心等待。 **烘焙范围**：设置烘焙的模拟范围。 如果没有设置烘焙范围将是场景帧范围。 **调试**：如果启用，插件将尝试连接到 PhysX Visual Debugger 并在其上显示模拟详细信息。（仅适用于插件的调试版本，如果不需要，请忽略它）注意， PVD需要额外消耗，如果不需要，请禁用它。 **GPU**：如果启用，插件将尝试使用启用 GPU 加速。 （需要下载两个DLL文件并放在“physx.exe”同一目录下） **继承线速度**：如果启用，线速度将根据起始模拟帧之前两帧的相对位移计算为初始速度。 **播放模拟**：如果启用，则在播放过程中进行模拟。 对于简单的场景，播放可能会很流畅，但在繁重的场景中，播放可能会很卡顿，你可以尝试禁用此功能，然后将动画烘焙到关键帧后播放动画。 **仅选定骨骼**：如果启用，则仅模拟和绘制选定的骨骼。 **设置关键帧模式**：Blender 设置关键帧有很大的性能问题。 所以我提供了两种设置关键帧的方法。 “普通”：通过高级API设置关键帧，使用更多时间。 “快”：通过基本api设置关键帧，速度更快，但会导致现有关键帧变成线性。 如果您没有在要模拟的骨骼上手动设置任何关键帧，“快速”是更好的选择。 **线程数**：模拟时使用的线程数，一般为CPU的物理核心数。 模拟 