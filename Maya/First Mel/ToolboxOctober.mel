global proc toolBoxMenu()
{
        if (`window -exists "toolBoxMenu"`) deleteUI -window "toolBoxMenu";
        
            string $toolWindow = "toolBoxMenu";
            string $toolWindow = `window -title "toolBoxMenu" $toolWindow`;
            string $initialCol = `columnLayout -parent $toolWindow -adjustableColumn 1`;
                scrollField -wordWrap true -width 150 -height 60 -text "Now Select the script you wish to exicute." -editable false;

                button -label "Duplicate Selected" -command ("Duplication()");
                button -label "Create Locator (at Center of selected objects)" -command ("CenterLocatidor()");
                button -label "Open Control Creator Window" -command ("ControlCreation()");
                button -label "Make Group w/ Matched transforms" -command ("ParentGroup()");
                button -label "Open Parent Constraint W/ Options window" -command ("Menu()");
                button -label "Open Renaming Window" -command ("RenamingWindow()");
                button -label "Open Randomizer Window" -command ("RandomValues()");
                                                        
            setParent ..;
            showWindow $toolWindow;
        
}
toolBoxMenu();

global proc Duplication()
{
    duplicate; 
}

global proc CenterLocatidor()
{
    //Select objects, string $sels[]=`ls -sl`;
    string $sels[] = `ls -sl`;

    string $temp[] = `duplicate -rr $sels`;
    //check if more than one object is selected.
    if (size($temp) > 1)
        $temp = `polyUnite $temp`;

    float $bbPos[];

    // questy bb min and max values for temp object and assign to float array
    $bbPos = `xform -q -boundingBox $temp`;
    //delete custruction history
    delete -constructionHistory $temp[0];
    //delete temp object
    delete $temp[0];
    
    // find center of x, y, and z coordinates of bb
    float $xPos, $yPos, $zPos;
    $xPos = ($bbPos[0]+$bbPos[3]) /2;
    $yPos = ($bbPos[1]+$bbPos[4]) /2;
    $zPos = ($bbPos[2]+$bbPos[5]) /2;

    // create a locater at 0,0,0
    string $locate[] = `spaceLocator -name "TempLocator" -position 0 0 0`;
    // move the locator to world space pos of center of bb
    xform -translation $xPos $yPos $zPos -worldSpace -absolute $locate[0];
}

global proc string ControlTypes(string $shape)
{
    // create ctrl
    string $ctrls[] = `circle -c 0 0 0 -nr 0 1 0 -sw 360 -r 1 -d 3 -ut 0 -tol 0.0001 -s 8 -ch 1`;
    

    if($shape == "Circle"){}
    else if ($shape == "Diamond")
    {
        select -r nurbsCircle1.ep[3] ;
        select -tgl nurbsCircle1.ep[1] ;
        select -tgl nurbsCircle1.ep[5] ;
        select -tgl nurbsCircle1.ep[7] ;
        scale -r -p 0cm 0cm 0cm 0.457082 0.457082 0.457082 ;
        
    }
     else if ($shape == "Square")
    {
        select -r nurbsCircle1.ep[5] ;
        select -tgl nurbsCircle1.ep[3] ;
        select -tgl nurbsCircle1.ep[1] ;
        select -tgl nurbsCircle1.ep[7] ;
        scale -r -p 0cm 0cm 0cm 1.383957 1.383957 1.383957 ;
       
    }
       else if ($shape == "Flower")
    {
        select -r nurbsCircle1.ep[5] ;
        select -tgl nurbsCircle1.ep[7] ;
        select -tgl nurbsCircle1.ep[1] ;
        select -tgl nurbsCircle1.ep[3] ;
        scale -r -p 0cm 0cm 0cm 0.0802752 0.0802752 0.0802752 ;
       
    }
    return $ctrls[0];
}

