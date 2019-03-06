//Maya ASCII 2018 scene
//Name: Pressure Pad.ma
//Last modified: Wed, Mar 06, 2019 12:39:46 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "FD82D51A-4F99-F636-44B8-59B4F3F36E64";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.36984073942062351 1.1735329580581801 5.2458453287612787 ;
	setAttr ".r" -type "double3" -13.538352729732292 353.39999999995678 -2.0011084909433902e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F5E8E4C8-402D-FB6F-A4D6-03BB1D441078";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 5.4127899196276639;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.026698316574464677 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "C511F1A9-433E-BBE9-5D45-78B049049567";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.015227285015715353 1000.1 -0.11582014853338418 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "677982B6-4354-902E-422D-9EB1BFB9EE61";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1209092097042;
	setAttr ".ow" 8.0456590627023932;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 -0.020909209704156814 0 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "D8D1617C-4D91-A610-33BA-F7BFD85BFF4A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.81721852417338248 -0.11181147176155112 1000.1000002185757 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "753DE117-44B7-1C07-6D75-60AE86C8EEB6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1000002185757;
	setAttr ".ow" 2.6865533393659051;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 -0.020909209704156814 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "EA538172-4FF4-2CFE-26A7-E69752469ED1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1005517382958 -0.1230746918919273 2.2204460492503131e-13 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5CFFD169-4F80-16AA-4722-048743CBD7E4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1005517382958;
	setAttr ".ow" 4.9060161063835892;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 -0.1230746918919273 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Step_Piece_Low";
	rename -uid "0DF4C5B1-4B8B-6573-3693-2C895DA8C592";
	setAttr ".t" -type "double3" 0 -0.15445341498096676 0 ;
	setAttr ".s" -type "double3" 2.0122023795222082 0.46734816635553383 2.0122023795222082 ;
createNode mesh -n "Step_Piece_LowShape" -p "Step_Piece_Low";
	rename -uid "B8160801-4081-A1B9-A5AF-7380E0E47C0D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.60711308568716049 0.61027494817972183 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape2" -p "Step_Piece_Low";
	rename -uid "1F06B4D2-44EC-94DA-0E94-9EACD5D73BFE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.60711307676925697 0.61027490512520721 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.31531024 0.2357222
		 0.94996983 0.26145357 0.36116356 0.39546412 0.36122897 0.825248 0.38878658 0.36364365
		 0.82527161 0.36346298 0.85297769 0.39532161 0.26418957 0.95908588 0.46707469 0.74912119
		 0.74717265 0.74905491 0.853046 0.82515538 0.97897577 0.89710993 0.31552333 0.98507023
		 0.89884824 0.98492086 0.89863175 0.23547967 0.46702498 0.47155565 0.74711853 0.47145832
		 0.38890365 0.85709608 0.82539535 0.85698903 0.2352504 0.32351771 0.34752375 0.31361258
		 0.86648864 0.31340384 0.90192264 0.35407132 0.90675902 0.88073868 0.86664861 0.90701902
		 0.34768516 0.90715683 0.31229141 0.86649334 0.30741933 0.33990556 0.41927481 0.43864137
		 0.41934225 0.78207302 0.43340373 0.42454004 0.78070462 0.42441243 0.79485035 0.43849814
		 0.7949208 0.78197896 0.43348849 0.79616511 0.7807864 0.79607368 0.79352403 0.78155518
		 0.79346621 0.4389413 0.8570568 0.39150858 0.42073497 0.78163564 0.35712975 0.82904994
		 0.42067695 0.43905711 0.31221405 0.35423398 0.26399213 0.26174659 0.30755478 0.88089424
		 0.90200126 0.86638999 0.9501704 0.95890599 0.90662092 0.33965313 0.85715699 0.82892179
		 0.2353355 0.89723355 0.35703099 0.39171112 0.97888833 0.32332695;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  -0.42533147 -0.25002503 0.48120779 -0.48120779 -0.25002503 0.42533147
		 0.48120779 -0.25002503 0.42533147 0.42533147 -0.25002503 0.48120779 -0.36029112 0.28570592 0.31845528
		 -0.31845528 0.28570592 0.36029112 -0.20498765 0.36427954 0.20498765 0.20498765 0.36427954 0.20498765
		 0.31845528 0.28570592 0.36029112 0.36029112 0.28570592 0.31845528 -0.36029112 0.28570592 -0.31845528
		 -0.20498765 0.36427954 -0.20498765 -0.31845528 0.28570592 -0.36029112 0.31845528 0.28570592 -0.36029112
		 0.20498765 0.36427954 -0.20498765 0.36029112 0.28570592 -0.31845528 -0.48120779 -0.25002503 -0.42533147
		 -0.42533147 -0.25002503 -0.48120779 0.42533147 -0.25002503 -0.48120779 0.48120779 -0.25002503 -0.42533147
		 -0.37973118 0.19018129 0.42961699 0.37973118 0.19018129 0.42961693 0.42961699 0.19018129 0.37973118
		 0.42961693 0.19018129 -0.37973118 0.37973118 0.19018129 -0.42961699 -0.37973118 0.19018129 -0.42961693
		 -0.42961699 0.19018129 -0.37973118 -0.42961693 0.19018129 0.37973118 -0.27365416 0.36120781 0.25352657
		 -0.27365416 0.36120781 -0.25352657 -0.25352657 0.36120781 0.27365416 0.25352657 0.36120781 0.27365416
		 0.27365416 0.36120781 0.25352657 0.27365416 0.36120781 -0.25352657 -0.25352657 0.36120781 -0.27365416
		 0.25352657 0.36120781 -0.27365416;
	setAttr -s 68 ".ed[0:67]"  1 16 0 3 0 0 1 0 0 0 20 0 5 4 0 4 27 0 19 2 0
		 3 2 0 2 22 0 9 8 0 8 21 0 4 28 0 6 11 0 11 29 0 10 4 0 6 30 0 5 8 0 8 31 0 7 6 0
		 7 32 0 9 15 0 15 33 0 14 7 0 10 12 0 12 25 0 17 16 0 16 26 0 12 34 0 11 14 0 14 35 0
		 13 12 0 13 15 0 15 23 0 19 18 0 18 24 0 17 18 0 20 5 0 21 3 0 22 9 0 23 19 0 24 13 0
		 25 17 0 26 10 0 27 1 0 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 20 1
		 28 6 0 29 10 0 30 5 0 31 7 0 32 9 0 33 14 0 34 11 0 35 13 0 28 29 1 30 31 1 32 33 1
		 34 35 1 30 28 1 31 32 1 29 34 1 35 33 1;
	setAttr -s 33 -ch 128 ".fc[0:32]" -type "polyFaces" 
		f 4 51 36 4 5
		mu 0 4 27 20 4 50
		f 4 45 38 9 10
		mu 0 4 21 47 38 5
		f 4 11 60 53 14
		mu 0 4 2 41 39 3
		f 4 15 61 55 18
		mu 0 4 15 30 31 16
		f 4 19 62 57 22
		mu 0 4 16 37 36 9
		f 4 23 24 49 42
		mu 0 4 40 17 25 44
		f 4 27 63 59 30
		mu 0 4 17 34 35 18
		f 4 31 32 47 40
		mu 0 4 18 48 23 24
		f 4 44 -11 -17 -37
		mu 0 4 20 21 5 4
		f 4 -19 -23 -29 -13
		mu 0 4 15 16 9 8
		f 4 -31 -41 48 -25
		mu 0 4 17 18 24 25
		f 4 46 -33 -21 -39
		mu 0 4 22 45 10 6
		f 4 50 -6 -15 -43
		mu 0 4 26 42 2 3
		f 4 -5 -55 64 -12
		mu 0 4 50 4 30 28
		f 3 -56 65 -20
		mu 0 3 16 31 32
		f 4 -54 66 -28 -24
		mu 0 4 40 29 34 17
		f 4 -60 67 -22 -32
		mu 0 4 18 35 33 48
		f 4 -2 -38 -45 -4
		mu 0 4 0 14 21 20
		f 4 7 8 -46 37
		mu 0 4 14 1 47 21
		f 4 -7 -40 -47 -9
		mu 0 4 51 11 45 22
		f 4 -48 39 33 34
		mu 0 4 24 23 46 13
		f 4 -49 -35 -36 -42
		mu 0 4 25 24 13 12
		f 4 -50 41 25 26
		mu 0 4 44 25 12 7
		f 4 -1 -44 -51 -27
		mu 0 4 49 19 42 26
		f 4 2 3 -52 43
		mu 0 4 43 0 20 27
		f 4 -61 52 12 13
		mu 0 4 39 41 15 8
		f 4 -62 54 16 17
		mu 0 4 31 30 4 5
		f 4 -63 56 20 21
		mu 0 4 36 37 6 10
		f 4 -64 58 28 29
		mu 0 4 35 34 8 9
		f 3 -65 -16 -53
		mu 0 3 28 30 15
		f 4 -66 -18 -10 -57
		mu 0 4 32 31 5 38
		f 3 -67 -14 -59
		mu 0 3 34 29 8
		f 3 -68 -30 -58
		mu 0 3 33 35 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Step_Piece_High";
	rename -uid "C7F69445-4225-1AAE-9C24-C693468D7C56";
	setAttr ".s" -type "double3" 2.0122023795222082 0.46734816635553383 2.0122023795222082 ;
