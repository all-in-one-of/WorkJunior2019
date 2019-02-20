import maya.cmds as cmds


def ControlCreation():
    delete()

    windowCreator = cmds.window(title='Controls Window', widthHeight=(200, 555))

    colLayout = cmds.columnLayout(parent=windowCreator, adjustableColumn=True)
    SquareShape = "Square"
    CircleShape = "Circle"
    DiamondShape = "Diamond"
    colorer = 1

    scrollin = cmds.scrollField(parent=colLayout, wordWrap=1, w=150, h=60,
                                text="select the color for your new Controls", editable=0)
    cmds.button(parent=colLayout, label="Bright Green", command=lambda x: SetColor(14))
    cmds.button(parent=colLayout, label="Bright Red", command=lambda x: SetColor(13))
    cmds.button(parent=colLayout, label="Blue", command=lambda x: SetColor(6))
    cmds.button(parent=colLayout, label="Bright Blue", command=lambda x: SetColor(18))
    cmds.button(parent=colLayout, label="Pink", command=lambda x: SetColor(9))

    scrollin1 = cmds.scrollField(wordWrap=1, w=150, h=60, text="Now Select the type of control you want.",
                                 editable=0)
    cmds.button(parent=colLayout, label="Create Square Controls",
                command=lambda x: createControls(colorer, SquareShape))
    cmds.button(parent=colLayout, label="Create Circle Controls",
                command=lambda x: createControls(colorer, CircleShape))
    cmds.button(parent=colLayout, label="Create Diamond Controls",
                command=lambda x: createControls(colorer, DiamondShape))

    cmds.showWindow(windowCreator)


def SetColor(colour):
    colorer = colour
    return colorer


def delete():
    if cmds.window('ControlsWindow', exists=True): cmds.deleteUI('ControlsWindow')


def createControls(color, shapeName):
    sels = cmds.ls(sl=True)

    if len(sels) > 0:
        for sel in sels:
            ctrl = ControlTypes(shapeName)
            renameCtrl = cmds.rename(sel + "_Ctrl")
            groupies = cmds.group(renameCtrl, world=True, name=(renameCtrl + "_Grp"))
            ColorControls(renameCtrl, color)
            cmds.matchTransform(groupies, sel)


    else:
        cmds.warning("Nothing selected Creating control and group at origin")
        ctrl = ControlTypes(shapeName)
        renameCtrl = cmds.rename("Basic_Ctrl")
        groupies = cmds.group(renameCtrl, world=True, name=(cmds.renameCtrl + "_Grp"))
        ColorControls(renameCtrl, color)


def ControlTypes(shape):
    if shape == "Diamond":
        ctrls = cmds.curve(d=1, p=[(-0.5, 0, -0.5), (-0.25, 0, 0), (-0.5, 0, 0.5), (0, 0, 0.25), (0.5, 0, 0.5),
                                   (0.25, 0, 0), (0.5, 0, -0.5), (0, 0, -0.25)], k=[0, 1, 2, 3, 4, 5, 6, 7])
        ctrls = cmds.closeCurve(ch=True, ps=True, rpo=True, bb=0.5, bki=False, p=0.1)

    elif shape == "Square":
        ctrls = cmds.curve(d=1, p=[(-0.5, 0, -0.5), (-0.5, 0, 0.5), (0.5, 0, 0.5), (0.5, 0, -0.5)],
                           k=[0, 1, 2, 3])
        ctrls = cmds.closeCurve(ch=True, ps=True, rpo=True, bb=0.5, bki=False, p=0.1)

    elif shape == "Circle":
        ctrls = cmds.circle(c=(0, 0, 0), nr=(0, 1, 0), sw=360, r=1, d=3, ut=0, tol=0.0001, s=8, ch=1)

    return ctrls[0]


def ColorControls(ctrl, color):
    shapes = cmds.listRelatives(ctrl)

    for shape in shapes:

        if shape.nodeType == "nurbsCurve":
            cmds.setAttr(shape + ".overrideEnabled", 1)
            cmds.setAttr(shape + ".overrideColor", color)

        else:

            cmds.warning("Selected object is not a curve.")


ControlCreation()

