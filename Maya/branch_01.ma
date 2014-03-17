//Maya ASCII 2013 scene
//Name: branch_01.ma
//Last modified: Sun, Mar 16, 2014 02:58:32 PM
//Codeset: 1252
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220241-825136";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 51.148293268687965 -7.4435018579424117 406.13074803929345 ;
	setAttr ".r" -type "double3" 3.2781533747147744 2.5999999999943584 1.2436844587993877e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 378.7567897888531;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 200.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 200.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -39.892170154405058 3.4070875691554825 200.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 200.1;
	setAttr ".ow" 515.84949598797323;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 200.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 200.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "branch_01_part1";
createNode mesh -n "branch_01_partShape1" -p "branch_01_part1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.9375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0.875 1 0.875 1
		 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  100 -12.5 -12.5 100 -12.5 
		-12.5 100 12.5 12.5 100 12.5 12.5;
	setAttr -s 4 ".vt[0:3]"  -100 0 12.5 100 0 12.5 -100 0 -12.5 100 0 -12.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "branch_01_floor";
	setAttr ".rp" -type "double3" 103.81921794703784 0 0 ;
	setAttr ".sp" -type "double3" 103.81921794703784 0 0 ;
createNode mesh -n "branch_01_floorShape" -p "branch_01_floor";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.055999998
		 0.1 0.055999998 0.2 0.055999998 0.30000001 0.055999998 0.40000001 0.055999998 0.5
		 0.055999998 0.60000002 0.055999998 0.69999999 0.055999998 0.80000001 0.055999998
		 0.90000004 0.055999998 1 0.055999998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  103.81922 8.3262663 -3.5609119 
		103.81922 8.3262663 -3.5609119 103.81922 6.5391383 -3.5609119 103.81922 7.1646328 
		-3.5609119 103.81922 3.50102 -3.5609119 103.81922 4.0371585 -3.5609119 103.81922 
		3.50102 -3.5609119 103.81922 -0.78808331 -3.5609119 103.81922 -0.8774392 -3.5609119 
		103.81922 1.3564686 -3.5609119 99.083336 1.3564687 -3.5609119 103.81922 8.3262663 
		3.5609119 103.81922 8.3262663 3.5609119 103.81922 6.5391383 3.5609119 103.81922 7.1646328 
		3.5609119 103.81922 3.50102 3.5609119 103.81922 4.0371585 3.5609119 103.81922 3.50102 
		3.5609119 103.81922 -0.78808331 3.5609119 103.81922 -0.8774392 3.5609119 103.81922 
		1.3564686 3.5609119 99.083336 1.3564687 3.5609119;
	setAttr -s 22 ".vt[0:21]"  -100 -1.2434498e-015 5.5999999 -80 -1.2434498e-015 5.5999999
		 -60 -1.2434498e-015 5.5999999 -40 -1.2434498e-015 5.5999999 -20 -1.2434498e-015 5.5999999
		 0 -1.2434498e-015 5.5999999 20 -1.2434498e-015 5.5999999 40 -1.2434498e-015 5.5999999
		 60 -1.2434498e-015 5.5999999 80 -1.2434498e-015 5.5999999 100 -1.2434498e-015 5.5999999
		 -100 1.2434498e-015 -5.5999999 -80 1.2434498e-015 -5.5999999 -60 1.2434498e-015 -5.5999999
		 -40 1.2434498e-015 -5.5999999 -20 1.2434498e-015 -5.5999999 0 1.2434498e-015 -5.5999999
		 20 1.2434498e-015 -5.5999999 40 1.2434498e-015 -5.5999999 60 1.2434498e-015 -5.5999999
		 80 1.2434498e-015 -5.5999999 100 1.2434498e-015 -5.5999999;
	setAttr -s 31 ".ed[0:30]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0
		 3 14 1 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1
		 10 21 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 3 -22 -2
		mu 0 4 0 1 12 11
		f 4 2 5 -23 -4
		mu 0 4 1 2 13 12
		f 4 4 7 -24 -6
		mu 0 4 2 3 14 13
		f 4 6 9 -25 -8
		mu 0 4 3 4 15 14
		f 4 8 11 -26 -10
		mu 0 4 4 5 16 15
		f 4 10 13 -27 -12
		mu 0 4 5 6 17 16
		f 4 12 15 -28 -14
		mu 0 4 6 7 18 17
		f 4 14 17 -29 -16
		mu 0 4 7 8 19 18
		f 4 16 19 -30 -18
		mu 0 4 8 9 20 19
		f 4 18 20 -31 -20
		mu 0 4 9 10 21 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "branch_01_part2";
