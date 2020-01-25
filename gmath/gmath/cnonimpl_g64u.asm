; ulong cnonimpl<ulong>(ulong a, ulong b)
; cnonimpl_g64u[7ff7c71a3ba0h, 7ff7c71a3babh][11] = {0f 1f 44 00 00 c4 e2 e8 f2 c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:57:619
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn rax,rdx,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
