//Maya ASCII 2017ff05 scene
//Name: MEL Script.ma
//Last modified: Fri, Aug 24, 2018 10:28:17 PM
//Codeset: UTF-8
requires maya "2017ff05";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201710312130-1018716";
fileInfo "osv" "Mac OS X 10.13.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "6EA794A1-5742-71F1-9187-54A3A1C55E57";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.74345318617718692 12.323594525628673 17.69496368852149 ;
	setAttr ".r" -type "double3" -11.738352729608009 -4.6000000000019456 9.9713523173432612e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AEA8BD0D-C040-0F32-DE9C-A7947EBC4678";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 19.553443512187073;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.82349798036026922 3.1492855023114448 0.13502287253536316 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B0DB93EE-2540-7EC9-9361-9DAB890E88D6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C09179E8-AE4F-71AA-AFEF-FEB2EAD75113";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "5BA20407-ED44-A702-976B-93BE4C2CB1DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "079B0C52-EE44-4AA7-D212-CF876D3BA6A7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "5ED854CF-984B-A098-FB2D-08943CCD8DA2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3BFD4DB6-1E4C-EA04-B779-B5BFBB696BF6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Shelf";
	rename -uid "F3622DF6-5641-82EB-AACE-DA970FB49C9A";
createNode transform -n "Side_Shelf" -p "Shelf";
	rename -uid "18197763-FE4D-C007-E333-B9841F4D5094";
	setAttr ".t" -type "double3" -2.538 5.746299 0 ;
	setAttr ".s" -type "double3" 0.239 11.488 4.361026 ;
createNode mesh -n "Side_ShelfShape" -p "Side_Shelf";
	rename -uid "1E2061DC-6843-3643-3E3B-109CBB2F7E5B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Base_Shelf" -p "Shelf";
	rename -uid "170DAB27-0A4C-CC83-76E9-C48F7F8B1D9C";
	setAttr ".t" -type "double3" 0 0.089 0 ;
	setAttr ".s" -type "double3" 5.005 0.155 4.19 ;
createNode mesh -n "Base_ShelfShape" -p "Base_Shelf";
	rename -uid "2B2BE5C1-354C-01A6-EA70-03B18245C25A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Back_Shelf" -p "Shelf";
	rename -uid "F1CFC4F9-564D-966F-EFA7-B4B385CD2A74";
	setAttr ".t" -type "double3" 0 2.274 -2.015 ;
	setAttr ".s" -type "double3" 5.102 1.637 0.241 ;
createNode mesh -n "Back_ShelfShape" -p "Back_Shelf";
	rename -uid "A42EFB55-944C-8CB2-7C45-96A696366CA2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Back_Shelf1" -p "Shelf";
	rename -uid "5935E878-654A-ED70-D668-069775E7EB8C";
	setAttr ".t" -type "double3" 0 6.274 -2.015 ;
	setAttr ".s" -type "double3" 5.102 1.637 0.241 ;
createNode mesh -n "Back_Shelf1Shape" -p "Back_Shelf1";
	rename -uid "071354B4-8744-3BEE-2796-A0B298A639FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "Back_Shelf1";
	rename -uid "CBDA239D-6245-20DC-0A39-8E8F2DEACB37";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Back_Shelf2" -p "Shelf";
	rename -uid "65D1E9FB-BD41-8DB3-04BD-5B91656A52E2";
	setAttr ".t" -type "double3" 0 10.274000000000001 -2.015 ;
	setAttr ".s" -type "double3" 5.102 1.637 0.241 ;
createNode mesh -n "Back_Shelf2Shape" -p "Back_Shelf2";
	rename -uid "7B701214-034E-3524-6C92-E9B8D297C579";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Middle_Divider" -p "Shelf";
	rename -uid "388A460E-BE46-7F8B-EEE6-0CAEE4516156";
	setAttr ".t" -type "double3" 0 8.824 0.065 ;
	setAttr ".s" -type "double3" 0.2 4.407 3.951 ;
createNode mesh -n "Middle_DividerShape" -p "Middle_Divider";
	rename -uid "2739A006-6046-B415-A65B-3A8E8B3E6AAD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Objects";
	rename -uid "5BA2AE03-0344-5B03-FA01-4E9F76ADC616";