global proc CreateCtrls(int $color, string $shapeName)
{
    string $sels[] = `ls -sl`;
    if (size($sels)>0)
    {
    for ($sel in $sels)
        {
        // create ctrl by calling control types
        string $ctrl = ControlTypes($shapeName);

        // rename
        string $renameCtrl = `rename $ctrl ($sel + "_Ctrl")`;
        //create and name ctrl group
        string $groupies = `group -world -name ($renameCtrl + "_Grp") $renameCtrl`;

        //grab name for use in changing the color
        ColorControls($renameCtrl, $color);

        matchTransform $groupies $sel;
        }
    }
    else
    {
        warning("Nothing selected Creating control and group at orgin");
       string $ctrl = ControlTypes($shapeName);
       //create and name ctrl group
       string $renameCtrl = `rename $ctrl "_Ctrl"`;
       string $groupies = `group -world -name ($renameCtrl + "_Grp") $renameCtrl`;
    }
}


global proc ColorControls(string $ctrl, int $color)
{
    // Sets color index of the control
    
    //define string array for shapes
    string $shapes[];
    
    //find the shape node[s] of $ctrl
    $shapes = `listRelatives -shapes $ctrl`;
    
    for ($shape in $shapes)
    {
        //check for nurbsCurve
        if (`nodeType $shape` == "nurbsCurve")
        {
            //enable override on $shape
            setAttr ($shape + ".overrideEnabled") 1;
            
            //set $shape color to $color
            setAttr ($shape + ".overrideColor") $color;
        } 
        else 
        {
            warning("Selected object is not a curve.");
        }
    }
}

global proc ControlCreation()
{
        if (`window -exists "ControlCreator"`) deleteUI -window "ControlCreator";
    string $CTwindow = `window -title "ControlCreator"
           -widthHeight 200 555`;    
        columnLayout;
                        
            scrollField -wordWrap true -width 150 -height 60 -text "Select the color for your new Controls." -editable false;
            button -label "Bright Green" -command ("$colorer = 14");
            button -label "Bright Red" -command ("$colorer = 13");
            button -label "Blue" -command ("$colorer = 6");
            button -label "Bright Blue" -command ("$colorer = 18");
            button -label "Pink" -command ("$colorer = 9");
            
            scrollField -wordWrap true -width 150 -height 60 -text "Now Select the type of control you want." -editable false;
           
              
           button -label "Create Flower Controls" -command ("CreateCtrls($colorer,$FlowerShape)");
           button -label "Create Square Controls" -command ("CreateCtrls($colorer,$SquareShape)");
           button -label "Create Circle Controls" -command ("CreateCtrls($colorer,$CircleShape)");
           button -label "Create Diamond Controls" -command ("CreateCtrls($colorer,$DiamondShape)");
           button -label "Close" -command ("deleteUI -window " + $CTwindow);
    setParent ..;
    showWindow $CTwindow;

}
string $FlowerShape = "Flower";
string $SquareShape = "Square";
string $CircleShape = "Circle";
string $DiamondShape = "Diamond";
int $colorer = 1;


global proc ParentGroup()
{
    string $sels[] = `ls -sl`;
    
    for ($sel in $sels)
    {
        string $parent[] = `listRelatives -parent -fullPath $sel`;
        
        string $grp = `group -empty -name ($sel + "_Grp")`;
        matchTransform $grp $sel;
        parent $sel $grp;
        
        
        if (size($parent) >0 )
            print ($grp + "_" + $parent[0]);
            parent $grp $parent[0];
    }
}

global proc SkipTranslater()
{
    parentConstraint -mo -st x -st y -st z;
}

global proc SkipRotater()
{
    parentConstraint -mo -sr x -sr y -sr z;
}
global proc RegularParent()
{
    parentConstraint -mo;
}
global proc ScaleConer()
{
    scaleConstraint -mo;
}

global proc Menu()
{
    if (`window -exists "PamMenu"`) deleteUI -window "PamMenu";
               
            string $toolWindow = "PamMenu";
            string $toolWindow = `window -title "PamMenu" $toolWindow`;
            string $initialCol = `columnLayout -parent $toolWindow -adjustableColumn 1`;
                scrollField -wordWrap true -width 150 -height 60 -text "Now Select the script you wish to exicute." -editable false;

                button -label "Parent (Skip Rotate)" -command ("SkipRotater()");
                button -label "Parent (Skip Translate)" -command ("SkipTranslater()");
                button -label "Scale Constraint" -command ("ScaleConer()");
                button -label "Parent" -command ("RegularParent()");
                                        
            setParent ..;
            showWindow $toolWindow;
        
}

