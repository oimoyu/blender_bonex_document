��          �               L  	   M  �  W    �            n  +     �  E   �  :   �     .  k   3  Y   �  M  �  B   G
  [  �
  '   �  #     G   2  i  z     �  v  �  �  b       	     %  "     H  <   g  e   �     
  D     3   T    �  <   �  *  �  !   
     ,  3   C   Advantage BoneX is a Blender addon helps you to create bone physics animation, driven by PhysX. PhysX is a mature physics engine used in game field, like UE4, U3D. Relying on PhysX to generate stable rigid body simulations, you can create bone physics effects for character animation. You can modify the properties of the rigid body and set its connection stiffness, damping quality, etc. to achieve the physical effects you want. Generally you don't need it, the performance bottleneck is not in physx, and this may cause counterproductive(in my test). Physx supports CUDA hardware acceleration. When there are many rigid bodies or the number of iterations is large and the frame generation takes a long time, using the GPU will significantly increase the calculation speed. If you need to use the GPU acceleration function, you need to download "PhysXGpu_64.dll" and "PhysXDevice64.dll" and place them in the same location as "physx.exe" in the addon directory. Introduction Product Page Vivid physics bring an unparalleled level of realism and depth to character animations. For those using Blender, many methods exist to achieve this, including cloth and rigid body simulations etc. In the realm of game engines, rigid body simulations often used for character physics. Despite my efforts to create a free addon `blender_skirt_rigid_generator <https://github.com/oimoyu/blender_skirt_rigid_generator>`_ based on Blender's rigid body simulation, it still with many problems. Consequently, I decided to develop this, leveraging the mature and reliable PhysX physics engine, which offers stable and fast result. Why I develop this Why use a rigid body to simulate a skirt instead of cloth simulation? `Product Page <https://blendermarket.com/products/bonex>`_ etc. ① Stable and controllable. Rigid body simulation only needs to focus on a limited number of rigid bodies. ①Relying on the mature physics engine physx, the simulation is stable, with less jitter ② Keep the shape. When making stylized characters, you need to make some exaggerated shapes that violate the laws of physics. If you use cloth simulation, these shapes will collapse with the collapse of the cloth. Rigid body simulation drives bones, and one bone can control many vertices, which maintains their relative positions. ②Collision group mask to control collision interaction supported ③ Prevent mesh intersection. If cloth simulation is used for proxy, contact and mesh intersection are problems. The collision volume of cloth is only a thin layer, while the collision volume of the rigid body can be defined by yourself. For a fluffy mesh, a larger collision volume can be made to prevent other meshes from intersecting the mold. ③Custom collision body mesh supported ④Real-time playback  interactions ⑤Partial simulation supported, helps you improve detailed adjustments Project-Id-Version: Blender Bonex Document
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-10-15 20:58+0800
PO-Revision-Date: 2024-04-15 11:29+0800
Last-Translator: 
Language: zh
Language-Team: zh <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.14.0
 优势 BoneX 是一个 Blender 插件，可帮助您创建由 PhysX 驱动的骨骼物理动画。 PhysX是一个成熟的物理引擎，应用于游戏领域，如UE4、U3D。 依靠PhysX生成稳定的刚体模拟，您可以为角色动画创建骨骼物理效果。 您可以修改刚体的属性并设置其连接刚度、阻尼质量等，以达到您想要的物理效果。 一般情况下你不需要它，性能瓶颈不在 physx 中，并且（在我的测试中）可能会导致相反的效果。Physx 支持 CUDA 硬件加速。 当刚体较多或迭代次数较多、帧生成时间较长时，使用GPU会显着提高计算速度。 如果需要使用GPU加速功能，需要下载“PhysXGpu_64.dll”和“PhysXDevice64.dll”并将其放置在addon目录中与“physx.exe”相同的位置。 介绍 商品页 生动的物理效果能为角色动画带来无与伦比的真实感和深度。对于使用 Blender 的用户来说，有很多方法可以实现这一点，包括布料和刚体模拟等。在游戏引擎领域，刚体模拟常常被用于角色物理效果。尽管我曾努力创建了一个基于 Blender 刚体模拟的免费插件 https://github.com/oimoyu/blender_skirt_rigid_generator，但仍然存在许多问题。因此，我决定开发这个插件，利用成熟可靠的 PhysX 物理引擎，可以提供稳定而快速的结果。 我为什么开发这个插件 为什么使用刚体来模拟裙子而不是布料模拟？ `商品页面 <https://gf.bilibili.com/item/detail/1106493007>`_ 创作不易，请尽量支持作者 etc. ① 稳定可控。 刚体模拟只需关注有限数量的刚体。 ①依托成熟的物理引擎 physx，模拟稳定 ② 保持形状。 在制作风格化的角色时，需要制作一些违反物理定律的夸张形状。 如果使用布料模拟，这些形状会随着布料的塌陷而塌陷。 刚体模拟驱动骨骼，一根骨骼可以控制多个顶点 ，保持它们的相对位置。 ②支持碰撞组遮罩，用于控制刚体的碰撞交互 ③ 防止网格交叉。 如果使用布料模拟作为代理，接触和网格交叉就会出现问题。 布料的碰撞体积只是薄薄的一层，而刚体的碰撞体积可以自己定义。 对于蓬松的网格，可以制作较大的碰撞体积，以防止其他网格与模具相交。 ③支持自定义碰撞体网格 ④ 实时播放互动 ⑤支持部分模拟，帮助您完善细节调整 