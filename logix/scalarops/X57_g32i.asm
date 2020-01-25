; int f57<int>(int a, int b, int c)
; X57_g32i[7ff7c6b9ca90h, 7ff7c6b9ca9fh][15] = {0f 1f 44 00 00 0b d1 41 23 d0 8b c2 f7 d0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:40:383
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
