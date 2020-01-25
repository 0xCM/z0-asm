; ulong gather<ulong>(ulong src, ulong mask)
; gather_g64u[7ff7c6e98e10h, 7ff7c6e98e1bh][11] = {0f 1f 44 00 00 c4 e2 f2 f5 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:53:883
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext rax,rcx,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 f2 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
