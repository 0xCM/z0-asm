; ulong f16<ulong>(ulong a, ulong b, ulong c)
; X16_g64u[7ff7c6b8e8d0h, 7ff7c6b8e8edh][29] = {0f 1f 44 00 00 48 8b c2 49 0b c0 48 f7 d0 49 33 d0 48 23 c1 c4 e2 f0 f2 d2 48 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:108
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0011h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0014h andn rdx,rcx,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 d2}
0019h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