createNode mesh -n "Step_Piece_HighShape" -p "Step_Piece_High";
	rename -uid "0995DE48-4E49-304C-B0B4-40A581FF1D00";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.60711307676925697 0.61027490512520721 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Border";
	rename -uid "66D43D50-4072-7B89-BEDC-AB9794035A3F";
	setAttr ".t" -type "double3" 0 -0.16167031072108651 0 ;
	setAttr ".s" -type "double3" 2.7868325770028068 0.22764432945535049 2.7868325770028068 ;
createNode mesh -n "BorderShape" -p "Border";
	rename -uid "DB6C9EBE-4D7C-E154-A95E-29B7C5143F84";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54345104922405052 0.098108388578491246 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "Border";
	rename -uid "50E9E16E-4198-5A91-23B7-648B8ECD9CF3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9B987395-4381-6716-31DC-0F88C311DC09";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "964C178A-4D18-2F56-AD8F-F3A9C84ED224";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C5B2506D-4A53-5939-1330-16BF6D1DD253";
createNode displayLayerManager -n "layerManager";
	rename -uid "9F824DD0-475E-51AB-FC46-FEACA2EC5B2F";
createNode displayLayer -n "defaultLayer";
	rename -uid "A1BD6C10-480A-593D-F0CA-5DA5863BD91D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C83147A6-42B9-54A2-2828-AA96BA1E9CFC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "297B00C5-455E-4431-2D7D-8A889E3ADBC6";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "7BAEE0F6-40C4-B443-E67E-53B39083FF9F";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "EAAF7C70-4388-1C9C-B0C7-B88E0D2D4F9C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 2.7868325770028068 0 0 0 0 0.22764432945535049 0 0 0 0 2.7868325770028068 0
		 0 -0.16167031072108651 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.30000000000000004;
	setAttr ".sg" 2;
	setAttr ".d" 0.5;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "D36B6421-41F0-00AD-B821-DDB704E2E91A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:20]" "e[25:27]";
	setAttr ".ix" -type "matrix" 2.7868325770028068 0 0 0 0 0.22764432945535049 0 0 0 0 2.7868325770028068 0
		 0 -0.16167031072108651 0 1;
	setAttr ".a" 180;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "FA01AF12-4B05-7511-F402-23BED716D851";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[6]" "e[8]" "e[10]" "e[12:13]" "e[16:17]" "e[19]" "e[21:24]";
	setAttr ".ix" -type "matrix" 2.7868325770028068 0 0 0 0 0.22764432945535049 0 0 0 0 2.7868325770028068 0
		 0 -0.16167031072108651 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.1;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "DB562179-497D-09DD-745B-5EA10037E223";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode polyBevel3 -n "polyBevel3";
	rename -uid "CDD27C7D-4667-832E-B2AF-FABC07B7334C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2.0122023795222082 0 0 0 0 0.46734816635553383 0 0 0 0 2.0122023795222082 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "9558E8F2-483B-2500-AAE7-36B7929A4C02";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "F0D46325-4ED5-0EE1-2DD4-48897CC7B399";
	setAttr ".dc" -type "componentList" 1 "f[11]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "9496443F-4FE2-E711-7CE8-23B9C34C57C8";
	setAttr ".dc" -type "componentList" 4 "f[0:1]" "f[3]" "f[16:17]" "f[22:23]";
createNode polySplit -n "polySplit1";
	rename -uid "9BEC9B15-41D3-0EB1-6569-7C822ED9E51C";
	setAttr -s 9 ".e[0:8]"  0.81888199 0.181118 0.81888199 0.181118 0.81888199
		 0.181118 0.81888199 0.181118 0.81888199;
	setAttr -s 9 ".d[0:8]"  -2147483645 -2147483638 -2147483640 -2147483616 -2147483614 -2147483624 
		-2147483622 -2147483643 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCut -n "polyCut1";
	rename -uid "1A041FD7-4861-597E-7F00-039C9BEBA8D1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[2:4]" "f[6]" "f[13:16]";
	setAttr ".ix" -type "matrix" 2.0122023795222082 0 0 0 0 0.46734816635553383 0 0 0 0 2.0122023795222082 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" 1000.0000002199999 0.16307387000000001 1.07323463 ;
	setAttr ".ro" -type "double3" 90 -90 0 ;
createNode polySplit -n "polySplit2";
	rename -uid "502CCA24-4E69-C9A6-A52A-E79A461BFD4F";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483648 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "8CD072DB-4B7D-6F49-3599-A383B515E9EE";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "4DF438EC-4480-C89F-DF8A-7BB4F86ECAF7";
	setAttr -s 19 ".e[0:18]"  0.14610399 0.14610399 0.14610399 0.85389602
		 0.14610399 0.14610399 0.14610399 0.14610399 0.14610399 0.85389602 0.85389602 0.85389602
		 0.85389602 0.85389602 0.85389602 0.14610399 0.85389602 0.85389602 0.85389602;
	setAttr -s 19 ".d[0:18]"  -2147483639 -2147483599 -2147483600 -2147483646 -2147483592 -2147483591 
		-2147483642 -2147483593 -2147483598 -2147483635 -2147483598 -2147483593 -2147483642 -2147483591 -2147483592 -2147483646 -2147483600 -2147483599 
		-2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "B727BB97-4CFC-FD6B-13DD-B5A5FEB82CBF";
	setAttr -s 19 ".e[0:18]"  0.1137 0.88630003 0.88630003 0.88630003 0.88630003
		 0.1137 0.1137 0.88630003 0.1137 0.88630003 0.88630003 0.1137 0.88630003 0.88630003
		 0.1137 0.1137 0.1137 0.1137 0.88630003;
	setAttr -s 19 ".d[0:18]"  -2147483634 -2147483596 -2147483594 -2147483648 -2147483567 -2147483558 
		-2147483644 -2147483595 -2147483597 -2147483637 -2147483597 -2147483595 -2147483644 -2147483558 -2147483567 -2147483648 -2147483594 -2147483596 
		-2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "3EB90F4B-43BE-09E2-F589-63BC41B89F22";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[59]" -type "float3" -0.010703897 0 0.010515695 ;
	setAttr ".tk[60]" -type "float3" -0.010703897 5.5511151e-17 -0.0105157 ;
	setAttr ".tk[61]" -type "float3" 0.010703897 5.5511151e-17 -0.010515695 ;
	setAttr ".tk[62]" -type "float3" 0.010703897 0 0.0105157 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "C5E5945A-4938-2AD8-57AD-B59B15FE33FC";
	setAttr ".dc" -type "componentList" 1 "e[122]";
createNode polySplit -n "polySplit6";
	rename -uid "CEE57DE4-4719-E9A9-04D3-9C9A4864D5A3";
	setAttr -s 2 ".e[0:1]"  1 0.111667;
	setAttr -s 2 ".d[0:1]"  -2147483597 -2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCut -n "polyCut2";
	rename -uid "F531ABFD-4671-8515-DBE1-19A68B7D0353";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[16]" "f[36:44]" "f[49]" "f[57]";
	setAttr ".ix" -type "matrix" 2.7868325770028068 0 0 0 0 0.22764432945535049 0 0 0 0 2.7868325770028068 0
		 0 -0.16167031072108651 0 1;
	setAttr ".pc" -type "double3" -0.015227289999999999 1000 -1.9800582200000001 ;
	setAttr ".ro" -type "double3" -180 90 0 ;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "4B75FADA-417F-4B1A-99AF-82AAEE418342";
	setAttr ".dc" -type "componentList" 8 "f[3:4]" "f[6:9]" "f[17]" "f[19:20]" "f[27:36]" "f[49:57]" "f[62:63]" "f[65:72]";
