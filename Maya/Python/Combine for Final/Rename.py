import maya.cmds as cmds

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

RenameUI()