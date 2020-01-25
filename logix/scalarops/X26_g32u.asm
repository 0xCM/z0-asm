; uint f26<uint>(uint a, uint b, uint c)
; X26_g32u[7ff7c6b90390h, 7ff7c6b903a1h][17] = {0f 1f 44 00 00 23 ca 8b c1 f7 d0 41 33 d0 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:351
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