createNode polyMirror -n "polyMirror1";
	rename -uid "423F366A-41BC-F1B1-562C-79AA302B7282";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 2.7868325770028068 0 0 0 0 0.22764432945535049 0 0 0 0 2.7868325770028068 0
		 0 -0.16167031072108651 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -0.01522725754463798 -0.16167035142706471 0 ;
	setAttr ".ad" 0;
	setAttr ".ma" 0;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.75440299510955811;
	setAttr ".cm" yes;
	setAttr ".fnf" 37;
	setAttr ".lnf" 73;
	setAttr ".pc" -type "double3" -0.01522725754463798 -0.16167035142706471 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "DB489972-45F6-F3C7-F050-37A499E24F43";
	setAttr ".ics" -type "componentList" 2 "f[36]" "f[73]";
	setAttr ".ix" -type "matrix" 2.7868325770028068 0 0 0 0 0.22764432945535049 0 0 0 0 2.7868325770028068 0
		 0 -0.16167031072108651 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.01522726 -0.047848221 -4.1527041e-08 ;
	setAttr ".rs" 46130;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.96774625700918682 -0.047848220621037926 -0.95073154842396845 ;
	setAttr ".cbx" -type "double3" 0.93729173672903066 -0.047848220621037926 0.95073146536988551 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "E21BACD6-44E5-C79D-F318-A48558BA7CD8";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[33]" -type "float3" -0.014321897 0 0.014295019 ;
	setAttr ".tk[34]" -type "float3" -0.014321897 0 -0.01429502 ;
	setAttr ".tk[46]" -type "float3" 5.7560141e-11 0 -0.014295019 ;
	setAttr ".tk[47]" -type "float3" 3.8373426e-11 0 0.01429502 ;
	setAttr ".tk[81]" -type "float3" 0.014321897 0 0.014295019 ;
	setAttr ".tk[82]" -type "float3" 0.014321897 0 -0.01429502 ;
	setAttr ".tk[83]" -type "float3" 8.7982829e-11 -0.68912202 -0.021846788 ;
	setAttr ".tk[84]" -type "float3" 5.865522e-11 -0.68912202 0.021846788 ;
	setAttr ".tk[85]" -type "float3" -0.021887865 -0.68912202 -0.021846792 ;
	setAttr ".tk[86]" -type "float3" -0.021887865 -0.68912202 0.021846784 ;
	setAttr ".tk[87]" -type "float3" 0.021887865 -0.68912202 0.021846784 ;
	setAttr ".tk[88]" -type "float3" 0.021887865 -0.68912202 -0.021846792 ;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "967D1B2C-4DF1-7EC6-3DE9-1882C661C56B";
	setAttr ".dc" -type "componentList" 2 "e[50]" "e[114]";
createNode polyCut -n "polyCut3";
	rename -uid "56D9A934-41E1-4E4C-C801-B4B644AA00EE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[30:33]" "f[35]" "f[65:68]" "f[71]" "f[73]" "f[76]";
	setAttr ".ix" -type "matrix" 2.7868325770028068 0 0 0 0 0.22764432945535049 0 0 0 0 2.7868325770028068 0
		 0 -0.16167031072108651 0 1;
	setAttr ".pc" -type "double3" -1.7813475700000001 1000 0.0103313 ;
	setAttr ".ro" -type "double3" 0 0 90 ;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "34A2EEE0-45FE-5972-D5CE-F5A4EEF6600C";
	setAttr ".dc" -type "componentList" 15 "f[0]" "f[4:6]" "f[10:15]" "f[17:21]" "f[33]" "f[36]" "f[40:42]" "f[46:50]" "f[52:56]" "f[68:69]" "f[72:73]" "f[77:80]" "f[82:85]" "f[87]" "f[89]";
createNode polyMirror -n "polyMirror2";
	rename -uid "75E2C516-4D26-0A6C-8589-378E07858602";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 2.7868325770028068 0 0 0 0 0.22764432945535049 0 0 0 0 2.7868325770028068 0
		 0 -0.16167031072108651 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -0.015227260140078025 -0.16167037178005378 0.010331183670359959 ;
	setAttr ".a" 2;
	setAttr ".ma" 0;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.75280654430389404;
	setAttr ".cm" yes;
	setAttr ".fnf" 46;
	setAttr ".lnf" 91;
	setAttr ".pc" -type "double3" -0.015227260140078025 -0.16167037178005378 0.010331183670359959 ;
createNode polySplit -n "polySplit7";
	rename -uid "1A796F1C-44E8-BC6A-C592-7A8738E260EA";
	setAttr -s 9 ".e[0:8]"  0.51261997 0.51261997 0.51261997 0.51261997
		 0.51261997 0.51261997 0.51261997 0.51261997 0.51261997;
	setAttr -s 9 ".d[0:8]"  -2147483567 -2147483563 -2147483546 -2147483457 -2147483459 -2147483458 
		-2147483547 -2147483566 -2147483567;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "C8C0442A-4BB7-6DB8-DEAF-89BFBCFC8788";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[42]" -type "float3" -2.5478115e-09 0.38418987 -0.05209773 ;
	setAttr ".tk[43]" -type "float3" 0.052734278 0.38418987 -0.052097738 ;
	setAttr ".tk[44]" -type "float3" -0.052734278 0.38418987 -0.052097738 ;
	setAttr ".tk[55]" -type "float3" -2.6296212e-09 0.38418987 1.9889768e-09 ;
	setAttr ".tk[56]" -type "float3" 0.052734278 0.38418987 1.9889768e-09 ;
	setAttr ".tk[57]" -type "float3" -0.052734278 0.38418987 1.9889768e-09 ;
	setAttr ".tk[100]" -type "float3" -2.5478115e-09 0.38418987 0.05209773 ;
	setAttr ".tk[101]" -type "float3" 0.052734278 0.38418987 0.05209773 ;
	setAttr ".tk[102]" -type "float3" -0.052734278 0.38418987 0.05209773 ;
	setAttr ".tk[103]" -type "float3" -4.5296912e-11 0.14098206 -0.01707937 ;
	setAttr ".tk[104]" -type "float3" -0.017289866 0.14098206 -0.017079372 ;
	setAttr ".tk[105]" -type "float3" -0.017289866 0.14098206 -5.6621152e-11 ;
	setAttr ".tk[106]" -type "float3" -0.017289866 0.14098206 0.017079372 ;
	setAttr ".tk[107]" -type "float3" -4.5296912e-11 0.14098206 0.01707937 ;
	setAttr ".tk[108]" -type "float3" 0.017289866 0.14098206 0.017079372 ;
	setAttr ".tk[109]" -type "float3" 0.017289866 0.14098206 -5.6621152e-11 ;
	setAttr ".tk[110]" -type "float3" 0.017289866 0.14098206 -0.017079372 ;
createNode deleteComponent -n "deleteComponent9";
	rename -uid "32577C0B-4943-55D8-EFA9-BC901735DE3D";
	setAttr ".dc" -type "componentList" 4 "f[19]" "f[39]" "f[65]" "f[85]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "C197464C-4413-669D-CCD6-B9A757FCA26F";
	setAttr ".dc" -type "componentList" 4 "f[38:40]" "f[43]" "f[82:84]" "f[87]";
createNode polyMapSew -n "polyMapSew1";
	rename -uid "68887E65-46B5-8141-A796-F08CCBF0FBA9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:189]";
createNode polyTweak -n "polyTweak4";
	rename -uid "20AB89C0-49B9-A8ED-00AA-DAA0B6E7A18B";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[94]" -type "float3" 0 -0.78772402 0 ;
	setAttr ".tk[95]" -type "float3" 0 -0.78772402 0 ;
	setAttr ".tk[96]" -type "float3" 0 -0.78772402 0 ;
	setAttr ".tk[97]" -type "float3" 0 -0.78772402 0 ;
	setAttr ".tk[98]" -type "float3" 0 -0.78772402 0 ;
	setAttr ".tk[99]" -type "float3" 0 -0.78772402 0 ;
	setAttr ".tk[100]" -type "float3" 0 -0.78772402 0 ;
	setAttr ".tk[101]" -type "float3" 0 -0.78772402 0 ;
createNode polyMapSew -n "polyMapSew2";
	rename -uid "7E8DB136-462A-96E3-1B82-9F8FC0F8DD90";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:67]";
