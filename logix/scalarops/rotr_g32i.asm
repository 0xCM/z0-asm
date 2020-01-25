; int rotr<int>(int a, byte count)
; rotr_g32i[7ff7c6cc2350h, 7ff7c6cc2366h][22] = {0f 1f 44 00 00 0f b6 d2 48 b8 38 1d cc c6 f7 7f 00 00 48 ff e0 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:42:500
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0008h mov rax,7ff7c6cc1d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1d cc c6 f7 7f 00 00}
0012h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0015h (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
