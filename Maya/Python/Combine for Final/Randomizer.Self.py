import maya.cmds as cmds
import random

class randoValuez():
    def __init__(self):
        self.MaxAndMinWin = "Randomizer"
        self.RandomValues()

    def RandomValues(self):
        self.delete()

        self.MaxAndMinWin = cmds.window('MaxAndMinWin')

        self.colLayout = cmds.columnLayout()
        cmds.floatFieldGrp('MaximumField', label='Max', parent=self.colLayout)
        cmds.floatFieldGrp('MinimumField', label='Min', parent=self.colLayout)
        cmds.button(label="Randomize Translate All Axis'", parent=self.colLayout, command=lambda x: self.randomizer())
        cmds.button(label="Randomize Translate X", parent=self.colLayout, command=lambda x: self.randomizerX())
        cmds.button(label="Randomize Translate Y", parent=self.colLayout, command=lambda x: self.randomizerY())
        cmds.button(label="Randomize Translate Z", parent=self.colLayout, command=lambda x: self.randomizerZ())

        cmds.button(label="Randomize Rotation", parent=self.colLayout, command=lambda x: self.randomizerRotate())
        cmds.button(label="Reset Rotation", parent=self.colLayout, command=lambda x: self.resetRotate())
        cmds.intFieldGrp('ScaleMaxNumber', label='Max Scale', parent=self.colLayout)
        cmds.intFieldGrp('ScaleMinNumber', label='Min Scale', parent=self.colLayout)
        cmds.button(label="Randomize Scale", parent=self.colLayout, command=lambda x: self.randomizerScale())
        cmds.button(label="Reset Scale", parent=self.colLayout, command=lambda x: self.resetScale())

        cmds.showWindow(self.MaxAndMinWin)

    def delete(self):
        if (cmds.window('MaxAndMinWin', exists=True)): cmds.deleteUI('MaxAndMinWin')

    def randomizer(self):
        # make the Selection an array
        self.sel = cmds.ls(sl=True)
        print self.sel
        # the fields from the window entered as these.
        self.MaxNumEnter = cmds.floatFieldGrp('MaximumField', q=True, v=True)[0]
        self.MinNumEnter = cmds.floatFieldGrp('MinimumField', q=True, v=True)[0]

        #self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
        #print self.numRandom

        for Object in self.sel:
            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr (Object + '.translateX', self.numRandom)

            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr(Object + '.translateY', self.numRandom)

            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr(Object + '.translateZ', self.numRandom)


    def randomizerX(self):
        self.sel = cmds.ls(sl=True)
        self.MaxNumEnter = cmds.floatFieldGrp('MaximumField', q=True, v=True)[0]
        self.MinNumEnter = cmds.floatFieldGrp('MinimumField', q=True, v=True)[0]


        for Object in self.sel:
            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr(Object + '.translateX', self.numRandom)


    def randomizerY(self):
        self.sel = cmds.ls(sl=True)
        self.MaxNumEnter = cmds.floatFieldGrp('MaximumField', q=True, v=True)[0]
        self.MinNumEnter = cmds.floatFieldGrp('MinimumField', q=True, v=True)[0]

        for Object in self.sel:
            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr(Object + '.translateY', self.numRandom)


    def randomizerZ(self):
        self.sel = cmds.ls(sl=True)
        self.MaxNumEnter = cmds.floatFieldGrp('MaximumField', q=True, v=True)[0]
        self.MinNumEnter = cmds.floatFieldGrp('MinimumField', q=True, v=True)[0]

        for Object in self.sel:
            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr(Object + '.translateZ', self.numRandom)



    def randomizerScale(self):
        self.sel = cmds.ls(sl=True)
        self.MaxNumEnter = cmds.intFieldGrp('ScaleMaxNumber', q=True, v=True)[0]
        self.MinNumEnter = cmds.intFieldGrp('ScaleMinNumber', q=True, v=True)[0]

        for Object in self.sel:
            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr (Object + '.scaleX', self.numRandom)
            cmds.setAttr (Object + '.scaleY', self.numRandom)
            cmds.setAttr (Object + '.scaleZ', self.numRandom)

    def resetScale(self):
        self.sel = cmds.ls(sl=True)
        for Object in self.sel:
            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr (Object + '.scaleX', 1)
            cmds.setAttr (Object + '.scaleY', 1)
            cmds.setAttr (Object + '.scaleZ', 1)

    def randomizerRotate(self):
        self.sel = cmds.ls(sl=True)
        self.MaxNumEnter = 359
        self.MinNumEnter = 0

        for Object in self.sel:
            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr(Object + '.rotateX', self.numRandom)

            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr(Object + '.rotateY', self.numRandom)

            self.numRandom = random.randrange(self.MinNumEnter, self.MaxNumEnter)
            cmds.setAttr(Object + '.rotateZ', self.numRandom)

    def resetRotate(self):
        self.sel = cmds.ls(sl=True)

        for Object in self.sel:
            cmds.setAttr(Object + '.rotateX', 0)
            cmds.setAttr(Object + '.rotateY', 0)
            cmds.setAttr(Object + '.rotateZ', 0)


randoValuez()