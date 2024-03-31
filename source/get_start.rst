Get start
=========

Installation
------------
①download the addon .zip file.

②install it in blender prefrence -> addon

③check check the addon to enable it. 

④then you can see the addon settings in N panel.

Update a new version
--------------------
①remove the addon in blender prefrence -> addon

②restart Blender

③install it following the steps above to install


Quick start
-----------
Create a bone. selected in pose mode. Click "Start"

.. raw:: html

    <video width="100%" controls src="../video/fast_start.mp4">
      Your browser does not support the video tag.
    </video>



Prerequisites before use
------------------------
Cause this addon will directly modify the position and rotation of the bones, before using it, please go to the bone pose mode to check whether the bones can be move or rotated manually by you.

If a bone cannot be move in pose mode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
①Check whether there are bone constraints that lock his position or rotation. If there are many bones and bone constraints, you can use the tools of this addon to turn off the bone constraints of the selected bones in batches.

②Check whether there is a lock icon on the bone position in the N panel in pose mode. This will cause you to be unable to operate the bones in the user interface.

③Check whether the bones without a parent have the connected option checked.

Note: This addon is based on quaternion rotation (that is, the default rotation mode of Blender bones, ignore it if you have not changed this). When applying bone rotation, the bone rotation mode will be changed to quaternion.

