Introduction
============

Introduction
------------
BoneX is a Blender addon helps you to create bone physics animation, driven by PhysX. PhysX is a mature physics engine used in game field, like UE4, U3D. Relying on PhysX to generate stable rigid body simulations, you can create bone physics effects for character animation. You can modify the properties of the rigid body and set its connection stiffness, damping quality, etc. to achieve the physical effects you want.

Platform Support: Windows

Blender Version: 3.6+

UI Language Support: English, 日本語, 中文

Why I develop this
------------------
Vivid physics bring an unparalleled level of realism and depth to character animations. For those using Blender, many methods exist to achieve this, including cloth and rigid body simulations etc. In the realm of game engines, rigid body simulations often used for character physics. Despite my efforts to create a free addon `blender_skirt_rigid_generator <https://github.com/oimoyu/blender_skirt_rigid_generator>`_ based on Blender's rigid body simulation, it still with many problems. Consequently, I decided to develop this, leveraging the mature and reliable PhysX physics engine, which offers stable and fast result.

Advantage
---------
①Relying on the mature physics engine physx, the simulation is stable, with less jitter

②Collision group mask to control collision interaction supported

③Custom collision body mesh supported

④Real-time playback  interactions

⑤Partial simulation supported, helps you improve detailed adjustments

etc.

Why use a rigid body to simulate a skirt instead of cloth simulation?
---------------------------------------------------------------------
① Stable and controllable. Rigid body simulation only needs to focus on a limited number of rigid bodies.

② Keep the shape. When making stylized characters, you need to make some exaggerated shapes that violate the laws of physics. If you use cloth simulation, these shapes will collapse with the collapse of the cloth. Rigid body simulation drives bones, and one bone can control many vertices, which maintains their relative positions.

③ Prevent mesh intersection. If cloth simulation is used for proxy, contact and mesh intersection are problems. The collision volume of cloth is only a thin layer, while the collision volume of the rigid body can be defined by yourself. For a fluffy mesh, a larger collision volume can be made to prevent other meshes from intersecting the mold.

Problems
------------------------
This addon suitable for situations where there are not so many bones. Especially for mmd users, the efficiency of this addon is not as efficient as mmd rigid body. There is an obvious performance bottleneck in blender's setting of object transformation. This addon is slow when dealing with some models that generate hundreds or thousands of bones for simulation.

GPU
------
Generally you don't need it, the performance bottleneck is not in physx. Physx supports CUDA hardware acceleration. When there are many rigid bodies or the number of iterations is large and the frame generation takes a long time, using the GPU will significantly increase the calculation speed. If you need to use the GPU acceleration function, you need to download "PhysXGpu_64.dll" and "PhysXDevice64.dll" and place them in the same location as "physx.exe" in the addon directory.

Reference
------------
`PhysX Document <https://nvidia-omniverse.github.io/PhysX/physx/5.3.0/>`_


