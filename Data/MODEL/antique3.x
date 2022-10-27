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
 238;
 26.57956;0.49135;-1.88091;,
 26.57956;0.49135;3.39383;,
 26.57956;-0.08882;3.39383;,
 26.57956;-0.08882;-1.88091;,
 -26.57956;0.49135;-1.88091;,
 -26.57956;-0.08882;-1.88091;,
 -26.57956;-0.08882;3.39383;,
 -26.57956;0.49135;3.39383;,
 26.57956;-0.08882;-2.20968;,
 26.57956;0.49135;-2.20968;,
 -26.57956;0.49135;-2.20968;,
 -26.57956;-0.08882;-2.20968;,
 26.57956;14.22575;-1.88091;,
 26.57956;14.63648;-1.88091;,
 26.57956;14.63648;3.39383;,
 26.57956;14.22575;3.39383;,
 -26.57956;14.22575;-1.88091;,
 -26.57956;14.22575;3.39383;,
 -26.57956;14.63648;3.39383;,
 -26.57956;14.63648;-1.88091;,
 -26.57956;14.63648;-2.26448;,
 -26.57956;14.22575;-2.26448;,
 26.57956;14.22575;-2.26448;,
 26.57956;14.63648;-2.26448;,
 26.57956;13.91479;-1.88091;,
 26.57956;13.91478;3.39383;,
 -26.57956;13.91479;-1.88091;,
 -26.57956;13.91478;3.39383;,
 26.57956;13.63283;-1.88091;,
 26.57956;13.63283;3.39383;,
 -26.57956;13.63283;-1.88091;,
 -26.57956;13.63283;3.39383;,
 -26.57956;13.91479;-2.11277;,
 -26.57956;13.63283;-2.11277;,
 26.57956;13.63283;-2.11277;,
 26.57956;13.91479;-2.11277;,
 26.57956;0.75002;-1.88091;,
 26.57956;0.75002;3.39383;,
 -26.57956;0.75002;-1.88091;,
 -26.57956;0.75002;3.39383;,
 26.57956;0.95750;-1.88091;,
 26.57956;0.95750;3.39383;,
 -26.57956;0.95750;-1.88091;,
 -26.57956;0.95750;3.39383;,
 26.57956;0.75002;-2.04575;,
 26.57956;0.95750;-2.04575;,
 -26.57956;0.95750;-2.04575;,
 -26.57956;0.75002;-2.04575;,
 26.57956;50.01082;-0.90477;,
 26.57956;55.42854;-0.90477;,
 26.57956;55.42854;3.39383;,
 26.57956;43.40043;3.39383;,
 -26.57956;43.40043;-1.88091;,
 -26.57956;43.40043;3.39383;,
 -26.57956;55.42854;3.39383;,
 -26.57956;55.42854;-1.88091;,
 -0.43198;55.42854;-0.90477;,
 1.61204;50.74293;-1.88091;,
 -0.43198;55.42854;3.39383;,
 3.89347;55.42854;3.39383;,
 3.89347;55.42854;-0.90477;,
 5.09503;48.01083;-1.88091;,
 3.89347;14.63648;-1.88091;,
 -0.43198;14.63648;-1.88091;,
 -0.43198;43.40043;3.39383;,
 3.89347;43.40043;3.39383;,
 3.89347;14.63648;-2.26448;,
 -0.43198;14.63648;-2.26448;,
 -0.43198;14.63648;3.39383;,
 3.89347;14.63648;3.39383;,
 3.89347;14.22575;-2.26448;,
 -0.43198;14.22575;-2.26448;,
 -0.43198;14.22575;3.39383;,
 3.89347;14.22575;3.39383;,
 3.89347;14.22575;-1.88091;,
 -0.43198;14.22575;-1.88091;,
 -0.43198;13.91478;3.39383;,
 3.89347;13.91478;3.39383;,
 3.89347;13.91479;-1.88091;,
 -0.43198;13.91479;-1.88091;,
 -0.43198;13.63283;3.39383;,
 3.89347;13.63283;3.39383;,
 3.89347;13.91479;-2.11277;,
 -0.43198;13.91479;-2.11277;,
 -0.43198;0.95750;3.39383;,
 3.89347;0.95750;3.39383;,
 3.89347;13.63283;-2.11277;,
 -0.43198;13.63283;-2.11277;,
 -0.43198;0.75002;3.39383;,
 3.89347;0.75002;3.39383;,
 3.89347;13.63283;-1.88091;,
 -0.43198;13.63283;-1.88091;,
 -0.43198;0.49135;3.39383;,
 3.89347;0.49135;3.39383;,
 3.89347;0.95750;-1.88091;,
 -0.43198;0.95750;-1.88091;,
 -0.43198;-0.08882;3.39383;,
 3.89347;-0.08882;3.39383;,
 3.89347;0.95750;-2.04575;,
 -0.43198;0.95750;-2.04575;,
 -0.43198;-0.08882;-1.88091;,
 3.89347;-0.08882;-1.88091;,
 3.89347;0.75002;-2.04575;,
 -0.43198;0.75002;-2.04575;,
 -0.43198;-0.08882;-2.20968;,
 3.89347;-0.08882;-2.20968;,
 3.89347;0.75002;-1.88091;,
 -0.43198;0.75002;-1.88091;,
 -0.43198;0.49135;-2.20968;,
 3.89347;0.49135;-2.20968;,
 3.89347;0.49135;-1.88091;,
 -0.43198;0.49135;-1.88091;,
 13.51929;55.42854;-0.90477;,
 13.51929;55.42854;3.39383;,
 19.93927;55.42854;3.39383;,
 19.93927;55.42854;-0.90477;,
 6.81933;47.48507;-1.88091;,
 11.19550;49.26205;-1.88091;,
 19.93927;14.63648;-1.88091;,
 13.51929;14.63648;-1.88091;,
 13.51929;43.40043;3.39383;,
 19.93927;43.40043;3.39383;,
 19.93927;14.63648;-2.26448;,
 13.51929;14.63648;-2.26448;,
 13.51929;14.63648;3.39383;,
 19.93927;14.63648;3.39383;,
 19.93927;14.22575;-2.26448;,
 13.51929;14.22575;-2.26448;,
 13.51929;14.22575;3.39383;,
 19.93927;14.22575;3.39383;,
 19.93927;14.22575;-1.88091;,
 13.51929;14.22575;-1.88091;,
 13.51929;13.91478;3.39383;,
 19.93927;13.91478;3.39383;,
 19.93927;13.91479;-1.88091;,
 13.51929;13.91479;-1.88091;,
 13.51929;13.63283;3.39383;,
 19.93927;13.63283;3.39383;,
 19.93927;13.91479;-2.11277;,
 13.51929;13.91479;-2.11277;,
 13.51929;0.95750;3.39383;,
 19.93927;0.95750;3.39383;,
 19.93927;13.63283;-2.11277;,
 13.51929;13.63283;-2.11277;,
 13.51929;0.75002;3.39383;,
 19.93927;0.75002;3.39383;,
 19.93927;13.63283;-1.88091;,
 13.51929;13.63283;-1.88091;,
 13.51929;0.49135;3.39383;,
 19.93927;0.49135;3.39383;,
 19.93927;0.95750;-1.88091;,
 13.51929;0.95750;-1.88091;,
 13.51929;-0.08882;3.39383;,
 19.93927;-0.08882;3.39383;,
 19.93927;0.95750;-2.04575;,
 13.51929;0.95750;-2.04575;,
 13.51929;-0.08882;-1.88091;,
 19.93927;-0.08882;-1.88091;,
 19.93927;0.75002;-2.04575;,
 13.51929;0.75002;-2.04575;,
 13.51929;-0.08882;-2.20968;,
 19.93927;-0.08882;-2.20968;,
 19.93927;0.75002;-1.88091;,
 13.51929;0.75002;-1.88091;,
 13.51929;0.49135;-2.20968;,
 19.93927;0.49135;-2.20968;,
 19.93927;0.49135;-1.88091;,
 13.51929;0.49135;-1.88091;,
 22.45724;55.42854;-0.90477;,
 22.45724;55.42854;3.39383;,
 17.02908;44.42924;-1.88091;,
 22.45724;14.63648;-1.88091;,
 22.45724;43.40043;3.39383;,
 22.45724;14.63648;-2.26448;,
 22.45724;14.63648;3.39383;,
 22.45724;14.22575;-2.26448;,
 22.45724;14.22575;3.39383;,
 22.45724;14.22575;-1.88091;,
 22.45724;13.91478;3.39383;,
 22.45724;13.91479;-1.88091;,
 22.45724;13.63283;3.39383;,
 22.45724;13.91479;-2.11277;,
 22.45724;0.95750;3.39383;,
 22.45724;13.63283;-2.11277;,
 22.45724;0.75002;3.39383;,
 22.45724;13.63283;-1.88091;,
 22.45724;0.49135;3.39383;,
 22.45724;0.95750;-1.88091;,
 22.45724;-0.08882;3.39383;,
 22.45724;0.95750;-2.04575;,
 22.45724;-0.08882;-1.88091;,
 22.45724;0.75002;-2.04575;,
 22.45724;-0.08882;-2.20968;,
 22.45724;0.75002;-1.88091;,
 22.45724;0.49135;-2.20968;,
 22.45724;0.49135;-1.88091;,
 24.99055;55.42854;-0.90477;,
 24.99055;55.42854;3.39383;,
 22.89818;49.42894;-1.88091;,
 24.99055;14.63648;-1.88091;,
 24.99055;43.40043;3.39383;,
 24.99055;14.63648;-2.26448;,
 24.99055;14.63648;3.39383;,
 24.99055;14.22575;-2.26448;,
 24.99055;14.22575;3.39383;,
 24.99055;14.22575;-1.88091;,
 24.99055;13.91478;3.39383;,
 24.99055;13.91479;-1.88091;,
 24.99055;13.63283;3.39383;,
 24.99055;13.91479;-2.11277;,
 24.99055;0.95750;3.39383;,
 24.99055;13.63283;-2.11277;,
 24.99055;0.75002;3.39383;,
 24.99055;13.63283;-1.88091;,
 24.99055;0.49135;3.39383;,
 24.99055;0.95750;-1.88091;,
 24.99055;-0.08882;3.39383;,
 24.99055;0.95750;-2.04575;,
 24.99055;-0.08882;-1.88091;,
 24.99055;0.75002;-2.04575;,
 24.99055;-0.08882;-2.20968;,
 24.99055;0.75002;-1.88091;,
 24.99055;0.49135;-2.20968;,
 24.99055;0.49135;-1.88091;,
 3.89347;55.42854;-0.90410;,
 -0.43198;55.42854;-0.90410;,
 1.61204;50.74293;-0.90410;,
 5.09503;48.01083;-0.90410;,
 19.93927;55.42854;-0.90410;,
 13.51929;55.42854;-0.90410;,
 6.81933;47.48507;-0.90410;,
 11.19550;49.26205;-0.90410;,
 17.02908;44.42924;-0.90410;,
 22.45724;55.42854;-0.90410;,
 26.57956;55.42854;-0.90410;,
 24.99055;55.42854;-0.90410;,
 26.57956;50.01082;-0.90410;,
 22.89818;49.42894;-0.90410;;
 
 236;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,0,3;,
 4;10,11,5,4;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;20,21,16,19;,
 4;22,23,13,12;,
 4;24,12,15,25;,
 4;26,27,17,16;,
 4;28,24,25,29;,
 4;30,31,27,26;,
 4;32,33,30,26;,
 4;34,35,24,28;,
 4;36,37,1,0;,
 4;38,4,7,39;,
 4;40,28,29,41;,
 4;40,41,37,36;,
 4;42,38,39,43;,
 4;42,43,31,30;,
 4;44,45,40,36;,
 4;46,47,38,42;,
 4;48,49,50,51;,
 4;48,51,14,13;,
 4;52,19,18,53;,
 4;52,53,54,55;,
 4;56,57,52,55;,
 4;56,55,54,58;,
 4;56,58,59,60;,
 4;57,61,62,63;,
 4;57,63,19,52;,
 4;58,54,53,64;,
 4;58,64,65,59;,
 4;63,62,66,67;,
 4;63,67,20,19;,
 4;64,53,18,68;,
 4;64,68,69,65;,
 4;67,66,70,71;,
 4;67,71,21,20;,
 4;68,18,17,72;,
 4;68,72,73,69;,
 4;71,70,74,75;,
 4;71,75,16,21;,
 4;72,17,27,76;,
 4;72,76,77,73;,
 4;75,74,78,79;,
 4;75,79,26,16;,
 4;76,27,31,80;,
 4;76,80,81,77;,
 4;79,78,82,83;,
 4;79,83,32,26;,
 4;80,31,43,84;,
 4;80,84,85,81;,
 4;83,82,86,87;,
 4;83,87,33,32;,
 4;84,43,39,88;,
 4;84,88,89,85;,
 4;87,86,90,91;,
 4;87,91,30,33;,
 4;88,39,7,92;,
 4;88,92,93,89;,
 4;91,90,94,95;,
 4;91,95,42,30;,
 4;92,7,6,96;,
 4;92,96,97,93;,
 4;95,94,98,99;,
 4;95,99,46,42;,
 4;96,6,5,100;,
 4;96,100,101,97;,
 4;99,98,102,103;,
 4;99,103,47,46;,
 4;100,5,11,104;,
 4;100,104,105,101;,
 4;103,102,106,107;,
 4;103,107,38,47;,
 4;104,11,10,108;,
 4;104,108,109,105;,
 4;107,106,110,111;,
 4;107,111,4,38;,
 4;108,10,4,111;,
 4;108,111,110,109;,
 4;112,60,59,113;,
 4;112,113,114,115;,
 4;116,117,118,119;,
 4;116,119,62,61;,
 4;113,59,65,120;,
 4;113,120,121,114;,
 4;119,118,122,123;,
 4;119,123,66,62;,
 4;120,65,69,124;,
 4;120,124,125,121;,
 4;123,122,126,127;,
 4;123,127,70,66;,
 4;124,69,73,128;,
 4;124,128,129,125;,
 4;127,126,130,131;,
 4;127,131,74,70;,
 4;128,73,77,132;,
 4;128,132,133,129;,
 4;131,130,134,135;,
 4;131,135,78,74;,
 4;132,77,81,136;,
 4;132,136,137,133;,
 4;135,134,138,139;,
 4;135,139,82,78;,
 4;136,81,85,140;,
 4;136,140,141,137;,
 4;139,138,142,143;,
 4;139,143,86,82;,
 4;140,85,89,144;,
 4;140,144,145,141;,
 4;143,142,146,147;,
 4;143,147,90,86;,
 4;144,89,93,148;,
 4;144,148,149,145;,
 4;147,146,150,151;,
 4;147,151,94,90;,
 4;148,93,97,152;,
 4;148,152,153,149;,
 4;151,150,154,155;,
 4;151,155,98,94;,
 4;152,97,101,156;,
 4;152,156,157,153;,
 4;155,154,158,159;,
 4;155,159,102,98;,
 4;156,101,105,160;,
 4;156,160,161,157;,
 4;159,158,162,163;,
 4;159,163,106,102;,
 4;160,105,109,164;,
 4;160,164,165,161;,
 4;163,162,166,167;,
 4;163,167,110,106;,
 4;164,109,110,167;,
 4;164,167,166,165;,
 4;168,115,114,169;,
 4;170,171,118,117;,
 4;169,114,121,172;,
 4;171,173,122,118;,
 4;172,121,125,174;,
 4;173,175,126,122;,
 4;174,125,129,176;,
 4;175,177,130,126;,
 4;176,129,133,178;,
 4;177,179,134,130;,
 4;178,133,137,180;,
 4;179,181,138,134;,
 4;180,137,141,182;,
 4;181,183,142,138;,
 4;182,141,145,184;,
 4;183,185,146,142;,
 4;184,145,149,186;,
 4;185,187,150,146;,
 4;186,149,153,188;,
 4;187,189,154,150;,
 4;188,153,157,190;,
 4;189,191,158,154;,
 4;190,157,161,192;,
 4;191,193,162,158;,
 4;192,161,165,194;,
 4;193,195,166,162;,
 4;194,165,166,195;,
 4;196,168,169,197;,
 4;196,197,50,49;,
 4;198,48,13,199;,
 4;198,199,171,170;,
 4;197,169,172,200;,
 4;197,200,51,50;,
 4;199,13,23,201;,
 4;199,201,173,171;,
 4;200,172,174,202;,
 4;200,202,14,51;,
 4;201,23,22,203;,
 4;201,203,175,173;,
 4;202,174,176,204;,
 4;202,204,15,14;,
 4;203,22,12,205;,
 4;203,205,177,175;,
 4;204,176,178,206;,
 4;204,206,25,15;,
 4;205,12,24,207;,
 4;205,207,179,177;,
 4;206,178,180,208;,
 4;206,208,29,25;,
 4;207,24,35,209;,
 4;207,209,181,179;,
 4;208,180,182,210;,
 4;208,210,41,29;,
 4;209,35,34,211;,
 4;209,211,183,181;,
 4;210,182,184,212;,
 4;210,212,37,41;,
 4;211,34,28,213;,
 4;211,213,185,183;,
 4;212,184,186,214;,
 4;212,214,1,37;,
 4;213,28,40,215;,
 4;213,215,187,185;,
 4;214,186,188,216;,
 4;214,216,2,1;,
 4;215,40,45,217;,
 4;215,217,189,187;,
 4;216,188,190,218;,
 4;216,218,3,2;,
 4;217,45,44,219;,
 4;217,219,191,189;,
 4;218,190,192,220;,
 4;218,220,8,3;,
 4;219,44,36,221;,
 4;219,221,193,191;,
 4;220,192,194,222;,
 4;220,222,9,8;,
 4;221,36,0,223;,
 4;221,223,195,193;,
 4;222,194,195,223;,
 4;222,223,0,9;,
 4;224,225,56,60;,
 4;226,227,61,57;,
 4;225,226,57,56;,
 4;225,224,227,226;,
 4;228,229,112,115;,
 4;230,231,117,116;,
 4;229,228,231,230;,
 4;227,230,116,61;,
 4;229,224,60,112;,
 4;229,230,227,224;,
 4;231,232,170,117;,
 4;233,228,115,168;,
 4;233,232,231,228;,
 4;234,235,196,49;,
 4;236,234,49,48;,
 4;237,236,48,198;,
 4;235,234,236,237;,
 4;232,237,198,170;,
 4;235,233,168,196;,
 4;235,237,232,233;;
 
 MeshMaterialList {
  1;
  236;
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
  0;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
}
