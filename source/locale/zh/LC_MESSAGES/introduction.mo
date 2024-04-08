��          �      \      �  5   �  	     �       �    �  n  �     O	  E   b	     �	  '  �	  U   �
  k   +  �   �  B   _  N  �  '   �  ^    #   x  G   �  Z  �  *   ?     j  v  q     �  X  �  %  H     n  <   �     �  �   �  9   �  C   �  �   -  <   �    �  !     )  3     ]  3   t                                            	                
                                       **Notice** that this this addon only support windows. Advantage BoneX is a Blender addon helps you to create bone physics animation, driven by PhysX. PhysX is a mature physics engine used in game field, like UE4, U3D. Relying on PhysX to generate stable rigid body simulations, you can create bone physics effects for character animation. You can modify the properties of the rigid body and set its connection stiffness, damping quality, etc. to achieve the physical effects you want. Introduction Physx supports CUDA hardware acceleration. Indeed, the powerful parallel computing capability of the GPU can accelerate the calculation speed, but it does not reflect the advantage in the usage scenario of this plug-in. When the CPU and GPU are used together, additional data processing overhead is required. For the calculation of very large and large rigid body particles, this overhead accounts for a very small proportion, which can reflect the acceleration advantage. However, if the number of rigid bodies is small, then additional The overhead may even slow down the calculation. And if you want to use GPU acceleration, you also need to come with a huge DLL file. And the performance bottleneck not lies in physx. For the above reasons, adding GPU acceleration function is not considered. Vivid physics bring an unparalleled level of realism and depth to character animations. For those using Blender, many methods exist to achieve this, including cloth and rigid body simulations etc. In the realm of game engines, rigid body simulations often used for character physics. Despite my efforts to create a free addon `blender_skirt_rigid_generator <https://github.com/oimoyu/blender_skirt_rigid_generator>`_ based on Blender's rigid body simulation, it still with many problems. Consequently, I decided to develop this, leveraging the mature and reliable PhysX physics engine, which offers stable and fast result. Why I develop this Why use a rigid body to simulate a skirt instead of cloth simulation? etc. ①Fast. The basic object of cloth simulation is mesh vertices, which requires a large amount of calculation, while the basic object of rigid body simulation is a small number of rigid bodies. In essence, it is a proxy method. Rigid body motion drives bone motion -> bones drive vertices motion. ①Relying on the mature physics engine physx, the simulation is efficient and stable ② Stable and controllable. Rigid body simulation only needs to focus on a limited number of rigid bodies. ②There is no need to create any additional auxiliary empty objects or mesh objects. The addon will directly modify the displacement and rotation of the bones, eliminating the trouble of management. ③Collision group mask to control collision interaction supported ③Keep the shape. When making stylized characters, you need to make some exaggerated shapes that violate the laws of physics. If you use cloth simulation, these shapes will collapse with the collapse of the cloth. Rigid body simulation drives bones, and one bone can control many vertices. , which maintains their relative positions. ④Custom collision body mesh supported ④Prevent mesh intersection. If cloth simulation is used for proxy, contact and mesh intersection are problems. The collision volume of the cloth is only a thin layer, while the collision volume of the rigid body can be defined by yourself. For a fluffy mesh, a larger collision volume can be made to prevent other meshes from intersecting the mold. ⑤Real-time playback  interactions ⑥Partial simulation supported, helps you improve detailed adjustments Project-Id-Version: Blender Bonex Document
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-04-08 09:47+0800
Last-Translator: 
Language-Team: zh <LL@li.org>
Language: zh
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
Generated-By: Babel 2.14.0
X-Generator: Poedit 3.4.2
 **注意** 这个插件仅支持Windows。 优势 BoneX 是一个 Blender 插件，可帮助您创建由 PhysX 驱动的骨骼物理动画。 PhysX是一个成熟的物理引擎，应用于游戏领域，如UE4、U3D。 依靠PhysX生成稳定的刚体模拟，您可以为角色动画创建骨骼物理效果。 您可以修改刚体的属性并设置其连接刚度、阻尼质量等，以达到您想要的物理效果。 介绍 Physx 支持 CUDA 硬件加速。 确实，GPU强大的并行计算能力可以加快计算速度，但是在这个插件的使用场景中并不能体现出优势。 当CPU和GPU一起使用时，需要处理额外的数据开销。 对于非常多和大型刚体粒子的计算，这个开销占的比例很小，可以体现加速优势。 然而，如果刚体的数量很少，那么额外的开销甚至可能会减慢计算速度。 而如果要使用GPU加速，还需要自带巨大的DLL文件。 而且性能瓶颈并不在于physx。 由于上述原因，不考虑添加GPU加速功能。 生动的物理效果能为角色动画带来无与伦比的真实感和深度。对于使用 Blender 的用户来说，有很多方法可以实现这一点，包括布料和刚体模拟等。在游戏引擎领域，刚体模拟常常被用于角色物理效果。尽管我曾努力创建了一个基于 Blender 刚体模拟的免费插件 https://github.com/oimoyu/blender_skirt_rigid_generator，但仍然存在许多问题。因此，我决定开发这个插件，利用成熟可靠的 PhysX 物理引擎，可以提供稳定而快速的结果。 我为什么开发这个插件 为什么使用刚体来模拟裙子而不是布料模拟？ etc. ①快。 布料模拟的基本对象是网格顶点，计算量较大，而刚体模拟的基本对象是少量刚体。 本质上，它是一种代理方法。 刚体运动驱动骨骼运动 -> 骨骼驱动顶点运动。 ①依托成熟的物理引擎 physx，模拟高效稳定 ②稳定可控。 刚体模拟只需关注有限数量的刚体。 ②无需创建任何额外的辅助空对象或网格对象。插件会直接修改骨骼的位移和旋转，省去了管理的麻烦。 ③支持碰撞组遮罩，用于控制刚体的碰撞交互 ③保持形状。 在制作风格化的角色时，需要制作一些违反物理定律的夸张形状。 如果使用布料模拟，这些形状会随着布料的塌陷而塌陷。 刚体模拟驱动骨骼，一根骨骼可以控制多个顶点。 ，保持它们的相对位置。 ④支持自定义碰撞体网格 ④防止网格交叉。 如果使用布料模拟作为代理，接触和网格交叉就会出现问题。 布料的碰撞体积只是薄薄的一层，而刚体的碰撞体积可以自己定义。 对于蓬松的网格，可以制作较大的碰撞体积，以防止其他网格与模具相交。 ⑤ 实时播放互动 ⑥支持部分模拟，帮助您完善细节调整 