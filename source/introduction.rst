Introduction
============

Introduction
------------
BoneX is a Blender addon helps you to create bone physics animation, driven by PhysX. PhysX is a mature physics engine used in game field, like UE4, U3D. Relying on PhysX to generate stable rigid body simulations, you can create bone physics effects for character animation. You can modify the properties of the rigid body and set its connection stiffness, damping quality, etc. to achieve the physical effects you want.

Why I develop this
------------------
Vivid physics bring an unparalleled level of realism and depth to character animations. For those using Blender, many methods exist to achieve this, including cloth and rigid body simulations etc. In the realm of game engines, rigid body simulations often used for character physics. Despite my efforts to create a free addon `blender_skirt_rigid_generator <https://github.com/oimoyu/blender_skirt_rigid_generator>`_ based on Blender's rigid body simulation, it still with many problems. Consequently, I decided to develop this, leveraging the mature and reliable PhysX physics engine, which offers stable and fast result.

Advantage
---------
①Relying on the mature physics engine physx, the simulation is efficient and stable

②There is no need to create any additional auxiliary empty objects or mesh objects. The addon will directly modify the displacement and rotation of the bones, eliminating the trouble of management.

③Collision group mask to control collision interaction supported

④Custom collision body mesh supported

⑤Real-time playback  interactions

⑥Partial simulation supported, helps you improve detailed adjustments

etc.

Why use a rigid body to simulate a skirt instead of cloth simulation?
---------------------------------------------------------------------
①Fast. The basic object of cloth simulation is mesh vertices, which requires a large amount of calculation, while the basic object of rigid body simulation is a small number of rigid bodies. In essence, it is a proxy method. Rigid body motion drives bone motion -> bones drive vertices motion.

② Stable and controllable. Rigid body simulation only needs to focus on a limited number of rigid bodies.

③Keep the shape. When making stylized characters, you need to make some exaggerated shapes that violate the laws of physics. If you use cloth simulation, these shapes will collapse with the collapse of the cloth. Rigid body simulation drives bones, and one bone can control many vertices. , which maintains their relative positions.

④Prevent mesh intersection. If cloth simulation is used for proxy, contact and mesh intersection are problems. The collision volume of the cloth is only a thin layer, while the collision volume of the rigid body can be defined by yourself. For a fluffy mesh, a larger collision volume can be made to prevent other meshes from intersecting the mold.

**Notice** that this this addon only support windows.

GPU
------
Physx supports CUDA hardware acceleration. Indeed, the powerful parallel computing capability of the GPU can accelerate the calculation speed, but it does not reflect the advantage in the usage scenario of this plug-in. When the CPU and GPU are used together, additional data processing overhead is required. For the calculation of very large and large rigid body particles, this overhead accounts for a very small proportion, which can reflect the acceleration advantage. However, if the number of rigid bodies is small, then additional The overhead may even slow down the calculation. And if you want to use GPU acceleration, you also need to come with a huge DLL file. And the performance bottleneck not lies in physx. For the above reasons, adding GPU acceleration function is not considered.

Reference
------------
`PhysX Document <https://nvidia-omniverse.github.io/PhysX/physx/5.3.0/>`_


