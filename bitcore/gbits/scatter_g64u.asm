; ulong scatter<ulong>(ulong src, ulong mask)
; scatter_g64u[7ff7c6e874c0h, 7ff7c6e874cbh][11] = {0f 1f 44 00 00 c4 e2 f3 f5 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:53:119
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pdep rax,rcx,rdx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 f3 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
