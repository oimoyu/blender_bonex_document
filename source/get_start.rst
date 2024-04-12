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
Create a bone. 

Click "Start Modify" to enter addon modify UI. 

Select bone in pose mode

Press "C" to set the selected bone as rigidbody.

Check the playback option.

Start playing then you get a physics bone.

.. raw:: html

    <video width="100%" controls src="../video/fast_start.mp4">
      Your browser does not support the video tag.
    </video>
    
......

Keyframe Animation Notice
------------------------------------------------
This addon use empty objects to drive bone transform, so you can not see the animation keyframe on your bones, when you want to edit keyframe of bones, you can select bones and click the "Switch To Driver" to further operation.


Enter Rigidbody Modify Mode
------------------------------
Click addon panel button "Start Modify" to enter the rigidbody modify mode. In this mode you you will see operation prompts on the left. You can enable rigidbody, disable rigidbody and change rigidbody settings.


In Rigidbody Modify Mode
------------------------------

C, set the selected bone as rigidbody.

V, unset the selected bone as rigidbody, but the rigidbody and joint data still keep till next time set it to be rigidbody

Ctrl+Alt+Shift+C, Clear selected bone rigidbody data completely.

