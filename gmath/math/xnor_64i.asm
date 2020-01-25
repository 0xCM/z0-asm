; long xnor(long a, long b)
; xnor_64i[7ff7c7186460h, 7ff7c718646fh][15] = {0f 1f 44 00 00 48 33 d1 48 8b c2 48 f7 d0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:084
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
