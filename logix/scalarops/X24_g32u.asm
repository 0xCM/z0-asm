; uint f24<uint>(uint a, uint b, uint c)
; X24_g32u[7ff7c6b8fff0h, 7ff7c6b8ffffh][15] = {0f 1f 44 00 00 33 ca 41 33 d0 23 d1 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:316
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ca}
0007h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
000ah and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
000ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
