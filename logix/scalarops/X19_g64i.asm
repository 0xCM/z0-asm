; long f19<long>(long a, long b, long c)
; X19_g64i[7ff7c6b9eaa0h, 7ff7c6b9eab8h][24] = {0f 1f 44 00 00 48 8b c2 49 33 c0 49 23 d0 48 23 d1 48 33 c2 48 f7 d0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:40:914
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
000bh and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
000eh and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0011h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0014h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
