import maya.cmds as cmds



#assign main control first
#name finger bones L_RK_Finger1_01_jnt etc



#use this code in your button:

# import IKFKSwitch
# reload (IKFKSwitch)

# ikfk = IKFKSwitch.IKFKSwitchTool()
# ikfk.windowmaker() 

#RigTools = RiggingTools()
IKjnts = []
FKjnts = []
relatives = []


class IKFKSwitchTool():
    def __init__(self):
        self.mainWin = 'Menu'
        
    def windowmaker(self):
        self.delete()

        self.mainWin = cmds.window(self.mainWin, title = 'Controls Tools', tlb = True, sizeable = True, widthHeight=(270, 900))
        #remove prefs for testing: cmds.windowPref(self.mainWin, remove = True)
        mCol = cmds.columnLayout(parent = self.mainWin, w = 100, adjustableColumn = True)
        
                # Assign main control
        cmds.text(parent = mCol, ww = True, label='Assign the main control before running the switch code. This will be where the IKFK switch sliders will be.' )
        mRow3 = cmds.rowLayout(parent = mCol, nc = 2)        
        mRow3 = cmds.rowLayout(parent = mCol, nc =2 )    
        cmds.button(parent = mCol, label = 'Assign Main Control', c = lambda x: self.assignMainControl())

        cmds.text(parent = mCol, label = '          ')
        cmds.text(parent = mCol, label = '          ')

        #IKFK setup
        cmds.text(parent = mCol, ww = True, label='This button will setup your IKFK switch if you have named your joints accordingly. Place and Orient joints first. Name Fingers like so: L_RK_Finger1_01_jnt etc. Name Arms/legs like so: L_RK_Arm_01_jnt etc' )
        mRow2 = cmds.rowLayout(parent = mCol, nc = 2)
            #finger control size field:
        cmds.text(parent = mRow2, label = '   Finger/Foot Control Size:   ')
        self.contSize = cmds.floatField(parent = mRow2, minValue=0, value=1, h = 30, pre = 1)
        mRow3 = cmds.rowLayout(parent = mCol, nc = 2)
            #arm control size field:
        cmds.text(parent = mRow3, label = '   Arm Control Size:   ')
        self.armSize = cmds.floatField(parent = mRow3, minValue=0, value=1, h = 30, pre = 1)
        cmds.button(parent = mCol, label = 'IKFK Switch', 
                                    c = lambda x: self.IKFKSwitchSetup(cmds.floatField(self.contSize, q = True, value = True), cmds.floatField(self.armSize, q = True, value = True)))

        cmds.text(parent = mCol, label = '          ')
        cmds.text(parent = mCol, label = '          ')

        #build controls stuff:
        cmds.text(parent = mCol, ww = True, label='This Tool will set up a control and group based on the name of the joint you pick. It will also set up all needed constraints. Select the joint you want to create a control for first.' )
        mRow = cmds.rowLayout(parent = mCol, nc = 2)        #row for control size stuff
        cmds.text(parent = mRow, label = '   Control Size:   ')
        self.SizeField = cmds.floatField(parent = mRow, minValue=0, value=1, h = 30, pre = 1)
        mRow2 = cmds.rowLayout(parent = mCol, nc =2 )    #row for control color stuff
        cmds.button(parent = mCol, label = 'Create Control', 
                                    c=lambda x: self.ControlCreator(cmds.floatField(self.SizeField, q = True, value =True)))

        cmds.text(parent = mCol, label = '          ')
        cmds.text(parent = mCol, label = '          ')



        
        # recolor stuff:
        cmds.text(parent = mCol, ww = True, h = 40, label = 'Select as many controls as you want and click a color')
        
        cmds.gridLayout( parent = mCol, numberOfColumns=3, cr = True, cellWidthHeight=(45, 25) )
                # all of the gosh dang buttons start here
        cmds.button( label = "", bgc = [0, 0, 0], c = lambda x: self.Recolor(1))
        cmds.button( label = "", bgc = [0.75, 0.75, 0.75], c = lambda x: self.Recolor(2))
        cmds.button( label = "", bgc = [0.5, 0.5, 0.5], c = lambda x: self.Recolor(3))
        cmds.button(label =  "", bgc = [.8, 0, 0.2], c = lambda x: self.Recolor(4))
        cmds.button( label = "", bgc = [0, 0, .4], c = lambda x: self.Recolor(5))
        cmds.button( label = "", bgc = [   0, 0, 1   ], c = lambda x: self.Recolor(  6  ))
        cmds.button( label = "", bgc = [    0, .3, 0   ], c = lambda x: self.Recolor(  7 ))
        cmds.button( label = "", bgc = [ 0.2, 0, 0.3     ], c = lambda x: self.Recolor(  8   ))
        cmds.button( label = "", bgc = [ .8, 0, .8     ], c = lambda x: self.Recolor(  9  ))
        cmds.button( label = "", bgc = [  0.6, 0.3, 0.2    ], c = lambda x: self.Recolor(  10 ))
        cmds.button( label = "", bgc = [ 0.25, 0.13, 0.13    ], c = lambda x: self.Recolor(  11   ))
        cmds.button( label = "", bgc = [   0.7, .2, 0   ], c = lambda x: self.Recolor(  12  ))
        cmds.button( label = "", bgc = [ 1, 0, 0    ], c = lambda x: self.Recolor(  13  ))
        cmds.button( label = "", bgc = [ 0, 1, 0    ], c = lambda x: self.Recolor(  14  ))
        cmds.button( label = "", bgc = [  0, 0.3, 0.6    ], c = lambda x: self.Recolor(  15 ))
        cmds.button( label = "", bgc = [ 1, 1, 1     ], c = lambda x: self.Recolor(  16))
        cmds.button( label = "", bgc = [  1, 1, 0    ], c = lambda x: self.Recolor(  17 ))
        cmds.button( label = "", bgc = [  0, 1, 1    ], c = lambda x: self.Recolor(  18 ))
        cmds.button(label = "", bgc = [  0, 1, .8     ], c = lambda x: self.Recolor(  19 ))
        cmds.button( label = "", bgc = [ 1, .7, .7     ], c = lambda x: self.Recolor(  20 ))
        cmds.button( label = "", bgc = [ 0.9, .7, .5     ], c = lambda x: self.Recolor(  21 ))
        cmds.button( label = "", bgc = [  1, 1, 0.4    ], c = lambda x: self.Recolor(  22 ))
        cmds.button( label = "", bgc = [  0, 0.7, .4    ], c = lambda x: self.Recolor(  23 ))
        cmds.button( label = "", bgc = [  .6, .4, .2     ], c = lambda x: self.Recolor(  24 ))
        cmds.button( label = "", bgc = [ .63, .63, .17    ], c = lambda x: self.Recolor(  25 ))
        cmds.button(label = "", bgc = [ 0.4, 0.6, 0.2    ], c = lambda x: self.Recolor(  26 ))
        cmds.button( label = "", bgc = [0.2, 0.63, 0.35     ], c = lambda x: self.Recolor(  27 ))
        cmds.button( label = "", bgc = [  0.18, 0.63, 0.63    ], c = lambda x: self.Recolor(  28 ))
        cmds.button( label = "", bgc = [ 0.18, 0.4, 0.63     ], c = lambda x: self.Recolor(  29 ))
        cmds.button( label = "", bgc = [ 0.43, 0.18, 0.63    ], c = lambda x: self.Recolor(  30 ))
        cmds.button( label = "", bgc = [  0.63, 0.18, 0.4    ], c = lambda x: self.Recolor(  31 )) 
        
        
        # constrain controls to groups:      
        cmds.text(parent = mCol, ww = True,h = 40, label = "Select a control, then a group to constrain them together. This sets up broken FK functionality as well:")
        cmds.button(parent = mCol, label = 'Constrain', c = lambda x: self.SetupControlConstraints())
        
        cmds.showWindow(self.mainWin)   
        
    def delete(self):
        if cmds.window(self.mainWin, exists = True):
            cmds.deleteUI(self.mainWin) 
            
            
            
    def assignMainControl(self):
        global mainControl
        sel = cmds.ls(sl = True)
        mainControl = sel[0]
        
        print mainControl


    def IKFKSwitchSetup(self, controlSize, armSize):
        global relatives
        sel = cmds.ls(sl = True)
        relatives = cmds.listRelatives(sel[0], ad = True) 
        relatives.append(sel[0])
        relatives.reverse()
        
    #---------setup Main Control Options
        
                #find attribute name
        BodyPart = "name"
        if "Arm" in sel[0]: 
            BodyPart = "Arm"
        if "Leg" in sel[0]:
            BodyPart = "Leg"
        
        Attrname = BodyPart + "_IKFK"   
                #create attribute
        global mainControl
        cmds.select( mainControl )
        cmds.addAttr( shortName=Attrname, longName=Attrname, k = True, defaultValue=1.0, minValue=0, maxValue=1)
            
        
