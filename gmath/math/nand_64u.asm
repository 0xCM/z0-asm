; ulong nand(ulong a, ulong b)
; nand_64u[7ff7c719b1f0h, 7ff7c719b1ffh][15] = {0f 1f 44 00 00 48 23 d1 48 8b c2 48 f7 d0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:562
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