createNode polyTweak -n "polyTweak5";
	rename -uid "F9BC25D6-4009-13D7-7302-D4A09F948E8E";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[0:35]" -type "float3"  0.016610008 -1.4901161e-08
		 -0.018792057 0.018792057 -1.4901161e-08 -0.016610008 -0.018792057 -1.4901161e-08
		 -0.016610008 -0.016610008 -1.4901161e-08 -0.018792057 0.13970871 0.035680924 -0.12348618
		 0.12348618 0.035680924 -0.13970871 0.23695382 -0.13572046 -0.23695382 -0.23695382
		 -0.13572046 -0.23695382 -0.12348618 0.035680924 -0.13970871 -0.13970871 0.035680924
		 -0.12348618 0.13970871 0.035680924 0.12348618 0.23695382 -0.13572046 0.23695382 0.12348618
		 0.035680924 0.13970871 -0.12348618 0.035680924 0.13970871 -0.23695382 -0.13572046
		 0.23695382 -0.13970871 0.035680924 0.12348618 0.018792057 -1.4901161e-08 0.016610008
		 0.016610008 -1.4901161e-08 0.018792057 -0.016610008 -1.4901161e-08 0.018792057 -0.018792057
		 -1.4901161e-08 0.016610008 0.062210288 0.030724345 -0.070382915 -0.062210288 0.030724345
		 -0.070382915 -0.070382915 0.030724345 -0.062210288 -0.070382915 0.030724345 0.062210288
		 -0.062210288 0.030724345 0.070382915 0.062210288 0.030724345 0.070382915 0.070382915
		 0.030724345 0.062210288 0.070382915 0.030724345 -0.062210288 0.20337331 0.012273379
		 -0.1884149 0.20337331 0.012273379 0.1884149 0.1884149 0.012273379 -0.20337331 -0.1884149
		 0.012273379 -0.20337331 -0.20337331 0.012273379 -0.1884149 -0.20337331 0.012273379
		 0.1884149 0.1884149 0.012273379 0.20337331 -0.1884149 0.012273379 0.20337331;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "2A04D62E-4A2A-3C30-6586-10806B426706";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[5]" "e[8]" "e[11]" "e[13]" "e[19]" "e[21]" "e[26]" "e[32]" "e[38:39]" "e[42:43]" "e[52:53]" "e[56:57]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "4D49993E-471C-0AF1-7F04-B486DF81C254";
	setAttr ".uopa" yes;
	setAttr -s 52 ".uvtk[0:51]" -type "float2" -0.07420437 0.17322846 0.3104552
		 0.19895983 -0.0065791216 0.16945368 0.064724088 0.41341957 -0.00072803162 0.17613739
		 0.2147862 0.17595673 0.22072035 0.16931117 0.0069322418 0.58408588 0.077560082 0.26363581
		 0.13668722 0.26356953 0.14955091 0.41332695 0.2362331 0.52210993 -0.073991314 0.29756397
		 0.28836286 0.2974146 0.28814638 0.17298593 0.077510342 0.20704103 0.13663316 0.20694369
		 -0.0006109681 0.29460236 0.21490994 0.29449531 -0.12523498 0.26102397 -0.041990861
		 0.14874834 0.25600326 0.1485396 0.26240802 0.18920708 0.16401634 0.50573868 0.25616324
		 0.32188329 -0.041829482 0.3220211 0.055034108 0.49149337 -0.053066052 0.17504132
		 0.042917475 0.19739571 0.038599171 0.29658762 0.04388909 0.20656332 0.17021921 0.20643571
		 0.1712077 0.19725248 0.17566392 0.29649362 0.043973848 0.26414177 0.17030099 0.26405033
		 0.17426714 0.29606983 0.1698235 0.19769564 0.22479945 0.16549814 0.039991893 0.2961503
		 0.060624883 0.41722152 0.044319645 0.19781142 -0.048271336 0.18936974 -0.096493259
		 0.19925284 0.050297469 0.50589424 0.15925857 0.49139002 0.20742771 0.58390599 0.26710629
		 0.17478889 0.15366188 0.41709337 -0.021921851 0.52223355 -0.01071169 0.16570067 0.33937371
		 0.2608332;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "2F818F73-4B14-C4AD-63ED-EFAEAADB9A2F";
	setAttr ".uopa" yes;
	setAttr -s 102 ".uvtk[0:101]" -type "float2" 0.04126361 0.13043725 0.02752766
		 0.10065567 0.0047366619 0.52704489 -0.00056856871 0.11261028 0.0057878792 0.13442333
		 0.0078387856 0.23229598 0.064373076 0.52445507 0.053835332 0.23357497 -0.097608626
		 0.51861393 -0.068757385 0.22559033 -0.063107938 0.12466776 -0.057916582 0.10085654
		 -0.03372401 0.087527543 0.144218 0.51490611 0.11327755 0.22746091 0.08225134 0.10678551
		 0.045809507 0.066324562 -0.014354259 0.06057477 -0.31752008 0.43711105 -0.2431733
		 0.18258531 -0.22258636 0.085088611 -0.21195123 0.066599429 -0.20843548 0.050411105
		 -0.20378643 0.020167112 -0.16583255 -0.028730154 -0.1505724 -0.052470818 -0.16610296
		 0.025947809 -0.18804671 0.047811672 -0.15684336 -0.036452472 -0.14561981 -0.064881697
		 -0.29046559 0.19927177 -0.31331918 0.23488371 -0.18768315 0.0066174567 -0.17551714
		 -0.011153847 -0.21266438 0.09037222 -0.3317253 0.3029272 -0.16676553 -0.039340213
		 -0.13426232 -0.0069802403 -0.26108006 0.14489156 -0.12822954 -0.095203608 -0.13671897
		 -0.10929497 -0.16563946 -0.083838388 0.38966203 0.42870462 0.28918386 0.16249631
		 0.20826778 0.0086642206 0.12961429 -0.062484562 0.086241841 -0.069511145 -0.12577236
		 -0.27180693 -0.10097229 -0.27995533 -0.045245141 -0.22883064 -0.0061649829 -0.11252742
		 -0.088038191 -0.011547116 0.18939728 -0.061871752 0.20683214 -0.046633035 0.23907948
		 0.034447014 0.212448 0.012383699 0.16792768 -0.066906229 0.18062103 -0.062615901
		 0.35548121 0.20850234 0.33137664 0.17256446 0.14425772 -0.097004592 0.12339914 -0.091838941
		 0.16953927 -0.030529559 0.28428772 0.10420894 0.13135678 -0.087688729 0.010108292
		 -0.16893488 0.0065042973 -0.17659691 0.020941228 -0.17504939 0.041163772 -0.12286469
		 0.11284578 -0.029906062 0.26110882 0.068534121 0.3760936 0.26319882 0.21451655 -0.034777582
		 0.17158091 -0.067803055 0.12977761 -0.092246488 0.0015688539 -0.1951915 0.015163779
		 -0.22206466 0.014409393 -0.16967215 0.016245365 -0.16992368 0.011648297 -0.22575566
		 0.0044986606 -0.22477606 0.0091621578 -0.21314025 0.014410824 -0.12059633 0.0026211143
		 -0.11863118 0.0042611063 -0.20209607 0.018192768 -0.21334741 0.024419725 -0.16436341
		 0.050341696 -0.11152282 -0.0033788085 -0.21262436 0.0096167326 -0.16145736 -0.025545895
		 -0.11057229 -0.00076815486 -0.23136266 -0.01475367 -0.23916215 -0.023190528 -0.23474468
		 -0.14174491 -0.053019196 -0.11427939 -0.093527377 -0.053168207 -0.208909 -0.015339136
		 -0.1832096 -0.061550587 -0.12295616 0.076753139 -0.08263132 0.01512146 -0.13106702
		 -0.022478193 0.0074056983;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "49C385DB-47FC-681F-27AA-3588D493815D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[82:83]" "e[178:179]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "60817E5E-442F-2C61-6AB5-FF9B61EFE24E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[5]" "e[9:10]" "e[44]" "e[49:50]" "e[97]" "e[102:103]" "e[141]" "e[143]" "e[148]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "FBC8422D-45C7-B400-87FD-A8A159C25D13";
	setAttr ".uopa" yes;
	setAttr -s 118 ".uvtk[0:117]" -type "float2" -0.27106085 -0.029102713
		 -0.25957251 -0.021723449 -0.29024988 -0.21627423 -0.25199649 -0.051190078 -0.26106775
		 -0.065247387 -0.27057526 -0.087922484 -0.29188707 -0.13252562 -0.28087142 -0.044386804
		 -0.19223973 -0.26042348 -0.20247914 -0.12952629 -0.20117725 -0.10198879 -0.20272556
		 -0.083910108 -0.21136995 -0.062450439 -0.29606441 -0.1229772 -0.26573074 -0.034085274
		 -0.25030309 -0.014361024 -0.23413651 -0.004150629 -0.21513131 -0.039083123 0.024589002
		 -0.27585301 -0.033294514 -0.18259898 -0.048757136 -0.15587974 -0.054323807 -0.1392989
		 -0.044142157 -0.1237375 -0.027918428 -0.1009215 0.098389834 -0.15861244 0.11059622
		 -0.14321402 0.13081579 -0.14653784 0.11925237 -0.16484475 0.084811389 -0.15125373
		 0.10000166 -0.14074604 0.25324762 -0.16199549 0.23545748 -0.18900399 0.06579636 -0.16521913
		 0.05208841 -0.1469973 0.08771418 -0.17960209 0.1922693 -0.23003913 0.072456643 -0.13045654
		 0.15155038 -0.11401819 0.27714825 -0.10912097 0.12935553 -0.11402434 0.11650397 -0.1175793
		 0.09896943 -0.10420611 -0.31779307 -0.044480652 -0.21927112 0.025150955 -0.20096111
		 0.035311759 -0.19102806 0.037770152 -0.18556198 0.002227217 0.18485796 -5.7652593e-05
		 0.19340381 -0.03150405 0.20556018 -0.026768252 0.22825664 -0.012234673 0.30916259
		 0.041765768 -0.095079631 0.14962047 -0.10555246 0.13657314 -0.1257368 0.1387506 -0.11604947
		 0.15449087 -0.081178635 0.14332701 -0.094790906 0.13485259 -0.24029341 0.15281035
		 -0.22579396 0.17945057 -0.065491974 0.15631783 -0.051566541 0.13903551 -0.08734107
		 0.16988622 -0.1881364 0.2213178 -0.070514143 0.12360786 0.047855914 0.13458674 0.038506329
		 0.12031555 0.041864038 0.15058541 0.026428163 0.17714563 -0.029727936 0.27139378
		 -0.15097082 0.10848647 -0.26337373 0.10840937 -0.12621552 0.11205098 -0.11261457
		 0.11572859 -0.095434666 0.099070355 0.023579061 0.099455506 0.24485511 0.066894479
		 0.25290301 0.08926338 0.26412565 0.048788548 0.25590286 0.033338338 0.24571359 0.026136801
		 0.23706177 0.053393438 0.27381378 0.2229584 0.27871138 0.14722443 0.18960825 0.083499745
		 0.1870625 0.10112156 0.18758768 0.12850635 0.17897344 0.26224476 0.19870251 0.063696206
		 0.25185198 0.035652325 0.28708348 0.13808896 0.24047059 0.018110231 0.22487572 0.008635059
		 0.20360139 0.042369634 -0.06612134 -0.008464843 0.05343011 -0.065144807 0.11332533
		 -0.034186617 0.17130101 -0.022796869 0.06406948 0.0099042803 -0.0498088 0.058439523
		 -0.11673257 0.033018783 -0.18099859 0.029404223 0.19238347 0.019045502 -0.063130021
		 0.068026245 0.069140732 -0.070956916 -0.20442063 -0.016335189 0.27544922 0.061689928
		 0.31568056 0.19003659 0.26117727 0.038646936 -0.13121963 0.13991283 -0.23771763 0.15601583
		 -0.1088959 0.13745922 0.13557877 -0.14944296 0.2526814 -0.15978862 0.11364476 -0.14490624
		 -0.29354179 -0.058836102 -0.33313933 -0.17987931 -0.27697334 -0.035087943;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "08DD1272-4B06-6F0A-E29E-20BA7D877996";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[72]" "e[75]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "18ADC679-4F3F-6DC6-5394-E2B26C973BA1";
	setAttr ".uopa" yes;
	setAttr -s 121 ".uvtk[0:120]" -type "float2" -0.2775698 -0.07634756 -0.27181894
		 -0.0708507 -0.22481506 0.061331719 -0.28262365 -0.015883029 -0.26591843 -0.0048229992
		 -0.25235176 0.0074256063 -0.2949481 -0.06269303 -0.2837851 -0.076474905 -0.33531529
		 0.10663173 -0.35123092 0.05065608 -0.36164263 0.03543663 -0.37488735 0.021223903
		 -0.35180321 -0.035017908 -0.28186676 -0.048253417 -0.28452927 -0.067458719 -0.28462178
		 -0.073436856 -0.28478783 -0.080232769 -0.33416986 -0.11295536 -0.63873017 0.19569221
		 -0.65464151 0.14137471 -0.65972435 0.12453032 -0.66491199 0.10765831 -0.67926806
		 0.06220369 -0.70201671 -0.0071768612 -1.034697056 0.23755276 1.15998209 0.0076520443
		 1.16666269 0.013459273 -1.040077209 0.25191334 -1.026593924 0.22238249 1.15162277
		 0.0018765703 -1.107494 0.29122329 -1.040184021 0.30218425 -0.93559515 0.21712303
		 -0.93142384 0.19974032 -0.93695486 0.23361844 -0.92355853 0.28266871 -0.97441483
		 0.1715339 1.11368811 0.021848954 1.11711705 0.061208412 1.10787368 0.0098633468 1.099496365
		 -0.0024948418 1.13111758 -0.09716282 -0.15469003 -0.071934462 -0.15576833 -0.097435266
		 -0.15626001 -0.10554004 -0.15679997 -0.11378974 -0.16212019 -0.16949822 0.8087483
		 -0.11285075 0.81913877 -0.0053714961 0.82090318 0.01066488 0.82271022 0.026492834
		 0.82880372 0.076484449 0.01823619 -0.10240175 0.033763617 -0.1176915 0.044699699
		 -0.10925122 0.013771683 -0.09783189 0.023754865 -0.1069902 0.020522773 -0.12006132
		 -0.015131682 -0.090620905 0.0046206117 -0.079137653 0.054451764 -0.091188505 0.060306191
		 -0.098536104 0.049919009 -0.083661124 0.042874634 -0.057085574 0.044165015 -0.12544753
		 0.22120142 -0.060218647 0.22995722 -0.088215761 0.21790206 -0.050037593 0.21459824
		 -0.039975137 0.20377797 -0.0082639754 0.0037175119 -0.092505574 0.0030562282 -0.061234057
		 0.0010415614 -0.10145193 -0.0025827289 -0.11030564 0.025115669 -0.16434649 0.24310392
		 -0.13224643 0.43406534 0.070592634 0.43268013 0.080457851 0.44611639 0.097430393
		 0.45252693 0.082553074 0.46340972 0.066980422 0.43427002 0.058839858 0.41917086 0.1079146
		 0.44968057 0.13793704 0.38708806 0.013806865 0.38666081 0.026383683 0.38466555 0.037658513
		 0.36908424 0.067058429 0.42169207 -0.0036109984 0.51655567 0.084062934 0.52566528
		 0.13257588 0.51933622 0.067924134 0.52483183 0.051067248 0.46632379 -0.039833859
		 -0.72991335 -0.087137833 1.12337601 -0.17573646 0.80240035 -0.19614659 0.47861332
		 -0.095076151 0.25783211 -0.18511514 0.019331187 -0.2109379 -0.16726506 -0.21344979
		 -0.3733148 -0.19885746 0.46139801 -0.13293114 0.040341139 -0.22050172 -1.040188193
		 0.047602862 -0.34074169 -0.16132475 0.46370906 0.087258726 0.45469356 0.12335384
		 0.46365643 0.075510055 -0.00016865134 -0.11439434 0.054610968 -0.068686187 0.0094179511
		 -0.12091719 -1.092815876 0.22838414 1.17587495 0.038729787 -1.081219316 0.20923465
		 -0.20991519 -0.048954189 -0.16116917 0.016502231 -0.23804253 -0.067180306 -1.020517349
		 0.12525567 -1.086736202 0.15270293 -1.067169547 0.19574463;