createNode transform -n "Picture_Frame" -p "Objects";
	rename -uid "F03ECA66-434F-BCD3-31B7-15BCC7D9DDE1";
	setAttr ".t" -type "double3" -0.555 3.541 0 ;
	setAttr ".r" -type "double3" -14.907426000000001 0 0 ;
	setAttr ".s" -type "double3" 0.659 0.923 0.1 ;
createNode mesh -n "Picture_FrameShape" -p "Picture_Frame";
	rename -uid "BFBC8523-C640-A397-8EC4-0DB1FD03BF6E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Picture_Frame1" -p "Picture_Frame";
	rename -uid "A6EA7EDA-A843-4B3E-EA6E-7AB3834C0FA8";
	setAttr ".t" -type "double3" 2.0918027314112289 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode mesh -n "Picture_Frame1Shape" -p "Picture_Frame1";
	rename -uid "45C54136-C245-ECA1-C827-6FB7A6061AAE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 46 ".uvst[0].uvsp[0:45]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5
		 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5
		 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -0.39548492 -0.39548492 0.49999523 0.39548495 -0.39548492 0.49999523
		 -0.39548492 0.39548492 0.49999237 0.39548495 0.39548492 0.49999237 -0.47749043 0.47749043 -0.45498562
		 0.47749037 0.47749043 -0.45498562 -0.47749043 -0.47748995 -0.45498848 0.47749037 -0.47748995 -0.45498848
		 -0.20507801 0.031600237 -0.50000954 0.20507795 0.031600237 -0.50000954 0.20507795 -0.031600475 -0.50000763
		 -0.20507801 -0.031600475 -0.50000763 -0.20507801 -0.40179443 -3.23334455 0.20507795 -0.40179443 -3.23334455
		 0.20507795 -0.46499586 -3.23334408 -0.20507801 -0.46499586 -3.23334408 -0.20507801 -0.40179443 -3.23334455
		 0.20507795 -0.40179443 -3.23334455 0.20507795 -0.46499586 -3.23334408 -0.20507801 -0.46499586 -3.23334408
		 -0.20507801 -0.40179443 -3.23334455 0.20507795 -0.40179443 -3.23334455 0.20507795 -0.46499586 -3.23334408
		 -0.20507801 -0.46499586 -3.23334408 -0.39548492 -0.39548492 0.49999523 0.39548495 -0.39548492 0.49999523
		 0.39548495 0.39548492 0.49999237 -0.39548492 0.39548492 0.49999237 -0.5 -0.49999976 0.094138145
		 0.49999994 -0.49999976 0.094138145 0.49999994 0.5 0.094135284 -0.5 0.5 0.094135284
		 -0.5 -0.49999976 0.094138145 0.49999994 -0.49999976 0.094138145 0.49999994 0.5 0.094135284
		 -0.5 0.5 0.094135284 -0.5 -0.49999976 0.094138145 0.49999994 -0.49999976 0.094138145
		 0.49999994 0.5 0.094135284 -0.5 0.5 0.094135284;
	setAttr -s 76 ".ed[0:75]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 1 5 9 1 8 9 0 7 10 1 9 10 0 6 11 1 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 23 22 0 20 23 0 0 24 0 1 25 0 24 25 0 3 26 0 25 26 0 2 27 0 27 26 0 24 27 0 24 28 0
		 25 29 0 28 29 0 26 30 0 29 30 0 27 31 0 31 30 0 28 31 0 28 32 0 29 33 0 32 33 0 30 34 0
		 33 34 0 31 35 0 35 34 0 32 35 0 32 36 0 33 37 0 36 37 0 34 38 0 37 38 0 35 39 0 39 38 0
		 36 39 0;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
		f 4 70 72 -75 -76
		mu 0 4 42 43 44 45
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 38 40 -43 -44
		mu 0 4 26 27 28 29
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 22 29 -31 -29
		mu 0 4 18 19 23 22
		f 4 24 31 -33 -30
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 28 35 -34
		mu 0 4 21 18 22 25
		f 4 30 37 -39 -37
		mu 0 4 22 23 27 26
		f 4 32 39 -41 -38
		mu 0 4 23 24 28 27
		f 4 -35 41 42 -40
		mu 0 4 24 25 29 28
		f 4 -36 36 43 -42
		mu 0 4 25 22 26 29
		f 4 0 45 -47 -45
		mu 0 4 0 1 31 30
		f 4 5 47 -49 -46
		mu 0 4 1 3 32 31
		f 4 -2 49 50 -48
		mu 0 4 3 2 33 32
		f 4 -5 44 51 -50
		mu 0 4 2 0 30 33
		f 4 46 53 -55 -53
		mu 0 4 30 31 35 34
		f 4 48 55 -57 -54
		mu 0 4 31 32 36 35
		f 4 -51 57 58 -56
		mu 0 4 32 33 37 36
		f 4 -52 52 59 -58
		mu 0 4 33 30 34 37
		f 4 54 61 -63 -61
		mu 0 4 34 35 39 38
		f 4 56 63 -65 -62
		mu 0 4 35 36 40 39
		f 4 -59 65 66 -64
		mu 0 4 36 37 41 40
		f 4 -60 60 67 -66
		mu 0 4 37 34 38 41
		f 4 62 69 -71 -69
		mu 0 4 38 39 43 42
		f 4 64 71 -73 -70
		mu 0 4 39 40 44 43
		f 4 -67 73 74 -72
		mu 0 4 40 41 45 44
		f 4 -68 68 75 -74
		mu 0 4 41 38 42 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Book" -p "Objects";
	rename -uid "6A32CAAE-CF4A-F328-E802-B8A46C3A043C";
	setAttr ".t" -type "double3" 1.883 10.577 0 ;
	setAttr ".r" -type "double3" 0 0 -21.639319000000004 ;
	setAttr ".s" -type "double3" 0.235 2.218 1.801 ;
