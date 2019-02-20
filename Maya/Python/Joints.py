import maya.cmds as cmds
sel = cmds.ls(sl=True)
for obj in sel:
    joint = cmds.joint(p=(0, 0, 0))
    cmds.matchTransform(joint, sel)