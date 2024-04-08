FAQ
===


Why does relative displacement still occur after simulation even though the joint distance is set to 0?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The constraints of simulation engines such as physx are not absolute constraints. Too large a force (such as the force of a kinematic rigid body) or too small position solver iteration will cause it to break away from the constraints.

①Increase the number of steps of the position iterator to improve calculation accuracy

② Set the bone attribute to connected, so that the bone is hard constrained to the tail of the parent, and only the rotation result of physx will be applied.


Why does jitter occur?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When a rigid body breaks away from a hard constraint, it will try to return to the position where the constraint should be, and will generate a large recovery force. At this time, if there is a kinematic rigid body that prevents it from returning to its supposed position or rotating, it will jitter in simulation results.

① Adjust the position of kinematic so that it does not conflict with hard constraints

② Take out the jittered part separately, disable the conflicting kinematic rigid body and recalculate it separately


Why is the simulation unable to move despite setting upper and lower displacement limits?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
① Check whether connected is checked in the bone attributes. Connected is the option for blender to lock the bone displacement. Bones with this option checked cannot move in posture mode.

② Whether the joint stiffness and the rigid body mass match. If the spring stiffness is too large or the rigid body mass is too small, the force will not be enough to move the rigid body, so it cannot move.

What should I do if the FPS is too low during playback?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
① Playback without modify mode, in modify mode you can view the rigidbody shape, but the drawing api efficiency of the preview is not high, and some data need to be calculated in real time, so the playback speed will be slowed down when there are lots rigid bodies exist.

②Try to disable setting keyframe option. Blender has performance issues in setting keyframes. When there are too many existing keyframes for an object or bone, the time required to set a keyframe will increase linearly with the number of existing keyframes. Therefore, when playback simulation, if there is a low fps, and checking the log found that the frame generation time of physx is also very short, so the cause of the lag is the performance problem of Blender's keyframe setting.

③ Reduce the number of iteration steps. A reasonable number of iteration steps can improve the calculation speed.

④Try to bake the animation into key frames and then play it.

⑤ Try to divide the simulation into separate parts, and simulate them separately.

Why can't I move rigid body bones during playback?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

① Check whether the bones you move have existing keyframes. In Blender, bones with existing keyframes cannot be moved manually in playback

② Check whether the bone you move is a dynamic rigid body bone, because every playback frame will be controlled by physx, so the user cannot move it

High speed movement penetrate rigidbody issues
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
when a rigid body move in a very high speed, rigidbody will penetrate, and collision will not happen. To avoid this, physx has a feature call ccd. But in my practice, I have not seen such situation, and the ccd need addtional calculation, so I did not add in bonx. But If you have a high speed rigidbody scene and penetration occur, you can send the blender project to me to let me think about this feature.