createNode mesh -n "BookShape" -p "Book";
	rename -uid "1DFD090B-5E45-0B3D-6303-41944A0F36EE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D9782A8F-9D4E-8B12-6A2A-73B68BB9D0C0";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "AE878B23-A940-C34F-942F-55BEA0F73967";
createNode displayLayer -n "defaultLayer";
	rename -uid "D645CC23-2841-60E8-50C6-0BA1760BBEE8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5BD05471-3C45-B423-4A26-0C892076F5BE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A8EE80A8-C34F-1375-C772-19A847B7AF63";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AA529AB2-2F43-AF4D-5CD2-FB9E1A1F46DA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DEBD9B8D-4546-3C8B-274E-3087E6EE6200";
createNode polyCube -n "polyCube1";
	rename -uid "2B031A9D-7A4F-4F93-95F1-F3AC3B7E97FA";
	setAttr ".cuv" 4;
createNode polyMirror -n "polyMirror1";
	rename -uid "56FEB6C6-3E43-3AB6-51D9-87B6BC1E077D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.23899999999999999 0 0 0 0 11.488 0 0 0 0 4.3610259999999998 0
		 -2.5379999999999998 5.7462989999999996 0 1;
	setAttr ".ws" yes;
	setAttr ".ad" 0;
	setAttr ".mm" 0;
	setAttr ".cm" yes;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polyCube -n "polyCube2";
	rename -uid "A1ACDDE3-3744-BDB9-19B4-7BBAE2DB5F9D";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	rename -uid "101C0D6E-3F4D-8EB8-15F4-C3A83853602E";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "1697F615-C349-46F8-F793-9FBFA639A5B8";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 5.1020000000000003 0 0 0 0 1.637 0 0 0 0 0.24099999999999999 0
		 0 6.274 -2.0150000000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.2740002 -1.8945 ;
	setAttr ".rs" 574760756;
	setAttr ".ls" -type "double3" 1 0.099184900000000006 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.551 5.4555 -1.8945 ;
	setAttr ".cbx" -type "double3" 2.551 7.0925 -1.8945 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "67264E19-AB4A-CDAD-5A0F-E9931F3F029D";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 5.1020000000000003 0 0 0 0 1.637 0 0 0 0 0.24099999999999999 0
		 0 6.274 -2.0150000000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.5459752 -1.8945001 ;
	setAttr ".rs" 1143078847;
	setAttr ".lt" -type "double3" 0 0 3.949355 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5510003041028977 6.1928163051605223 -1.8945001149177552 ;
	setAttr ".cbx" -type "double3" 2.5510003041028977 6.3551825239658353 -1.8945001149177552 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "16752AD5-A942-F2C5-DA7E-D39C2BA89872";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  0 -0.44473061 0 0 -0.44473061
		 0 0 -0.44473061 0 0 -0.44473061 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "541A179E-0743-ADBD-3BCD-0BB1B764023F";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 5.1020000000000003 0 0 0 0 1.637 0 0 0 0 0.24099999999999999 0
		 0 2.274 -2.0150000000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.2739999 -1.8945 ;
	setAttr ".rs" 1903605387;
	setAttr ".lt" -type "double3" 0 0.68734 0 ;
	setAttr ".ls" -type "double3" 1 0.133856 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.551 1.4555 -1.8945 ;
	setAttr ".cbx" -type "double3" 2.551 3.0925000000000002 -1.8945 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "39F4D78C-9248-7B28-8079-67A2D2033C9F";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 5.1020000000000003 0 0 0 0 1.637 0 0 0 0 0.24099999999999999 0
		 0 2.274 -2.0150000000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.2739999 -1.8945 ;
	setAttr ".rs" 112610618;
	setAttr ".lt" -type "double3" 0 0 3.980315 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5510003041028977 1.4554999024271966 -1.8945001149177552 ;
	setAttr ".cbx" -type "double3" 2.5510003041028977 3.092499804854393 -1.8945001149177552 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "FFA73EB4-6342-3832-6D8D-59AFA0370FBF";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 5.1020000000000003 0 0 0 0 1.637 0 0 0 0 0.24099999999999999 0
		 0 2.274 -2.0150000000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.9613397 -1.8945003 ;
	setAttr ".rs" 1250784826;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5510003041028977 2.8517783316373824 -1.8945002298355105 ;
	setAttr ".cbx" -type "double3" 2.5510003041028977 3.0709008939266207 -1.8945002298355105 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "80D7F607-4841-482F-5703-9A879C48C1BA";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 5.1020000000000003 0 0 0 0 1.637 0 0 0 0 0.24099999999999999 0
		 0 2.274 -2.0150000000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.96134 -1.8945001 ;
	setAttr ".rs" 751780264;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5510003041028977 2.8517781364917756 -1.8945003447532656 ;
	setAttr ".cbx" -type "double3" 2.5510003041028977 3.0709008939266207 -1.8945003447532656 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "EC226327-CE49-3A60-0AA6-93BDEA6EF1EC";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 5.0049999999999999 0 0 0 0 0.155 0 0 0 0 4.1900000000000004 0
		 0 0.088999999999999996 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.1665 0 ;
	setAttr ".rs" 2096410474;
	setAttr ".ls" -type "double3" 0.067400399999999999 1 1 ;
	setAttr ".d" 6;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5025 0.16649999999999998 -2.095 ;
	setAttr ".cbx" -type "double3" 2.5025 0.16649999999999998 2.095 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "F7C6AFE6-4642-C7D0-E757-BA9156F4E9AC";
	setAttr ".ics" -type "componentList" 3 "f[1]" "f[15]" "f[27]";
	setAttr ".ix" -type "matrix" 5.0049999999999999 0 0 0 0 0.155 0 0 0 0 4.1900000000000004 0
		 0 0.088999999999999996 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.1665 0 ;
	setAttr ".rs" 25304454;
	setAttr ".lt" -type "double3" 0 0 1.938409 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3355846707522869 0.16650000923871994 -2.095 ;
	setAttr ".cbx" -type "double3" 1.3355846707522869 0.16650000923871994 2.095 ;
