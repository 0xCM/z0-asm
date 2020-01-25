; int f58<int>(int a, int b, int c)
; X58_g32i[7ff7c6b9cc30h, 7ff7c6b9cc3fh][15] = {0f 1f 44 00 00 0b d1 41 33 c8 23 d1 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:40:400
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
000ah and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
000ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