#------------------------IK Setup
                #create IK Bones
        IKpeeps = cmds.duplicate(relatives[0], rc = True)
        IKrelatives = cmds.listRelatives(IKpeeps[0], ad= True)
        IKrelatives.append(IKpeeps[0])
        IKrelatives.reverse()
        global IKjnts       
        for relative in IKrelatives:        #rename IK bones
    
            relative
            newName = relative.replace("RK", "IK")
            newName = newName[:-1]
            newRel = cmds.rename(relative, newName)
            IKjnts.append(newRel)   
        
        IKWrist = cmds.duplicate(IKjnts[2], rc = True)
        IKWristDels = cmds.listRelatives(IKWrist[0], ad = True)
        
        cmds.parent( IKjnts[2], world=True )
        for deleted in IKWristDels:          #delete extra fingers that we don't need anymore
                cmds.delete(deleted)
                
        IKHandle = cmds.ikHandle( sj= IKjnts[0], ee=IKWrist[0], n = sel[0][:1] + "_" + BodyPart + "_IK_Handle")         #create IK handle
        cmds.pointConstraint( IKWrist[0], IKjnts[2])        #connect wrist to hand
        
        
                #constrain IK Handle
        cmds.select(IKHandle)
        newSel = cmds.ls(sl = True)       
        myControl2 = cmds.circle(nr=(1, 0, 0), r = armSize)[0]
        myGroup2 = cmds.group(myControl2)
        cmds.matchTransform(myGroup2, newSel)
        newName = newSel[0]
        myControl2 = cmds.rename(myControl2, newName + "_ctl")
        myGroup2 = cmds.rename(myGroup2, newName + "_ctl_grp")
        
        cmds.pointConstraint( myControl2, newSel[0], mo = True)
        cmds.parentConstraint(myControl2, IKjnts[2], mo = True, st = ["x", "y", "z"])
        
        
                #constrain IK Shoulder Joint
        cmds.select(IKjnts[0])
        newSel = cmds.ls(sl = True)       
        myControl = cmds.circle(nr=(1, 0, 0), r = armSize)[0]
        myGroup = cmds.group(myControl)
        cmds.matchTransform(myGroup, newSel)
        newName = newSel[0]
        myControl = cmds.rename(myControl, newName + "_ctl")
        myGroup = cmds.rename(myGroup, newName + "_ctl_grp")
        cmds.parentConstraint(myControl, newSel, mo = True, sr = ["x", "y", "z"]) #parent constraint skipping rotates
              
                #stretchy IK Activated:
        cmds.select( myControl2, r=True )
        cmds.select( IKWrist[0], add=True )
        cmds.select( IKjnts[1], add=True )
        cmds.select( IKjnts[0], add=True )

            #importing rigging tools scripts
        #import RiggingTools
        #reload(RiggingTools)
        #RigTools = RiggingTools()
        self.stretchyIK()
        #RigTools.stretchyIK()
        
                #IK Controls group
        IKControlsGroup = cmds.group(n = sel[0][:1] + "_" + BodyPart + "_IK_Controls", em = True)
        cmds.parent ( myGroup, IKControlsGroup)  
        cmds.parent ( myGroup2, IKControlsGroup)
        
                #Hand Joints
        cmds.select(IKjnts[0])
        HandRels = cmds.listRelatives(IKjnts[2], ad = True)
        del HandRels[-1]
        del HandRels[-1]
    
                #FK Fingers on the IK Switch
        for jnt in HandRels:
            cmds.select(jnt)
            self.ControlCreator(controlSize) # <=======================FK Finger Control Size
            
            newName = jnt
            if newName.endswith('_jnt'):    #remove jnt at the end
                newName = newName[:-4]
            #rename control and group
            myControl = newName + "_ctl"
            myGroup = newName + "_ctl_grp"
            #print myControl, myGroup
            cmds.parent( myGroup, IKControlsGroup )
        print IKjnts

        #need to get: L_Arm_IK_Handle_ctl
        #IKjnts = [u'L_IK_Arm_01_jnt', u'L_IK_Arm_02_jnt', u'L_IK_Arm_03_jnt', u'L_IK_Finger1_01_jnt', u'L_IK_Finger1_02_jnt', u'L_IK_Finger4_01_jnt', u'L_IK_Finger4_02_jnt', u'L_IK_Finger4_03_jnt', u'L_IK_Finger2_01_jnt', u'L_IK_Finger2_02_jnt', u'L_IK_Finger2_03_jnt', u'L_IK_Finger3_01_jnt', u'L_IK_Finger3_02_jnt', u'L_IK_Finger3_03_jnt']
        
        fingerStartctls2 = []
        for jnt in IKjnts:
            controlName = jnt
            if controlName.endswith('_jnt'):    #remove jnt at the end
                controlName = controlName[:-4]

            groupNum = str(int(controlName[-2:] ) + 1)      #get the last two digits of the name, to know the control number.
            groupToConstrain = controlName[:-2] + "0" + groupNum + '_ctl_grp'   #name of group to constrain.

            if "Finger" in controlName:
                if cmds.objExists(groupToConstrain):
                    cmds.select( controlName + "_ctl", r=True )          #selecting control
                    cmds.select( groupToConstrain, add=True )       #selecting group to constrain
                    self.SetupControlConstraints()
                    


            if "Finger" in controlName:     #find start of fingers
                if "01" in controlName:
                    fingerStartctls2.append(controlName)

        splitString = IKjnts[0].split("_")
        wristString = splitString[0] + "_" + splitString[2] + "_IK_Handle_ctl"
    
        print wristString

            #Constrain wrist to start of fingers
        for fingerStart in fingerStartctls2:
            cmds.select( wristString, r=True )
            cmds.select( fingerStart + "_ctl_grp", add=True )       #selecting group to constrain
            self.SetupControlConstraints()
            
    
        
        