global proc Selection(string $p1,string $p2,int $numbPad)
{
    //Grab selection and init $object
    string $sels[] = `ls -sl`;
    string $object;
    
    //Get and print the Array size
    $arraySize = size($sels);
    print ("Objects Selected " + $arraySize + "\n");
    
    //assign p1 and p2 to strings
    string $newname = $p1;
    string $newSuffix = $p2;
    
    //this int is going to be the incramenting number for use in Incrementor
    int $newNumber = 00;
    string $zero = "0";
    int $numbPadd = $numbPad;
   
           
    // For each object in the selection do this:
    for($object in $sels)
    {
        print ("this object was " +$object + "\n");
        
        // generate number
        if ($numbPadd > 1 && $newNumber <10)
        {
        rename $object($newname + $zero + $newNumber + $newSuffix);
        print ("this object is now " + $p1 + $newNumber + $p2 + "\n");
        $newNumber++;
        }
        else
        {
        $newNumber++;
        rename $object($newname + $newNumber + $newSuffix);
        }
        
        print ("this object is now " + $p1 + $newNumber + $p2 + "\n");
    }
}

global proc Renaming(string $splitThis)
{
    //take input and tokenize it.
	string $name[];
	tokenize $splitThis "#" $name;
	
	//assign strings to each part of array
	string $part1 = $name[0];
	string $part2 = $name[1];
	
	print ($splitThis + "\n");
	print ($part1+ "\n");
	print ($part2+ "\n");
	
	//get the sizes
    $stringSize = size($splitThis);
    print("The whole string size" + $stringSize);
    int $noPadChars = size($part1) + size($part2);
    print("the letter characters" + $noPadChars);
    int $numberPadding = $stringSize - $noPadChars;
    print("The Padding is" + $numberPadding);
    

    
	
	//Call Selection Function
    Selection($part1,$part2,$numberPadding);

}
    //init default string
        string $stringToSplit;
    //Check if window with this name exists delete window if so

        if (`window -exists RenameWindow`) deleteUI -window RenameWindow;

    //make new window 
        window RenameWindow;
        columnLayout;
    //i'm using uneditable fields to give instruction
        text -label "Renaming Rules";
        scrollField -wordWrap true -height 60 -text "This will rename all selected items based off of the name of the first name you enter here" -editable false;
        scrollField -wordWrap true -height 60 -text "Type the name you want with a '#' in between first half and last half, EXAMPLE BELOW" -editable false;

    //now this is what the user enters ast the first option. the renamer will calculate the rest.
        string $userInput = `textFieldGrp -label "Renamer" -text "firstPart_#_LastPart"`;
        button -label "Print Text" -command ("string $currentUsersInput = `textFieldGrp -q -text $userInput`; print($currentUsersInput)");   
        print ($stringToSplit);

    //Call Renaming with this button by getting what the user put in. assigning it to the string to split and running rename.
        button -label "Rename all Selected" -command ("$stringToSplit = `textFieldGrp -q -text $userInput`; string $currentUsersInput = `textFieldGrp -q -text $userInput`; Renaming($stringToSplit)");
global proc Selection(string $p1,string $p2,int $numbPad)
{
    //Grab selection and init $object
    string $sels[] = `ls -sl`;
    string $object;
    
    //Get and print the Array size
    $arraySize = size($sels);
    print ("Objects Selected " + $arraySize + "\n");
    
    //assign p1 and p2 to strings
    string $newname = $p1;
    string $newSuffix = $p2;
    
    //this int is going to be the incramenting number for use in Incrementor
    int $newNumber = 00;
    string $zero = "0";
    int $numbPadd = $numbPad;
   
           
    // For each object in the selection do this:
    for($object in $sels)
    {
        print ("this object was " +$object + "\n");
        
        // generate number
        if ($numbPadd > 1 && $newNumber <10)
        {
        rename $object($newname + $zero + $newNumber + $newSuffix);
        print ("this object is now " + $p1 + $newNumber + $p2 + "\n");
        $newNumber++;
        }
        else
        {
        $newNumber++;
        rename $object($newname + $newNumber + $newSuffix);
        }
        
        print ("this object is now " + $p1 + $newNumber + $p2 + "\n");
    }
}