createNode mesh -n "branch_01_partShape2" -p "branch_01_part2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0.375 1 0.375 1
		 0.625 0 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  125 -100 -12.5 -75 100 -12.5 
		75 -100 12.5 -125 100 12.5;
	setAttr -s 4 ".vt[0:3]"  -100 0 12.5 100 0 12.5 -100 0 -12.5 100 0 -12.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "branch_01_part2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.0625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -100 -2.7755576e-015 12.5 100 -2.7755576e-015 12.5
		 -100 2.7755576e-015 -12.5 100 2.7755576e-015 -12.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf_03";
	setAttr ".rp" -type "double3" 1.4210854715202004e-014 -2.3194641895793425e-014 
		-1.2486231365967375e-014 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-014 -2.3194641895793425e-014 -1.2486231365967375e-014 ;
createNode mesh -n "leaf_0Shape3" -p "leaf_03";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.62486142 0 0.75002521
		 0 0.75002521 0.125 0.62486142 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -37.488659 -12.5 -12.5 -37.488659 
		12.5 12.5 -37.488659 12.5 12.5 -37.488659 -12.5 -12.5;
	setAttr -s 4 ".vt[0:3]"  50.0050392151 0 12.5 50.0050392151 0 -12.5
		 24.97227669 -1.6940659e-021 -12.5 24.97227669 0 12.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 3 0 0 2 1 0 3 2 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 0 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf_02";
	setAttr ".rp" -type "double3" 1.4183099139586375e-014 3.8020244678682882e-017 2.0146149254854655e-017 ;
	setAttr ".sp" -type "double3" 1.4183099139586375e-014 3.8020244678682882e-017 2.0146149254854655e-017 ;
createNode mesh -n "leaf_0Shape2" -p "leaf_02";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.37453377 0 0.62486142
		 0 0.62486142 0.125 0.37453377 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.060486794 -12.5 -12.5 0.060486794 
		12.5 12.5 0.060486794 12.5 12.5 0.060486794 -12.5 -12.5;
	setAttr -s 4 ".vt[0:3]"  24.97227669 0 12.5 24.97227669 -1.6940659e-021 -12.5
		 -25.093250275 1.6940659e-021 -12.5 -25.093250275 0 12.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 3 0 0 2 1 0 3 2 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 0 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf_01";
	setAttr ".rp" -type "double3" 0 1.7724180997549142e-014 1.2507995559909722e-014 ;
	setAttr ".sp" -type "double3" 0 1.7724180997549142e-014 1.2507995559909722e-014 ;
createNode mesh -n "leaf_0Shape1" -p "leaf_01";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.24992622 0 0.37453377
		 0 0.37453377 0.125 0.24992622 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  37.554001 -12.5 -12.5 37.554001 
		12.5 12.5 37.554001 12.5 12.5 37.554001 -12.5 -12.5;
	setAttr -s 4 ".vt[0:3]"  -25.093250275 0 12.5 -25.093250275 1.6940659e-021 -12.5
		 -50.014755249 -1.6940659e-021 -12.5 -50.014755249 -1.6940659e-021 12.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 3 0 0 2 1 0 3 2 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 0 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "smallBranch_02";
	setAttr ".rp" -type "double3" 1.4210854715202004e-014 -1.5231100123586988e-014 
		-2.4980857251958508e-014 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-014 -1.5231100123586988e-014 -2.4980857251958508e-014 ;
createNode mesh -n "smallBranch_0Shape2" -p "smallBranch_02";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.75002521 0 1 0
		 1 0.125 0.75002521 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -75.002518 -12.5 -12.5 -75.002518 
		12.5 12.5 -75.002518 12.5 12.5 -75.002518 -12.5 -12.5;
	setAttr -s 4 ".vt[0:3]"  100 0 12.5 100 0 -12.5 50.0050392151 0 -12.5
		 50.0050392151 0 12.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 3 0 0 2 1 0 3 2 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 0 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SmallBranch_01";
	setAttr ".rp" -type "double3" 0 3.8172275581119299e-014 2.4982475296646013e-014 ;
	setAttr ".sp" -type "double3" 0 3.8172275581119299e-014 2.4982475296646013e-014 ;
