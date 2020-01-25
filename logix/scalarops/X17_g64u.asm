; ulong f17<ulong>(ulong a, ulong b, ulong c)
; X17_g64u[7ff7c6b8eaf0h, 7ff7c6b8eb0dh][29] = {0f 1f 44 00 00 48 8b c2 49 0b c0 49 23 d0 48 23 c1 c4 e2 f0 f2 d2 48 0b c2 48 f7 d0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:124
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
000bh and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
000eh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0011h andn rdx,rcx,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 d2}
0016h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0019h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
