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
 276;
 0.86821;-0.40591;-0.46548;,
 -0.86823;-0.40591;-0.46548;,
 -0.86823;-0.83593;-0.46548;,
 0.86821;-0.83593;-0.46548;,
 -0.86823;1.56626;-3.17390;,
 0.86821;1.56626;-3.17390;,
 0.86821;1.56626;-3.70118;,
 -0.86823;1.56626;-3.70118;,
 0.86821;0.47349;-3.36909;,
 0.86821;0.55395;-3.14804;,
 0.86821;-0.38625;-2.51993;,
 0.86821;-0.56824;-2.70191;,
 -0.86823;0.55395;-3.14804;,
 -0.86823;0.47349;-3.36909;,
 -0.86823;-0.56824;-2.70191;,
 -0.86823;-0.38625;-2.51993;,
 0.86821;-0.61743;-1.39635;,
 0.86821;-0.82499;-1.46690;,
 -0.86823;-0.82499;-1.46690;,
 -0.86823;-0.61743;-1.39635;,
 0.44501;-0.15962;-2.20402;,
 -0.44502;-0.15962;-2.20402;,
 -0.44502;-0.15962;-2.39366;,
 0.44501;-0.15962;-2.39366;,
 -0.44502;1.49234;-1.74679;,
 0.44501;1.49234;-1.74679;,
 0.44501;1.49234;-1.93644;,
 -0.44502;1.49234;-1.93644;,
 0.44501;1.07186;-1.76823;,
 0.44501;1.07186;-1.95786;,
 -0.44502;1.07186;-1.76823;,
 -0.44502;1.07186;-1.95786;,
 0.44501;0.64713;-1.83223;,
 0.44501;0.64713;-2.02188;,
 -0.44502;0.64713;-2.02188;,
 -0.44502;0.64713;-1.83223;,
 0.44501;0.22932;-1.96728;,
 0.44501;0.22932;-2.15693;,
 -0.44502;0.22932;-2.15693;,
 -0.44502;0.22932;-1.96728;,
 0.65664;2.84389;-7.02951;,
 0.65664;2.84389;1.26205;,
 0.65664;1.53061;1.26205;,
 0.65664;1.53061;-7.02951;,
 -0.65665;2.84389;1.26205;,
 -0.65665;1.53061;1.26205;,
 -0.65665;2.84389;-7.02951;,
 -0.65665;1.53061;-7.02951;,
 1.12835;3.66605;-10.34644;,
 -1.12836;3.66605;-10.34644;,
 -0.96891;4.04431;-10.34644;,
 0.96889;4.04431;-10.34644;,
 -1.28110;3.66606;2.22385;,
 -1.28110;2.83709;1.45159;,
 -1.09758;2.62359;1.60909;,
 -1.09757;3.50977;2.43208;,
 -1.09757;3.66606;2.48476;,
 -1.10305;4.04434;2.61230;,
 1.09756;3.66606;2.48476;,
 1.28109;3.66606;2.22384;,
 1.10306;4.04434;2.61230;,
 1.09756;3.50977;2.43208;,
 1.09756;2.62359;1.60909;,
 1.28108;2.83709;1.45159;,
 1.09756;2.11082;1.42859;,
 -1.09758;2.11082;1.42859;,
 1.28108;2.11082;1.15623;,
 1.28108;2.48408;1.29698;,
 -1.28110;2.48307;1.29473;,
 -1.28110;2.11082;1.15557;,
 -1.28110;2.11082;-8.61097;,
 -1.28110;2.11082;-1.07294;,
 -1.28110;2.11082;-1.07294;,
 -1.28110;2.11082;-8.61097;,
 1.28108;2.11082;-1.07294;,
 1.28108;2.11082;-8.61097;,
 1.28108;2.11082;-8.61097;,
 1.28108;2.11082;-1.07294;,
 -1.28110;2.11082;-8.61097;,
 -1.28110;2.11082;-1.07294;,
 1.28108;2.11082;-1.07294;,
 1.28108;2.11082;-8.61097;,
 -1.28110;2.11082;-8.61097;,
 -1.28110;2.11082;-1.07294;,
 1.28108;2.11082;-1.07294;,
 1.28108;2.11082;-8.61097;,
 -1.28110;2.11082;-8.61097;,
 -1.28110;2.11082;-1.07294;,
 1.28108;2.11082;-1.07294;,
 1.28108;2.11082;-8.61097;,
 -1.28110;3.19860;-10.34644;,
 1.28108;3.19860;-10.34644;,
 1.28108;2.38855;-10.34644;,
 -1.28110;2.38855;-10.34644;,
 1.12835;3.19860;-2.59535;,
 1.12835;3.66605;-2.51688;,
 1.28108;3.66605;-2.51688;,
 1.28108;3.19860;-2.59535;,
 -1.12837;3.66606;-2.51688;,
 -1.12837;3.19860;-2.59535;,
 -1.28110;3.19860;-2.59535;,
 -1.28110;3.66606;-2.51688;,
 -0.96613;4.04431;-2.45337;,
 0.96951;4.04431;-2.45337;,
 -1.10307;4.04431;-2.45337;,
 1.10305;4.04431;-2.45337;,
 1.12835;3.19860;-10.34644;,
 -1.12836;3.19860;-10.34644;,
 -1.28110;2.38855;-8.61097;,
 1.28108;2.38855;-8.61097;,
 1.28108;3.66605;-2.51688;,
 -1.28110;3.66606;-2.51688;,
 -1.08128;1.05205;1.52329;,
 -1.09725;-5.00954;2.97080;,
 1.09788;-5.00954;2.97080;,
 1.08126;1.05205;1.52329;,
 1.09756;1.94487;1.38106;,
 -1.09758;1.94487;1.38106;,
 1.09210;1.07499;-1.01569;,
 1.09210;-5.00960;0.44771;,
 -1.09212;-5.00960;0.44771;,
 -1.09212;1.07499;-1.01569;,
 1.28108;1.71882;-1.13693;,
 1.28108;1.66458;-0.93850;,
 1.09210;1.33365;-1.20733;,
 1.09210;1.42104;-1.38147;,
 -1.28110;1.66458;-0.93850;,
 -1.28110;1.71882;-1.13693;,
 -1.09212;1.42104;-1.38147;,
 -1.09212;1.33365;-1.20733;,
 -1.28109;-5.00954;0.94093;,
 1.28110;-5.00954;0.94093;,
 1.28108;1.45628;-0.68800;,
 1.28108;1.55459;-0.76734;,
 -1.28110;1.55459;-0.76734;,
 -1.28110;1.45628;-0.68800;,
 1.28108;1.20128;-0.62288;,
 1.09210;1.23434;-1.09821;,
 1.28108;1.07114;-0.58965;,
 -1.28110;1.20128;-0.62288;,
 -1.09212;1.23434;-1.09821;,
 -1.28110;1.07114;-0.58965;,
 1.28110;-5.00954;2.65691;,
 -1.28109;-5.00954;2.65691;,
 1.28108;1.05491;1.20756;,
 -1.28110;1.05491;1.20756;,
 1.28108;1.87339;1.07838;,
 -1.28110;1.87339;1.07838;,
 1.00338;2.35760;-8.61097;,
 1.00338;2.35760;-10.34644;,
 1.28108;2.35760;-10.34644;,
 1.28108;2.35760;-8.61097;,
 -1.00340;2.35760;-10.34644;,
 -1.00340;2.35760;-8.61097;,
 -1.28110;2.35760;-8.61097;,
 -1.28110;2.35760;-10.34644;,
 1.00338;1.74051;-8.61097;,
 0.85521;1.45117;-8.61130;,
 0.85531;1.45118;-10.34644;,
 1.00338;1.74051;-10.34644;,
 -1.00340;1.74051;-10.34644;,
 -0.85533;1.45118;-10.34644;,
 -0.86152;1.45117;-8.61084;,
 -1.00340;1.74051;-8.61097;,
 1.09756;2.07987;1.42859;,
 -1.09758;2.07987;1.42859;,
 1.28108;2.07987;1.15623;,
 -1.28110;2.07987;1.15557;,
 1.00338;2.07987;-8.61097;,
 1.00338;2.07987;-10.34644;,
 -1.00340;2.07987;-10.34644;,
 -1.00340;2.07987;-8.61097;,
 1.28109;2.07987;-0.24924;,
 -1.28110;2.07987;-0.24924;,
 -1.28110;2.07987;-8.61097;,
 -1.28110;2.07987;-1.07294;,
 -1.28110;2.07987;-1.07294;,
 -1.28110;2.07987;-8.61097;,
 1.28108;2.07987;-1.07294;,
 1.28108;2.07987;-8.61097;,
 1.28108;2.07987;-8.61097;,
 1.28108;2.07987;-1.07294;,
 -1.28110;2.07987;-8.61097;,
 -1.28110;2.07987;-1.07294;,
 1.28108;2.07987;-1.07294;,
 1.28108;2.07987;-8.61097;,
 -1.28110;2.07987;-8.61097;,
 -1.28110;2.07987;-1.07294;,
 1.28108;2.07987;-1.07294;,
 1.28108;2.07987;-8.61097;,
 -1.28110;2.07987;-8.61097;,
 -1.28110;2.07987;-1.07294;,
 1.28108;2.07987;-1.07294;,
 1.28108;2.07987;-8.61097;,
 -1.14225;2.07987;-1.07294;,
 -1.14225;1.74051;-1.37543;,
 -1.28110;1.74051;-1.37543;,
 -1.14225;2.07987;-8.61097;,
 -1.14225;1.74051;-8.61097;,
 1.14223;1.74051;-1.37543;,
 1.14223;2.07987;-1.07294;,
 1.28108;1.74051;-1.37543;,
 1.14223;1.74051;-8.61097;,
 1.14223;2.07987;-8.61097;,
 -0.97336;1.33365;-1.20733;,
 -0.97360;1.42104;-1.38147;,
 -0.97321;1.23434;-1.09821;,
 -0.97309;1.07499;-1.01569;,
 0.98441;1.42104;-1.38147;,
 0.98466;1.33365;-1.20733;,
 0.98482;1.23434;-1.09821;,
 0.98493;1.07499;-1.01569;,
 -0.97862;1.45118;-8.61097;,
 0.98350;1.45118;-8.61770;,
 1.00338;2.35760;-8.61097;,
 1.00338;2.35760;-10.34644;,
 1.28108;2.35760;-10.34644;,
 1.28108;2.35760;-8.61097;,
 -1.00340;2.35760;-10.34644;,
 -1.00340;2.35760;-8.61097;,
 -1.28110;2.35760;-8.61097;,
 -1.28110;2.35760;-10.34644;,
 1.00338;2.07987;-8.61097;,
 1.28108;2.07987;-8.61097;,
 -1.00340;2.07987;-8.61097;,
 -1.28110;2.07987;-8.61097;,
 -1.28110;2.07987;-8.61097;,
 -1.28110;2.07987;-1.07294;,
 -1.28110;2.07987;-1.07294;,
 1.28108;2.07987;-1.07294;,
 1.28108;2.07987;-8.61097;,
 1.28108;2.07987;-1.07294;,
 -1.28110;2.07987;-8.61097;,
 -1.28110;2.07987;-1.07294;,
 1.28108;2.07987;-1.07294;,
 1.28108;2.07987;-8.61097;,
 -1.28110;2.07987;-8.61097;,
 -1.28110;2.07987;-1.07294;,
 1.28108;2.07987;-1.07294;,
 1.28108;2.07987;-8.61097;,
 -1.28110;2.07987;-8.61097;,
 -1.28110;2.07987;-1.07294;,
 1.28108;2.07987;-1.07294;,
 1.28108;2.07987;-8.61097;,
 -1.14225;2.07987;-8.61097;,
 -1.14225;2.07987;-1.07294;,
 1.14223;2.07987;-1.07294;,
 1.14223;2.07987;-8.61097;,
 0.27159;4.19109;-10.10267;,
 0.27159;4.19109;-8.99974;,
 0.27159;3.64782;-8.99974;,
 0.27159;3.64782;-10.10267;,
 -0.27162;4.19109;-8.99974;,
 -0.27162;3.64782;-8.99974;,
 -0.27162;4.19109;-10.10267;,
 -0.27162;3.64782;-10.10267;,
 0.71474;3.53843;1.17730;,
 0.71474;3.53843;1.96299;,
 -0.71476;3.53843;1.96299;,
 -0.71476;3.53843;1.17730;,
 0.71446;4.17444;1.96282;,
 0.71446;4.17444;1.17712;,
 0.64971;4.47873;1.17730;,
 0.64971;4.47873;1.96299;,
 -0.71448;4.17444;1.17751;,
 -0.71448;4.17444;1.96321;,
 -0.65033;4.47910;1.96321;,
 -0.65033;4.47910;1.17751;,
 0.17731;4.47801;1.96292;,
 0.17731;4.47801;1.17722;,
 -0.17737;4.47827;1.17751;,
 -0.17737;4.47827;1.96321;,
 -0.14215;4.17444;1.96282;,
 -0.14215;4.17444;1.17712;,
 0.11941;4.17415;1.17716;,
 0.11941;4.17415;1.96287;;
 
 227;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,6,5,9;,
 4;8,9,10,11;,
 4;12,4,7,13;,
 4;12,13,14,15;,
 4;9,5,4,12;,
 4;9,12,15,10;,
 4;13,7,6,8;,
 4;13,8,11,14;,
 4;16,0,3,17;,
 4;16,17,11,10;,
 4;18,2,1,19;,
 4;18,19,15,14;,
 4;19,1,0,16;,
 4;19,16,10,15;,
 4;17,3,2,18;,
 4;17,18,14,11;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;28,29,26,25;,
 4;30,24,27,31;,
 4;30,28,25,24;,
 4;29,31,27,26;,
 4;32,33,29,28;,
 4;34,35,30,31;,
 4;35,32,28,30;,
 4;33,34,31,29;,
 4;36,20,23,37;,
 4;36,37,33,32;,
 4;38,22,21,39;,
 4;38,39,35,34;,
 4;39,21,20,36;,
 4;39,36,32,35;,
 4;37,23,22,38;,
 4;37,38,34,33;,
 4;40,41,42,43;,
 4;41,44,45,42;,
 4;44,46,47,45;,
 4;46,40,43,47;,
 4;46,44,41,40;,
 4;43,42,45,47;,
 4;48,49,50,51;,
 4;52,53,54,55;,
 3;52,55,56;,
 3;57,52,56;,
 3;58,59,60;,
 4;57,56,58,60;,
 4;56,55,61,58;,
 4;55,54,62,61;,
 3;58,61,59;,
 4;61,62,63,59;,
 4;64,62,54,65;,
 4;64,66,67,62;,
 4;65,54,68,69;,
 4;70,71,72,73;,
 4;74,75,76,77;,
 4;78,79,71,70;,
 4;80,81,75,74;,
 4;82,83,79,78;,
 4;84,85,81,80;,
 4;86,87,83,82;,
 4;88,89,85,84;,
 4;69,72,77,66;,
 4;65,69,66,64;,
 4;90,91,92,93;,
 4;94,95,96,97;,
 4;98,99,100,101;,
 4;50,49,98,102;,
 4;48,51,103,95;,
 4;102,98,101,104;,
 4;102,103,51,50;,
 4;103,105,96,95;,
 4;48,106,107,49;,
 4;49,107,99,98;,
 4;107,90,100,99;,
 4;90,93,108,100;,
 4;108,73,72,100;,
 4;95,94,106,48;,
 4;91,106,94,97;,
 4;97,109,92,91;,
 4;97,77,76,109;,
 4;105,104,57,60;,
 4;60,59,110,105;,
 4;104,111,52,57;,
 4;111,100,53,52;,
 4;59,63,97,110;,
 3;67,63,62;,
 3;68,54,53;,
 4;100,72,68,53;,
 3;72,69,68;,
 4;63,67,77,97;,
 3;67,66,77;,
 4;73,76,77,72;,
 4;92,109,108,93;,
 4;109,76,73,108;,
 4;112,113,114,115;,
 4;112,115,116,117;,
 4;118,119,120,121;,
 4;122,123,124,125;,
 4;126,127,128,129;,
 4;130,120,119,131;,
 3;132,124,133;,
 3;134,129,135;,
 4;136,137,124,132;,
 4;136,138,118,137;,
 4;138,131,119,118;,
 4;139,135,129,140;,
 4;141,139,140,121;,
 4;141,121,120,130;,
 3;133,124,123;,
 3;129,134,126;,
 4;142,114,113,143;,
 4;142,143,130,131;,
 4;144,115,114,142;,
 4;144,142,131,138;,
 4;143,113,112,145;,
 4;143,145,141,130;,
 4;146,144,136,132;,
 4;145,147,135,139;,
 3;146,115,144;,
 3;147,112,117;,
 3;146,116,115;,
 3;147,145,112;,
 3;145,139,141;,
 3;144,138,136;,
 4;148,149,150,151;,
 4;152,153,154,155;,
 4;156,157,158,159;,
 4;160,161,162,163;,
 4;158,157,162,161;,
 4;159,158,161,160;,
 4;164,165,117,116;,
 4;164,116,146,166;,
 4;165,167,147,117;,
 4;168,156,159,169;,
 4;168,169,149,148;,
 4;170,160,163,171;,
 4;170,171,153,152;,
 4;169,159,160,170;,
 4;169,170,152,149;,
 4;166,146,132,133;,
 4;172,166,123,122;,
 3;166,133,123;,
 4;167,173,127,126;,
 3;167,126,134;,
 4;134,135,147,167;,
 4;174,175,176,177;,
 4;178,179,180,181;,
 4;182,183,175,174;,
 4;184,185,179,178;,
 4;186,187,183,182;,
 4;188,189,185,184;,
 4;190,191,187,186;,
 4;192,193,189,188;,
 4;194,195,196,191;,
 4;197,198,195,194;,
 4;199,200,192,201;,
 4;200,199,202,203;,
 4;204,129,128,205;,
 4;206,140,129,204;,
 4;207,121,140,206;,
 4;208,125,124,209;,
 4;208,209,204,205;,
 4;209,124,137,210;,
 4;209,210,206,204;,
 4;210,137,118,211;,
 4;210,211,207,206;,
 4;198,212,205,195;,
 4;199,208,213,202;,
 4;171,163,198,197;,
 4;163,162,212,198;,
 4;195,205,128,196;,
 4;176,196,127,173;,
 3;196,128,127;,
 4;181,172,122,201;,
 3;122,125,201;,
 4;199,201,125,208;,
 3;212,162,205;,
 3;208,157,213;,
 4;202,156,168,203;,
 4;202,213,157,156;,
 4;162,157,208,205;,
 4;214,215,216,217;,
 4;218,219,220,221;,
 4;222,214,217,223;,
 4;224,225,220,219;,
 4;226,227,228,225;,
 4;229,230,223,231;,
 4;232,233,227,226;,
 4;234,235,230,229;,
 4;236,237,233,232;,
 4;238,239,235,234;,
 4;240,241,237,236;,
 4;242,243,239,238;,
 4;244,245,241,240;,
 4;246,247,243,242;,
 4;150,155,154,151;,
 4;154,177,180,151;,
 4;167,166,180,177;,
 4;167,165,164,166;,
 4;248,249,250,251;,
 4;249,252,253,250;,
 4;252,254,255,253;,
 4;254,248,251,255;,
 4;254,252,249,248;,
 4;251,250,253,255;,
 4;256,257,258,259;,
 4;260,257,256,261;,
 4;260,261,262,263;,
 4;264,259,258,265;,
 4;264,265,266,267;,
 4;268,263,262,269;,
 4;270,267,266,271;,
 4;270,271,272,273;,
 4;274,273,272,275;,
 4;274,275,268,269;,
 4;268,275,260,263;,
 3;275,257,260;,
 4;275,272,258,257;,
 3;272,265,258;,
 4;266,265,272,271;,
 4;270,273,264,267;,
 3;273,259,264;,
 4;274,269,262,261;,
 4;273,274,256,259;,
 3;274,261,256;;
 
 MeshMaterialList {
  3;
  227;
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
  2;;
  Material {
   0.684000;0.684000;0.684000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.162450;0.162450;0.162450;;
  }
  Material {
   0.615200;0.426400;0.260000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.138400;0.138400;0.138400;1.000000;;
   5.000000;
   0.330000;0.330000;0.330000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  208;
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000001;0.000001;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.302443;0.953167;,
  0.000000;0.025542;0.999674;,
  0.000000;0.829616;0.558334;,
  0.000000;-0.418990;-0.907991;,
  0.000000;-0.290766;-0.956794;,
  0.000000;-0.823601;-0.567169;,
  0.000000;0.999947;-0.010255;,
  0.000000;0.975143;-0.221577;,
  0.000000;-0.994179;-0.107740;,
  0.000000;-0.999940;-0.010928;,
  0.000000;1.000000;0.000000;,
  0.000000;-0.871766;0.489923;,
  0.000000;-1.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;-0.000000;-0.000001;,
  -1.000000;-0.000000;-0.000001;,
  0.000000;-0.100076;0.994980;,
  0.000000;-0.050905;0.998703;,
  0.000000;0.100077;-0.994980;,
  0.000000;0.050870;-0.998705;,
  0.000000;-0.229045;0.973416;,
  0.000000;0.229063;-0.973412;,
  -1.000000;0.000000;-0.000001;,
  0.000000;-0.416610;0.909086;,
  0.000000;0.416597;-0.909091;,
  0.000000;0.519928;-0.854210;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.543014;-0.419239;0.727581;,
  -0.543658;-0.419480;0.726961;,
  0.448076;-0.291458;0.845151;,
  -0.448069;-0.291444;0.845159;,
  0.462845;-0.452439;0.762281;,
  -0.462838;-0.452439;0.762286;,
  0.000000;0.000000;-1.000000;,
  0.448757;-0.288415;0.845833;,
  -0.448749;-0.288409;0.845839;,
  -0.947689;-0.119453;0.296000;,
  0.947381;-0.119332;0.297034;,
  0.949907;-0.169808;0.262379;,
  -0.949964;-0.170327;0.261834;,
  0.938474;-0.077921;0.336443;,
  -0.938471;-0.077912;0.336456;,
  1.000000;-0.000000;0.000000;,
  -1.000000;0.000001;-0.000000;,
  0.453025;-0.299423;0.839711;,
  -0.454156;-0.298789;0.839325;,
  0.000000;0.000000;0.000000;,
  -0.951113;-0.105330;0.290328;,
  0.950719;-0.106148;0.291316;,
  0.000001;0.165563;-0.986199;,
  0.000000;0.165566;-0.986199;,
  0.975910;0.218173;-0.000002;,
  -0.975907;0.218185;0.000001;,
  0.000000;0.165564;-0.986199;,
  0.000000;0.165565;-0.986199;,
  0.000000;0.165566;-0.986199;,
  0.000000;0.165564;-0.986199;,
  0.921745;0.387798;-0.000036;,
  -0.920272;0.391278;0.000162;,
  0.000000;-1.000000;-0.000000;,
  -0.979865;0.199659;0.000082;,
  0.980241;0.197807;-0.000018;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;-0.000000;,
  -1.000000;0.000002;-0.000000;,
  -1.000000;0.000001;0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;-0.000000;0.000000;,
  1.000000;-0.000001;-0.000000;,
  1.000000;-0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;-0.000005;,
  0.904799;0.425838;-0.000003;,
  -0.904792;0.425854;0.000001;,
  0.890140;-0.455687;0.000024;,
  0.484415;0.203862;0.850754;,
  0.000000;-0.233840;-0.972275;,
  -0.484088;0.203877;0.850936;,
  -0.894059;-0.447946;-0.001588;,
  0.922429;-0.296351;-0.247592;,
  -0.922428;-0.296353;-0.247593;,
  -0.487775;-0.089563;0.868363;,
  0.487569;-0.089862;0.868448;,
  -0.580172;0.150967;0.800381;,
  0.580303;0.150955;0.800288;,
  0.881425;-0.461046;-0.102599;,
  -0.881424;-0.461048;-0.102599;,
  0.918611;-0.171850;-0.355840;,
  -0.918610;-0.171851;-0.355841;,
  0.000000;-0.349406;-0.936972;,
  0.972147;-0.234372;0.000012;,
  -0.973154;-0.230152;-0.000816;,
  0.976351;-0.193212;-0.096997;,
  -0.976351;-0.193209;-0.096998;,
  0.969991;-0.237333;-0.052815;,
  -0.969992;-0.237330;-0.052814;,
  0.000000;-1.000000;0.000063;,
  0.982099;-0.108051;-0.154291;,
  -0.982099;-0.108052;-0.154292;,
  -0.979459;-0.087690;-0.181575;,
  0.979460;-0.087690;-0.181574;,
  0.980863;-0.146025;-0.128780;,
  -0.980863;-0.146026;-0.128781;,
  0.978495;-0.061870;-0.196770;,
  -0.978496;-0.061871;-0.196766;,
  0.000000;-1.000000;-0.000000;,
  0.974948;0.043373;0.218165;,
  -0.974914;0.043396;0.218309;,
  0.943528;-0.010374;0.331131;,
  -0.943575;-0.010154;0.331003;,
  0.458022;-0.298584;0.837295;,
  -0.458474;-0.298069;0.837232;,
  0.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;-0.000008;-0.000002;,
  -0.988654;-0.051240;0.141200;,
  0.988618;-0.051524;0.141347;,
  0.000000;0.364841;-0.931070;,
  0.886861;-0.462035;-0.001057;,
  -0.877484;-0.479605;-0.000724;,
  0.971304;-0.237843;-0.000544;,
  -0.968887;-0.247503;-0.000374;,
  0.000000;0.665390;-0.746496;,
  0.000000;0.665390;-0.746496;,
  1.000000;-0.000000;0.000000;,
  0.000000;-0.824346;-0.566087;,
  -0.000014;-0.972594;-0.232509;,
  0.000000;-0.609273;-0.792960;,
  0.000000;-0.459869;-0.887987;,
  -0.000039;-0.972594;-0.232508;,
  0.000000;0.000000;-1.000000;,
  0.000000;-1.000000;0.000125;,
  0.914872;-0.121104;-0.385153;,
  0.979810;-0.047713;-0.194153;,
  0.920056;-0.093502;-0.380467;,
  -0.914876;-0.121103;-0.385143;,
  -0.920065;-0.093498;-0.380446;,
  -0.979812;-0.047714;-0.194142;,
  0.961137;0.064728;0.268376;,
  -0.961034;0.064785;0.268731;,
  -0.000000;-1.000000;-0.000004;,
  -0.000051;-0.999996;-0.002779;,
  -0.000019;-0.999996;-0.002780;,
  0.000000;-0.893756;-0.448553;,
  0.000000;-0.609273;-0.792960;,
  0.000000;-0.893756;-0.448553;,
  0.000000;-0.824346;-0.566087;,
  0.000283;0.000024;-1.000000;,
  0.000567;0.000049;-1.000000;,
  0.000000;0.018908;-0.999821;,
  -0.964402;-0.263354;-0.023957;,
  1.000000;0.000001;-0.000004;,
  0.964402;-0.263352;-0.023959;,
  -0.000056;-0.999991;-0.004168;,
  -0.000153;-0.999991;-0.004165;,
  -0.012454;0.012474;-0.999845;,
  -0.024904;0.024943;-0.999379;,
  0.000000;1.000000;0.000000;,
  0.000000;-0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;-0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.978098;0.208145;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -0.978541;0.206052;0.000000;,
  0.994487;0.104863;0.000000;,
  -0.994598;0.103799;0.000000;,
  0.993349;0.115143;0.000000;,
  -0.001515;0.999999;0.000000;,
  0.001750;0.999998;0.000000;,
  0.001108;0.999999;0.000000;,
  1.000000;0.000435;0.000000;,
  -1.000000;0.000434;0.000000;,
  -0.982324;0.187188;0.000000;,
  -0.000039;-0.000396;1.000000;,
  -0.000017;0.000010;1.000000;,
  0.000020;-0.000061;1.000000;,
  -0.000006;0.000213;1.000000;,
  0.000311;-0.000302;1.000000;,
  0.000297;-0.000095;1.000000;,
  0.000512;-0.000529;1.000000;,
  0.000341;-0.000716;1.000000;,
  -0.000340;0.000715;-1.000000;,
  -0.000310;0.000293;-1.000000;,
  -0.000511;0.000521;-1.000000;,
  -0.000295;0.000082;-1.000000;,
  0.000017;-0.000010;-1.000000;,
  0.000040;0.000420;-1.000000;,
  -0.000020;0.000067;-1.000000;,
  0.000006;-0.000225;-1.000000;;
  227;
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;4,6,6,4;,
  4;4,4,2,2;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;7,8,8,7;,
  4;7,7,9,9;,
  4;10,11,11,10;,
  4;10,10,12,12;,
  4;5,6,6,5;,
  4;5,5,2,2;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;13,14,14,13;,
  4;13,13,9,9;,
  4;15,16,16,15;,
  4;15,15,12,12;,
  4;18,18,19,19;,
  4;17,17,17,17;,
  4;20,20,20,20;,
  4;21,21,21,21;,
  4;24,24,25,25;,
  4;26,26,27,27;,
  4;20,20,20,20;,
  4;22,22,21,21;,
  4;28,28,24,24;,
  4;29,29,26,26;,
  4;20,20,20,20;,
  4;20,20,20,20;,
  4;23,30,30,23;,
  4;23,23,22,22;,
  4;31,18,18,31;,
  4;31,31,28,28;,
  4;32,33,33,32;,
  4;32,32,29,29;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;36,36,36,36;,
  4;37,37,37,37;,
  4;38,38,38,38;,
  4;39,39,39,39;,
  4;46,46,46,46;,
  4;54,52,41,45;,
  3;54,45,48;,
  3;43,54,48;,
  3;47,53,42;,
  4;43,48,47,42;,
  4;48,45,44,47;,
  4;45,41,40,44;,
  3;47,44,53;,
  4;44,40,51,53;,
  4;57,40,41,58;,
  4;57,61,50,40;,
  4;58,41,49,60;,
  4;59,59,59,59;,
  4;59,59,59,59;,
  4;59,59,59,59;,
  4;59,59,59,59;,
  4;59,59,59,59;,
  4;59,59,59,59;,
  4;59,59,59,59;,
  4;59,59,59,59;,
  4;72,72,72,72;,
  4;72,72,72,72;,
  4;46,46,46,46;,
  4;68,66,66,68;,
  4;67,69,69,67;,
  4;71,73,73,71;,
  4;74,70,70,74;,
  4;63,67,67,63;,
  4;75,75,75,75;,
  4;62,62,66,66;,
  4;46,46,46,46;,
  4;73,76,76,73;,
  4;75,75,75,75;,
  4;77,77,56,78;,
  4;56,79,79,78;,
  4;74,80,80,74;,
  4;75,75,75,75;,
  4;81,55,82,82;,
  4;81,83,84,55;,
  4;85,85,85,85;,
  4;86,53,64,86;,
  4;87,65,54,87;,
  4;65,78,52,54;,
  4;53,51,81,64;,
  3;50,51,40;,
  3;49,41,52;,
  4;78,79,49,52;,
  3;79,60,49;,
  4;51,50,83,81;,
  3;50,61,83;,
  4;72,72,72,72;,
  4;72,72,72,72;,
  4;46,46,46,46;,
  4;97,91,89,98;,
  4;97,98,96,95;,
  4;103,90,90,103;,
  4;108,106,93,99;,
  4;107,109,100,94;,
  4;110,146,146,110;,
  3;111,93,115;,
  3;116,94,112;,
  4;114,101,93,111;,
  4;114,117,147,101;,
  4;117,148,149,147;,
  4;113,112,94,102;,
  4;118,113,102,150;,
  4;118,150,151,152;,
  3;115,93,106;,
  3;94,116,107;,
  4;119,119,119,119;,
  4;119,119,110,110;,
  4;120,98,89,153;,
  4;120,153,148,117;,
  4;154,91,97,121;,
  4;154,121,118,152;,
  4;122,120,114,111;,
  4;121,123,112,113;,
  3;122,98,120;,
  3;123,97,95;,
  3;122,96,98;,
  3;123,121,97;,
  3;121,113,118;,
  3;120,117,114;,
  4;119,119,119,119;,
  4;119,119,119,119;,
  4;104,88,88,104;,
  4;105,92,92,105;,
  4;155,156,157,155;,
  4;145,145,145,145;,
  4;124,125,95,96;,
  4;124,96,122,131;,
  4;125,130,123,95;,
  4;127,104,104,127;,
  4;127,127,127,127;,
  4;128,105,105,128;,
  4;128,128,128,128;,
  4;145,145,145,145;,
  4;145,145,145,145;,
  4;131,122,111,115;,
  4;129,131,106,108;,
  3;131,115,106;,
  4;130,128,109,107;,
  3;130,107,116;,
  4;116,112,123,130;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;138,132,132,138;,
  4;128,136,136,128;,
  4;132,137,137,132;,
  4;139,135,135,139;,
  4;140,140,158,141;,
  4;142,159,140,140;,
  4;143,103,159,142;,
  4;144,160,161,140;,
  4;144,140,140,141;,
  4;140,161,142,142;,
  4;140,142,142,140;,
  4;142,142,103,143;,
  4;142,143,143,142;,
  4;136,134,134,136;,
  4;135,133,133,135;,
  4;145,162,162,145;,
  4;162,163,163,162;,
  4;132,164,164,132;,
  4;128,165,109,128;,
  3;165,100,109;,
  4;166,129,108,167;,
  3;108,99,167;,
  4;132,132,164,164;,
  3;168,157,141;,
  3;144,156,169;,
  4;170,170,145,145;,
  4;170,171,171,170;,
  4;157,156,144,141;,
  4;119,119,119,119;,
  4;119,119,119,119;,
  4;145,145,145,145;,
  4;145,145,145,145;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;126,126,126,126;,
  4;119,119,119,119;,
  4;119,119,119,119;,
  4;172,172,172,172;,
  4;173,173,173,173;,
  4;172,172,172,172;,
  4;172,172,172,172;,
  4;174,174,174,174;,
  4;175,175,175,175;,
  4;176,176,176,176;,
  4;177,177,177,177;,
  4;178,178,178,178;,
  4;179,179,179,179;,
  4;181,181,181,181;,
  4;183,189,189,183;,
  4;183,183,180,180;,
  4;184,190,190,184;,
  4;184,184,182,182;,
  4;186,186,186,186;,
  4;187,187,187,187;,
  4;185,185,185,185;,
  4;188,188,188,188;,
  4;191,191,191,191;,
  4;192,193,194,192;,
  3;193,195,194;,
  4;193,196,197,195;,
  3;196,198,197;,
  4;199,198,196,199;,
  4;200,201,202,200;,
  3;201,203,202;,
  4;204,205,205,206;,
  4;201,204,207,203;,
  3;204,206,207;;
 }
}