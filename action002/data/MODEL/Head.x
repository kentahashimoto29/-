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
 58;
 -0.07493;8.20893;0.00000;,
 1.04993;7.89255;-1.12486;,
 -0.07493;7.89255;-1.59079;,
 1.51586;7.89255;0.00000;,
 1.04993;7.89255;1.12486;,
 -0.07493;7.89255;1.59079;,
 -1.19979;7.89255;1.12486;,
 -1.66572;7.89255;0.00000;,
 -1.19979;7.89255;-1.12486;,
 2.00354;6.99139;-2.07846;,
 -0.07493;6.99139;-2.93940;,
 2.86447;6.99139;0.00000;,
 2.00354;6.99139;2.07846;,
 -0.07493;6.99139;2.93940;,
 -2.15340;6.99139;2.07846;,
 -3.01433;6.99139;0.00000;,
 -2.15340;6.99139;-2.07846;,
 2.64072;5.64277;-2.71565;,
 -0.07493;5.64277;-3.84051;,
 3.76558;5.64277;0.00000;,
 2.64072;5.64277;2.71565;,
 -0.07493;5.64277;3.84051;,
 -2.79058;5.64277;2.71565;,
 -3.91544;5.64277;0.00000;,
 -2.79058;5.64277;-2.71565;,
 2.86447;4.05202;-2.93940;,
 -0.07493;4.05202;-4.15693;,
 4.08200;4.05202;0.00000;,
 2.86447;4.05202;2.93940;,
 -0.07493;4.05202;4.15693;,
 -3.01433;4.05202;2.93940;,
 -4.23187;4.05202;0.00000;,
 -3.01433;4.05202;-2.93940;,
 2.64072;2.46121;-2.71565;,
 -0.07493;2.46121;-3.84051;,
 3.76558;2.46121;0.00000;,
 2.64072;2.46121;2.71565;,
 -0.07493;2.46121;3.84051;,
 -2.79058;2.46121;2.71565;,
 -3.91544;2.46121;0.00000;,
 -2.79058;2.46121;-2.71565;,
 2.00354;1.11264;-2.07846;,
 -0.07493;1.11264;-2.93940;,
 2.86447;1.11264;0.00000;,
 2.00354;1.11264;2.07846;,
 -0.07493;1.11264;2.93940;,
 -2.15340;1.11264;2.07846;,
 -3.01433;1.11264;0.00000;,
 -2.15340;1.11264;-2.07846;,
 1.04993;0.21146;-1.12486;,
 -0.07493;0.21146;-1.59079;,
 1.51586;0.21146;0.00000;,
 1.04993;0.21146;1.12486;,
 -0.07493;0.21146;1.59079;,
 -1.19979;0.21146;1.12486;,
 -1.66572;0.21146;0.00000;,
 -1.19979;0.21146;-1.12486;,
 -0.07493;-0.10492;0.00000;;
 
 64;
 3;0,1,2;,
 3;0,3,1;,
 3;0,4,3;,
 3;0,5,4;,
 3;0,6,5;,
 3;0,7,6;,
 3;0,8,7;,
 3;0,2,8;,
 4;2,1,9,10;,
 4;1,3,11,9;,
 4;3,4,12,11;,
 4;4,5,13,12;,
 4;5,6,14,13;,
 4;6,7,15,14;,
 4;7,8,16,15;,
 4;8,2,10,16;,
 4;10,9,17,18;,
 4;9,11,19,17;,
 4;11,12,20,19;,
 4;12,13,21,20;,
 4;13,14,22,21;,
 4;14,15,23,22;,
 4;15,16,24,23;,
 4;16,10,18,24;,
 4;18,17,25,26;,
 4;17,19,27,25;,
 4;19,20,28,27;,
 4;20,21,29,28;,
 4;21,22,30,29;,
 4;22,23,31,30;,
 4;23,24,32,31;,
 4;24,18,26,32;,
 4;26,25,33,34;,
 4;25,27,35,33;,
 4;27,28,36,35;,
 4;28,29,37,36;,
 4;29,30,38,37;,
 4;30,31,39,38;,
 4;31,32,40,39;,
 4;32,26,34,40;,
 4;34,33,41,42;,
 4;33,35,43,41;,
 4;35,36,44,43;,
 4;36,37,45,44;,
 4;37,38,46,45;,
 4;38,39,47,46;,
 4;39,40,48,47;,
 4;40,34,42,48;,
 4;42,41,49,50;,
 4;41,43,51,49;,
 4;43,44,52,51;,
 4;44,45,53,52;,
 4;45,46,54,53;,
 4;46,47,55,54;,
 4;47,48,56,55;,
 4;48,42,50,56;,
 3;50,49,57;,
 3;49,51,57;,
 3;51,52,57;,
 3;52,53,57;,
 3;53,54,57;,
 3;54,55,57;,
 3;55,56,57;,
 3;56,50,57;;
 
 MeshMaterialList {
  3;
  64;
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
   0.800000;0.715200;0.640000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
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
  58;
  -0.000000;1.000000;0.000000;,
  0.000000;0.924735;-0.380611;,
  0.269133;0.924735;-0.269132;,
  0.380611;0.924735;0.000000;,
  0.269133;0.924735;0.269132;,
  0.000000;0.924735;0.380611;,
  -0.269133;0.924735;0.269132;,
  -0.380611;0.924735;0.000000;,
  -0.269133;0.924735;-0.269132;,
  0.000000;0.709221;-0.704986;,
  0.498501;0.709221;-0.498500;,
  0.704986;0.709221;0.000000;,
  0.498501;0.709221;0.498500;,
  0.000000;0.709221;0.704986;,
  -0.498501;0.709221;0.498500;,
  -0.704986;0.709221;0.000000;,
  -0.498501;0.709221;-0.498500;,
  0.000000;0.384552;-0.923103;,
  0.652733;0.384552;-0.652732;,
  0.923103;0.384552;0.000000;,
  0.652733;0.384552;0.652732;,
  0.000000;0.384552;0.923103;,
  -0.652732;0.384553;0.652732;,
  -0.923103;0.384553;0.000000;,
  -0.652732;0.384553;-0.652732;,
  0.000000;0.000004;-1.000000;,
  0.707107;0.000004;-0.707107;,
  1.000000;0.000004;0.000000;,
  0.707107;0.000004;0.707107;,
  0.000000;0.000004;1.000000;,
  -0.707106;0.000004;0.707107;,
  -1.000000;0.000004;0.000000;,
  -0.707106;0.000004;-0.707107;,
  0.000000;-0.384556;-0.923102;,
  0.652732;-0.384555;-0.652731;,
  0.923102;-0.384555;-0.000000;,
  0.652732;-0.384555;0.652731;,
  0.000000;-0.384556;0.923102;,
  -0.652732;-0.384556;0.652732;,
  -0.923102;-0.384556;0.000000;,
  -0.652731;-0.384556;-0.652732;,
  0.000000;-0.709224;-0.704983;,
  0.498499;-0.709224;-0.498498;,
  0.704983;-0.709224;-0.000000;,
  0.498499;-0.709224;0.498498;,
  0.000000;-0.709224;0.704983;,
  -0.498499;-0.709224;0.498498;,
  -0.704983;-0.709224;0.000000;,
  -0.498499;-0.709224;-0.498498;,
  0.000000;-0.924735;-0.380612;,
  0.269133;-0.924735;-0.269133;,
  0.380611;-0.924735;-0.000000;,
  0.269133;-0.924735;0.269133;,
  0.000000;-0.924735;0.380612;,
  -0.269133;-0.924735;0.269133;,
  -0.380611;-0.924735;0.000000;,
  -0.269133;-0.924735;-0.269133;,
  -0.000000;-1.000000;0.000000;;
  64;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,1,8;,
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,8,16,15;,
  4;8,1,9,16;,
  4;9,10,18,17;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,16,24,23;,
  4;16,9,17,24;,
  4;17,18,26,25;,
  4;18,19,27,26;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,23,31,30;,
  4;23,24,32,31;,
  4;24,17,25,32;,
  4;25,26,34,33;,
  4;26,27,35,34;,
  4;27,28,36,35;,
  4;28,29,37,36;,
  4;29,30,38,37;,
  4;30,31,39,38;,
  4;31,32,40,39;,
  4;32,25,33,40;,
  4;33,34,42,41;,
  4;34,35,43,42;,
  4;35,36,44,43;,
  4;36,37,45,44;,
  4;37,38,46,45;,
  4;38,39,47,46;,
  4;39,40,48,47;,
  4;40,33,41,48;,
  4;41,42,50,49;,
  4;42,43,51,50;,
  4;43,44,52,51;,
  4;44,45,53,52;,
  4;45,46,54,53;,
  4;46,47,55,54;,
  4;47,48,56,55;,
  4;48,41,49,56;,
  3;49,50,57;,
  3;50,51,57;,
  3;51,52,57;,
  3;52,53,57;,
  3;53,54,57;,
  3;54,55,57;,
  3;55,56,57;,
  3;56,49,57;;
 }
}