createNode polyMapSew -n "polyMapSew3";
	rename -uid "976C13A5-4A3D-DCCE-1AD0-648F26FB423A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:16]" "e[20]" "e[27]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "3BFC2980-41D8-5441-96E3-BC8F5486C1E3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[32]";
createNode polyMapSew -n "polyMapSew4";
	rename -uid "D8688EC2-41E5-97A4-9B2F-AB8F6D160D9D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[96:106]" "e[108:109]" "e[111]" "e[114]" "e[125:127]" "e[129]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "E1A6E5F3-46BD-A00C-B968-379932E11BAA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[132]";
createNode polyMapSew -n "polyMapSew5";
	rename -uid "6D24B305-45CC-BF7F-5571-43B33E1A4979";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[139:149]" "e[151]" "e[153]" "e[155:156]" "e[163:164]" "e[167]" "e[169]";
createNode polyMapCut -n "polyMapCut7";
	rename -uid "8EF728FE-4D95-4F2F-CAA9-3C91DC840DEE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[170]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "8576F394-4ABA-1C70-16D1-1EB327F330BA";
	setAttr ".uopa" yes;
	setAttr -s 115 ".uvtk[0:114]" -type "float2" 0.19747154 -0.12638666 0.20102352
		 -0.12889615 0.18859358 -0.19091764 0.20008162 -0.1475769 0.1952295 -0.15453485 0.19146225
		 -0.1619949 0.19621572 -0.16964602 0.19545773 -0.13439873 0.22794431 -0.18031305 0.22486918
		 -0.15952113 0.22566624 -0.15298295 0.22724959 -0.14644571 0.21265768 -0.12927064
		 0.20743576 -0.17588323 0.20537114 -0.16173674 0.20362073 -0.15886964 0.20205413 -0.15652296
		 0.19527519 -0.10246539 0.3229447 -0.1692574 0.32114875 -0.15336654 0.32077426 -0.14843094
		 0.32050323 -0.14350685 0.32024327 -0.13021484 0.32086501 -0.10990252 0.41484451 -0.13429609
		 -0.081353307 0.061761335 -0.08046329 0.068491675 0.41840363 -0.13725911 0.4105078
		 -0.13207838 -0.084128022 0.055115782 0.44536352 -0.14095023 0.42500031 -0.15219644
		 0.39027858 -0.14547342 0.38749689 -0.14266065 0.39239222 -0.14848995 0.39478397 -0.15975836
		 0.39352161 -0.13456021 -0.10265446 0.05835209 -0.10645854 0.06320174 -0.10235655
		 0.056494161 -0.10241318 0.054790393 -0.10794234 0.059855133 0.13796434 -0.161439
		 0.13966751 -0.14699066 0.14028817 -0.1424692 0.14095488 -0.1378527 0.14638287 -0.10740693
		 -0.070721745 0.069582634 -0.082064271 0.052960515 -0.0839113 0.050969362 -0.085755825
		 0.049180761 -0.091870546 0.044428147 0.060688078 -0.087180793 0.047208309 -0.084433749
		 0.042779505 -0.089707673 0.060504645 -0.089615062 0.061047792 -0.084580109 0.05177179
		 -0.087672994 0.032598913 -0.11815333 0.057553232 -0.097526118 0.060424268 -0.075726151
		 0.062012434 -0.071908876 0.058751106 -0.079076096 0.052298903 -0.087744087 0.076217949
		 -0.069646657 0.0079249144 -0.033567995 0.012770295 -0.022597156 0.0061787367 -0.037541285
		 0.0044442415 -0.041471988 -0.00096052885 -0.053812325 0.055653065 -0.13703446 0.049770176
		 -0.1582239 0.059482187 -0.13276823 0.063470721 -0.1296083 0.04183048 -0.1050075 0.020478308
		 -0.0053225905 -0.072561383 -0.010214597 -0.075307131 -0.013759866 -0.074445009 0.0005146414
		 -0.070821524 0.0038456321 -0.066452265 0.0033775568 -0.069098711 -0.0069848299 -0.079168081
		 -0.028309509 -0.077526689 -0.011661664 -0.053713918 -0.011295557 -0.056156397 -0.014549091
		 -0.058092535 -0.01796034 -0.06111902 -0.029954523 -0.059512794 0.0017230958 -0.05819273
		 -0.004406184 -0.06396997 -0.0081928521 -0.056366801 -0.0031103194 -0.054097533 -0.0017158389
		 -0.065939903 0.020781897 0.32359314 -0.086519204 -0.10962176 0.071209736 -0.063640714
		 0.086398602 -0.055986881 0.03932856 0.029691637 0.015681811 0.046782166 -0.078814864
		 0.15139428 -0.083328195 0.20255852 -0.070062727 0.0046249628 0.024442591 0.11000407
		 -0.037417717 0.39910948 -0.10888644 0.24227139 -0.12381167 0.43125695 -0.11772045
		 -0.088508487 0.084946528 0.42230475 -0.1129964 0.39788407 -0.12537639 0.40093124
		 -0.11777518 0.41273826 -0.11503927 0.23514101 -0.15111366 0.099372566 -0.064236008
		 -0.010937691 -0.0022438951;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "8645DC5B-4F86-8C73-B80E-C6A3FF672446";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[124]" "e[128]" "e[130]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "79D8D34E-4A39-58C2-5BA3-2FA50E822DEF";
	setAttr ".uopa" yes;
	setAttr -s 119 ".uvtk[0:118]" -type "float2" 0.039938174 0.0025954396
		 0.039566047 0.0025061518 0.040296845 0.0051733702 0.038869403 0.0031258911 0.039252974
		 0.0034983158 0.039574638 0.0038312227 0.041667677 0.0028205365 0.040291488 0.0027317852
		 0.035672747 0.0068804175 0.035945252 0.0045102537 0.0358213 0.0037766695 0.035589773
		 0.0030177236 0.037393622 0.0013799518 0.039822847 -0.0016682297 0.039405629 0.0013455003
		 0.039010987 0.0022362024 0.038467348 0.0031867027 0.039537057 -0.0010024086 0.022650622
		 0.0056361705 0.023066968 0.0028981715 0.023206808 0.0020318925 0.023347534 0.001161173
		 0.023750857 -0.0012361184 0.024396673 -0.004967995 0.0044735968 0.0013848841 -0.87232834
		 -0.0093236584 -0.87088233 -0.0075721089 0.0039203167 0.0019344091 0.005183816 0.00086434186
		 -0.87425452 -0.010698648 0.00010752678 0.0020497441 0.0029098988 0.0043598562 0.0095276535
		 0.0024683923 0.010068238 0.0017046779 0.0091302395 0.0032414049 0.0087431669 0.0058712214
		 0.0087958276 -0.00029990077 -0.88060075 -0.0043022241 -0.87973517 0.00090143643 -0.88152498
		 -0.0057276711 -0.88276857 -0.0070210788 -0.88253492 -0.015693057 0.012683898 -0.0044026375
		 0.011171788 -0.0006262362 0.010712713 0.00063347816 0.010281444 0.0019188225 0.0076236427
		 0.01124322 -0.90934771 -0.013023008 -0.90807444 -0.0042056497 -0.90789431 -0.0028086696
		 -0.90771896 -0.0014162306 -0.90718108 0.0031392034 -0.87498254 0.0087447371 -0.87510502
		 0.0076116491 -0.87652522 0.0080609787 -0.87514287 0.0088409241 -0.87483346 0.0088048335
		 -0.87292778 0.0073425043 -0.88146234 0.0096076485 -0.87513006 0.0093459394 -0.87725991
		 0.0076891202 -0.87801147 0.0085345823 -0.87667841 0.0068431068 -0.87550509 0.0038116034
		 -0.87549978 0.012023976 -0.90144539 0.0017461237 -0.90270728 0.0050437283 -0.90099037
		 0.00052346848 -0.90053827 -0.00068500079 -0.89911574 -0.0045793839 -0.013852149 -0.018635102
		 -0.88695377 -0.0079927687 -0.016417474 -0.016917929 -0.019023329 -0.013991609 -0.027042121
		 -0.0034700092 -0.90465385 0.010072319 -0.93060344 -0.006228216 -0.9312467 -0.0066725984
		 -0.93280596 -0.0042178687 -0.93218881 -0.0041801389 -0.93162221 -0.0041365232 -0.92985851
		 -0.005760096 -0.93276983 -0.0088230837 -0.93524033 -0.0035305973 -0.92324352 -0.0057866946
		 -0.92362064 -0.0069271121 -0.92380095 -0.0080194119 -0.92306602 -0.011519449 -0.92657077
		 -0.0041363295 -0.93204325 -0.0015073959 -0.93220681 0.0021846052 -0.93177801 -0.002561206
		 -0.93142933 -0.0036436971 -0.9303121 -0.0018481407 0.025189519 -0.0094520971 -0.88467675
		 -0.021662174 -0.91035861 -0.0192878 -0.93272454 0.0032746699 -0.90710276 0.015952395
		 -0.029124737 0.0054184906 0.0057840943 0.018916193 0.040589795 -0.0058404505 -0.93494481
		 -0.018900959 -0.87475002 0.024370214 0.0085860193 -0.0074369423 0.039169714 0.020701554
		 0.0019499063 -0.00060935318 -0.86969787 -0.00071444549 0.0028622746 -0.0011513382
		 0.0078258812 -0.0030937791 0.004175961 -0.0029797256 0.0038128197 -0.0012381673 0.0407186
		 0.013151355 -0.87185872 0.01733253 -0.9348529 -0.012454033 -0.85679173 0.0029733907
		 -0.86589569 0.0019786265 -0.87290615 0.00064714812 -0.0076829195 -0.018875524;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "BB24D9A0-4B14-EFFC-9A88-07B1ED2051AC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "B2A830C0-498D-4636-F834-348AFD722266";
	setAttr ".uopa" yes;
	setAttr -s 119 ".uvtk[0:118]" -type "float2" 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0 0.008400768 0 0.008400768 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0 0.008400768 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549
		 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549
		 -0.0090152826 0.00055548549 -0.0090152826 0 0.008400768 0 0.008400768 0 0.008400768
		 0 0.008400768 0 0.008400768 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768
		 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768
		 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768
		 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0.00055548549
		 -0.0090152826 0 0.008400768 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768
		 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768
		 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768 0 0.008400768
		 0 0.008400768 0 0.008400768 0 0.008400768 0.00055548549 -0.0090152826 0 0.008400768
		 0 0.008400768 0 0.008400768 0 0.008400768 0.00055548549 -0.0090152826 0.00055548549
		 -0.0090152826 0.00055548549 -0.0090152826 0 0.008400768 0 0.008400768 0.00055548549
		 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0 0.008400768
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826
		 0.00055548549 -0.0090152826 0.00055548549 -0.0090152826 0 0.008400768 0 0.008400768
		 0 0.008400768 0 0.008400768 0 0.008400768 0.00055548549 -0.0090152826;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "F6B152D5-4A45-CF65-D363-368DBAE1B69D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "90CAAFDC-4F14-59D1-5FBD-F9B51220A151";
	setAttr ".uopa" yes;
	setAttr -s 119 ".uvtk[0:118]" -type "float2" -0.00037677586 -0.0034183888
		 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 0 0 0 0 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 0 0 -0.00037677586
		 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586
		 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586
		 -0.0034183888 0 0 0 0 0 0 0 0 0 0 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 -0.00037677586 -0.0034183888 0 0 -0.00037677586 -0.0034183888 -0.00037677586
		 -0.0034183888 -0.00037677586 -0.0034183888 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.00037677586 -0.0034183888 0 0 0 0 0 0 0
		 0 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888
		 0 0 0 0 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586
		 -0.0034183888 0 0 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586
		 -0.0034183888 -0.00037677586 -0.0034183888 -0.00037677586 -0.0034183888 0 0 0 0 0
		 0 0 0 0 0 -0.00037677586 -0.0034183888;
