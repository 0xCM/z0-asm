; uint f3d<uint>(uint a, uint b, uint c)
; X3D_g32u[7ff7c6b92cd0h, 7ff7c6b92ce1h][17] = {0f 1f 44 00 00 33 d1 41 0b c8 8b c1 f7 d0 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:977
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
000ah mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
