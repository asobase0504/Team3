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
 40;
 21.52949;-0.71588;-29.63282;,
 34.83547;-0.71588;-11.31873;,
 39.46138;37.95067;-14.66472;,
 20.79079;21.14073;-29.19268;,
 0.00000;42.69690;-36.08416;,
 0.00000;-0.71588;-36.62817;,
 34.83547;-0.71588;11.31873;,
 33.64019;21.14073;11.15062;,
 -20.79077;21.14073;-29.19270;,
 -21.52949;-0.71588;-29.63282;,
 21.52949;-0.71588;29.63282;,
 27.08143;37.96576;35.70063;,
 -39.46138;37.95067;-14.66472;,
 -34.83546;-0.71588;-11.31873;,
 0.00000;-0.71588;36.62817;,
 0.00000;21.14073;36.08416;,
 -33.64019;21.14073;11.15062;,
 -34.83547;-0.71588;11.31873;,
 -21.52949;-0.71588;29.63282;,
 -27.08146;37.96576;35.70063;,
 21.52949;20.90068;-29.63282;,
 20.79079;21.14827;-29.19268;,
 39.46138;37.95954;-14.66472;,
 40.86348;37.66906;-14.86192;,
 0.00000;42.45685;-36.62817;,
 0.00000;42.70442;-36.08416;,
 33.64019;21.14827;11.15062;,
 34.83547;20.90068;11.31873;,
 -21.52949;20.90068;-29.63282;,
 -20.79077;21.14827;-29.19270;,
 27.08143;37.97554;35.70063;,
 28.04364;37.65301;36.27396;,
 -40.86348;37.66906;-14.86192;,
 -39.46138;37.95954;-14.66472;,
 0.00000;21.14827;36.08416;,
 0.00000;20.90068;36.62817;,
 -34.83547;20.90068;11.31873;,
 -33.64019;21.14827;11.15062;,
 -27.08146;37.97554;35.70063;,
 -28.04364;37.65301;36.27387;;
 
 30;
 4;0,1,2,3;,
 4;0,3,4,5;,
 4;1,6,7,2;,
 4;5,4,8,9;,
 4;6,10,11,7;,
 4;9,8,12,13;,
 4;10,14,15,11;,
 4;13,12,16,17;,
 4;14,18,19,15;,
 4;17,16,19,18;,
 4;20,21,22,23;,
 4;20,23,1,0;,
 4;20,0,5,24;,
 4;20,24,25,21;,
 4;23,22,26,27;,
 4;23,27,6,1;,
 4;24,5,9,28;,
 4;24,28,29,25;,
 4;27,26,30,31;,
 4;27,31,10,6;,
 4;28,9,13,32;,
 4;28,32,33,29;,
 4;31,30,34,35;,
 4;31,35,14,10;,
 4;32,13,17,36;,
 4;32,36,37,33;,
 4;35,34,38,39;,
 4;35,39,18,14;,
 4;36,17,18,39;,
 4;36,39,38,37;;
 
 MeshMaterialList {
  1;
  30;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
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
   0.756480;0.779520;0.417600;1.000000;;
   5.000000;
   0.400000;0.400000;0.400000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  36;
  0.689729;0.714309;0.118474;,
  -0.061247;0.693905;-0.717457;,
  0.168113;0.810047;0.561748;,
  0.372616;0.811512;-0.450117;,
  -0.000006;0.749963;0.661480;,
  0.410508;0.683849;0.603187;,
  -0.168113;0.810047;0.561748;,
  0.061237;0.693900;-0.717462;,
  -0.689725;0.714311;0.118491;,
  -0.000000;-0.021845;0.999761;,
  -0.554883;0.016601;0.831763;,
  -0.948562;0.042133;0.313776;,
  -0.956156;0.049174;-0.288701;,
  -0.595346;0.079531;-0.799523;,
  -0.000000;0.075969;-0.997110;,
  0.595347;0.079531;-0.799523;,
  0.956156;0.049174;-0.288701;,
  0.948562;0.042133;0.313776;,
  0.554883;0.016601;0.831763;,
  0.135842;0.380439;-0.914775;,
  0.000000;0.000000;-1.000000;,
  -0.385609;0.233494;-0.892629;,
  -0.945231;-0.085539;-0.314995;,
  -0.086649;0.502519;0.860213;,
  -0.952798;-0.093449;0.288864;,
  0.754174;-0.087196;-0.650860;,
  0.945231;-0.085539;-0.314995;,
  0.552419;-0.045306;-0.832334;,
  0.952798;-0.093449;0.288864;,
  -0.552420;-0.045306;-0.832334;,
  0.589706;-0.112808;0.799701;,
  -0.410519;0.683865;0.603160;,
  0.219305;-0.095786;0.970943;,
  -0.000001;-0.098175;0.995169;,
  -0.589706;-0.112807;0.799700;,
  -0.372607;0.811514;-0.450121;;
  30;
  4;10,11,11,10;,
  4;10,10,9,9;,
  4;11,12,12,11;,
  4;9,9,18,18;,
  4;12,13,13,12;,
  4;18,18,17,17;,
  4;13,14,14,13;,
  4;17,17,16,16;,
  4;14,15,15,14;,
  4;16,16,15,15;,
  4;19,1,1,1;,
  4;25,26,26,27;,
  4;19,27,20,20;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;26,28,28,26;,
  4;20,20,29,21;,
  4;8,8,8,8;,
  4;3,3,3,3;,
  4;28,30,30,28;,
  4;21,29,22,22;,
  4;21,7,7,7;,
  4;31,31,4,23;,
  4;30,32,33,30;,
  4;22,22,24,24;,
  4;6,6,6,6;,
  4;23,4,5,5;,
  4;23,34,34,33;,
  4;24,24,34,34;,
  4;35,35,35,35;;
 }
}
