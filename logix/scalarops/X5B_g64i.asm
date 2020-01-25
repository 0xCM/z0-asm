; long f5b<long>(long a, long b, long c)
; X5B_g64i[7ff7c6b8d160h, 7ff7c6b8d17ch][28] = {0f 1f 44 00 00 4c 33 c1 48 0b d1 48 b8 ff ff ff ff ff ff ff 7f 48 33 c2 49 0b c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:47:564
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor r8,rcx                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4c 33 c1}
0008h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
000bh mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
0015h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0018h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
