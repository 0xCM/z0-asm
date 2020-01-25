; ulong f59<ulong>(ulong a, ulong b, ulong c)
; X59_g64u[7ff7c6b8cdf0h, 7ff7c6b8ce02h][18] = {0f 1f 44 00 00 48 8b c2 48 f7 d0 48 0b c1 49 33 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:532
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rax,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c1}
000eh xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
