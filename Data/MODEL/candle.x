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
 200;
 -7.30361;1.08316;-6.94827;,
 7.30361;1.08316;-6.94827;,
 7.30361;1.08316;6.94827;,
 -7.30361;1.08316;6.94827;,
 -7.30361;2.25101;-6.94827;,
 -5.89382;2.70860;-5.60707;,
 5.89382;2.70860;-5.60707;,
 7.30361;2.25101;-6.94827;,
 -7.30361;2.25101;6.94827;,
 -5.89382;2.70860;5.60707;,
 5.89382;2.70860;5.60707;,
 7.30361;2.25101;6.94827;,
 5.49631;3.53825;5.22891;,
 -5.49631;3.53825;5.22891;,
 5.49631;3.53825;-5.22891;,
 -5.49631;3.53825;-5.22891;,
 0.00000;17.21824;0.00000;,
 1.49913;17.21824;-1.49913;,
 0.00000;17.21824;-2.12008;,
 2.12008;17.21824;0.00000;,
 1.49913;17.21824;1.49913;,
 0.00000;17.21824;2.12008;,
 -1.49913;17.21824;1.49913;,
 -2.12008;17.21824;0.00000;,
 -1.49913;17.21824;-1.49913;,
 0.00000;3.32221;0.00000;,
 0.00000;3.32221;-4.24069;,
 3.15197;3.32221;-2.99862;,
 4.45756;3.32221;0.00000;,
 3.15197;3.32221;2.99862;,
 0.00000;3.32221;4.24069;,
 -3.15197;3.32221;2.99862;,
 -4.45756;3.32221;0.00000;,
 -3.15197;3.32221;-2.99862;,
 -3.15197;4.36736;-2.99862;,
 0.00000;4.36736;-4.24069;,
 -4.45756;4.36736;0.00000;,
 3.15197;4.36736;-2.99862;,
 -3.15197;4.36736;2.99862;,
 4.45756;4.36736;0.00000;,
 0.00000;4.36736;4.24069;,
 3.15197;4.36736;2.99862;,
 -2.54015;4.84819;-2.41657;,
 0.00000;4.84819;-3.41754;,
 -3.59232;4.84819;0.00000;,
 2.54015;4.84819;-2.41657;,
 -2.54015;4.84819;2.41657;,
 3.59232;4.84819;0.00000;,
 0.00000;4.84819;3.41754;,
 2.54015;4.84819;2.41657;,
 -2.42328;5.47901;-2.30538;,
 0.00000;5.47901;-3.26030;,
 -3.42703;5.47901;0.00000;,
 2.42328;5.47901;-2.30538;,
 -2.42328;5.47901;2.30538;,
 3.42703;5.47901;0.00000;,
 0.00000;5.47901;3.26030;,
 2.42328;5.47901;2.30538;,
 0.00000;5.88357;-3.43128;,
 2.55036;5.88357;-2.42628;,
 -2.55036;5.88357;-2.42628;,
 3.60676;5.88357;0.00000;,
 -3.60676;5.88357;0.00000;,
 2.55036;5.88357;2.42628;,
 -2.55036;5.88357;2.42628;,
 0.00000;5.88357;3.43128;,
 0.00000;6.48956;-3.68186;,
 2.73661;6.48956;-2.60347;,
 -2.73661;6.48956;-2.60347;,
 3.87015;6.48956;0.00000;,
 -3.87015;6.48956;0.00000;,
 2.73661;6.48956;2.60347;,
 -2.73661;6.48956;2.60347;,
 0.00000;6.48956;3.68186;,
 0.00000;7.30908;-3.19132;,
 2.37201;7.30908;-2.25660;,
 -2.37201;7.30908;-2.25660;,
 3.35452;7.30908;0.00000;,
 -3.35452;7.30908;0.00000;,
 2.37201;7.30908;2.25660;,
 -2.37201;7.30908;2.25660;,
 0.00000;7.30908;3.19132;,
 -1.13960;7.45823;-1.08415;,
 0.00000;7.45823;-1.53322;,
 -1.61163;7.45823;0.00000;,
 1.13960;7.45823;-1.08415;,
 -1.13960;7.45823;1.08415;,
 1.61163;7.45823;0.00000;,
 0.00000;7.45823;1.53322;,
 1.13960;7.45823;1.08415;,
 -0.98691;13.25798;-0.98691;,
 0.00000;13.25798;-1.39570;,
 -1.39570;13.25798;0.00000;,
 0.98691;13.25798;-0.98691;,
 -0.98691;13.25798;0.98691;,
 1.39570;13.25798;0.00000;,
 0.00000;13.25798;1.39570;,
 0.98691;13.25798;0.98691;,
 0.00000;14.23118;-1.34450;,
 0.95070;14.23118;-0.95070;,
 -0.95070;14.23118;-0.95070;,
 1.34450;14.23118;0.00000;,
 -1.34450;14.23118;0.00000;,
 0.95070;14.23118;0.95070;,
 -0.95070;14.23118;0.95070;,
 0.00000;14.23118;1.34450;,
 0.00000;17.06545;-1.46142;,
 1.03338;17.06545;-1.03338;,
 -1.03338;17.06545;-1.03338;,
 1.46142;17.06545;0.00000;,
 -1.46142;17.06545;0.00000;,
 1.03338;17.06545;1.03338;,
 -1.03338;17.06545;1.03338;,
 0.00000;17.06545;1.46142;,
 0.00000;17.63846;-4.65701;,
 3.29301;17.63846;-3.29301;,
 -3.29301;17.63846;-3.29300;,
 4.65701;17.63846;0.00000;,
 -4.65701;17.63846;0.00000;,
 3.29301;17.63846;3.29301;,
 -3.29301;17.63846;3.29300;,
 0.00000;17.63846;4.65701;,
 0.00000;17.83931;-4.94339;,
 3.49551;17.83931;-3.49551;,
 -3.49551;17.83931;-3.49551;,
 4.94339;17.83931;0.00000;,
 -4.94339;17.83931;0.00000;,
 3.49551;17.83931;3.49551;,
 -3.49551;17.83931;3.49551;,
 0.00000;17.83931;4.94339;,
 0.00000;17.96257;-4.68599;,
 3.31350;17.96257;-3.31350;,
 -3.31350;17.96257;-3.31349;,
 4.68599;17.96257;0.00000;,
 -4.68599;17.96257;0.00000;,
 3.31350;17.96257;3.31350;,
 -3.31350;17.96257;3.31349;,
 0.00000;17.96257;4.68599;,
 0.00000;30.16859;0.00000;,
 0.40570;30.16859;-0.55840;,
 0.00000;30.16859;-0.69022;,
 0.65644;30.16859;-0.21329;,
 0.65644;30.16859;0.21329;,
 0.40570;30.16859;0.55840;,
 0.00000;30.16859;0.69022;,
 -0.40570;30.16859;0.55840;,
 -0.65644;30.16859;0.21329;,
 -0.65644;30.16859;-0.21329;,
 -0.40570;30.16859;-0.55840;,
 0.00000;17.01397;0.00000;,
 0.00000;17.01397;-1.20667;,
 0.70926;17.01397;-0.97622;,
 1.14761;17.01397;-0.37288;,
 1.14761;17.01397;0.37288;,
 0.70926;17.01397;0.97622;,
 0.00000;17.01397;1.20667;,
 -0.70926;17.01397;0.97622;,
 -1.14761;17.01397;0.37288;,
 -1.14761;17.01397;-0.37288;,
 -0.70926;17.01397;-0.97622;,
 -0.00100;31.46601;-0.19059;,
 0.05104;31.45819;-0.23132;,
 -0.00098;31.45315;-0.25588;,
 0.06387;31.46911;-0.17609;,
 0.02785;31.47769;-0.13178;,
 -0.02990;31.47746;-0.13176;,
 -0.06588;31.46861;-0.17604;,
 -0.05301;31.45779;-0.23128;,
 0.00000;30.06924;-0.04553;,
 0.00000;30.06924;-0.22960;,
 0.14391;30.06924;-0.16030;,
 0.17945;30.06924;-0.00457;,
 0.07986;30.06924;0.12031;,
 -0.07987;30.06924;0.12031;,
 -0.17946;30.06924;-0.00457;,
 -0.14391;30.06924;-0.16030;,
 -0.12351;30.81702;-0.26136;,
 -0.15432;30.84292;-0.12913;,
 0.00104;30.80592;-0.32025;,
 -0.06818;30.86410;-0.02313;,
 0.12555;30.81797;-0.26145;,
 0.07004;30.86465;-0.02318;,
 0.15626;30.84413;-0.12925;,
 0.09609;31.10266;-0.29261;,
 0.11979;31.12283;-0.19057;,
 -0.00001;31.09335;-0.33799;,
 0.05325;31.13868;-0.10870;,
 -0.09614;31.10191;-0.29254;,
 -0.05344;31.13825;-0.10866;,
 -0.11992;31.12191;-0.19048;,
 1.14761;29.63177;-0.37288;,
 1.14761;29.63177;0.37288;,
 0.70926;29.63177;-0.97622;,
 0.70926;29.63177;0.97622;,
 0.00000;29.63177;-1.20667;,
 0.00000;29.63177;1.20667;,
 -0.70926;29.63177;-0.97622;,
 -0.70926;29.63177;0.97622;,
 -1.14761;29.63177;-0.37288;,
 -1.14761;29.63177;0.37288;;
 
 217;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;4,7,1,0;,
 4;4,0,3,8;,
 4;4,8,9,5;,
 4;7,6,10,11;,
 4;7,11,2,1;,
 4;8,3,2,11;,
 4;8,11,10,9;,
 4;12,13,9,10;,
 4;14,12,10,6;,
 4;15,14,6,5;,
 4;13,15,5,9;,
 4;13,12,14,15;,
 3;16,17,18;,
 3;16,19,17;,
 3;16,20,19;,
 3;16,21,20;,
 3;16,22,21;,
 3;16,23,22;,
 3;16,24,23;,
 3;16,18,24;,
 3;25,26,27;,
 3;25,27,28;,
 3;25,28,29;,
 3;25,29,30;,
 3;25,30,31;,
 3;25,31,32;,
 3;25,32,33;,
 3;25,33,26;,
 4;34,35,26,33;,
 4;34,33,32,36;,
 4;35,37,27,26;,
 4;36,32,31,38;,
 4;37,39,28,27;,
 4;38,31,30,40;,
 4;39,41,29,28;,
 4;40,30,29,41;,
 4;42,43,35,34;,
 4;42,34,36,44;,
 4;43,45,37,35;,
 4;44,36,38,46;,
 4;45,47,39,37;,
 4;46,38,40,48;,
 4;47,49,41,39;,
 4;48,40,41,49;,
 4;50,51,43,42;,
 4;50,42,44,52;,
 4;51,53,45,43;,
 4;52,44,46,54;,
 4;53,55,47,45;,
 4;54,46,48,56;,
 4;55,57,49,47;,
 4;56,48,49,57;,
 4;58,59,53,51;,
 4;58,51,50,60;,
 4;59,61,55,53;,
 4;60,50,52,62;,
 4;61,63,57,55;,
 4;62,52,54,64;,
 4;63,65,56,57;,
 4;64,54,56,65;,
 4;66,67,59,58;,
 4;66,58,60,68;,
 4;67,69,61,59;,
 4;68,60,62,70;,
 4;69,71,63,61;,
 4;70,62,64,72;,
 4;71,73,65,63;,
 4;72,64,65,73;,
 4;74,75,67,66;,
 4;74,66,68,76;,
 4;75,77,69,67;,
 4;76,68,70,78;,
 4;77,79,71,69;,
 4;78,70,72,80;,
 4;79,81,73,71;,
 4;80,72,73,81;,
 4;82,83,74,76;,
 4;82,76,78,84;,
 4;83,85,75,74;,
 4;84,78,80,86;,
 4;85,87,77,75;,
 4;86,80,81,88;,
 4;87,89,79,77;,
 4;88,81,79,89;,
 4;90,91,83,82;,
 4;90,82,84,92;,
 4;91,93,85,83;,
 4;92,84,86,94;,
 4;93,95,87,85;,
 4;94,86,88,96;,
 4;95,97,89,87;,
 4;96,88,89,97;,
 4;98,99,93,91;,
 4;98,91,90,100;,
 4;99,101,95,93;,
 4;100,90,92,102;,
 4;101,103,97,95;,
 4;102,92,94,104;,
 4;103,105,96,97;,
 4;104,94,96,105;,
 4;106,107,99,98;,
 4;106,98,100,108;,
 4;107,109,101,99;,
 4;108,100,102,110;,
 4;109,111,103,101;,
 4;110,102,104,112;,
 4;111,113,105,103;,
 4;112,104,105,113;,
 4;114,115,107,106;,
 4;114,106,108,116;,
 4;115,117,109,107;,
 4;116,108,110,118;,
 4;117,119,111,109;,
 4;118,110,112,120;,
 4;119,121,113,111;,
 4;120,112,113,121;,
 4;122,123,115,114;,
 4;122,114,116,124;,
 4;123,125,117,115;,
 4;124,116,118,126;,
 4;125,127,119,117;,
 4;126,118,120,128;,
 4;127,129,121,119;,
 4;128,120,121,129;,
 4;130,18,17,131;,
 4;130,131,123,122;,
 4;130,122,124,132;,
 4;130,132,24,18;,
 4;131,17,19,133;,
 4;131,133,125,123;,
 4;132,124,126,134;,
 4;132,134,23,24;,
 4;133,19,20,135;,
 4;133,135,127,125;,
 4;134,126,128,136;,
 4;134,136,22,23;,
 4;135,20,21,137;,
 4;135,137,129,127;,
 4;136,128,129,137;,
 4;136,137,21,22;,
 3;138,139,140;,
 3;138,141,139;,
 3;138,142,141;,
 3;138,143,142;,
 3;138,144,143;,
 3;138,145,144;,
 3;138,146,145;,
 3;138,147,146;,
 3;138,148,147;,
 3;138,140,148;,
 3;149,150,151;,
 3;149,151,152;,
 3;149,152,153;,
 3;149,153,154;,
 3;149,154,155;,
 3;149,155,156;,
 3;149,156,157;,
 3;149,157,158;,
 3;149,158,159;,
 3;149,159,150;,
 3;160,161,162;,
 3;160,163,161;,
 3;160,164,163;,
 3;160,165,164;,
 3;160,166,165;,
 3;160,167,166;,
 3;160,162,167;,
 3;168,169,170;,
 3;168,170,171;,
 3;168,171,172;,
 3;168,172,173;,
 3;168,173,174;,
 3;168,174,175;,
 3;168,175,169;,
 4;176,175,174,177;,
 4;176,178,169,175;,
 4;177,174,173,179;,
 4;178,180,170,169;,
 4;179,173,172,181;,
 4;180,182,171,170;,
 4;181,172,171,182;,
 4;183,161,163,184;,
 4;183,184,182,180;,
 4;183,180,178,185;,
 4;183,185,162,161;,
 4;184,163,164,186;,
 4;184,186,181,182;,
 4;185,178,176,187;,
 4;185,187,167,162;,
 4;186,164,165,188;,
 4;186,188,179,181;,
 4;187,176,177,189;,
 4;187,189,166,167;,
 4;188,165,166,189;,
 4;188,189,177,179;,
 4;190,141,142,191;,
 4;190,191,153,152;,
 4;190,152,151,192;,
 4;190,192,139,141;,
 4;191,142,143,193;,
 4;191,193,154,153;,
 4;192,151,150,194;,
 4;192,194,140,139;,
 4;193,143,144,195;,
 4;193,195,155,154;,
 4;194,150,159,196;,
 4;194,196,148,140;,
 4;195,144,145,197;,
 4;195,197,156,155;,
 4;196,159,158,198;,
 4;196,198,147,148;,
 4;197,145,146,199;,
 4;197,199,157,156;,
 4;198,158,157,199;,
 4;198,199,146,147;;
 
 MeshMaterialList {
  3;
  217;
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
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
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
   0.666160;0.614240;0.314160;1.000000;;
   5.000000;
   0.360000;0.360000;0.360000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.674400;0.674400;0.674400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.179200;0.179200;0.179200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
}