#--------------------FK Setup    
        FKpeeps = cmds.duplicate(relatives[0], rc = True)
        FKrelatives = cmds.listRelatives(FKpeeps[0], ad= True)
        FKrelatives.append(IKpeeps[0])
        FKrelatives.reverse()
        global FKjnts      
        for relative in FKrelatives:        #Rename FK Bones
    
            relative
            newName = relative.replace("RK", "FK")
            newName = newName[:-1]
            newRel = cmds.rename(relative, newName)
            FKjnts.append(newRel)
            
        FKControlsGroup = cmds.group(n = sel[0][:1] + "_" + BodyPart + "_FK_Controls", em = True)
        
        for jnt in FKjnts:
            cmds.select(jnt)
            if "Finger" in jnt:
                self.ControlCreator(controlSize) # <=======================IK Finger Control Size
            else:
                self.ControlCreator(armSize)
            
            newName = jnt
            if newName.endswith('_jnt'):    #remove jnt at the end
                newName = newName[:-4]
            #rename control and group
            myControl = newName + "_ctl"
            myGroup = newName + "_ctl_grp"
            cmds.parent( myGroup, FKControlsGroup )

        #constrain joints to groups awesomely
        fingerStartctls = []
        for jnt in FKjnts:
            controlName = jnt
            if controlName.endswith('_jnt'):    #remove jnt at the end
                controlName = controlName[:-4]

            groupNum = str(int(controlName[-2:] ) + 1)      #get the last two digits of the name, to know the control number.
            groupToConstrain = controlName[:-2] + "0" + groupNum + '_ctl_grp'   #name of group to constrain.
            if cmds.objExists(groupToConstrain):
                cmds.select( controlName + "_ctl", r=True )          #selecting control
                cmds.select( groupToConstrain, add=True )       #selecting group to constrain
                self.SetupControlConstraints()
                #print controlName + "_ctl constrained to " + groupToConstrain

            else:       #find final arm piece
                if "Arm" in controlName:  
                    constrainCtl = controlName + "_ctl"

            if "Finger" in controlName:     #find start of fingers
                if "01" in controlName:
                    fingerStartctls.append(controlName)

                #Constrain wrist to start of fingers
        for fingerStart in fingerStartctls:
            cmds.select( constrainCtl, r=True )
            cmds.select( fingerStart + "_ctl_grp", add=True )       #selecting group to constrain
            self.SetupControlConstraints()

            

        
        
        
