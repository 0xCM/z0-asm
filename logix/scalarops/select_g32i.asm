; int select<int>(int a, int b, int c)
; select_g32i[7ff7c6ca5450h, 7ff7c6ca545fh][15] = {0f 1f 44 00 00 23 d1 c4 c2 70 f2 c0 0b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:50:111
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h andn eax,ecx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 70 f2 c0}
000ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
