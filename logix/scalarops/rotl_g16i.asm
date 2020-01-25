; Int16 rotl<Int16>(Int16 a, byte count)
; rotl_g16i[7ff7c6ca3440h, 7ff7c6ca345ah][26] = {0f 1f 44 00 00 48 0f bf c9 0f b6 d2 48 b8 c8 2f ca c6 f7 7f 00 00 48 ff e0 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 02:54:49:670
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch mov rax,7ff7c6ca2fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 2f ca c6 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0019h (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