global proc Renaming(string $splitThis)
{
    //take input and tokenize it.
	string $name[];
	tokenize $splitThis "#" $name;
	
	//assign strings to each part of array
	string $part1 = $name[0];
	string $part2 = $name[1];
	
	print ($splitThis + "\n");
	print ($part1+ "\n");
	print ($part2+ "\n");
	
	//get the sizes
    $stringSize = size($splitThis);
    print("The whole string size" + $stringSize);
    int $noPadChars = size($part1) + size($part2);
    print("the letter characters" + $noPadChars);
    int $numberPadding = $stringSize - $noPadChars;
    print("The Padding is" + $numberPadding);
    

    
	
	//Call Selection Function
    Selection($part1,$part2,$numberPadding);

}
    //init default string
        string $stringToSplit;
    //Check if window with this name exists delete window if so
        if (`window -exists RenameWindow`) deleteUI -window RenameWindow;

    //make new window 
        window RenameWindow;
        columnLayout;
    //i'm using uneditable fields to give instruction
        text -label "Renaming Rules";
        scrollField -wordWrap true -height 60 -text "This will rename all selected items based off of the name of the first name you enter here" -editable false;
        scrollField -wordWrap true -height 60 -text "Type the name you want with a '#' in between first half and last half, EXAMPLE BELOW" -editable false;

    //now this is what the user enters ast the first option. the renamer will calculate the rest.
        string $userInput = `textFieldGrp -label "Renamer" -text "firstPart_#_LastPart"`;
        button -label "Print Text" -command ("string $currentUsersInput = `textFieldGrp -q -text $userInput`; print($currentUsersInput)");   
       // print ($stringToSplit);

    //Call Renaming with this button by getting what the user put in. assigning it to the string to split and running rename.
        button -label "Rename all Selected" -command ("$stringToSplit = `textFieldGrp -q -text $userInput`; string $currentUsersInput = `textFieldGrp -q -text $userInput`; Renaming($stringToSplit)");
global proc RenamingWindow()
{
        showWindow RenameWindow;
}

global proc randomizer()
{
            
    //make the Selection an array
    string $sel[] = `ls -sl`;
    string $Object;
	// the fields from the window entered as these.
    float $maxNumEnter = `floatField -q -v -ec  MaximumField`;
    float $minNumEnter = `floatField -q -v -ec  MinimumField`;
    float $numRandom = rand($maxNumEnter, $minNumEnter);
    print $numRandom;
    
    for ($Object in $sel)
    {
        float $numRandom = rand($maxNumEnter, $minNumEnter);
        setAttr ($Object + ".translateX")$numRandom;
        
        float $numRandom = rand($maxNumEnter, $minNumEnter);
        setAttr ($Object + ".translateY")$numRandom;
        
        float $numRandom = rand($maxNumEnter, $minNumEnter);
        setAttr ($Object + ".translateZ")$numRandom;

        print ($Object + ": ");
        print (getAttr($Object + ".translateX") + ", " + getAttr($Object + ".translateY") + ", " + getAttr($Object + ".translateZ") + "." + "\n");
    }
    
}
        global proc randomizerX()
        {
            string $sel[] = `ls -sl`;
            string $Object;
            float $maxNumEnter = `floatField -q -v -ec  MaximumField`;
            float $minNumEnter = `floatField -q -v -ec  MinimumField`;
            float $numRandom = rand($maxNumEnter, $minNumEnter);
            print $numRandom;
            
            for ($Object in $sel)
                {
                float $numRandom = rand($maxNumEnter, $minNumEnter);
                setAttr ($Object + ".translateX")$numRandom;
        
                print ($Object + ": ");
                 print (getAttr($Object + ".translateX") + ", " + getAttr($Object + ".translateY") + ", " + getAttr($Object + ".translateZ") + "." + "\n");
            }
            
        }
        global proc randomizerY()
        {
            string $sel[] = `ls -sl`;
            string $Object;
            float $maxNumEnter = `floatField -q -v -ec  MaximumField`;
            float $minNumEnter = `floatField -q -v -ec  MinimumField`;
            float $numRandom = rand($maxNumEnter, $minNumEnter);
            print $numRandom;
            
            for ($Object in $sel)
                {
                float $numRandom = rand($maxNumEnter, $minNumEnter);
                setAttr ($Object + ".translateY")$numRandom;
        
                print ($Object + ": ");
                 print (getAttr($Object + ".translateX") + ", " + getAttr($Object + ".translateY") + ", " + getAttr($Object + ".translateZ") + "." + "\n");
            }
            
        }
        global proc randomizerZ()
        {
            string $sel[] = `ls -sl`;
            string $Object;
            float $maxNumEnter = `floatField -q -v -ec  MaximumField`;
            float $minNumEnter = `floatField -q -v -ec  MinimumField`;
            float $numRandom = rand($maxNumEnter, $minNumEnter);
            print $numRandom;
            
            for ($Object in $sel)
                {
                float $numRandom = rand($maxNumEnter, $minNumEnter);
                setAttr ($Object + ".translateZ")$numRandom;
        
                print ($Object + ": ");
                 print (getAttr($Object + ".translateX") + ", " + getAttr($Object + ".translateY") + ", " + getAttr($Object + ".translateZ") + "." + "\n");
            }
            
        }

