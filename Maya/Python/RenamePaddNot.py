import maya.cmds as cmds

def ChangeSuffix(sufx):
    print 'Suffix is now' + sufx


def windowCreator():
    #get user parameters via window
    if (cmds.window('Renaming', exists=True)): cmds.deleteUI('Renaming')

    Renaming = cmds.window('Renaming')
    cmds.columnLayout()
    cmds.text(label='Renamer')
    cmds.textFieldGrp('NewName', label='Enter new Name Here')
    cmds.optionMenu('Suffix', label='Select Suffix', changeCommand=ChangeSuffix)
    cmds.menuItem(label='Jnt')
    cmds.menuItem(label='Geo')
    cmds.menuItem(label='Ctrl')
    cmds.menuItem(label='SNRTHIS')
    cmds.optionMenu('Padd', label='Select Number Padding')
    cmds.menuItem(label='None')
    cmds.menuItem(label='0')
    cmds.menuItem(label='00')
    cmds.button(label="Rename the Thing!!!", command=lambda *args: Renamer())


    cmds.showWindow(Renaming)

    #For each object in list Rename To:
    # Prefix (user input)  + Number (that counts) + Suffix (user input or drop down)
def Renamer():
    #Get selection into list
    sel = cmds.ls(sl=True)

    counter = 1
    for objet in sel:
        name = cmds.textFieldGrp('NewName', q=True, tx=True)
        suffix = cmds.optionMenu('Suffix', q=True, v=True)

        padding = cmds.optionMenu('Padd', q=True, v=True)

        if padding == 'None':
            NewestName = name + str(counter) + suffix
            cmds.rename(objet, NewestName)
            counter += 1
        elif padding == '0':
            while counter<10:
                NewestName = name + str(0) + str(counter) + suffix
                cmds.rename(objet, NewestName)
                counter += 1
            else:
                NewestName = name + str(counter) + suffix
                cmds.rename(objet, NewestName)
                counter += 1
        elif padding == '00':
            while counter < 10:
                NewestName = name + str(0) + str(0) + str(counter) + suffix
                cmds.rename(objet, NewestName)
                counter += 1
            else:
                NewestName = name + str(0) + str(counter) + suffix
                cmds.rename(objet, NewestName)
                counter += 1
    print NewestName
    counter = 1



windowCreator()