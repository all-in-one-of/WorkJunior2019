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
        cmds.floatFieldGrp('MaximumField', label='Max', Parent=self.colLayout)
        cmds.floatFieldGrp('MinimumField', label='Min', Parent=self.colLayout)
        cmds.button(label="Randomize Translate All Axis'", Parent=self.colLayout, command=lambda *args: randomizer())
        cmds.button(label="Randomize Translate X", Parent=self.colLayout, command=lambda *args: randomizerX())
        cmds.button(label="Randomize Translate Y", Parent=self.colLayout, command=lambda *args: randomizerY())
        cmds.button(label="Randomize Translate Z", Parent=self.colLayout, command=lambda *args: randomizerZ())

        cmds.button(label="Randomize Rotation", Parent=self.colLayout, command=lambda *args: randomizerRotate())
        cmds.button(label="Reset Rotation", Parent=self.colLayout, command=lambda *args: resetRotate())
        cmds.intFieldGrp('ScaleNumber', label='Max Scale', Parent=self.colLayout)
        cmds.button(label="Randomize Scale", Parent=self.colLayout, command=lambda *args: randomizerScale())
        cmds.showWindow(self.MaxAndMinWin)

    def delete(self):
        if (cmds.window('MaxAndMinWin', exists=True)): cmds.deleteUI('MaxAndMinWin')

    def randomizer(self):
        # make the Selection an array
        self.sel = cmds.ls(sl=True)
        print self.sel
        # the fields from the window entered as these.
        maxNumEnter = cmds.floatFieldGrp('MaximumField', q=True, v=True)[0]
        minNumEnter = cmds.floatFieldGrp('MinimumField', q=True, v=True)[0]

        #numRandom = random.randrange(minNumEnter, maxNumEnter)
        #print numRandom

        for Object in self.sel:
            numRandom = random.randrange(minNumEnter, maxNumEnter)
            cmds.setAttr (Object + '.translateX', numRandom)

            numRandom = random.randrange(minNumEnter, maxNumEnter)
            cmds.setAttr(Object + '.translateY', numRandom)

            numRandom = random.randrange(minNumEnter, maxNumEnter)
            cmds.setAttr(Object + '.translateZ', numRandom)


    def randomizerX(self):
        self.sel = cmds.ls(sl=True)
        maxNumEnter = cmds.floatFieldGrp('MaximumField', q=True, v=True)[0]
        minNumEnter = cmds.floatFieldGrp('MinimumField', q=True, v=True)[0]


        for Object in self.sel:
            numRandom = random.randrange(minNumEnter, maxNumEnter)
            cmds.setAttr(Object + '.translateX', numRandom)


    def randomizerY(self):
        self.sel = cmds.ls(sl=True)
        maxNumEnter = cmds.floatFieldGrp('MaximumField', q=True, v=True)[0]
        minNumEnter = cmds.floatFieldGrp('MinimumField', q=True, v=True)[0]

        for Object in self.sel:
            numRandom = random.randrange(minNumEnter, maxNumEnter)
            cmds.setAttr(Object + '.translateY', numRandom)


    def randomizerZ(self):
        self.sel = cmds.ls(sl=True)
        maxNumEnter = cmds.floatFieldGrp('MaximumField', q=True, v=True)[0]
        minNumEnter = cmds.floatFieldGrp('MinimumField', q=True, v=True)[0]

        for Object in self.sel:
            numRandom = random.randrange(minNumEnter, maxNumEnter)
            cmds.setAttr(Object + '.translateZ', numRandom)



    def randomizerScale(self):
        self.sel = cmds.ls(sl=True)
        maxNumEnter = cmds.intFieldGrp('ScaleNumber', q=True, v=True)[0]
        minNumEnter = 1

        for Object in self.sel:
            numRandom = random.randrange(minNumEnter, maxNumEnter)
            cmds.setAttr (Object + '.scaleX', numRandom)
            cmds.setAttr (Object + '.scaleY', numRandom)
            cmds.setAttr (Object + '.scaleZ', numRandom)

    def randomizerRotate(self):
        self.sel = cmds.ls(sl=True)
        maxNumEnter = 359
        minNumEnter = 0

        for Object in self.sel:
            numRandom = random.randrange(minNumEnter, maxNumEnter)
            cmds.setAttr(Object + '.rotateX', numRandom)

            numRandom = random.randrange(minNumEnter, maxNumEnter)
            cmds.setAttr(Object + '.rotateY', numRandom)

            numRandom = random.randrange(minNumEnter, maxNumEnter)
            cmds.setAttr(Object + '.rotateZ', numRandom)

    def resetRotate(self):
        self.sel = cmds.ls(sl=True)

        for Object in self.sel:
            cmds.setAttr(Object + '.rotateX', 0)
            cmds.setAttr(Object + '.rotateY', 0)
            cmds.setAttr(Object + '.rotateZ', 0)


randoValuez()