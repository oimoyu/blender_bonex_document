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