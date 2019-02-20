import maya.cmds as cmds


def CreateMDNode(opType):
    ''' Creates an Multipy Divide node with user defined operation, opType = int '''
    mdNode = cmds.createNode('multiplyDivide')
    cmds.setAttr(mdNode + '.operation', opType)
    return mdNode


def CreatePMANode(opType):
    ''' Creates a PlusMinusAverage node with user defined operation, opType = int '''
    pmaNode = cmds.createNode('plusMinusAverage')
    cmds.setAttr(pmaNode + '.operation', opType)
    return pmaNode


def CreateCondNode(opType):
    ''' Creates a Condition node with user defined operation, opType = int '''
    condNode = cmds.createNode('condition')
    cmds.setAttr(condNode + '.operation', opType)
    return condNode


def CreateBlendCNode():
    ''' Creates a blend colors node '''
    blendCNode = cmds.createNode('blendColors')
    return blendCNode


def BuiledStretchIK():
    ''' Selection order: Shoulder to Wrist, don't select Pole Vector control though '''
    sel = cmds.ls(sl=True)
    curves = []
    joints = []

    # separates joints from controls
    for obj in sel:
        if cmds.nodeType(cmds.listRelatives(obj, path=True, shapes=True)) == "nurbsCurve":
            curves.append(obj)
        else:
            joints.append(obj)

    # creates and constrains locators, in order for this to work you must select shoulder to wrist
    loc1 = cmds.spaceLocator(p=(cmds.xform(joints[0], q=True, t=True, ws=True)))[0]
    cmds.parentConstraint(curves[0], loc1, mo=True)
    loc2 = cmds.spaceLocator(p=(cmds.xform(joints[2], q=True, t=True, ws=True)))[0]
    cmds.parentConstraint(curves[1], loc2, mo=True)

    # creates distance node and connects the locators world positions to its points
    distNode = cmds.createNode('distanceBetween')
    cmds.connectAttr((loc1 + '.worldPosition'), (distNode + '.point1'))
    cmds.connectAttr((loc2 + '.worldPosition'), (distNode + '.point2'))

    # creates attributes needed to control stretch and length
    if not cmds.attributeQuery('Stretch', node=curves[1], ex=True):
        cmds.addAttr(curves[1], at='float', dv=0, hasMaxValue=True, hasMinValue=True, ln='Stretch', maxValue=1,
                     minValue=0)
        cmds.setAttr((curves[1] + '.Stretch'), k=True)

    if not cmds.attributeQuery('Length1', node=curves[1], ex=True):
        cmds.addAttr(curves[1], at='float', dv=1, ln='Length1')
        cmds.setAttr((curves[1] + '.Length1'), k=True)

    if not cmds.attributeQuery('Length2', node=curves[1], ex=True):
        cmds.addAttr(curves[1], at='float', dv=1, ln='Length2')
        cmds.setAttr((curves[1] + '.Length2'), k=True)

    # creates two MDNodes containing the original lengths of the joints
    length1MDNode = CreateMDNode(1)
    cmds.setAttr(length1MDNode + '.input1X', cmds.joint(joints[1], q=True, p=True, r=True)[0])
    cmds.connectAttr((curves[1] + '.Length1'), (length1MDNode + '.input2X'))
    length2MDNode = CreateMDNode(1)
    cmds.setAttr(length2MDNode + '.input1X', cmds.joint(joints[2], q=True, p=True, r=True)[0])
    cmds.connectAttr((curves[1] + '.Length2'), (length2MDNode + '.input2X'))

    # creates a plus minus average node and attaches the joint chain length
    totalLengthPMANode = CreatePMANode(1)
    cmds.connectAttr((length1MDNode + '.outputX'), (totalLengthPMANode + '.input1D[0]'))
    cmds.connectAttr((length2MDNode + '.outputX'), (totalLengthPMANode + '.input1D[1]'))

    # creates a global scale attribute on the transform control if one doesn't already exist
    if not cmds.attributeQuery('GlobalScale', node=curves[2], ex=True):
        cmds.addAttr(curves[2], at='float', dv=1, hasMinValue=True, ln='GlobalScale', minValue=0)
        cmds.setAttr((curves[2] + '.GlobalScale'), k=True)

    # creates a MDNode that controls the global scale of the stretch
    globalScaleMD = CreateMDNode(1)
    cmds.connectAttr((curves[2] + '.GlobalScale'), (globalScaleMD + '.input2X'))
    cmds.connectAttr((totalLengthPMANode + '.output1D'), (globalScaleMD + '.input1X'))

    # creates a MDNode that calculates if the distance is greater than the length
    scalarMDNode = CreateMDNode(2)
    cmds.connectAttr((distNode + '.distance'), (scalarMDNode + '.input1X'))
    cmds.connectAttr((globalScaleMD + '.outputX'), (scalarMDNode + '.input2X'))

    # creates a CondNode that checks if distance is greater than length
    scalarCondNode = CreateCondNode(3)
    cmds.connectAttr((distNode + '.distance'), (scalarCondNode + '.firstTerm'))
    cmds.connectAttr((globalScaleMD + '.outputX'), (scalarCondNode + '.secondTerm'))
    cmds.connectAttr((scalarMDNode + '.outputX'), (scalarCondNode + '.colorIfTrueR'))
    cmds.setAttr((scalarCondNode + '.colorIfFalseR'), 1)

    # creates a BlendColors node for controlling the stretch
    blendColorNode = CreateBlendCNode()
    cmds.connectAttr((scalarCondNode + '.outColorR'), (blendColorNode + '.color1R'))
    cmds.setAttr((blendColorNode + '.color2R'), 1)
    cmds.connectAttr((curves[1] + '.Stretch'), (blendColorNode + '.blender'))

    # creates scaled length nodes
    scaledLength1MDNode = CreateMDNode(1)
    cmds.connectAttr((length1MDNode + '.outputX'), (scaledLength1MDNode + '.input1X'))
    cmds.connectAttr((blendColorNode + '.outputR'), (scaledLength1MDNode + '.input2X'))
    cmds.connectAttr((scaledLength1MDNode + '.outputX'), (joints[1] + '.translateX'))

    scaledLength2MDNode = CreateMDNode(1)
    cmds.connectAttr((length2MDNode + '.outputX'), (scaledLength2MDNode + '.input1X'))
    cmds.connectAttr((blendColorNode + '.outputR'), (scaledLength2MDNode + '.input2X'))
    cmds.connectAttr((scaledLength2MDNode + '.outputX'), (joints[2] + '.translateX'))


BuiledStretchIK()
