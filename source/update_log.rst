Update Log
================

1.0.1 Give up directly modifying bone attributes. The parent matrix cannot be updated immediately, so the performance is very poor. Use empty object driver instead. Add soft connections to constrain the horizontal connections of the skirt or cape.

1.0.2 add additional constraint, fix ui mistake

1.0.3 fix create plane soft connection issue. fix rigidbody draw problem, now the rigidbody drawing result is the real transform

1.0.4 Optimized the cleaning of soft connection, optimized the drawing and display of soft connection.

1.0.5 Add rigidbody damping to simulate air resistance especially for cloth or hair.

1.0.6 Deprecate the function of automatically stopping playback. Because some project may raise WARN "animsys_calculate_nla: NLA Eval: Stopgap for active action on NLA Stack - no strips case", in this case, stop playback api will lead to blender crash. Waiting for the solution: https://projects.blender.org/blender/blender/issues/93707

1.0.7 Add sub-step function, for high speed rigidbody penetration problem. If not necessary, set keep it to 1.

1.0.8 Add preset function for save rigidbody params

1.0.9 optimize rigidbody shape display, same group has same color.

1.0.10 Fix custom mesh with scaled armature wrong scale issue.

1.0.11 Allow 3.6.1 lower version install, but realtime simulation is not available.

1.0.12 Fixed the default behavior of physx. By default, the rigid bodies generated by the parent and child of bones will not collide with each other.

1.0.13 Add gravity switch for every rigidbody.

1.0.14 fix multiple viewlayer bug.

1.0.15 make sure switch to driver obj with all visible setting on, change some default rigidbody params to better user experience.

1.0.16 add "regenerate all drivers" and "select all physics bones" button.

1.0.17 add rigidbody "centroid" option, optimize ui.

1.0.18 fix blender 4.4 operator define error

1.0.19 fix blender 4.4 operator define error, and keyframe api break

1.0.20 ① add "generate shape from mesh" function, add "collid with neighbor bone" option. Fixed the problem of discontinuous error frames when playing continuously.

1.0.21 fix playback raise error, fix "generate shape from mesh" not work for some import model