createNode polyLayoutUV -n "polyLayoutUV3";
	rename -uid "B73F89B6-4E85-D180-AF39-83BCA1149257";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "F824C52E-4414-09AF-74C3-949BD2B9994B";
	setAttr ".uopa" yes;
	setAttr -s 119 ".uvtk[0:118]" -type "float2" -6.1988831e-06 -6.7064539e-05
		 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 0 0 0 0 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 0 0 -6.1988831e-06
		 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06
		 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06
		 -6.7064539e-05 0 0 0 0 0 0 0 0 0 0 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 -6.1988831e-06 -6.7064539e-05 0 0 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06
		 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -6.1988831e-06 -6.7064539e-05 0 0 0 0 0 0
		 0 0 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05
		 0 0 0 0 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06
		 -6.7064539e-05 0 0 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06
		 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 -6.1988831e-06 -6.7064539e-05 0 0 0
		 0 0 0 0 0 0 0 -6.1988831e-06 -6.7064539e-05;
createNode polyLayoutUV -n "polyLayoutUV4";
	rename -uid "CF3135CC-4272-7FF7-78C2-CAA26B7EBA0D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "85566CDB-4E6D-25FA-B486-65B8DBCCBF83";
	setAttr ".uopa" yes;
	setAttr -s 119 ".uvtk[0:118]" -type "float2" 0 2.7939677e-09 0 2.7939677e-09
		 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0
		 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09
		 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0
		 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09
		 0 2.7939677e-09 0 0 0 0 0 2.7939677e-09 0 2.7939677e-09 0 0 0 2.7939677e-09 0 2.7939677e-09
		 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0
		 0 0 0 0 0 0 0 0 0 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09
		 0 2.7939677e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.7939677e-09 0 0 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.7939677e-09
		 0 0 0 0 0 0 0 0 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09 0 0 0 0 0 2.7939677e-09
		 0 2.7939677e-09 0 2.7939677e-09 0 0 0 2.7939677e-09 0 2.7939677e-09 0 2.7939677e-09
		 0 2.7939677e-09 0 2.7939677e-09 0 0 0 0 0 0 0 0 0 0 0 2.7939677e-09;
