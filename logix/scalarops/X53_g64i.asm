; long f53<long>(long a, long b, long c)
; X53_g64i[7ff7c6b9c1a0h, 7ff7c6b9c1bah][26] = {0f 1f 44 00 00 49 8b c0 48 f7 d0 48 f7 d2 48 23 c1 c4 e2 f0 f2 d2 48 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:40:301
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
000eh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0011h andn rdx,rcx,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 d2}
0016h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
