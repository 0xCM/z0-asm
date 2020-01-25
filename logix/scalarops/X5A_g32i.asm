; int f5a<int>(int a, int b, int c)
; X5A_g32i[7ff7c6b8cf30h, 7ff7c6b8cf3bh][11] = {0f 1f 44 00 00 41 33 c8 8b c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:47:543
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
