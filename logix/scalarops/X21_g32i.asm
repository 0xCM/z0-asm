; int f21<int>(int a, int b, int c)
; X21_g32i[7ff7c6b9f750h, 7ff7c6b9f75fh][15] = {0f 1f 44 00 00 41 33 c8 0b d1 8b c2 f7 d0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:41:052
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
0008h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
