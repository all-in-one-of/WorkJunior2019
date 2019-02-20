import maya.cmds as cmds


class Toolbox():
    def __init__(self):
        self.myWin = 'amToolbox'
        self.createWin()

    def createWin(self):
        self.delete()

        self.myWin = cmds.window(self.myWin, title='amToolbox')
        self.myColl = cmds.columnLayout(parent=self.myWin, adjustableColumn=True)
        cmds.button(label="Duplicate Selected", parent=self.myColl, command=lambda x:cmds.duplicate())
        cmds.button(label="Create Locator Window", parent=self.myColl, command=lambda x: self.locatorWind())
        cmds.button(label="Control Creator Window", parent=self.myColl, command=lambda x: self.CtrlWind())
        cmds.button(label="Parent Constraint W/ Options Window", parent=self.myColl, command=lambda x: self.ConstraintWind())
        cmds.button(label="Renaming Window", parent=self.myColl, command=lambda x: self.RenameWind())
        cmds.button(label="Randomizer Window", parent=self.myColl, command=lambda x: self.RandomWind())

        cmds.showWindow(self.myWin)

    def delete(self):
        if cmds.window(self.myWin, q=True, exists=True): cmds.deleteUI(self.myWin)

    def DuplicateWind(self):
        cmds.duplicate

    def locatorWind(self):
        import CreateLocator
        LocatorTool = CreateLocator.Locators()
        LocatorTool.windowMaker()

    def CtrlWind(self):
        import FinalControlCreator
        ControlCreate = FinalControlCreator.ControlsSir()
        ControlCreate.ControlCreation()

    def RenameWind(self):
        import Rename
        Renamer = Rename.RenameUI()
        Renamer.winCreat()

    def RandomWind(self):
        import RandomizerSelf
        Randomize = RandomizerSelf.randoValuez()
        Randomize.RandomValues()

    def ConstraintWind(self):
        import ParentScale
        ParentNScale = ParentScale.PSWindow()
        ParentNScale.Create()

Toolbox()
