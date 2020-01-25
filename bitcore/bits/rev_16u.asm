; ushort rev(ushort src)
; rev_16u[7ff7c6e823a0h, 7ff7c6e82412h][114] = {0f 1f 44 00 00 0f b7 c1 8b d0 c1 fa 08 0f b6 d2 b9 02 08 20 80 48 0f af d1 48 b9 10 21 42 84 08 00 00 00 48 23 d1 48 b9 01 01 01 01 01 00 00 00 48 0f af d1 48 c1 ea 20 0f b6 d2 0f b6 c0 b9 02 08 20 80 48 0f af c1 48 b9 10 21 42 84 08 00 00 00 48 23 c1 48 b9 01 01 01 01 01 00 00 00 48 0f af c1 48 c1 e8 20 0f b6 c0 c1 e0 08 0b c2 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:076
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
000dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0010h mov ecx,80200802h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 02 08 20 80}
0015h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0019h mov rcx,884422110h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 21 42 84 08 00 00 00}
0023h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0026h mov rcx,101010101h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 00 00 00}
0030h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0034h shr rdx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 20}
0038h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003eh mov ecx,80200802h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 02 08 20 80}
0043h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
0047h mov rcx,884422110h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 21 42 84 08 00 00 00}
0051h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0054h mov rcx,101010101h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 00 00 00}
005eh imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
0062h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0066h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0069h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
006ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
006eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