createNode mesh -n "SmallBranch_0Shape1" -p "SmallBranch_01";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 0.24992622 0
		 0.24992622 0.125 0 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  75.007378 -12.5 -12.5 75.007378 
		12.5 12.5 75.007378 -12.5 -12.5 75.007378 12.5 12.5;
	setAttr -s 4 ".vt[0:3]"  -100 0 12.5 -100 0 -12.5 -50.014755249 -1.6940659e-021 12.5
		 -50.014755249 -1.6940659e-021 -12.5;
	setAttr -s 4 ".ed[0:3]"  0 2 0 0 1 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo1";
createNode place2dTexture -n "place2dTexture1";
	setAttr ".wu" no;
	setAttr ".wv" no;
createNode displayLayer -n "layer1";
	setAttr ".do" 1;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode psdFileTex -n "psdFileTex1";
	setAttr ".ftn" -type "string" "P:/jumpy_Squirrel//Assets/Textures/tree_01.psd";
	setAttr ".ft" 0;
	setAttr ".alp" -type "string" "Transparency";
createNode place2dTexture -n "place2dTexture2";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -av -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -av -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcr";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcb";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".gsn";
	setAttr -k on ".gsv";
	setAttr -s 4 ".sol";
connectAttr "layer1.di" "branch_01_part1.do";
connectAttr "layer1.di" "branch_01_part2.do";
connectAttr "groupId12.id" "leaf_0Shape3.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "leaf_0Shape3.iog.og[0].gco";
connectAttr "groupId13.id" "leaf_0Shape2.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "leaf_0Shape2.iog.og[0].gco";
connectAttr "groupId15.id" "leaf_0Shape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "leaf_0Shape1.iog.og[0].gco";
connectAttr "groupId11.id" "smallBranch_0Shape2.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "smallBranch_0Shape2.iog.og[0].gco";
connectAttr "groupId14.id" "SmallBranch_0Shape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "SmallBranch_0Shape1.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "psdFileTex1.oc" "lambert2.c";
connectAttr "psdFileTex1.ot" "lambert2.it";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "branch_01_partShape1.iog" "lambert2SG.dsm" -na;
connectAttr "branch_01_partShape2.iog" "lambert2SG.dsm" -na;
connectAttr "smallBranch_0Shape2.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "leaf_0Shape3.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "leaf_0Shape2.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "SmallBranch_0Shape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "leaf_0Shape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId11.msg" "lambert2SG.gn" -na;
connectAttr "groupId12.msg" "lambert2SG.gn" -na;
connectAttr "groupId13.msg" "lambert2SG.gn" -na;
connectAttr "groupId14.msg" "lambert2SG.gn" -na;
connectAttr "groupId15.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "psdFileTex1.msg" "materialInfo1.t" -na;
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "place2dTexture2.c" "psdFileTex1.c";
connectAttr "place2dTexture2.tf" "psdFileTex1.tf";
connectAttr "place2dTexture2.rf" "psdFileTex1.rf";
connectAttr "place2dTexture2.mu" "psdFileTex1.mu";
connectAttr "place2dTexture2.mv" "psdFileTex1.mv";
connectAttr "place2dTexture2.s" "psdFileTex1.s";
connectAttr "place2dTexture2.wu" "psdFileTex1.wu";
connectAttr "place2dTexture2.wv" "psdFileTex1.wv";
connectAttr "place2dTexture2.re" "psdFileTex1.re";
connectAttr "place2dTexture2.of" "psdFileTex1.of";
connectAttr "place2dTexture2.r" "psdFileTex1.ro";
connectAttr "place2dTexture2.n" "psdFileTex1.n";
connectAttr "place2dTexture2.vt1" "psdFileTex1.vt1";
connectAttr "place2dTexture2.vt2" "psdFileTex1.vt2";
connectAttr "place2dTexture2.vt3" "psdFileTex1.vt3";
connectAttr "place2dTexture2.vc1" "psdFileTex1.vc1";
connectAttr "place2dTexture2.o" "psdFileTex1.uv";
connectAttr "place2dTexture2.ofs" "psdFileTex1.fs";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "branch_01_floorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "psdFileTex1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of branch_01.ma
