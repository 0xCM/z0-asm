; int f37<int>(int a, int b, int c)
; X37_g32i[7ff7c6b92310h, 7ff7c6b9231fh][15] = {0f 1f 44 00 00 41 0b c8 23 d1 8b c2 f7 d0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:665
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
0008h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
