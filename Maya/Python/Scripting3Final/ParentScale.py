import maya.cmds as cmds

class PSWindow():
    def __init__(self):
        self.PS = 'amParentScale'
        self.Create()

    def Create(self):
        self.delete()

        self.PS = cmds.window(self.PS, title='amParentScale')
        self.myColl = cmds.columnLayout(parent=self.PS, adjustableColumn=True)
        cmds.button(label="Parent Constrain Skip Rotate", parent=self.myColl, command=lambda x: cmds.parentConstraint(mo=True, sr=["x","y","z"]))
        cmds.button(label="Parent Constrain Skip Translate", parent=self.myColl, command=lambda x: cmds.parentConstraint(mo=True, st=["x","y","z"]))
        cmds.button(label="Scale Constrain", parent=self.myColl, command=lambda x: cmds.scaleConstraint(mo=True))

        cmds.showWindow(self.PS)

    def delete(self):
        if cmds.window(self.PS, q=True, exists=True): cmds.deleteUI(self.PS)

PSWindow()