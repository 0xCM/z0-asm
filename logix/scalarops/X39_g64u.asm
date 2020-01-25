; ulong f39<ulong>(ulong a, ulong b, ulong c)
; X39_g64u[7ff7c6b92650h, 7ff7c6b92662h][18] = {0f 1f 44 00 00 49 8b c0 48 f7 d0 48 0b c1 48 33 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:919
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rax,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c1}
000eh xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
