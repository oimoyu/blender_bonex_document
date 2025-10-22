Tool
====

**Show All Drivers**: Show all bones' driver.

**Hide All Drivers**: Hide all bones' driver.

**Select All Drivers**: Select all bones' driver. The keyframe is setting on the driver, you can delete or edit animation keyframe in driver.

**Switch To Driver**: If you select pose bones, it will switch to object mode and select driver objects. If you select driver objects, it will switch to pose mode and select corresponding pose bones.

**Reset Pose Bone**: Reset selected pose bones location and rotation. The rigidbody bones is completely controlled by driver objects. If you want to reset pose bones transform to initial, click this.

**Disable Selected Bone Constraint**: disable selected bones' driver constraints by setting the influence to 0.

**Enable Selected Bone Constraint**: enable selected bones' driver constraints by setting the influence to 1.

**Regenerate all drivers**: If you import armature from project outside, or you mess up the animation keyframe. You can use this to regenerate all driver objects to make sure all driver objects exist and clean.

**Select All Physics Bones**: In pose mode, all the bonex physcs bones will be selected.

Tip: Many keyframes whose influence cannot be distinguished can be found in the curve editor. If you want to clear the keyframes, you can place the mouse on the input box of the influence and right-click to clear the keyframes.