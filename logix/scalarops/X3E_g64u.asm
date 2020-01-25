; ulong f3e<ulong>(ulong a, ulong b, ulong c)
; X3E_g64u[7ff7c6ba2b00h, 7ff7c6ba2b15h][21] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 49 23 c0 48 33 d1 48 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:583
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
000eh xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0011h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
