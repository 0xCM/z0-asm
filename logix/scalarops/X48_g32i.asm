; int f48<int>(int a, int b, int c)
; X48_g32i[7ff7c6b93f90h, 7ff7c6b93f9dh][13] = {0f 1f 44 00 00 41 33 c8 23 d1 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:133
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
0008h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
