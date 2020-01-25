; long nonimpl(long a, long b)
; nonimpl_64i[7ff7c71884f0h, 7ff7c71884fbh][11] = {0f 1f 44 00 00 c4 e2 f0 f2 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:296
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn rax,rcx,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
