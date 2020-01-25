; ulong f1b<ulong>(ulong a, ulong b, ulong c)
; X1B_g64u[7ff7c6b8f250h, 7ff7c6b8f26ah][26] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 f7 d2 49 23 c0 c4 e2 b8 f2 d2 48 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:184
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
000eh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0011h andn rdx,r8,rdx                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 b8 f2 d2}
0016h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
