��          |      �          _  !     �  ;   �     �  <   �  ]  *     �    �  N   �  l   �  �   `  Z    '  x     �	  2   �	     �	  6   �	  /  1
     a  �   z  R   `  p   �  �   $               
                                     	       **Additional constraints are added in batches. Pay special attention to the axis of the bones. For example: if your bones are obtained by symmetry, then their axis will also be flipped. At this time, when adding additional constraints, pay special attention to the axis. direction, if it is indeed flipped, then you need to add constraint separately** Additional Constraint Alt+Q, Delete additional constraint for selected pose bone. Constraint In addon BoneX Ctrl+Q, Create additional constraint for selected pose bone. For every dynamic rigidbody, we use the "COPY LOCATION" bone contraint to make sure dynamic bone's location and rotatioin are tracked to the driver object(if "connected" option is on, only rotation will be tracked to driver object). Additional constraints is based on driver constraints to prevent bones from being pushed away from hard constraints. In rigidbody modify mode Sometimes you may notice that the hard constraint in physx is not "hard" (physx hard constraint setting is in rigidbody->joint "angle limit" and "distance limit"). It may be push away from hard constraint when dynamic rigidbody is subjected to a large force. To avoid this, we should add constraint additional bone constraint in blender. ① In blender, every bone has a property call "connected", this will lock pose bone location from anything. ② Using additional constraint comes with this addon. "connected" only work for a limited scene, if you want a more option to constraint, use additional constraint function in this addon. Project-Id-Version: Blender Bonex Document
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-04-16 21:35+0800
Last-Translator: 
Language-Team: zh <LL@li.org>
Language: zh
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
Generated-By: Babel 2.14.0
X-Generator: Poedit 3.4.2
 **附加约束是批量添加的。 特别注意骨骼的轴方向。 例如：如果你的骨骼是通过对称获得的，那么它们的轴也会被翻转。 这时，在添加附加约束时，要特别注意轴方向方向，如果确实翻转了，那么需要分别单独的添加约束** 附加约束 Alt+Q，删除所选姿势骨骼的附加约束。 插件 BoneX 中的约束 Ctrl+Q，为选定的姿势骨骼创建附加约束。 对于每个dynamic刚体，我们使用“复制位置”骨骼约束来确保dynamic刚体骨骼的位置和旋转被跟踪到驱动器对象（如果“相连项”选项打开，则仅旋转将被跟踪到驱动程序对象）。 附加约束基于驱动器约束，防止骨骼被推离硬约束。 在刚体修改模式下 有时你可能会注意到physx中的硬约束并不“硬”（physx硬约束设置是在rigidbody->joint“角度限制”和“距离限制”中）。 当dynamic刚体受到很大的力时，它可能会被推离硬约束。 为了避免这种情况，我们应该在Blender中添加额外的骨骼约束。 ① 在搅拌机中，每个骨骼都有一个称为“相连项”的属性，这将锁定姿势骨骼位置。 ② 使用此插件附带的附加约束。 “相连项”仅适用于有限的场景，如果您想要更多约束选项，请使用此插件中的附加约束功能。 