��    	      d      �       �   �  �   a   m  �   �  �   r  ;   0  I   l  }  �  
   4  Z  ?  m  �  h   	  �   q	  y   
  F   �
  C   �
  �       �                            	                  **Bake All**: click the button, the physics result will be baked into keyframe. There are 3 process phases. ①.gathering kinematic rigidbody data. ②.physx calculating process, if you check the debug option, you can see the progress in the PhysX Visual Debugger. In this process you can press ESC to stop bake. ③. Setting bone keyframe, this is a long progress, you should wait it patiently. **Bake range**: Set simulation range for baking. If not set bake range will be scene frame range. **Debug**: If enable, simulated info will display in the PhysX Visual Debugger. PhysX Visual Debugger Download: https://developer.nvidia.com/physx-visual-debugger **Inherit Linear Velocity**: If enabled, linear velocity is calculated as the initial velocity based on the relative displacements of the two frames preceding the starting simulation frame. **Playback simulate**: If enable, simulate during playback. **Selected Bone Only**: If enable, only selected bones will be simulated. **Set Keyframe Mode**: Blender Setting Keyframe has a big performance issuse. So I provide two way to set keyframe. "Normal": set keyframe by advanced API, using more time. "Fast": set keyframe by basic api, faster, but it will cause existing keyframes to become linear. "Fast" is a better choice if you didn't be setting any keyframes manually on the bones that will be simulated. Simulation Project-Id-Version: Blender Bonex Document
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-04-08 09:08+0800
Last-Translator: 
Language-Team: zh <LL@li.org>
Language: zh
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
Generated-By: Babel 2.14.0
X-Generator: Poedit 3.4.2
 **全部烘焙**：点击该按钮，物理结果将被烘焙到关键帧中。 有 3 个过程阶段。 ①.收集运动学刚体数据。 ②.physx计算过程，如果勾选debug选项，可以在PhysX Visual Debugger中看到进度。 在此过程中可以按ESC键停止烘烤。 ③. 设置骨骼关键帧，这是一个漫长的过程，需要耐心等待。 **烘焙范围**：设置烘焙的模拟范围。 如果没有设置烘焙范围将是场景帧范围。 **调试**：如果启用，模拟数字将显示在 PhysX Visual Debugger中。 PhysX Visual Debugger下载：https://developer.nvidia.com/physx-visual-debugger **继承线速度**：如果启用，线速度将根据起始模拟帧之前两帧的相对位移计算为初始速度。 **播放模拟**：如果启用，则在播放过程中进行模拟。 **仅选定骨骼**：如果启用，则仅模拟选定的骨骼。 **设置关键帧模式**：Blender 设置关键帧有很大的性能问题。 所以我提供了两种设置关键帧的方法。 “普通”：通过高级API设置关键帧，使用更多时间。 “快”：通过基本api设置关键帧，速度更快，但会导致现有关键帧变成线性。 如果您没有在要模拟的骨骼上手动设置任何关键帧，“快速”是更好的选择。 模拟 