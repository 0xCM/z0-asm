; long abs(long a)
; abs_64i[7ff7c7188790h, 7ff7c71887a4h][20] = {0f 1f 44 00 00 48 8b c1 48 c1 f8 3f 48 8d 14 01 48 33 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:37:322
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sar rax,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f8 3f}
000ch lea rdx,[rcx+rax]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 01}
0010h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