#--------Constraints Setup -- actual switch logic here
        constraintGrp = []

        for RKRel, IKRel, FKRel in zip(relatives, IKjnts, FKjnts):        
            constraintGrp.append(cmds.parentConstraint( FKRel, IKRel, RKRel)[0])
             
        for const, RKRel, IKRel, FKRel in zip(constraintGrp, relatives, IKjnts, FKjnts):
                        #setup main control for FK
            cmds.select( mainControl )
            cmds.setAttr(mainControl + "." + Attrname, 1)
            
                        #setup constraints for keying
            cmds.select( const )
            cmds.setAttr(const + "." + FKRel + "W0", 1)
            cmds.setAttr(const + "." + IKRel + "W1", 0)
            
                        #key constraints for FK
            cmds.setDrivenKeyframe( at=FKRel + "W0", cd= mainControl + "." + Attrname )
            cmds.setDrivenKeyframe( at=IKRel + "W1", cd= mainControl + "." + Attrname )
            
                        #setup main control for IK
            cmds.select( mainControl )
            cmds.setAttr(mainControl + "." + Attrname, 0)
            
                        #setup constraints for keying
            cmds.select( const )
            cmds.setAttr(const + "." + FKRel + "W0", 0)
            cmds.setAttr(const + "." + IKRel + "W1", 1)
            
                        #key constraints for FK
            cmds.setDrivenKeyframe( at=FKRel + "W0", cd= mainControl + "." + Attrname )
            cmds.setDrivenKeyframe( at=IKRel + "W1", cd= mainControl + "." + Attrname )
            
                #------key visibility of controls
                        #setup main for FK
        cmds.select( mainControl )     
        cmds.setAttr(mainControl + "." + Attrname, 1)    
        
                        #setup groups for keying
        cmds.select(FKControlsGroup)
        cmds.setAttr(FKControlsGroup + ".visibility", 1)
        cmds.select(IKControlsGroup)
        cmds.setAttr(IKControlsGroup + ".visibility", 0)
        
                        #key Visibility 
        cmds.select(FKControlsGroup)   
        cmds.setDrivenKeyframe( at="visibility", cd= mainControl + "." + Attrname )
        cmds.select(IKControlsGroup)   
        cmds.setDrivenKeyframe( at="visibility", cd= mainControl + "." + Attrname )
        
                        #setup main for IK
        cmds.select( mainControl )     
        cmds.setAttr(mainControl + "." + Attrname, 0)    
        
                        #setup groups for keying
        cmds.select(FKControlsGroup)
        cmds.setAttr(FKControlsGroup + ".visibility", 0)
        cmds.select(IKControlsGroup)
        cmds.setAttr(IKControlsGroup + ".visibility", 1)
        
                        #key Visibility
        cmds.select(FKControlsGroup)
        cmds.setDrivenKeyframe( at="visibility", cd= mainControl + "." + Attrname )
        cmds.select(IKControlsGroup)
        cmds.setDrivenKeyframe( at="visibility", cd= mainControl + "." + Attrname )
        
        
        
        #rename Hand   
        #if Type == 1:         
        IKHand = cmds.rename(IKjnts[2], IKjnts[2][0] + "_IK_Hand_jnt")
            
        print IKjnts

        sel = IKjnts[1]
        mycircle = cmds.circle( nr=(0, 1, 0) )
        cmds.select(mycircle[0] + '.cv[6]')
        cmds.select( mycircle[0] + '.cv[4]', add=True )
        cmds.select( mycircle[0] + '.cv[0]', add=True )
        cmds.select( mycircle[0] + '.cv[2]', add=True )
        cmds.rotate( 0, '135deg', 0, os = True)
        pvgroup = cmds.group(mycircle)
        cmds.matchTransform(pvgroup, sel)
        stringpieces = sel.split("_")
        newName = stringpieces[0] + "_" + stringpieces[2] + "_PV_ctl"

        mycircle = cmds.rename(mycircle[0], newName)
        pvgroup = cmds.rename(pvgroup, newName + "_grp")

        cmds.poleVectorConstraint( mycircle, IKHandle[0] )

        cmds.parent( pvgroup, IKControlsGroup )

        maincontrolsgroup = cmds.group( em=True, name = 'Controls' )
        cmds.parent( IKControlsGroup, maincontrolsgroup )
        cmds.parent( FKControlsGroup, maincontrolsgroup )

        

        #if Type == 2:
        #    IKHand = cmds.rename(IKjnts[2], IKjnts[2][0] + "_IK_Foot_jnt")


    def stretchyIK (self):
        #select control first, wrist bone second, elbow bone third, shoulder bone fourth
        
        
        sel = cmds.ls(sl = True)   
        newName = sel[0]
        if newName.startswith('R_Arm_IK') or newName.startswith('L_Arm_IK') or newName.startswith('L_Leg_IK') or newName.startswith('R_Leg_IK'):    #remove jnt at the end
            newName = newName[:6]    
        
        
        #setting up attributes
        cmds.select(sel[0])
        cmds.addAttr( shortName='Stretchy', longName='Stretchy', k = True, defaultValue=1.0, minValue=0, maxValue=1)
        cmds.addAttr( shortName='Length_1', longName='Length_1', k = True, defaultValue=1.0,)
        cmds.addAttr( shortName='Length_2', longName='Length_2', k = True, defaultValue=1.0,)
            
        #-------------setup nodes beginning----------------------
        #initial sizes
        MD1 = cmds.shadingNode('multiplyDivide', n = newName + "Length 1_MD", asUtility=True)
        MD2 = cmds.shadingNode('multiplyDivide', n = newName + "Length 2_MD", asUtility=True)
        PMA1 = cmds.shadingNode('plusMinusAverage', n = newName + "TotalLength_PMA", asUtility=True)
        
        size1 = abs(cmds.getAttr(sel[2] + '.translateX'))
        size2 = abs(cmds.getAttr(sel[1] + '.translateX'))
    
        cmds.setAttr(MD1 + ".input1X", size1)
        cmds.setAttr(MD2 + ".input1X", size2)
    
        cmds.connectAttr( MD1 + ".outputX", PMA1 + ".input1D[0]")
        cmds.connectAttr( MD2 + ".outputX", PMA1 + ".input1D[1]")
        
        cmds.connectAttr(sel[0] + ".Length_1", MD1 + ".input2X")
        cmds.connectAttr(sel[0] + ".Length_2", MD2 + ".input2X")
       
        
        #create locators
        locator = cmds.spaceLocator(n = newName + "Shoulder Locator")
        locator2 = cmds.spaceLocator(n = newName + "Wrist Locator")
        cmds.pointConstraint(sel[3], locator, mo = False)
        cmds.pointConstraint(sel[0], locator2, mo = False)
        
        LocDist = cmds.shadingNode('distanceBetween', n = newName + "DistanceBetweenLocators_DB", asUtility=True)
        cmds.connectAttr(locator[0] + ".worldPosition[0]", LocDist + ".point1")
        cmds.connectAttr(locator2[0] + ".worldPosition[0]", LocDist + ".point2")
        
        #scalar value
        MD3 = cmds.shadingNode('multiplyDivide', n = newName + "ScalarValue_MD", asUtility=True)
        cmds.setAttr(MD3 + ".operation", 2)
        
        cmds.connectAttr(LocDist + ".distance", MD3 + ".input1X")
        cmds.connectAttr(PMA1 + ".output1D", MD3 + ".input2X")
        
        #condition node
        Cond = cmds.shadingNode('condition', n = newName + "Condition_C", asUtility = True)
        cmds.setAttr(Cond + ".operation", 2) #set to greater than
        
        cmds.connectAttr(MD3 + ".outputX", Cond + ".colorIfTrueR")
        cmds.connectAttr(PMA1 + ".output1D", Cond + ".secondTerm")
        cmds.connectAttr(LocDist + ".distance", Cond + ".firstTerm")
        
        #blend colors node
        BlendCol = cmds.shadingNode('blendColors', n = newName + "Blender_BC", asUtility = True)
        cmds.connectAttr(sel[0] + ".Stretchy", BlendCol + ".blender")
        cmds.connectAttr(Cond + ".outColorR", BlendCol + ".color1R")
        cmds.setAttr(BlendCol + ".color2R", 1)
    
        
        #Scale values
        MD4 = cmds.shadingNode('multiplyDivide', n = newName + "Length1_ScaledValue_MD", asUtility = True)
        MD5 = cmds.shadingNode('multiplyDivide', n = newName + "Length2_ScaledValue_MD", asUtility = True)
        
        cmds.connectAttr( MD1 + ".outputX", MD4 + ".input1X")
        cmds.connectAttr( MD2 + ".outputX", MD5 + ".input1X")
        cmds.connectAttr( BlendCol + ".outputR", MD4 + ".input2X")
        cmds.connectAttr( BlendCol + ".outputR", MD5 + ".input2X")
        
        #connect to bones
        cmds.connectAttr( MD4 + ".outputX", sel[2] + '.translateX')
        cmds.connectAttr( MD5 + ".outputX", sel[1] + '.translateX')

    def SetupControlConstraints(self):
        sels = cmds.ls(sl = True)
        cmds.parentConstraint(sels[0], sels[1], mo = True, sr = ["x", "y", "z"]) #parent constraint skipping rotates
        cmds.parentConstraint(sels[0], sels[1], mo = True, st = ["x", "y", "z"])    #parent constraint skipping translates
        cmds.scaleConstraint(sels[0], sels[1], mo = True) #scale constraint
        secondControlList = cmds.listRelatives(sels[1])
        #print secondControlList
        cmds.select(secondControlList[0])
        cmds.addAttr( shortName='Follow_Translates', longName='Follow_Translates', k = True, defaultValue=1.0, minValue=0, maxValue=1)    
        cmds.addAttr( shortName='Follow_Rotates', longName='Follow_Rotates', k = True, defaultValue=1.0, minValue=0, maxValue=1)    
        cmds.connectAttr( secondControlList[0] + '.Follow_Translates', secondControlList[1] + '.' + sels[0] + "W0" )    #connect follow translates with parent translate constraint
        cmds.connectAttr( secondControlList[0] + '.Follow_Rotates', secondControlList[2] + '.' + sels[0] + "W0" )    #connect follow rotates with rotation constraint

    def Recolor(self, theColor):
        sels = cmds.ls(sl = True)
        for sel in sels:
            cmds.setAttr(sel + ".overrideEnabled",1)
            cmds.setAttr (sel + ".overrideColor", theColor)    

    def ControlCreator(self, controlRadius):
        sel = cmds.ls(sl = True)       
        myControl = cmds.circle(nr=(1, 0, 0), r = controlRadius)[0]
        myGroup = cmds.group(myControl)
        cmds.matchTransform(myGroup, sel)
        newName = sel[0]
        if newName.endswith('_jnt'):    #remove jnt at the end
            newName = newName[:-4]
        #rename control and group
        myControl = cmds.rename(myControl, newName + "_ctl")
        myGroup = cmds.rename(myGroup, newName + "_ctl_grp")
        cmds.parentConstraint(myControl, sel, mo = True, sr = ["x", "y", "z"]) #parent constraint skipping rotates
        cmds.parentConstraint(myControl, sel, mo = True, st = ["x", "y", "z"])    #parent constraint skipping translates
        cmds.scaleConstraint(myControl, sel, mo = True) #scale constraint
    
    
#hand = 1
#leg = 2    








