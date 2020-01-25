; ulong f5c<ulong>(ulong a, ulong b, ulong c)
; X5C_g64u[7ff7c6b9d2f0h, 7ff7c6b9d307h][23] = {0f 1f 44 00 00 49 8b c0 48 f7 d0 48 23 c1 c4 e2 f0 f2 d2 48 0b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:40:465
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
000eh andn rdx,rcx,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 d2}
0013h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