createNode polyCube -n "polyCube4";
	rename -uid "4F16363E-5A4F-FCDD-B6AC-ACBCEA6598B5";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "40E96419-3E4F-26C8-8D25-E4B1C4DD4D97";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.1 8.8240004 0.064999998 ;
	setAttr ".rs" 628488193;
	setAttr ".ls" -type "double3" 1 0.047266900000000001 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.1 6.6205 -1.9105 ;
	setAttr ".cbx" -type "double3" 0.1 11.0275 2.0405 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "65E99B74-0841-F8BC-AE6A-DCA3B1DFB9A7";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.1 8.8240004 0.064999998 ;
	setAttr ".rs" 1156459560;
	setAttr ".lt" -type "double3" 0 0 2.471839 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.1 6.6205010507106774 -1.9105 ;
	setAttr ".cbx" -type "double3" 0.1 11.027501050710677 2.0405 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "235F255A-D548-F53C-C9F1-31AA9D50FA2A";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.1 8.8240013 0.064999998 ;
	setAttr ".rs" 287061874;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.1 8.7198483040332793 -1.9105 ;
	setAttr ".cbx" -type "double3" 0.1 8.9281537973880774 2.0405 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "18F34CAB-B44C-6BEA-2037-71B8DB0E1981";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.1 9.3760414 0.064999998 ;
	setAttr ".rs" 1920903177;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.1 8.7198493547439568 -1.9105 ;
	setAttr ".cbx" -type "double3" 0.1 8.9281548480987549 2.0405 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "B23758C8-0243-0DDF-BF86-2CA2A4E80932";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.1 8.8240042 0.064999998 ;
	setAttr ".rs" 977820325;
	setAttr ".lt" -type "double3" 0 -1.866719 0 ;
	setAttr ".ls" -type "double3" 1 0.062847500000000001 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1 6.6205042028427119 -1.9105 ;
	setAttr ".cbx" -type "double3" -0.1 11.027504202842712 2.0405 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "F90B802A-E748-8957-237A-E89F37340647";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[8:19]" -type "float3"  0 0.12526412 0 0 0.12526412
		 0 0 0.12526412 0 0 0.12526412 0 0 0.12526412 0 0 0.12526412 0 0 0.12526412 0 0 0.12526412
		 0 0 0.12526412 0 0 0.12526412 0 0 0.12526412 0 0 0.12526412 0;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "ABA35F7E-7340-0143-4C93-71ACA01F73A6";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.1 8.8240042 0.064999998 ;
	setAttr ".rs" 97072299;
	setAttr ".lt" -type "double3" 0 0 2.379847 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1 6.6205047281980516 -1.9105 ;
	setAttr ".cbx" -type "double3" -0.1 11.02750525355339 2.0405 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "8067B0FF-C544-B527-80B1-F3BECC262D7C";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.1 6.9572854 0.064999998 ;
	setAttr ".rs" 2099896357;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1 6.8188006262779233 -1.9105 ;
	setAttr ".cbx" -type "double3" -0.1 7.0957705878019333 2.0405 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "BA2EE61D-9A41-75CF-4E74-BA9408D81D6E";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.1 6.9572849 0.064999998 ;
	setAttr ".rs" 690747716;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1 6.8188016769886017 -1.9105 ;
	setAttr ".cbx" -type "double3" -0.1 7.0957716385126108 2.0405 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "E2E174F4-0B42-14B9-3957-6CBB44A48C4D";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.1 9.0616407 0.064999998 ;
	setAttr ".rs" 1719202156;
	setAttr ".ls" -type "double3" 1 0.398595 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1 7.0957721638679505 -1.9105 ;
	setAttr ".cbx" -type "double3" -0.1 11.027508405685424 2.0405 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "0EB736F3-E643-83ED-6AD3-1DB636F34988";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.1 9.0616407 0.064999998 ;
	setAttr ".rs" 1855773299;
	setAttr ".lt" -type "double3" 0 0 2.440334 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1 7.0957732145786281 -1.9105 ;
	setAttr ".cbx" -type "double3" -0.1 11.027509456396103 2.0405 ;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "FC3EC0E7-1342-1A21-F30F-2B9F8E12F65C";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.1 9.0616417 0.064999998 ;
	setAttr ".rs" 1538233665;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1 8.2780559852123261 -1.9105 ;
	setAttr ".cbx" -type "double3" -0.1 9.8452266857624053 2.0405 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "4012E4DF-2248-451A-2D3F-389D96A17E8E";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 0.20000000000000001 0 0 0 0 4.407 0 0 0 0 3.9510000000000001 0
		 0 8.8239999999999998 0.065000000000000002 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.1 9.0616417 0.064999998 ;
	setAttr ".rs" 1122181412;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1 8.2780570359230037 -1.9105 ;
	setAttr ".cbx" -type "double3" -0.1 9.8452277364730829 2.0405 ;
