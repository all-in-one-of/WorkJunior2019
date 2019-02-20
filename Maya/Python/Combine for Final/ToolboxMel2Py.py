import maya.cmds as cmds
import random

#button Duplicate Selected
#button Create Locator
#button Control Creator Window
#button Open Parent Constraint W/ Options window
#button Open Renaming Window
#button Open Randomizer Window

if cmds.window('MainWindow', exists=True): cmds.deleteUI('MainWindow')

mainWindow = cmds.window('MainWindow')

colLayout = cmds.columnLayout()

cmds.button(label="Duplicate Selected", parent=colLayout, command=lambda x: Duplication())
cmds.button(label="Create Locator Window", parent=colLayout, command=lambda x: Locators())
cmds.button(label="Control Creator Window", parent=colLayout, command=lambda x: ControlsSir())
cmds.button(label="Parent Constraint W/ Options Window", parent=colLayout, command=lambda x: ParentConstraints())
cmds.button(label="Renaming Window", parent=colLayout, command=lambda x: RenameUI())
cmds.button(label="Randomizer Window", parent=colLayout, command=lambda x: randoValuez())

cmds.showWindow(mainWindow)

class Duplication:
    cmds.duplicate()

#button Create Locator
class Locators:
    def __init__(self):
        self.windowCreator = "LocatorWindow"
        self.windowMaker()

    def windowMaker(self):
        self.delete()

        self.windowMaker = cmds.window(self.windowMaker, title='Create Locator', widthHeight=(300, 100))
        self.colLayout = cmds.columnLayout(parent=self.windowMaker, adjustableColumn=True)

        cmds.button(parent=self.colLayout, label="Create Locator At Pivot", command=lambda x: self.CreateLoc(2))
        cmds.button(parent=self.colLayout, label="Create Locator At Bounding box", command=lambda x: self.CreateLoc(1))

        cmds.showWindow(self.windowMaker)

    def delete(self):
        if cmds.window(self.windowMaker, exists=True): cmds.deleteUI(self.windowMaker)

    def CreateLoc(self, option=1):
        self.sels = cmds.ls(sl=True)
        if option is 1:
            self.duplicates = cmds.duplicate(self.sels, rr=True)
            self.duplicates = cmds.polyUnite(self.duplicates, ch=True, mergeUVSets=True, centerPivot=True)[0]
            self.bbox = cmds.xform(self.duplicates, boundingBox=True, q=True)
            self.bboxPivot = [(self.bbox[0]+self.bbox[3])/2, (self.bbox[1]+self.bbox[4])/2, (self.bbox[2]+self.bbox[5])/2,]

            cmds.delete(self.duplicates, ch=True)
            cmds.delete(self.duplicates)

            self.loca = cmds.spaceLocator()[0]
            cmds.xform(self.loca, t=self.bboxPivot, ws=True)

        elif option is 2:
            for sel in self.sels:
                Pivot = cmds.xform(sel, q=True, rp=True, ws=True)
                self.loca = cmds.spaceLocator()[0]
                cmds.xform(self.loca, t=Pivot, ws=True)


#button Control Creator Window
class ControlsSir:
    def __init__(self):
        self.windowCreator = "ControlsWindow"
        self.ControlCreation()

    def ControlCreation(self):
        self.delete()

        self.windowCreator = cmds.window(self.windowCreator, title='Controls Window', widthHeight=(200, 300))

        self.colLayout = cmds.columnLayout(parent=self.windowCreator, adjustableColumn=True)
        SquareShape = "Square"
        CircleShape = "Circle"
        DiamondShape = "Diamond"
        colorer = 1

        self.scrollin1 = cmds.scrollField(wordWrap=1, w=150, h=60,
                                          text="Select Objects and Click The control you want made.", editable=0)
        cmds.button(parent=self.colLayout, label="Create Square Controls",
                    command=lambda x: self.createControls(colorer, SquareShape))
        cmds.button(parent=self.colLayout, label="Create Circle Controls",
                    command=lambda x: self.createControls(colorer, CircleShape))
        cmds.button(parent=self.colLayout, label="Create Diamond Controls",
                    command=lambda x: self.createControls(colorer, DiamondShape))

        self.scrollin = cmds.scrollField(parent=self.colLayout, wordWrap=1, w=150, h=60,
                                         text="Select the Control Groups and Select your color", editable=0)
        cmds.button(parent=self.colLayout, label="Bright Green", command=lambda x: self.SetColor(14))
        cmds.button(parent=self.colLayout, label="Bright Red", command=lambda x: self.SetColor(13))
        cmds.button(parent=self.colLayout, label="Blue", command=lambda x: self.SetColor(6))
        cmds.button(parent=self.colLayout, label="Bright Blue", command=lambda x: self.SetColor(18))
        cmds.button(parent=self.colLayout, label="Pink", command=lambda x: self.SetColor(9))
        cmds.showWindow(self.windowCreator)


    def delete(self):
        if cmds.window('ControlsWindow', exists=True): cmds.deleteUI('ControlsWindow')

    def createControls(self, color, shapeName):

        self.sels = cmds.ls(sl=True)

        if len(self.sels) > 0:
            for sel in self.sels:
                self.ctrl = self.ControlTypes(shapeName)
                cmds.select(self.ctrls, r=True)
                self.renamed = cmds.rename(sel + "_Ctrl")
                self.groupies = cmds.group(self.renamed, world=True, name=(self.renamed + "_Grp"))
                cmds.matchTransform(self.groupies, sel)

        else:
            cmds.warning("Nothing selected Creating control and group at origin")
            self.ctrl = self.ControlTypes(shapeName)
            cmds.select(self.ctrls, r=True)
            self.renamed = cmds.rename("Basic_Ctrl")
            self.groupies = cmds.group(self.renamed, world=True, name=(self.renamed + "_Grp"))

    def ControlTypes (self, shape):

        if shape == "Diamond":
            self.ctrls = cmds.curve(d=1, p=[(-1, 0, -1), (-0.5, 0, 0), (-1, 0, 1), (0, 0, 0.5), (1, 0, 1),
                                            (0.5, 0, 0), (1, 0, -1), (0, 0, -0.5)], k=[0, 1, 2, 3, 4, 5, 6, 7])
            self.ctrls = cmds.closeCurve(ch=True, ps=True, rpo=True, bb=1, bki=False, p=0.1)

        elif shape == "Square":
            self.ctrls = cmds.curve(d=1, p=[(-1, 0, -1), (-1, 0, 1), (1, 0, 1), (1, 0, -1)],
                                    k=[0, 1, 2, 3])
            self.ctrls = cmds.closeCurve(ch=True, ps=True, rpo=True, bb=1, bki=False, p=0.1)

        elif shape == "Circle":
            self.ctrls = cmds.circle(c=(0, 0, 0), nr=(0, 1, 0), sw=360, r=1, d=3, ut=0, tol=0.0001, s=8, ch=1)

        return self.ctrls[0]

    def SetColor(self, color):

        self.shapes = cmds.listRelatives()
        print self.shapes

        for shape in self.shapes:

            cmds.setAttr(shape + ".overrideEnabled", 1)
            cmds.setAttr(shape + ".overrideColor", color)


