Soft Connection
===========================

Soft connection is a spring, which constraint two rigidbody. But soft connection only constraint location. Often used for lateral constraints on skirts or cloaks to prevent excessive mesh deformation. If you wan to make the floating widget, set the joint instead, because soft connection can not constraint angle.

In rigidbody modify mode, you can press Ctrl+W to add soft connection in batch(skirt using "tube" option, cope using "plane" option, create single soft connection using "pair" option)

.. raw:: html

    <video width="100%" controls src="../video/create_soft_connection.mp4">
      Your browser does not support the video tag.
    </video>

......


In Rigidbody Modify Mode
---------------------------
Ctrl+W, create soft connection. "Pair", set soft connection to two selected two rigidbody bone. "Tube" and "plane", set soft connection for multiple bone chain (multiple bone chains should have the same number of bones), "Tube" for skirt, "Plane" for cloak or hair.

Shift+W, set selected rigidobdy bone soft connection property.

Alt+W, delete selected rigidobdy bone soft connection.
