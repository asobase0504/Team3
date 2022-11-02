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
 81;
 31.52763;38.85128;0.54117;,
 32.63409;38.84046;3.34763;,
 22.99398;61.92589;3.29915;,
 22.22797;61.12137;0.49440;,
 35.40099;38.84256;4.54973;,
 24.93890;63.89638;4.49712;,
 38.20745;38.85634;3.44330;,
 26.92338;65.87858;3.38655;,
 39.40953;38.87373;0.67646;,
 27.78495;66.71130;0.61800;,
 38.30301;38.88455;-2.13000;,
 27.01895;65.90682;-2.18675;,
 35.53615;38.88245;-3.33210;,
 25.07406;63.93634;-3.38471;,
 32.72969;38.86867;-2.22567;,
 23.08956;61.95411;-2.27414;,
 31.52763;38.85128;0.54117;,
 22.22797;61.12137;0.49440;,
 -0.14370;71.43366;2.95047;,
 -0.09252;70.29330;0.15803;,
 -0.17168;74.21484;4.11869;,
 -0.16006;77.00775;2.97839;,
 -0.11566;78.17629;0.19752;,
 -0.06448;77.03594;-2.59490;,
 -0.03650;74.25477;-3.76314;,
 -0.04812;71.46186;-2.62285;,
 -0.09252;70.29330;0.15803;,
 -23.22521;61.79426;2.50580;,
 -22.35882;60.99437;-0.27093;,
 -25.22126;63.75353;3.63612;,
 -27.17772;65.72449;2.45791;,
 -27.94852;66.55257;-0.33866;,
 -27.08214;65.75271;-3.11539;,
 -25.08607;63.79344;-4.24571;,
 -23.12962;61.82248;-3.06749;,
 -22.35882;60.99437;-0.27093;,
 -32.72969;38.65429;2.22567;,
 -31.52763;38.67169;-0.54117;,
 -35.53615;38.64051;3.33210;,
 -38.30301;38.63841;2.13000;,
 -39.40953;38.64923;-0.67646;,
 -38.20745;38.66662;-3.44330;,
 -35.40099;38.68041;-4.54973;,
 -32.63409;38.68250;-3.34763;,
 -31.52763;38.67169;-0.54117;,
 -23.08956;15.56884;2.27415;,
 -22.22796;16.40159;-0.49440;,
 -25.07406;13.58666;3.38472;,
 -27.01895;11.61612;2.18674;,
 -27.78494;10.81157;-0.61801;,
 -26.92336;11.64433;-3.38656;,
 -24.93888;13.62652;-4.49712;,
 -22.99398;15.59706;-3.29915;,
 -22.22796;16.40159;-0.49440;,
 0.04812;6.06106;2.62284;,
 0.09252;7.22959;-0.15803;,
 0.03650;3.26814;3.76314;,
 0.06447;0.48693;2.59490;,
 0.11565;-0.65336;-0.19753;,
 0.16006;0.51518;-2.97839;,
 0.17168;3.30806;-4.11870;,
 0.14370;6.08925;-2.95048;,
 0.09252;7.22959;-0.15803;,
 23.12962;15.70048;3.06750;,
 22.35882;16.52859;0.27093;,
 25.08607;13.72953;4.24571;,
 27.08214;11.77021;3.11538;,
 27.94852;10.97033;0.33865;,
 27.17772;11.79840;-2.45792;,
 25.22126;13.76939;-3.63612;,
 23.22521;15.72871;-2.50580;,
 22.35882;16.52859;0.27093;,
 32.63409;38.84046;3.34763;,
 31.52763;38.85128;0.54117;,
 35.40099;38.84256;4.54973;,
 38.20745;38.85634;3.44330;,
 39.40953;38.87373;0.67646;,
 38.30301;38.88455;-2.13000;,
 35.53615;38.88245;-3.33210;,
 32.72969;38.86867;-2.22567;,
 31.52763;38.85128;0.54117;;
 
 64;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;3,2,18,19;,
 4;2,5,20,18;,
 4;5,7,21,20;,
 4;7,9,22,21;,
 4;9,11,23,22;,
 4;11,13,24,23;,
 4;13,15,25,24;,
 4;15,17,26,25;,
 4;19,18,27,28;,
 4;18,20,29,27;,
 4;20,21,30,29;,
 4;21,22,31,30;,
 4;22,23,32,31;,
 4;23,24,33,32;,
 4;24,25,34,33;,
 4;25,26,35,34;,
 4;28,27,36,37;,
 4;27,29,38,36;,
 4;29,30,39,38;,
 4;30,31,40,39;,
 4;31,32,41,40;,
 4;32,33,42,41;,
 4;33,34,43,42;,
 4;34,35,44,43;,
 4;37,36,45,46;,
 4;36,38,47,45;,
 4;38,39,48,47;,
 4;39,40,49,48;,
 4;40,41,50,49;,
 4;41,42,51,50;,
 4;42,43,52,51;,
 4;43,44,53,52;,
 4;46,45,54,55;,
 4;45,47,56,54;,
 4;47,48,57,56;,
 4;48,49,58,57;,
 4;49,50,59,58;,
 4;50,51,60,59;,
 4;51,52,61,60;,
 4;52,53,62,61;,
 4;55,54,63,64;,
 4;54,56,65,63;,
 4;56,57,66,65;,
 4;57,58,67,66;,
 4;58,59,68,67;,
 4;59,60,69,68;,
 4;60,61,70,69;,
 4;61,62,71,70;,
 4;64,63,72,73;,
 4;63,65,74,72;,
 4;65,66,75,74;,
 4;66,67,76,75;,
 4;67,68,77,76;,
 4;68,69,78,77;,
 4;69,70,79,78;,
 4;70,71,80,79;;
 
 MeshMaterialList {
  1;
  64;
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
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  64;
  -0.999849;-0.002848;-0.017163;,
  -0.711032;-0.005610;0.703138;,
  -0.017147;-0.005061;0.999840;,
  0.686502;-0.001629;0.727126;,
  0.999849;0.002849;0.017161;,
  0.711031;0.005611;-0.703138;,
  0.017148;0.005061;-0.999840;,
  -0.686502;0.001630;-0.727127;,
  -0.704925;-0.709109;-0.015680;,
  -0.504917;-0.499196;0.704175;,
  -0.017147;-0.005061;0.999840;,
  0.480388;0.491957;0.726089;,
  0.704925;0.709109;0.015679;,
  0.504918;0.499198;-0.704173;,
  0.017149;0.005063;-0.999840;,
  -0.480387;-0.491955;-0.726091;,
  0.002934;-0.999983;-0.005011;,
  -0.010214;-0.702479;0.711632;,
  -0.017148;-0.005061;0.999840;,
  -0.014315;0.695241;0.718634;,
  -0.002934;0.999983;0.005012;,
  0.010214;0.702482;-0.711628;,
  0.017148;0.005064;-0.999840;,
  0.014316;-0.695238;-0.718637;,
  0.709074;-0.705081;0.008593;,
  0.483286;-0.496381;0.721138;,
  -0.017148;-0.005061;0.999840;,
  -0.507817;0.489141;0.709128;,
  -0.709074;0.705081;-0.008591;,
  -0.483288;0.496382;-0.721137;,
  0.017148;0.005062;-0.999840;,
  0.507816;-0.489141;-0.709129;,
  0.999849;0.002848;0.017164;,
  0.686501;-0.001629;0.727127;,
  -0.017148;-0.005061;0.999840;,
  -0.711031;-0.005610;0.703138;,
  -0.999849;-0.002848;-0.017160;,
  -0.686502;0.001630;-0.727126;,
  0.017148;0.005061;-0.999840;,
  0.711032;0.005610;-0.703138;,
  0.704925;0.709108;0.015680;,
  0.480388;0.491956;0.726090;,
  -0.017148;-0.005061;0.999840;,
  -0.504918;-0.499196;0.704174;,
  -0.704925;-0.709109;-0.015680;,
  -0.480388;-0.491957;-0.726090;,
  0.017147;0.005060;-0.999840;,
  0.504917;0.499195;-0.704175;,
  -0.002934;0.999983;0.005011;,
  -0.014316;0.695239;0.718636;,
  -0.017148;-0.005061;0.999840;,
  -0.010214;-0.702481;0.711629;,
  0.002934;-0.999983;-0.005013;,
  0.014315;-0.695241;-0.718634;,
  0.017148;0.005059;-0.999840;,
  0.010214;0.702478;-0.711632;,
  -0.709075;0.705081;-0.008593;,
  -0.507818;0.489141;0.709128;,
  -0.017148;-0.005061;0.999840;,
  0.483288;-0.496382;0.721137;,
  0.709074;-0.705081;0.008591;,
  0.507817;-0.489142;-0.709128;,
  0.017148;0.005061;-0.999840;,
  -0.483287;0.496380;-0.721138;;
  64;
  4;0,1,9,8;,
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,0,8,15;,
  4;8,9,17,16;,
  4;9,10,18,17;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,8,16,23;,
  4;16,17,25,24;,
  4;17,18,26,25;,
  4;18,19,27,26;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,23,31,30;,
  4;23,16,24,31;,
  4;24,25,33,32;,
  4;25,26,34,33;,
  4;26,27,35,34;,
  4;27,28,36,35;,
  4;28,29,37,36;,
  4;29,30,38,37;,
  4;30,31,39,38;,
  4;31,24,32,39;,
  4;32,33,41,40;,
  4;33,34,42,41;,
  4;34,35,43,42;,
  4;35,36,44,43;,
  4;36,37,45,44;,
  4;37,38,46,45;,
  4;38,39,47,46;,
  4;39,32,40,47;,
  4;40,41,49,48;,
  4;41,42,50,49;,
  4;42,43,51,50;,
  4;43,44,52,51;,
  4;44,45,53,52;,
  4;45,46,54,53;,
  4;46,47,55,54;,
  4;47,40,48,55;,
  4;48,49,57,56;,
  4;49,50,58,57;,
  4;50,51,59,58;,
  4;51,52,60,59;,
  4;52,53,61,60;,
  4;53,54,62,61;,
  4;54,55,63,62;,
  4;55,48,56,63;,
  4;56,57,1,0;,
  4;57,58,2,1;,
  4;58,59,3,2;,
  4;59,60,4,3;,
  4;60,61,5,4;,
  4;61,62,6,5;,
  4;62,63,7,6;,
  4;63,56,0,7;;
 }
 MeshTextureCoords {
  81;
  0.000000;0.000000;,
  0.000000;0.125000;,
  0.125000;0.125000;,
  0.125000;0.000000;,
  0.000000;0.250000;,
  0.125000;0.250000;,
  0.000000;0.375000;,
  0.125000;0.375000;,
  0.000000;0.500000;,
  0.125000;0.500000;,
  0.000000;0.625000;,
  0.125000;0.625000;,
  0.000000;0.750000;,
  0.125000;0.750000;,
  0.000000;0.875000;,
  0.125000;0.875000;,
  0.000000;1.000000;,
  0.125000;1.000000;,
  0.250000;0.125000;,
  0.250000;0.000000;,
  0.250000;0.250000;,
  0.250000;0.375000;,
  0.250000;0.500000;,
  0.250000;0.625000;,
  0.250000;0.750000;,
  0.250000;0.875000;,
  0.250000;1.000000;,
  0.375000;0.125000;,
  0.375000;0.000000;,
  0.375000;0.250000;,
  0.375000;0.375000;,
  0.375000;0.500000;,
  0.375000;0.625000;,
  0.375000;0.750000;,
  0.375000;0.875000;,
  0.375000;1.000000;,
  0.500000;0.125000;,
  0.500000;0.000000;,
  0.500000;0.250000;,
  0.500000;0.375000;,
  0.500000;0.500000;,
  0.500000;0.625000;,
  0.500000;0.750000;,
  0.500000;0.875000;,
  0.500000;1.000000;,
  0.625000;0.125000;,
  0.625000;0.000000;,
  0.625000;0.250000;,
  0.625000;0.375000;,
  0.625000;0.500000;,
  0.625000;0.625000;,
  0.625000;0.750000;,
  0.625000;0.875000;,
  0.625000;1.000000;,
  0.750000;0.125000;,
  0.750000;0.000000;,
  0.750000;0.250000;,
  0.750000;0.375000;,
  0.750000;0.500000;,
  0.750000;0.625000;,
  0.750000;0.750000;,
  0.750000;0.875000;,
  0.750000;1.000000;,
  0.875000;0.125000;,
  0.875000;0.000000;,
  0.875000;0.250000;,
  0.875000;0.375000;,
  0.875000;0.500000;,
  0.875000;0.625000;,
  0.875000;0.750000;,
  0.875000;0.875000;,
  0.875000;1.000000;,
  1.000000;0.125000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  1.000000;0.375000;,
  1.000000;0.500000;,
  1.000000;0.625000;,
  1.000000;0.750000;,
  1.000000;0.875000;,
  1.000000;1.000000;;
 }
}