#button Open Parent Constraint W/ Options window
class ParentConstraints():
    #skip rotate first
    cmds.parentConstraint(mo=True, sr=["x","y","z"])
    cmds.parentConstraint(mo=True, st=["x","y","z"])
    cmds.scaleConstraint(mo=True)


#button Open Renaming Window
class RenameUI():
    def __init__(self):
        self.windowCreator = "Renaming"
        self.winCreat()

    def winCreat(self):
        self.delete()

        self.windowCreator = cmds.window(self.windowCreator, title='Renaming Window')

        self.colLayout = cmds.columnLayout(parent=self.windowCreator, adjustableColumn=True)
        cmds.text(label='Renamer', parent=self.colLayout)
        cmds.textFieldGrp('NewName', label='Enter new Name Here', parent=self.colLayout)
        dropDwnM = cmds.optionMenu('Suffix', parent=self.colLayout, label='Select Suffix')
        cmds.menuItem(parent=dropDwnM, label=' Jnt')
        cmds.menuItem(parent=dropDwnM, label=' Geo')
        cmds.menuItem(parent=dropDwnM, label=' Ctrl')
        cmds.menuItem(parent=dropDwnM, label=' SNRTHIS')
        cmds.optionMenu('Padd', label='Select Number Padding')
        cmds.menuItem(label='None')
        cmds.menuItem(label='0')
        cmds.menuItem(label='00')
        cmds.button(parent=self.colLayout, label="Rename the Thing!!!", command=lambda x: self.Renamer())


        cmds.showWindow(self.windowCreator)

        #For each object in list Rename To:
        # Prefix (user input)  + Number (that counts) + Suffix (user input or drop down)
    def delete(self):
        if (cmds.window('Renaming', exists=True)): cmds.deleteUI('Renaming')
    def Renamer(self):
        #Get selection into list
        self.sel = cmds.ls(sl=True)

        self.counter = 1
        for objet in self.sel:
            self.name = cmds.textFieldGrp('NewName', q=True, tx=True)
            self.suffix = cmds.optionMenu('Suffix', q=True, v=True)

            padding = cmds.optionMenu('Padd', q=True, v=True)

            if padding == '00' and self.counter < 10:
                NewestName = self.name + ' ' + str(0) + str(0) + str(self.counter) + self.suffix
                cmds.rename(objet, NewestName)
                self.counter += 1

            elif padding == '00' and 10 <= self.counter < 100:
                NewestName = self.name + ' ' + str(0) + str(self.counter) + self.suffix
                cmds.rename(objet, NewestName)
                self.counter += 1

            elif padding == '0' and self.counter < 10:
                NewestName = self.name + ' ' + str(0) + str(self.counter) + self.suffix
                cmds.rename(objet, NewestName)
                self.counter += 1

            elif padding == 'None':
                NewestName = self.name + ' ' + str(self.counter) + self.suffix
                cmds.rename(objet, NewestName)
                self.counter += 1
            else:
                cmds.warning("No Valid Padd Number! Doing Default No Pad")
                NewestName = self.name + ' ' + str(self.counter) + self.suffix
                cmds.rename(objet, NewestName)
                self.counter += 1

        print NewestName
        self.counter = 1


#button Open Randomizer Window

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