createNode polyLayoutUV -n "polyLayoutUV5";
	rename -uid "F3246767-4D1F-284B-F800-85BB160B5C39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "CFEEC7AB-40DD-BBD9-FE6F-8DAE310B3FD7";
	setAttr ".uopa" yes;
	setAttr -s 119 ".uvtk[0:118]" -type "float2" 0 1.3969839e-09 0 1.3969839e-09
		 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0
		 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09
		 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0
		 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09
		 0 1.3969839e-09 0 0 0 0 0 1.3969839e-09 0 1.3969839e-09 0 0 0 1.3969839e-09 0 1.3969839e-09
		 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0
		 0 0 0 0 0 0 0 0 0 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09
		 0 1.3969839e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.3969839e-09 0 0 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.3969839e-09
		 0 0 0 0 0 0 0 0 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09 0 0 0 0 0 1.3969839e-09
		 0 1.3969839e-09 0 1.3969839e-09 0 0 0 1.3969839e-09 0 1.3969839e-09 0 1.3969839e-09
		 0 1.3969839e-09 0 1.3969839e-09 0 0 0 0 0 0 0 0 0 0 0 1.3969839e-09;
createNode polyLayoutUV -n "polyLayoutUV6";
	rename -uid "FF80733F-40CC-C7F3-4875-60B489012C00";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "11554261-46B7-095D-89BC-F29AA9A84914";
	setAttr ".uopa" yes;
	setAttr -s 119 ".uvtk[0:118]" -type "float2" 0 9.3132257e-10 0 9.3132257e-10
		 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0
		 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10
		 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0
		 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10
		 0 9.3132257e-10 0 0 0 0 0 9.3132257e-10 0 9.3132257e-10 0 0 0 9.3132257e-10 0 9.3132257e-10
		 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0
		 0 0 0 0 0 0 0 0 0 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10
		 0 9.3132257e-10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9.3132257e-10 0 0 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9.3132257e-10
		 0 0 0 0 0 0 0 0 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10 0 0 0 0 0 9.3132257e-10
		 0 9.3132257e-10 0 9.3132257e-10 0 0 0 9.3132257e-10 0 9.3132257e-10 0 9.3132257e-10
		 0 9.3132257e-10 0 9.3132257e-10 0 0 0 0 0 0 0 0 0 0 0 9.3132257e-10;
createNode polyLayoutUV -n "polyLayoutUV7";
	rename -uid "7209A15C-41E6-401D-4C1E-8A8A32CA15C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "8BAA95CF-44E4-F79A-ACA7-3EBFF14213D4";
	setAttr ".uopa" yes;
	setAttr -s 119 ".uvtk[0:118]" -type "float2" 0 4.6566129e-10 0 4.6566129e-10
		 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0
		 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10
		 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0
		 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10
		 0 4.6566129e-10 0 0 0 0 0 4.6566129e-10 0 4.6566129e-10 0 0 0 4.6566129e-10 0 4.6566129e-10
		 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0
		 0 0 0 0 0 0 0 0 0 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10
		 0 4.6566129e-10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4.6566129e-10 0 0 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4.6566129e-10
		 0 0 0 0 0 0 0 0 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10 0 0 0 0 0 4.6566129e-10
		 0 4.6566129e-10 0 4.6566129e-10 0 0 0 4.6566129e-10 0 4.6566129e-10 0 4.6566129e-10
		 0 4.6566129e-10 0 4.6566129e-10 0 0 0 0 0 0 0 0 0 0 0 4.6566129e-10;
