; long f4b<long>(long a, long b, long c)
; X4B_g64i[7ff7c6ba4500h, 7ff7c6ba4512h][18] = {0f 1f 44 00 00 48 8b c2 48 f7 d0 49 0b c0 48 33 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:808
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
000eh xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
