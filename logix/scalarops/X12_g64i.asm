; long f12<long>(long a, long b, long c)
; X12_g64i[7ff7c6b8e280h, 7ff7c6b8e292h][18] = {0f 1f 44 00 00 48 8b c2 48 f7 d0 49 33 c8 48 23 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:053
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh xor rcx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c8}
000eh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
