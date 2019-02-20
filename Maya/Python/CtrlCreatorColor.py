import maya.cmds as cmds


class ControlsSir:
    def __init__(self):
        self.windowCreator = "ControlsWindow"
        self.ControlCreation()

    def ControlCreation(self):
        self.delete()

        self.windowCreator = cmds.window(self.windowCreator, title='Controls Window', widthHeight=(200, 555))

        self.colLayout = cmds.columnLayout(parent=self.windowCreator, adjustableColumn=True)
        SquareShape = "Square"
        CircleShape = "Circle"
        DiamondShape = "Diamond"
        colorer = 1

        self.scrollin = cmds.scrollField(parent=self.colLayout, wordWrap=1, w=150, h=60,
                                         text="select the color for your new Controls", editable=0)
        cmds.button(parent=self.colLayout, label="Bright Green", command=lambda x: self.SetColor(14))
        cmds.button(parent=self.colLayout, label="Bright Red", command=lambda x: self.SetColor(13))
        cmds.button(parent=self.colLayout, label="Blue", command=lambda x: self.SetColor(6))
        cmds.button(parent=self.colLayout, label="Bright Blue", command=lambda x: self.SetColor(18))
        cmds.button(parent=self.colLayout, label="Pink", command=lambda x: self.SetColor(9))

        self.scrollin1 = cmds.scrollField(wordWrap=1, w=150, h=60, text="Now Select the type of control you want.",
                                          editable=0)
        cmds.button(parent=self.colLayout, label="Create Square Controls",
                    command=lambda x: self.createControls(colorer, SquareShape))
        cmds.button(parent=self.colLayout, label="Create Circle Controls",
                    command=lambda x: self.createControls(colorer, CircleShape))
        cmds.button(parent=self.colLayout, label="Create Diamond Controls",
                    command=lambda x: self.createControls(colorer, DiamondShape))

        cmds.showWindow(self.windowCreator)

    def SetColor(self, colour):
         colorer = colour
         return colorer

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
                self.ColorControls(self.renamed, color)

        else:
            cmds.warning("Nothing selected Creating control and group at origin")
            self.ctrl = self.ControlTypes(shapeName)
            cmds.select(self.ctrls, r=True)
            self.renamed = cmds.rename("Basic_Ctrl")
            self.groupies = cmds.group(self.renamed, world=True, name=(self.renamed + "_Grp"))
            self.ColorControls(self.renamed, color)

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

    def ColorControls(self, ctrl, color):

        self.shapes = cmds.listRelatives(ctrl)
        print self.shapes

        for shape in self.shapes:

            cmds.setAttr(shape + ".overrideEnabled", 1)
            cmds.setAttr(shape + ".overrideColor", color)

ControlsSir()

