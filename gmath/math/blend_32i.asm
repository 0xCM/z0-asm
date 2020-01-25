; int blend(int a, int b, int mask)
; blend_32i[7ff7c71862c0h, 7ff7c71862cfh][15] = {0f 1f 44 00 00 33 d1 8b c2 41 23 c0 33 c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:073
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000ch xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
