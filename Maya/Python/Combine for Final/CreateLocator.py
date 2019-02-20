import maya.cmds as cmds

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

Locators()
