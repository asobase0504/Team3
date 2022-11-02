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
 142;
 0.28103;-0.22722;0.45605;,
 0.28103;-0.22722;-2.00622;,
 0.12462;-1.67748;-1.28503;,
 0.12461;-2.40588;0.45605;,
 0.12462;-1.67748;2.19714;,
 0.28103;-0.22722;2.91832;,
 0.28104;2.26184;2.19714;,
 0.28104;2.46471;0.45605;,
 0.28104;2.26184;-1.28503;,
 3.43703;2.71912;0.45330;,
 7.36554;2.19903;0.45330;,
 5.72429;1.28784;-1.91871;,
 3.43704;2.24254;-1.27913;,
 3.43704;2.24254;2.18572;,
 5.72429;1.28784;2.82531;,
 3.43703;-0.47946;-2.90123;,
 5.72429;-0.47945;-2.90123;,
 5.72428;-2.24683;-1.91871;,
 3.43703;-2.24681;-1.91871;,
 3.43703;-0.47946;3.80782;,
 3.43703;-2.24681;2.82531;,
 5.72428;-2.24683;2.82531;,
 5.72429;-0.47945;3.80782;,
 5.72428;-2.97888;0.45330;,
 3.43702;-2.97888;0.45330;,
 3.43703;1.28842;-2.99735;,
 5.72429;0.38416;-2.42111;,
 0.28104;1.75267;-1.92203;,
 3.43703;1.16917;3.75735;,
 5.72429;0.56671;3.22622;,
 0.28104;1.56036;2.97693;,
 10.78950;0.03438;0.45330;,
 10.78949;-0.90374;-0.81833;,
 10.78950;0.03437;-1.34505;,
 10.78949;-1.29224;0.45330;,
 10.78949;-0.90374;1.72492;,
 10.78950;0.03436;2.25164;,
 10.78950;1.36095;0.45330;,
 10.78950;0.97241;1.72492;,
 10.78950;0.97241;-0.81832;,
 10.78950;0.49276;-1.08766;,
 10.78950;0.58965;1.93985;,
 10.95205;0.64510;-1.66648;,
 10.95205;1.30528;-1.29598;,
 10.95205;0.01417;-2.02056;,
 11.01655;1.84711;0.45330;,
 10.95203;-1.27696;-1.29599;,
 10.95205;1.30528;2.20257;,
 10.95204;-1.81172;0.45330;,
 10.95205;0.77845;2.49824;,
 10.95203;-1.27696;2.20258;,
 10.95205;0.01417;2.92715;,
 11.89343;2.15151;0.21992;,
 12.32950;1.99169;-0.34808;,
 11.89343;1.99169;-0.58335;,
 12.51011;1.99169;0.21992;,
 12.32950;1.99169;0.78792;,
 11.89343;1.99169;1.02319;,
 11.45737;1.99169;0.78792;,
 11.27673;1.99169;0.21992;,
 11.45737;1.99169;-0.34808;,
 12.69915;1.53674;-0.82960;,
 11.89343;1.53674;-1.26433;,
 13.03290;1.53674;0.21992;,
 12.69915;1.53674;1.26945;,
 11.89343;1.53674;1.70417;,
 11.08769;1.53674;1.26945;,
 10.75395;1.53674;0.21992;,
 11.08769;1.53674;-0.82960;,
 12.94616;0.85576;-1.15135;,
 11.89343;0.85576;-1.71934;,
 13.38223;0.85576;0.21992;,
 12.94616;0.85576;1.59119;,
 11.89343;0.85576;2.15919;,
 10.84068;0.85576;1.59119;,
 10.40462;0.85576;0.21992;,
 10.84068;0.85576;-1.15135;,
 11.89343;-0.75082;-1.71934;,
 12.94616;-0.75082;-1.15135;,
 12.69915;-1.43181;-0.82960;,
 11.89343;-1.43181;-1.26433;,
 13.38223;-0.75082;0.21992;,
 13.03290;-1.43181;0.21992;,
 12.94616;-0.75082;1.59119;,
 12.69915;-1.43181;1.26945;,
 11.89343;-0.75082;2.15919;,
 11.89343;-1.43181;1.70417;,
 10.84068;-0.75082;1.59119;,
 11.08769;-1.43181;1.26945;,
 10.40462;-0.75082;0.21992;,
 10.75395;-1.43181;0.21992;,
 10.84068;-0.75082;-1.15135;,
 11.08769;-1.43181;-0.82960;,
 12.32950;-1.88676;-0.34808;,
 11.89343;-1.88676;-0.58335;,
 12.51011;-1.88676;0.21992;,
 12.32950;-1.88676;0.78792;,
 11.89343;-1.88676;1.02319;,
 11.45737;-1.88676;0.78792;,
 11.27673;-1.88676;0.21992;,
 11.45737;-1.88676;-0.34808;,
 11.89343;-2.04658;0.21992;,
 11.89343;0.21301;-1.84719;,
 13.01556;0.21301;-1.24175;,
 10.77128;0.21301;-1.24175;,
 13.48038;0.21301;0.21992;,
 10.30647;0.21301;0.21992;,
 13.01556;0.21301;1.68159;,
 10.77128;0.21301;1.68159;,
 11.89343;0.21301;2.28704;,
 11.89343;-0.07116;-1.85453;,
 13.01955;-0.07116;-1.24694;,
 10.76730;-0.07116;-1.24694;,
 13.48601;-0.07116;0.21992;,
 10.30084;-0.07116;0.21992;,
 13.01955;-0.07116;1.68678;,
 10.76730;-0.07116;1.68678;,
 11.89343;-0.07116;2.29438;,
 12.86620;0.17950;-1.11822;,
 11.89343;0.17650;-1.66362;,
 12.88354;0.05247;-1.14080;,
 11.89343;0.05247;-1.69556;,
 10.92065;0.17950;-1.11822;,
 10.90331;0.05247;-1.14080;,
 13.28069;0.18251;0.21992;,
 13.30520;0.05247;0.21992;,
 10.50616;0.18251;0.21992;,
 10.48165;0.05247;0.21992;,
 12.86620;0.17950;1.55806;,
 12.88353;0.05247;1.58064;,
 10.92065;0.17950;1.55806;,
 10.90332;0.05247;1.58064;,
 11.89343;0.17650;2.10347;,
 11.89343;0.05247;2.13541;,
 11.89343;-0.03465;-1.67096;,
 12.87018;-0.03766;-1.12341;,
 10.91666;-0.03766;-1.12341;,
 13.28632;-0.04067;0.21992;,
 10.50053;-0.04067;0.21992;,
 12.87018;-0.03766;1.56325;,
 10.91666;-0.03766;1.56325;,
 11.89343;-0.03465;2.11081;;
 
 156;
 3;0,1,2;,
 3;0,2,3;,
 3;0,3,4;,
 3;0,4,5;,
 3;0,6,7;,
 3;0,7,8;,
 4;9,10,11,12;,
 4;9,12,8,7;,
 4;9,7,6,13;,
 4;9,13,14,10;,
 4;15,16,17,18;,
 4;15,18,2,1;,
 4;19,5,4,20;,
 4;19,20,21,22;,
 4;18,17,23,24;,
 4;18,24,3,2;,
 4;20,4,3,24;,
 4;20,24,23,21;,
 4;25,12,11,26;,
 4;25,26,16,15;,
 4;25,15,1,27;,
 4;25,27,8,12;,
 3;27,0,8;,
 3;27,1,0;,
 4;28,19,22,29;,
 4;28,29,14,13;,
 4;28,13,6,30;,
 4;28,30,5,19;,
 3;30,0,5;,
 3;30,6,0;,
 3;31,32,33;,
 3;31,34,32;,
 3;31,35,34;,
 3;31,36,35;,
 3;31,37,38;,
 3;31,39,37;,
 3;40,31,33;,
 3;40,39,31;,
 3;41,31,38;,
 3;41,36,31;,
 4;42,26,11,43;,
 4;42,43,39,40;,
 4;42,40,33,44;,
 4;42,44,16,26;,
 4;43,11,10,45;,
 4;43,45,37,39;,
 4;44,33,32,46;,
 4;44,46,17,16;,
 4;45,10,14,47;,
 4;45,47,38,37;,
 4;46,32,34,48;,
 4;46,48,23,17;,
 4;47,14,29,49;,
 4;47,49,41,38;,
 4;48,34,35,50;,
 4;48,50,21,23;,
 4;49,29,22,51;,
 4;49,51,36,41;,
 4;50,35,36,51;,
 4;50,51,22,21;,
 3;52,53,54;,
 3;52,55,53;,
 3;52,56,55;,
 3;52,57,56;,
 3;52,58,57;,
 3;52,59,58;,
 3;52,60,59;,
 3;52,54,60;,
 4;54,53,61,62;,
 4;53,55,63,61;,
 4;55,56,64,63;,
 4;56,57,65,64;,
 4;57,58,66,65;,
 4;58,59,67,66;,
 4;59,60,68,67;,
 4;60,54,62,68;,
 4;62,61,69,70;,
 4;61,63,71,69;,
 4;63,64,72,71;,
 4;64,65,73,72;,
 4;65,66,74,73;,
 4;66,67,75,74;,
 4;67,68,76,75;,
 4;68,62,70,76;,
 4;77,78,79,80;,
 4;78,81,82,79;,
 4;81,83,84,82;,
 4;83,85,86,84;,
 4;85,87,88,86;,
 4;87,89,90,88;,
 4;89,91,92,90;,
 4;91,77,80,92;,
 4;80,79,93,94;,
 4;79,82,95,93;,
 4;82,84,96,95;,
 4;84,86,97,96;,
 4;86,88,98,97;,
 4;88,90,99,98;,
 4;90,92,100,99;,
 4;92,80,94,100;,
 3;94,93,101;,
 3;93,95,101;,
 3;95,96,101;,
 3;96,97,101;,
 3;97,98,101;,
 3;98,99,101;,
 3;99,100,101;,
 3;100,94,101;,
 4;102,70,69,103;,
 4;102,104,76,70;,
 4;103,69,71,105;,
 4;104,106,75,76;,
 4;105,71,72,107;,
 4;106,108,74,75;,
 4;107,72,73,109;,
 4;108,109,73,74;,
 4;110,111,78,77;,
 4;110,77,91,112;,
 4;111,113,81,78;,
 4;112,91,89,114;,
 4;113,115,83,81;,
 4;114,89,87,116;,
 4;115,117,85,83;,
 4;116,87,85,117;,
 4;118,119,102,103;,
 4;119,118,120,121;,
 4;119,122,104,102;,
 4;119,121,123,122;,
 4;124,118,103,105;,
 4;118,124,125,120;,
 4;122,126,106,104;,
 4;122,123,127,126;,
 4;128,124,105,107;,
 4;124,128,129,125;,
 4;126,130,108,106;,
 4;126,127,131,130;,
 4;132,128,107,109;,
 4;128,132,133,129;,
 4;130,132,109,108;,
 4;130,131,133,132;,
 4;134,135,111,110;,
 4;134,121,120,135;,
 4;136,134,110,112;,
 4;134,136,123,121;,
 4;135,137,113,111;,
 4;135,120,125,137;,
 4;138,136,112,114;,
 4;136,138,127,123;,
 4;137,139,115,113;,
 4;137,125,129,139;,
 4;140,138,114,116;,
 4;138,140,131,127;,
 4;139,141,117,115;,
 4;139,129,133,141;,
 4;141,140,116,117;,
 4;140,141,133,131;;
 
 MeshMaterialList {
  11;
  156;
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8,
  8;;
  Material {
   0.316800;0.160000;0.097600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\student\\Documents\\Visual Studio 2015\\Projects\\Team3\\Data\\MODEL\\mqoファイル\\プレイヤー\\目.png";
   }
  }
  Material {
   0.097600;0.097600;0.097600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.920000;0.815120;0.743360;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.552000;0.486400;0.388800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.091200;0.351200;0.179200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.442400;0.373600;0.266400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.759200;0.420000;0.455200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.640000;0.586400;0.307200;1.000000;;
   11.000000;
   0.310000;0.310000;0.310000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;0.460000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  178;
  0.113487;-0.070250;-0.991053;,
  0.107797;-0.772460;-0.625847;,
  0.109510;-0.993986;0.000000;,
  0.107797;-0.772459;0.625849;,
  0.114914;-0.059232;0.991608;,
  0.157243;0.783118;0.601665;,
  0.129998;0.991514;0.000000;,
  0.172508;0.788937;-0.589763;,
  -0.998557;0.053694;0.000000;,
  -0.995881;0.089429;0.014974;,
  -0.997433;0.071612;0.000000;,
  -0.995881;0.089429;-0.014974;,
  -0.998557;0.053694;0.000000;,
  -1.000000;0.000003;0.000001;,
  -1.000000;0.000004;-0.000000;,
  -1.000000;0.000003;-0.000001;,
  -0.999359;0.035804;0.000000;,
  0.073508;0.997294;0.000001;,
  0.113333;0.879309;-0.462571;,
  0.098778;0.865104;0.491770;,
  -0.116593;-0.188002;-0.975224;,
  -0.104796;-0.176570;0.978693;,
  -0.120286;-0.758991;-0.639894;,
  -0.119764;-0.759031;0.639944;,
  -0.098879;-0.995099;0.000009;,
  0.033189;0.481261;-0.875949;,
  0.162270;0.479447;-0.862438;,
  -0.178560;0.471148;-0.863792;,
  0.028684;0.464506;0.885105;,
  0.147165;0.480410;0.864609;,
  -0.151798;0.438886;0.885628;,
  1.000000;-0.000004;-0.000000;,
  0.993096;-0.001039;0.117299;,
  0.990895;0.107705;0.080789;,
  0.988569;0.150766;-0.000002;,
  0.990894;0.107710;-0.080791;,
  0.993096;-0.001037;-0.117297;,
  0.987577;-0.131704;-0.085711;,
  0.980406;-0.196986;-0.000000;,
  0.987577;-0.131704;0.085710;,
  0.990661;-0.066745;0.118897;,
  0.990661;-0.066744;-0.118896;,
  0.101219;0.485151;-0.868552;,
  0.090000;0.758729;-0.645160;,
  0.972243;-0.002066;0.233965;,
  0.071501;0.997441;0.000001;,
  0.963525;0.214089;0.160582;,
  0.090031;0.758728;0.645156;,
  0.954347;0.298699;-0.000003;,
  0.101289;0.485147;0.868547;,
  0.963522;0.214099;-0.160585;,
  0.166347;0.003665;0.986061;,
  -0.026183;0.924048;-0.381380;,
  -0.036353;0.999339;0.000002;,
  -0.026035;0.909042;0.415889;,
  -0.238087;-0.730189;-0.640421;,
  -0.284397;-0.228546;-0.931066;,
  -0.263070;-0.226355;0.937847;,
  -0.237069;-0.730364;0.640599;,
  -0.198162;-0.980169;0.000018;,
  -1.000000;0.000004;-0.000001;,
  -1.000000;0.000004;0.000001;,
  0.962817;-0.132243;0.235574;,
  0.950087;-0.261489;0.170172;,
  0.166302;0.003670;-0.986068;,
  0.921992;-0.387209;-0.000000;,
  0.213994;-0.759274;-0.614581;,
  0.950086;-0.261490;-0.170174;,
  0.217444;-0.976073;0.000000;,
  0.962818;-0.132240;-0.235572;,
  0.213994;-0.759273;0.614582;,
  0.972244;-0.002062;-0.233961;,
  0.000001;1.000000;-0.000000;,
  -0.000000;0.925303;-0.379230;,
  0.334484;0.904954;-0.263019;,
  0.464190;0.885736;-0.000000;,
  0.334483;0.904955;0.263018;,
  -0.000000;0.925303;0.379229;,
  -0.334477;0.904956;0.263021;,
  -0.464182;0.885740;-0.000001;,
  -0.334480;0.904954;-0.263023;,
  0.000003;0.710544;-0.703653;,
  0.584649;0.660774;-0.470705;,
  0.786314;0.617827;-0.000001;,
  0.584648;0.660775;0.470705;,
  0.000003;0.710545;0.703652;,
  -0.584643;0.660779;0.470705;,
  -0.786311;0.617831;-0.000001;,
  -0.584645;0.660777;-0.470706;,
  0.000004;0.385598;-0.922667;,
  0.726071;0.342528;-0.596235;,
  0.951274;0.308348;-0.000000;,
  0.726072;0.342527;0.596234;,
  0.000004;0.385599;0.922667;,
  -0.726071;0.342528;0.596234;,
  -0.951274;0.308347;-0.000000;,
  -0.726070;0.342529;-0.596235;,
  0.000003;-0.385591;-0.922670;,
  0.726072;-0.342522;-0.596236;,
  0.951276;-0.308342;-0.000000;,
  0.726074;-0.342522;0.596235;,
  0.000003;-0.385592;0.922669;,
  -0.726074;-0.342519;0.596236;,
  -0.951277;-0.308337;-0.000000;,
  -0.726073;-0.342520;-0.596237;,
  0.000003;-0.710540;-0.703657;,
  0.584652;-0.660770;-0.470708;,
  0.786317;-0.617823;-0.000001;,
  0.584651;-0.660771;0.470707;,
  0.000002;-0.710541;0.703656;,
  -0.584646;-0.660775;0.470708;,
  -0.786314;-0.617827;-0.000001;,
  -0.584648;-0.660773;-0.470708;,
  -0.000000;-0.925303;-0.379230;,
  0.334484;-0.904954;-0.263019;,
  0.464190;-0.885736;-0.000000;,
  0.334483;-0.904955;0.263018;,
  -0.000000;-0.925303;0.379229;,
  -0.334477;-0.904956;0.263021;,
  -0.464182;-0.885740;-0.000001;,
  -0.334480;-0.904954;-0.263023;,
  0.000001;-1.000000;-0.000000;,
  0.000004;0.195085;-0.980786;,
  0.759336;0.170319;-0.628014;,
  -0.759335;0.170319;-0.628014;,
  0.988541;0.150952;0.000000;,
  -0.988541;0.150952;0.000000;,
  0.759338;0.170319;0.628011;,
  -0.759337;0.170319;0.628011;,
  0.000004;0.195085;0.980786;,
  0.000003;-0.195083;-0.980787;,
  0.759336;-0.170319;-0.628013;,
  -0.759337;-0.170313;-0.628014;,
  0.988541;-0.150952;-0.000000;,
  -0.988542;-0.150943;0.000000;,
  0.759338;-0.170319;0.628010;,
  -0.759339;-0.170313;0.628011;,
  0.000003;-0.195084;0.980787;,
  0.000003;-0.011029;-0.999939;,
  0.778386;-0.008985;-0.627722;,
  0.999973;-0.007393;0.000003;,
  0.778388;-0.008979;0.627719;,
  0.000002;-0.011032;0.999939;,
  -0.778388;-0.008957;0.627720;,
  -0.999973;-0.007364;0.000003;,
  -0.778385;-0.008956;-0.627723;,
  0.000001;-0.984337;-0.176298;,
  0.130631;-0.984968;-0.113024;,
  -0.130627;-0.984968;-0.113022;,
  0.162975;-0.986630;0.000000;,
  -0.162971;-0.986631;0.000000;,
  0.130631;-0.984968;0.113023;,
  -0.130628;-0.984968;0.113021;,
  0.000001;-0.984337;0.176297;,
  -0.000000;0.984341;-0.176274;,
  0.130587;0.984976;-0.113004;,
  -0.130590;0.984975;-0.113006;,
  0.162910;0.986641;-0.000000;,
  -0.162916;0.986640;-0.000000;,
  0.130588;0.984976;0.113003;,
  -0.130591;0.984975;0.113005;,
  -0.000000;0.984341;0.176273;,
  0.000005;0.247882;-0.968790;,
  0.760487;0.212818;-0.613489;,
  -0.760483;0.212831;-0.613489;,
  0.982421;0.186679;0.000003;,
  -0.982421;0.186679;0.000003;,
  0.760494;0.212786;0.613490;,
  -0.760493;0.212786;0.613492;,
  0.000002;0.247847;0.968799;,
  0.000001;-0.268844;-0.963184;,
  0.757604;-0.230236;-0.610760;,
  -0.757611;-0.230194;-0.610767;,
  0.979563;-0.201137;0.000003;,
  -0.979575;-0.201082;0.000003;,
  0.757614;-0.230192;0.610764;,
  -0.757621;-0.230151;0.610770;,
  0.000001;-0.268814;0.963192;;
  156;
  3;16,8,9;,
  3;16,9,10;,
  3;16,10,11;,
  3;16,11,12;,
  3;16,13,14;,
  3;16,14,15;,
  4;17,6,7,18;,
  4;17,18,52,53;,
  4;17,53,54,19;,
  4;17,19,5,6;,
  4;20,0,1,22;,
  4;20,22,55,56;,
  4;21,57,58,23;,
  4;21,23,3,4;,
  4;22,1,2,24;,
  4;22,24,59,55;,
  4;23,58,59,24;,
  4;23,24,2,3;,
  4;25,18,7,26;,
  4;25,26,0,20;,
  4;25,20,56,27;,
  4;25,27,52,18;,
  3;60,16,15;,
  3;60,8,16;,
  4;28,21,4,29;,
  4;28,29,5,19;,
  4;28,19,54,30;,
  4;28,30,57,21;,
  3;61,16,12;,
  3;61,13,16;,
  3;31,33,32;,
  3;31,34,33;,
  3;31,35,34;,
  3;31,36,35;,
  3;31,38,37;,
  3;31,39,38;,
  3;40,31,32;,
  3;40,39,31;,
  3;41,31,37;,
  3;41,36,31;,
  4;42,26,7,43;,
  4;62,63,39,40;,
  4;62,40,32,44;,
  4;42,64,0,26;,
  4;43,7,6,45;,
  4;63,65,38,39;,
  4;44,32,33,46;,
  4;64,66,1,0;,
  4;45,6,5,47;,
  4;65,67,37,38;,
  4;46,33,34,48;,
  4;66,68,2,1;,
  4;47,5,29,49;,
  4;67,69,41,37;,
  4;48,34,35,50;,
  4;68,70,3,2;,
  4;49,29,4,51;,
  4;69,71,36,41;,
  4;50,35,36,71;,
  4;70,51,4,3;,
  3;72,74,73;,
  3;72,75,74;,
  3;72,76,75;,
  3;72,77,76;,
  3;72,78,77;,
  3;72,79,78;,
  3;72,80,79;,
  3;72,73,80;,
  4;73,74,82,81;,
  4;74,75,83,82;,
  4;75,76,84,83;,
  4;76,77,85,84;,
  4;77,78,86,85;,
  4;78,79,87,86;,
  4;79,80,88,87;,
  4;80,73,81,88;,
  4;81,82,90,89;,
  4;82,83,91,90;,
  4;83,84,92,91;,
  4;84,85,93,92;,
  4;85,86,94,93;,
  4;86,87,95,94;,
  4;87,88,96,95;,
  4;88,81,89,96;,
  4;97,98,106,105;,
  4;98,99,107,106;,
  4;99,100,108,107;,
  4;100,101,109,108;,
  4;101,102,110,109;,
  4;102,103,111,110;,
  4;103,104,112,111;,
  4;104,97,105,112;,
  4;105,106,114,113;,
  4;106,107,115,114;,
  4;107,108,116,115;,
  4;108,109,117,116;,
  4;109,110,118,117;,
  4;110,111,119,118;,
  4;111,112,120,119;,
  4;112,105,113,120;,
  3;113,114,121;,
  3;114,115,121;,
  3;115,116,121;,
  3;116,117,121;,
  3;117,118,121;,
  3;118,119,121;,
  3;119,120,121;,
  3;120,113,121;,
  4;122,89,90,123;,
  4;122,124,96,89;,
  4;123,90,91,125;,
  4;124,126,95,96;,
  4;125,91,92,127;,
  4;126,128,94,95;,
  4;127,92,93,129;,
  4;128,129,93,94;,
  4;130,131,98,97;,
  4;130,97,104,132;,
  4;131,133,99,98;,
  4;132,104,103,134;,
  4;133,135,100,99;,
  4;134,103,102,136;,
  4;135,137,101,100;,
  4;136,102,101,137;,
  4;147,146,146,147;,
  4;162,163,139,138;,
  4;146,148,148,146;,
  4;162,138,145,164;,
  4;149,147,147,149;,
  4;163,165,140,139;,
  4;148,150,150,148;,
  4;164,145,144,166;,
  4;151,149,149,151;,
  4;165,167,141,140;,
  4;150,152,152,150;,
  4;166,144,143,168;,
  4;153,151,151,153;,
  4;167,169,142,141;,
  4;152,153,153,152;,
  4;168,143,142,169;,
  4;154,155,155,154;,
  4;170,138,139,171;,
  4;156,154,154,156;,
  4;170,172,145,138;,
  4;155,157,157,155;,
  4;171,139,140,173;,
  4;158,156,156,158;,
  4;172,174,144,145;,
  4;157,159,159,157;,
  4;173,140,141,175;,
  4;160,158,158,160;,
  4;174,176,143,144;,
  4;159,161,161,159;,
  4;175,141,142,177;,
  4;161,160,160,161;,
  4;176,177,142,143;;
 }
}
