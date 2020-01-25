; ulong cnonimpl(ulong a, ulong b)
; cnonimpl_64u[7ff7c719af70h, 7ff7c719af7bh][11] = {0f 1f 44 00 00 c4 e2 e8 f2 c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:545
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn rax,rdx,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
