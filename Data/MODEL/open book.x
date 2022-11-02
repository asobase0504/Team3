xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 118;
 75.85926;2.61768;-53.50380;,
 75.85926;2.61768;53.50380;,
 75.85926;-0.51357;53.50380;,
 75.85926;-0.51357;-53.50380;,
 -75.85926;0.25827;53.50380;,
 -75.85926;0.25827;-53.50380;,
 -75.85926;-2.61768;-53.50380;,
 -75.85926;-2.61768;53.50380;,
 6.57534;0.58473;53.50380;,
 75.85926;2.61768;-53.50380;,
 6.57534;0.58473;-53.50380;,
 6.57534;0.58473;53.50380;,
 8.46846;-2.61768;53.50380;,
 75.85926;-0.51357;53.50380;,
 75.85926;2.61768;53.50380;,
 6.57534;0.58473;-53.50380;,
 75.85926;2.61768;-53.50380;,
 75.85926;-0.51357;-53.50380;,
 8.46846;-2.61768;-53.50380;,
 8.46846;-2.61768;53.50380;,
 8.46846;-2.61768;-53.50380;,
 75.85926;-0.51357;-53.50380;,
 -7.10136;0.58473;53.50380;,
 -7.10136;0.58473;-53.50380;,
 -75.85926;0.25827;-53.50380;,
 -7.10136;0.58473;53.50380;,
 -75.85926;0.25827;53.50380;,
 -75.85926;-2.61768;53.50380;,
 -8.99451;-2.61768;53.50380;,
 -7.10136;0.58473;-53.50380;,
 -8.99451;-2.61768;-53.50380;,
 -75.85926;-2.61768;-53.50380;,
 -75.85926;0.25827;-53.50380;,
 -8.99451;-2.61768;53.50380;,
 -75.85926;-2.61768;-53.50380;,
 -8.99451;-2.61768;-53.50380;,
 -6.00600;-3.68493;-53.50380;,
 -6.00600;-3.68493;53.50380;,
 5.47998;-3.68493;-53.50380;,
 5.47998;-3.68493;53.50380;,
 2.26155;4.82916;-48.18336;,
 2.26155;4.82916;48.18336;,
 3.91365;-0.44517;48.18336;,
 3.91365;-0.44517;-48.18336;,
 -71.95965;9.81996;48.18336;,
 -71.95965;9.81996;-48.18336;,
 -71.95965;-0.44517;-48.18336;,
 -71.95965;-0.44517;48.18336;,
 -2.36586;6.64344;-48.18336;,
 2.26155;4.82916;-48.18336;,
 3.91365;-0.44517;-48.18336;,
 3.71664;-0.44517;-48.18336;,
 -71.95965;-0.44517;-48.18336;,
 -71.95965;9.81996;-48.18336;,
 -2.36586;6.64344;-48.18336;,
 -71.95965;9.81996;-48.18336;,
 -2.36586;6.64344;48.18336;,
 2.26155;4.82916;-48.18336;,
 3.71664;-0.44517;-48.18336;,
 3.91365;-0.44517;-48.18336;,
 3.71664;-0.44517;48.18336;,
 -71.95965;-0.44517;-48.18336;,
 -2.36586;6.64344;48.18336;,
 -71.95965;9.81996;48.18336;,
 -71.95965;-0.44517;48.18336;,
 3.71664;-0.44517;48.18336;,
 3.91365;-0.44517;48.18336;,
 2.26155;4.82916;48.18336;,
 2.38128;2.14908;-48.18336;,
 72.81642;4.93260;-48.18336;,
 72.88941;2.52951;-48.18336;,
 2.45430;-0.25401;-48.18336;,
 72.81642;4.93260;-48.18336;,
 72.81642;4.93260;48.18336;,
 72.88941;2.52951;48.18336;,
 72.88941;2.52951;-48.18336;,
 72.81642;4.93260;48.18336;,
 2.38128;2.14908;48.18336;,
 2.45430;-0.25401;48.18336;,
 72.88941;2.52951;48.18336;,
 2.38128;2.14908;48.18336;,
 2.38128;2.14908;-48.18336;,
 2.45430;-0.25401;-48.18336;,
 2.45430;-0.25401;48.18336;,
 72.81642;4.93260;-48.18336;,
 2.38128;2.14908;-48.18336;,
 2.45430;-0.25401;-48.18336;,
 72.88941;2.52951;-48.18336;,
 -52.12689;13.01799;47.70507;,
 -52.12689;13.01799;-47.70507;,
 -70.90845;10.40028;-47.70507;,
 -70.90845;10.40028;47.70507;,
 -33.62004;12.11862;47.70507;,
 -33.62004;12.11862;-47.70507;,
 -12.34884;9.52398;47.70507;,
 -12.34884;9.52398;-47.70507;,
 2.31627;5.44665;47.70507;,
 2.31627;5.44665;-47.70507;,
 3.15192;3.28323;-47.70507;,
 3.15192;3.28323;47.70507;,
 2.90973;-0.17091;47.70507;,
 2.90973;-0.17091;-47.70507;,
 -70.90845;10.40028;-47.70507;,
 -50.59125;18.91932;47.70507;,
 -50.59125;18.91932;-47.70507;,
 -69.56631;17.52756;-47.70507;,
 -69.56631;17.52756;47.70507;,
 -32.24583;16.26576;47.70507;,
 -32.24583;16.26576;-47.70507;,
 -11.31822;11.40987;47.70507;,
 -11.31822;11.40987;-47.70507;,
 2.87835;5.41437;47.70507;,
 2.87835;5.41437;-47.70507;,
 3.49182;2.83848;-47.70507;,
 3.49182;2.83848;47.70507;,
 2.90094;-1.13679;47.70507;,
 2.90094;-1.13679;-47.70507;,
 -69.56631;17.52756;-47.70507;;
 
 54;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,1,9,10;,
 4;11,12,13,14;,
 4;15,16,17,18;,
 4;19,20,21,2;,
 4;22,8,10,23;,
 4;22,23,24,4;,
 4;25,26,27,28;,
 4;25,28,12,11;,
 4;29,15,18,30;,
 4;29,30,31,32;,
 4;33,7,34,35;,
 4;36,37,33,35;,
 4;38,36,35,20;,
 4;39,38,20,19;,
 4;37,39,19,33;,
 4;37,36,38,39;,
 4;40,41,42,43;,
 4;44,45,46,47;,
 4;48,49,50,51;,
 4;48,51,52,53;,
 4;54,55,44,56;,
 4;54,56,41,57;,
 4;58,59,42,60;,
 4;58,60,47,61;,
 4;62,63,64,65;,
 4;62,65,66,67;,
 4;68,69,70,71;,
 4;72,73,74,75;,
 4;76,77,78,79;,
 4;80,81,82,83;,
 4;80,73,84,85;,
 4;86,87,74,83;,
 4;88,89,90,91;,
 4;92,93,89,88;,
 4;94,95,93,92;,
 4;96,97,95,94;,
 4;98,97,96,99;,
 4;98,99,100,101;,
 4;92,88,89,93;,
 4;92,93,95,94;,
 4;96,94,95,97;,
 4;91,102,89,88;,
 4;103,104,105,106;,
 4;107,108,104,103;,
 4;109,110,108,107;,
 4;111,112,110,109;,
 4;113,112,111,114;,
 4;113,114,115,116;,
 4;107,103,104,108;,
 4;107,108,110,109;,
 4;111,109,110,112;,
 4;106,117,104,103;;
 
 MeshMaterialList {
  2;
  54;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.050400;0.310400;0.235200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.793600;0.800000;0.715200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  45;
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  -0.014666;0.999893;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;-1.000000;,
  -0.002374;0.999997;0.000000;,
  0.170663;-0.985329;-0.000000;,
  -0.170661;-0.985330;0.000000;,
  0.731452;0.681893;0.000000;,
  0.954280;0.298913;0.000000;,
  0.208101;0.978107;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.999539;0.030360;0.000000;,
  -0.029330;0.999570;0.000000;,
  0.186019;-0.982546;-0.000000;,
  0.031207;-0.999513;-0.000000;,
  -0.004748;0.999989;0.000000;,
  0.045596;0.998960;0.000000;,
  -0.999539;-0.030372;0.000000;,
  -0.039488;0.999220;0.000000;,
  0.039488;-0.999220;-0.000000;,
  -0.138042;0.990426;0.000000;,
  0.997551;-0.069944;-0.000000;,
  -0.044948;0.998989;0.000000;,
  0.084867;0.996392;0.000000;,
  0.195022;0.980799;0.000000;,
  0.671835;0.740700;0.000000;,
  0.988875;0.148750;0.000000;,
  -0.084867;-0.996392;0.000000;,
  0.044948;-0.998989;-0.000000;,
  -0.195022;-0.980799;0.000000;,
  -0.267869;-0.963455;0.000000;,
  0.138042;-0.990426;-0.000000;,
  -0.073150;0.997321;0.000000;,
  0.989133;-0.147024;-0.000000;,
  0.035209;0.999380;0.000000;,
  0.184755;0.982785;0.000000;,
  0.308674;0.951168;0.000000;,
  0.763229;0.646128;0.000000;,
  0.999070;0.043109;0.000000;,
  -0.184755;-0.982785;0.000000;,
  -0.035209;-0.999380;0.000000;,
  -0.308674;-0.951168;0.000000;,
  -0.389049;-0.921217;0.000000;,
  0.073150;-0.997321;-0.000000;;
  54;
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;2,13,13,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;14,14,15,15;,
  4;5,2,2,5;,
  4;5,5,16,16;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;4,4,4,4;,
  4;7,11,11,7;,
  4;7,7,7,7;,
  4;4,4,4,4;,
  4;6,6,14,14;,
  4;3,3,3,3;,
  4;7,7,6,6;,
  4;8,8,9,9;,
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;4,4,4,4;,
  4;10,17,17,10;,
  4;10,10,8,8;,
  4;11,11,11,11;,
  4;11,11,11,11;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;12,12,12,12;,
  4;3,3,3,3;,
  4;18,18,18,18;,
  4;19,19,19,19;,
  4;20,20,20,20;,
  4;23,23,21,21;,
  4;24,24,23,23;,
  4;25,25,24,24;,
  4;26,26,25,25;,
  4;27,26,26,27;,
  4;27,27,22,22;,
  4;28,29,29,28;,
  4;28,28,30,30;,
  4;31,30,30,31;,
  4;32,32,29,29;,
  4;35,35,33,33;,
  4;36,36,35,35;,
  4;37,37,36,36;,
  4;38,38,37,37;,
  4;39,38,38,39;,
  4;39,39,34,34;,
  4;40,41,41,40;,
  4;40,40,42,42;,
  4;43,42,42,43;,
  4;44,44,41,41;;
 }
 MeshTextureCoords {
  118;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.543340;0.000000;,
  1.000000;1.000000;,
  0.543340;1.000000;,
  0.456660;0.000000;,
  0.456660;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.543340;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.543340;1.000000;,
  0.543340;1.000000;,
  0.543340;0.000000;,
  1.000000;0.000000;,
  0.453190;0.000000;,
  0.453190;1.000000;,
  0.000000;1.000000;,
  0.546810;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.546810;1.000000;,
  0.453190;0.000000;,
  0.453190;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.453190;1.000000;,
  0.000000;0.000000;,
  0.453190;0.000000;,
  0.453190;0.000000;,
  0.453190;1.000000;,
  0.543340;0.000000;,
  0.543340;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.963480;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.963480;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.963480;1.000000;,
  0.000000;1.000000;,
  0.963480;0.000000;,
  1.000000;1.000000;,
  0.963480;0.000000;,
  1.000000;0.000000;,
  0.963480;1.000000;,
  0.000000;0.000000;,
  0.036520;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.036520;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.257780;0.000000;,
  0.257780;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.475720;0.000000;,
  0.475720;1.000000;,
  0.702660;0.000000;,
  0.702660;1.000000;,
  0.952190;0.000000;,
  0.952190;1.000000;,
  0.986230;1.000000;,
  0.986230;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.257780;0.000000;,
  0.257780;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.475720;0.000000;,
  0.475720;1.000000;,
  0.702660;0.000000;,
  0.702660;1.000000;,
  0.952190;0.000000;,
  0.952190;1.000000;,
  0.986230;1.000000;,
  0.986230;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;;
 }
}