global proc randomizerScale()
{
    string $sel[] = `ls -sl`;
    string $Object;
    float $maxNumEnter = `floatField -q -v -ec  MaximumField`;
    float $minNumEnter = `floatField -q -v -ec  MinimumField`;
    float $numRandom = rand($maxNumEnter, $minNumEnter);
    print $numRandom;
    
    for ($Object in $sel)
        {
        int $numRandom = rand($maxNumEnter, $minNumEnter);
        setAttr ($Object + ".scaleX")$numRandom;       
        setAttr ($Object + ".scaleY")$numRandom;
        setAttr ($Object + ".scaleZ")$numRandom;
        print ($Object + ": ");
        print (getAttr($Object + ".scaleX") + ", " + getAttr($Object + ".scaleY") + ", " + getAttr($Object + ".scaleZ") + "." + "\n");
    }
}
global proc randomizerRotate()
{
    string $sel[] = `ls -sl`;
    string $Object;
    float $maxNumEnter = 359;
    float $minNumEnter = 0;
    float $numRandom = rand($maxNumEnter, $minNumEnter);
    print $numRandom;
    
    for ($Object in $sel)
        {
       float $numRandom = rand($maxNumEnter, $minNumEnter);
        setAttr ($Object + ".rotateX")$numRandom;
        
        float $numRandom = rand($maxNumEnter, $minNumEnter);
        setAttr ($Object + ".rotateY")$numRandom;
        
        float $numRandom = rand($maxNumEnter, $minNumEnter);
        setAttr ($Object + ".rotateZ")$numRandom;
		
        print ($Object + ": ");
        print (getAttr($Object + ".rotateX") + ", " + getAttr($Object + ".rotateY") + ", " + getAttr($Object + ".rotateZ") + "." + "\n");
    }
}


global proc RandomValues()
    {
		//Make a window with enterable min and max values, and buttons that run certain scripts with the random number
        //Check if window with this name exists delete window if so
        if (`window -exists MaxAndMinWin`) deleteUI -window MaxAndMinWin;
        
        window MaxAndMinWin;
        columnLayout;
        floatField MaximumField;
        floatField MinimumField;
        button -label "Randomize Translate All Axis'" -command "randomizer";
        button -label "Randomize Translate X" -command "randomizerX";
        button -label "Randomize Translate Y" -command "randomizerY";
        button -label "Randomize Translate Z" -command "randomizerZ";
		
		button -label "Randomize Rotation" -command "randomizerRotate";
        button -label "Randomize Scale" -command "randomizerScale";
        showWindow MaxAndMinWin;
        
        float $maxNumEnter;
        float $minNumEnter;
} 