createNode polyCube -n "polyCube5";
	rename -uid "2EB49D8C-9645-2C05-CF4F-D1B9F4C7EE38";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube6";
	rename -uid "042955B6-F84F-4F67-96DE-A7BFE0831525";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "ED6942FE-C049-021B-1E40-A9A3E4DB955A";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.65900000000000003 0 -0 0 -0 0.89193435335718452 -0.23744917203751481 0
		 0 0.025725804121074194 0.096634274469900805 0 -0.55500000000000005 3.5409999999999999 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.55500001 3.5281372 -0.048317138 ;
	setAttr ".rs" 1873647515;
	setAttr ".ls" -type "double3" 0.410156 0.063200400000000004 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.88450000000000006 3.0821699212608706 -0.16704172325370781 ;
	setAttr ".cbx" -type "double3" -0.22550000000000003 3.974104274618055 0.070407448783807003 ;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "DEA0AB25-5B47-7987-2D21-368278538463";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.65900000000000003 0 -0 0 -0 0.89193435335718452 -0.23744917203751481 0
		 0 0.025725804121074194 0.096634274469900805 0 -0.55500000000000005 3.5409999999999999 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.55500001 3.5281372 -0.048317138 ;
	setAttr ".rs" 1260403179;
	setAttr ".lt" -type "double3" 0 0.400023 0.273334 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.88450000000000006 3.0821698967268318 -0.16704181541133345 ;
	setAttr ".cbx" -type "double3" -0.22550001963973049 3.9741042500840162 0.070407356626181361 ;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "9CF4C45D-7040-21AC-67F7-D8B45BCE6DA7";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.65900000000000003 0 -0 0 -0 0.89193435335718452 -0.23744917203751481 0
		 0 0.025725804121074194 0.096634274469900805 0 -0.55500000000000005 3.5409999999999999 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.55500001 3.528137 -0.048317295 ;
	setAttr ".rs" 1389612596;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.69014640581607822 3.4999517120125612 -0.055820715024268476 ;
	setAttr ".cbx" -type "double3" -0.41985363346338278 3.5563221730764889 -0.040813871463840704 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "09F50B4F-D349-3F4B-A51D-C39CF2159CEB";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.65900000000000003 0 -0 0 -0 0.89193435335718452 -0.23744917203751481 0
		 0 0.025725804121074194 0.096634274469900805 0 -0.55500000000000005 3.5409999999999999 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.55500007 3.5281372 -0.048317257 ;
	setAttr ".rs" 761170964;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.69014640581607822 3.4999516874785224 -0.055820807181894125 ;
	setAttr ".cbx" -type "double3" -0.41985363346338278 3.5563221485424501 -0.040813963621466352 ;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	rename -uid "052D5346-2F45-1CFF-4C81-ADB55710E5A8";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.65900000000000003 0 -0 0 -0 0.89193435335718452 -0.23744917203751481 0
		 0 0.025725804121074194 0.096634274469900805 0 -0.55500000000000005 3.5409999999999999 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.55500001 3.5538628 0.048316814 ;
	setAttr ".rs" 2032958277;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.88450000000000006 3.1078956517798288 -0.070407817414309598 ;
	setAttr ".cbx" -type "double3" -0.22550003927946094 3.9998299806029745 0.16704144678083088 ;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	rename -uid "DE2E5433-F044-531C-C919-7888CB05E87B";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.65900000000000003 0 -0 0 -0 0.89193435335718452 -0.23744917203751481 0
		 0 0.025725804121074194 0.096634274469900805 0 -0.55500000000000005 3.5409999999999999 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.55500001 3.5538628 0.048316814 ;
	setAttr ".rs" 2020694460;
	setAttr ".lt" -type "double3" 0 0 -0.040585700000000002 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.88450000000000006 3.1078956517798288 -0.07040790957193524 ;
	setAttr ".cbx" -type "double3" -0.22550003927946094 3.9998299560689361 0.16704144678083088 ;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	rename -uid "FF1EEB39-0847-2B1F-17B6-C6BD7DABFF40";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.65900000000000003 0 -0 0 -0 0.89193435335718452 -0.23744917203751481 0
		 0 0.025725804121074194 0.096634274469900805 0 -0.55500000000000005 3.5409999999999999 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.55500001 3.5538628 0.048316721 ;
	setAttr ".rs" 2076667611;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.88450000000000006 3.1078956517798288 -0.070408001729560882 ;
	setAttr ".cbx" -type "double3" -0.22550003927946094 3.9998299315348973 0.16704144678083088 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "1E7FCD88-0A41-5E7E-61E6-93BA0B3D5A1E";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0.104515 0.10451504 -3.0490241e-08 ;
	setAttr ".tk[1]" -type "float3" -0.10451499 0.10451504 -3.0490241e-08 ;
	setAttr ".tk[2]" -type "float3" 0.104515 -0.10451496 5.6754936e-07 ;
	setAttr ".tk[3]" -type "float3" -0.10451499 -0.10451496 5.6754936e-07 ;
	setAttr ".tk[4]" -type "float3" 0.022509551 -0.022509543 0.045019098 ;
	setAttr ".tk[5]" -type "float3" -0.022509549 -0.022509543 0.045019098 ;
	setAttr ".tk[6]" -type "float3" 0.022509551 0.022509539 0.045019224 ;
	setAttr ".tk[7]" -type "float3" -0.022509549 0.022509539 0.045019224 ;
	setAttr ".tk[24]" -type "float3" 0.104515 0.10451504 -3.0490241e-08 ;
	setAttr ".tk[25]" -type "float3" -0.10451499 0.10451504 -3.0490241e-08 ;
	setAttr ".tk[26]" -type "float3" -0.10451499 -0.10451496 5.6754936e-07 ;
	setAttr ".tk[27]" -type "float3" 0.104515 -0.10451496 5.6754936e-07 ;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	rename -uid "D021AF52-684F-FEA6-6E45-A7AF10A35FD9";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.65900000000000003 0 -0 0 -0 0.89193435335718452 -0.23744917203751481 0
		 0 0.025725804121074194 0.096634274469900805 0 -0.55500000000000005 3.5409999999999999 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.55500001 3.5538628 0.048316769 ;
	setAttr ".rs" 30192849;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.88450000000000006 3.1078956517798288 -0.070408093887186524 ;
	setAttr ".cbx" -type "double3" -0.22550003927946094 3.9998299070008585 0.16704144678083088 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "AAF7708C-DD40-BCD2-B146-B4AB673303AB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1104\n            -height 629\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n"
		+ "                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1104\\n    -height 629\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1104\\n    -height 629\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "862601CF-034D-2B30-B52F-0AA7B41F627B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyMirror1.out" "Side_ShelfShape.i";
