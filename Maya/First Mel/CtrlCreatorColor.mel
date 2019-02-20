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

//Here we make the button
global proc ControlCreation()
{
        if (`window -exists "Control Creator"`) deleteUI -window "ControlCreator";
    string $window = `window -title "Control Creator"
           -widthHeight 200 555`;    
        columnLayout;
            string $FlowerShape = "Flower";
            string $SquareShape = "Square";
            string $CircleShape = "Circle";
            string $DiamondShape = "Diamond";
            int $colorer = 1;
            
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
           button -label "Close" -command ("deleteUI -window " + $window);
    setParent ..;
    showWindow $window;
}
ControlCreation();

