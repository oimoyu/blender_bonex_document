Introduction
============

Introduction
------------
BoneX is a Blender addon helps you to create bone physics. 

Why I develop this
------------------
Vivid physics bring an unparalleled level of realism and depth to character animations. For those using Blender, numerous methods exist to achieve this, including cloth and rigid body simulations etc. In the realm of game engines, rigid body simulations often used for character physics. Despite my efforts to create a free addon based on Blender's rigid body simulation, it faced many challenges. Consequently, I dedicated much time to develop BoneX, leveraging the mature and reliable PhysX physics engine, which offers stable and fast result.

Advantage
---------
Relying on the mature physics engine physx, the simulation is efficient and stable
There is no need to create any additional auxiliary empty objects or mesh objects. The addon will directly modify the displacement and rotation of the bones, eliminating the trouble of management.
Collision group mask to control collision interaction supported
Custom collision body mesh supported
Real-time playback  interactions
Partial simulation supported, helps you improve detailed adjustments

Why use a rigid body to simulate a skirt instead of cloth simulation?
---------------------------------------------------------------------
①Fast. The basic object of cloth simulation is mesh vertices, which requires a large amount of calculation, while the basic object of rigid body simulation is a small number of rigid bodies. In essence, it is a proxy method. Rigid body motion drives bone motion -> bones drive vertices motion.
② Stable and controllable. Rigid body simulation only needs to focus on a limited number of rigid bodies.
③Keep the shape. When making stylized characters, you need to make some exaggerated shapes that violate the laws of physics. If you use cloth simulation, these shapes will collapse with the collapse of the cloth. Rigid body simulation drives bones, and one bone can control many vertices. , which maintains their relative positions.
④Prevent mesh intersection. If cloth simulation is used for proxy, contact and mesh intersection are problems. The collision volume of the cloth is only a thin layer, while the collision volume of the rigid body can be defined by yourself. For a fluffy mesh, a larger collision volume can be made to prevent other meshes from intersecting the mold.

Notice that only windows is supported.