connectAttr "polyExtrudeFace8.out" "Base_ShelfShape.i";
connectAttr "polyExtrudeFace6.out" "Back_ShelfShape.i";
connectAttr "polyExtrudeFace2.out" "Back_Shelf1Shape.i";
connectAttr "polyExtrudeFace20.out" "Middle_DividerShape.i";
connectAttr "polyExtrudeFace28.out" "Picture_FrameShape.i";
connectAttr "polyCube5.out" "BookShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyMirror1.ip";
connectAttr "Side_Shelf.sp" "polyMirror1.sp";
connectAttr "Side_ShelfShape.wm" "polyMirror1.mp";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "Back_Shelf1Shape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "Back_Shelf1Shape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyCube3.out" "polyExtrudeFace3.ip";
connectAttr "Back_ShelfShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "Back_ShelfShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "Back_ShelfShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "Back_ShelfShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyCube2.out" "polyExtrudeFace7.ip";
connectAttr "Base_ShelfShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "Base_ShelfShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyCube4.out" "polyExtrudeFace9.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyExtrudeFace10.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace13.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyExtrudeFace16.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace16.out" "polyExtrudeFace17.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace17.out" "polyExtrudeFace18.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace18.out" "polyExtrudeFace19.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace19.out" "polyExtrudeFace20.ip";
connectAttr "Middle_DividerShape.wm" "polyExtrudeFace20.mp";
connectAttr "polyCube6.out" "polyExtrudeFace21.ip";
connectAttr "Picture_FrameShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace21.out" "polyExtrudeFace22.ip";
connectAttr "Picture_FrameShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace22.out" "polyExtrudeFace23.ip";
connectAttr "Picture_FrameShape.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace23.out" "polyExtrudeFace24.ip";
connectAttr "Picture_FrameShape.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace24.out" "polyExtrudeFace25.ip";
connectAttr "Picture_FrameShape.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace25.out" "polyExtrudeFace26.ip";
connectAttr "Picture_FrameShape.wm" "polyExtrudeFace26.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace27.ip";
connectAttr "Picture_FrameShape.wm" "polyExtrudeFace27.mp";
connectAttr "polyExtrudeFace26.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace27.out" "polyExtrudeFace28.ip";
connectAttr "Picture_FrameShape.wm" "polyExtrudeFace28.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Side_ShelfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Base_ShelfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Back_ShelfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Back_Shelf1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Back_Shelf2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Middle_DividerShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BookShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Picture_FrameShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Picture_Frame1Shape.iog" ":initialShadingGroup.dsm" -na;
// End of MEL Script.ma