createNode polyLayoutUV -n "polyLayoutUV8";
	rename -uid "9F104FBB-4760-CA0B-CA72-9E8C4108FA3D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "5EAB336D-452A-A628-520E-E8A89032C036";
	setAttr ".uopa" yes;
	setAttr -s 119 ".uvtk[0:118]" -type "float2" 0.058615953 0.41240454 0.051208049
		 0.41905683 0.10066427 0.39885443 0.078112736 0.43413812 0.081182584 0.4248687 0.08453311
		 0.41754156 0.074412704 0.38561404 0.06379886 0.40647513 0.14738393 0.44392955 0.12214838
		 0.46581268 0.11644638 0.47542238 0.11179984 0.48674375 0.075483561 0.48715675 0.037702076
		 0.36931765 0.016582878 0.39897895 0.0061659394 0.40663141 -0.0067763086 0.41355807
		 0.026502682 0.49791092 0.2762402 0.59274703 0.24884261 0.61745727 0.24027981 0.62512165
		 0.23168831 0.63281024 0.2083883 0.65353996 0.17240527 0.68519634 0.42864364 0.83240581
		 0.43373069 -0.012759175 0.43292841 -0.013831425 0.43978003 0.83010328 0.41541913
		 0.83315229 0.43475923 -0.012037229 0.48850703 0.8548317 0.46961913 0.81092417 0.37576392
		 0.77275318 0.36273572 0.77557462 0.38720667 0.76826674 0.41493639 0.74340439 0.35482046
		 0.81267548 0.43776324 -0.015268672 0.43820825 -0.017516185 0.43789795 -0.014614429
		 0.43813303 -0.013994735 0.43612251 -0.012325957 -0.13961308 0.21121998 -0.16704027
		 0.24081407 -0.17557596 0.25003719 -0.18414696 0.2592521 -0.23985614 0.31926379 0.44357029
		 -0.0049217083 0.44573417 -0.0080859773 0.44605055 -0.0086135976 0.44634345 -0.0091475062
		 0.44725671 -0.010938983 0.48984292 -0.012411702 0.49180123 -0.014875431 0.49108151
		 -0.015650559 0.48937467 -0.01296049 0.49025837 -0.011629362 0.4926571 -0.013945144
		 0.48917642 -0.018749136 0.48745754 -0.013753455 0.48805299 -0.0074231215 0.48819694
		 -0.006649185 0.48782232 -0.0080481134 0.48667577 -0.0093311481 0.49056426 -0.0062077008
		 0.47824839 0.00024032872 0.47869393 0.0025463952 0.47810513 -0.00057384744 0.47796178
		 -0.0013717525 0.47757646 -0.0037884228 -0.34637821 0.067088298 0.49567798 -0.023312237
		 -0.3513878 0.079984277 -0.35435122 0.094866097 -0.42477673 0.14163071 0.47949252
		 0.0063102292 0.46142349 -0.0020246319 0.46135446 -0.0027096532 0.45966229 -0.0026741289
		 0.45958027 -0.0019589029 0.45939383 -0.0011072122 0.46160367 -0.001209598 0.46165511
		 -0.0047490112 0.45948783 -0.0048218034 0.46554521 0.00058891904 0.46526334 -0.0003133826
		 0.46511501 -0.0011787377 0.46536365 -0.0037618689 0.46370223 0.0029691709 0.45647815
		 -0.00083700195 0.45703539 -0.0031826757 0.45606473 -9.1206282e-05 0.45548913 0.00067752507
		 0.46155021 0.0070543746 0.1306303 0.72182238 0.43505695 -0.010559037 0.44183633 -0.0028227288
		 0.46232566 0.012801294 0.48058403 0.011057607 -0.45975682 0.19172543 -0.28080329
		 0.36345676 -0.012143401 0.54056513 0.45101443 0.0078605842 0.49547663 5.5410899e-05
		 0.2857604 0.88883579 -0.095624045 0.52793467 0.45116416 0.87082779 0.43265828 -0.01802874
		 0.43608278 0.87436098 0.33194786 0.85726082 0.37384814 0.92046255 0.41872472 0.87608725
		 -0.048173457 0.48888594 0.49392137 -0.0045196228 0.45348617 0.0055469377 0.49844369
		 -0.013752367 0.49783817 -0.015856963 0.4972268 -0.017821629 -0.31765863 0.037670322;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "AEF4A690-4AD1-5356-18D5-C59996E7F6E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2.0122023795222082 0 0 0 0 0.46734816635553383 0 0 0 0 2.0122023795222082 0
		 0 -0.15445341498096676 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "C9C559C3-49B6-D4DC-B460-57A0647930B6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2.0122023795222082 0 0 0 0 0.46734816635553383 0 0 0 0 2.0122023795222082 0
		 0 0 0 1;
	setAttr ".a" 180;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8A395F5E-4638-261F-AC33-AFB7C0402AB7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 574\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 574\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 574\n            -height 336\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1155\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1155\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1155\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CE3171BB-4BDD-6A7D-AF30-C7833998EA3A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polySoftEdge2.out" "Step_Piece_LowShape.i";
connectAttr "polySoftEdge3.out" "Step_Piece_HighShape.i";
connectAttr "polyTweakUV1.uvtk[0]" "Step_Piece_HighShape.uvst[0].uvtw";
connectAttr "polyTweakUV14.out" "BorderShape.i";
connectAttr "polyTweakUV14.uvtk[0]" "BorderShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyBevel1.ip";
connectAttr "BorderShape.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polySoftEdge1.ip";
connectAttr "BorderShape.wm" "polySoftEdge1.mp";
connectAttr "polySoftEdge1.out" "polyBevel2.ip";
connectAttr "BorderShape.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "deleteComponent1.ig";
connectAttr "polyCube1.out" "polyBevel3.ip";
connectAttr "Step_Piece_HighShape.wm" "polyBevel3.mp";
connectAttr "polyBevel3.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polySplit1.ip";
connectAttr "polySplit1.out" "polyCut1.ip";
connectAttr "Step_Piece_HighShape.wm" "polyCut1.mp";
connectAttr "deleteComponent1.og" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polySplit6.ip";
connectAttr "polySplit6.out" "polyCut2.ip";
connectAttr "BorderShape.wm" "polyCut2.mp";
connectAttr "polyCut2.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyMirror1.ip";
connectAttr "Border.sp" "polyMirror1.sp";
connectAttr "BorderShape.wm" "polyMirror1.mp";
connectAttr "polyMirror1.out" "polyExtrudeFace1.ip";
connectAttr "BorderShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyCut3.ip";
connectAttr "BorderShape.wm" "polyCut3.mp";
connectAttr "polyCut3.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyMirror2.ip";
connectAttr "Border.sp" "polyMirror2.sp";
connectAttr "BorderShape.wm" "polyMirror2.mp";
connectAttr "polyMirror2.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "polyTweak4.out" "polyMapSew1.ip";
connectAttr "deleteComponent10.og" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMapSew2.ip";
connectAttr "polyCut1.out" "polyTweak5.ip";
connectAttr "polyMapSew2.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "polyMapSew1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapSew3.ip";
connectAttr "polyMapSew3.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapSew4.ip";
connectAttr "polyMapSew4.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapSew5.ip";
connectAttr "polyMapSew5.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyLayoutUV2.ip";
connectAttr "polyLayoutUV2.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyLayoutUV3.ip";
connectAttr "polyLayoutUV3.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyLayoutUV4.ip";
connectAttr "polyLayoutUV4.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyLayoutUV5.ip";
connectAttr "polyLayoutUV5.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyLayoutUV6.ip";
connectAttr "polyLayoutUV6.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyLayoutUV7.ip";
connectAttr "polyLayoutUV7.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyLayoutUV8.ip";
connectAttr "polyLayoutUV8.out" "polyTweakUV14.ip";
connectAttr "polySurfaceShape2.o" "polySoftEdge2.ip";
connectAttr "Step_Piece_LowShape.wm" "polySoftEdge2.mp";
connectAttr "polyTweakUV1.out" "polySoftEdge3.ip";
connectAttr "Step_Piece_HighShape.wm" "polySoftEdge3.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Step_Piece_HighShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BorderShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Step_Piece_LowShape.iog" ":initialShadingGroup.dsm" -na;
// End of Pressure Pad.ma
