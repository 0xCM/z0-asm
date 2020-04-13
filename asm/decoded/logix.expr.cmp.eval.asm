------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[8u]()
; eval_cmp_expr_g[8u]()[158] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x90,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x98,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xf6,0xf8,0xff,0xff,0x0f,0xb6,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xcf,0xf8,0xff,0xff,0x44,0x0f,0xb6,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xf9,0xd5,0xff,0xff,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0xd8,0x95,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xfe,0xf0,0xea,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0b 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 0b 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0b 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 0b 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83b7460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 f8 ff ff}
004ah movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7630ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0b 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7630ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 0b 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c83b7460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf f8 ff ff}
0071h movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c83b5198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 d5 ff ff}
007fh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0083h mov rcx,7ff7c85095d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 95 50 c8 f7 7f 00 00}
008dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe f0 ea 5e}
0092h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0096h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[8i]()
; eval_cmp_expr_g[8i]()[159] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x46,0xf8,0xff,0xff,0x48,0x0f,0xbe,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x1e,0xf8,0xff,0xff,0x4c,0x0f,0xbe,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xe0,0xd5,0xff,0xff,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0xf0,0x9b,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x0d,0xf0,0xea,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0b 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 0b 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0b 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 0b 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83b74a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f8 ff ff}
004ah movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7630bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0b 63 c7 f7 7f 00 00}
005ch mov rax,7ff7c7630bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 0b 63 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c83b74a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e f8 ff ff}
0072h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c83b5270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 d5 ff ff}
0080h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0084h mov rcx,7ff7c8509bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 9b 50 c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d f0 ea 5e}
0093h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[16u]()
; eval_cmp_expr_g[16u]()[157] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xa6,0xf7,0xff,0xff,0x0f,0xb7,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x7f,0xf7,0xff,0xff,0x44,0x0f,0xb7,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xe9,0xd5,0xff,0xff,0x0f,0xb7,0xf0,0x48,0xb9,0x48,0xa1,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x4f,0xef,0xea,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0b 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 0b 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0b 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 0b 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83b74c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f7 ff ff}
004ah movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7630bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0b 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7630bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 0b 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c83b74c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f f7 ff ff}
0071h movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c83b5338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 d5 ff ff}
007fh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0082h mov rcx,7ff7c850a148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a1 50 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f ef ea 5e}
0091h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[16i]()
; eval_cmp_expr_g[16i]()[159] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x06,0xf7,0xff,0xff,0x48,0x0f,0xbf,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xde,0xf6,0xff,0xff,0x4c,0x0f,0xbf,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xf0,0xd5,0xff,0xff,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0xa0,0xa6,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x8d,0xee,0xea,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0b 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 0b 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0b 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0b 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83b74e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f7 ff ff}
004ah movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7630be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0b 63 c7 f7 7f 00 00}
005ch mov rax,7ff7c7630be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 0b 63 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c83b74e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de f6 ff ff}
0072h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c83b5400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 d5 ff ff}
0080h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0084h mov rcx,7ff7c850a6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a6 50 c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ee ea 5e}
0093h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[32u]()
; eval_cmp_expr_g[32u]()[153] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x66,0xf6,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x00,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x40,0xf6,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xfb,0xd8,0xff,0xff,0x8b,0xf0,0x48,0xb9,0xf8,0xab,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd2,0xed,0xea,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0b 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0b 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0b 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 0b 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83b7500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f6 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7630c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0c 63 c7 f7 7f 00 00}
005ah mov rax,7ff7c7630c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0c 63 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c83b7500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 f6 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c83b57c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb d8 ff ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c850abf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ab 50 c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 ed ea 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[32i]()
; eval_cmp_expr_g[32i]()[153] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x08,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x10,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xc6,0xf5,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x18,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xa0,0xf5,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x03,0xd9,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x50,0xb1,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x12,0xed,0xea,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0c 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 0c 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0c 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0c 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83b7520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f5 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7630c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0c 63 c7 f7 7f 00 00}
005ah mov rax,7ff7c7630c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 0c 63 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c83b7520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 f5 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c83b5890h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 d9 ff ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c850b150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b1 50 c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 ed ea 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[64i]()
; eval_cmp_expr_g[64i]()[157] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x20,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x28,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x26,0xf5,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x30,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xff,0xf4,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0xd1,0xd9,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0x00,0xbc,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x4f,0xec,0xea,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0c 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 0c 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0c 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 0c 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83b7540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 f5 ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7630c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0c 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7630c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 0c 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c83b7540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f4 ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah call 7ff7c83b5a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 d9 ff ff}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h mov rcx,7ff7c850bc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 bc 50 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f ec ea 5e}
0091h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[8u]()
; eval_vcmp_expr128_g[8u]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xf6,0xfa,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xce,0xfa,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x67,0xfa,0xff,0xff,0x48,0xb9,0xe8,0x5a,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa0,0xe2,0xea,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0c 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0c 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0c 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 0c 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c83b84a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fa ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0c 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0c 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c83b84a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fa ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c83b8468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 fa ff ff}
00a1h mov rcx,7ff7c8525ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5a 52 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 e2 ea 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[8i]()
; eval_vcmp_expr128_g[8i]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x00,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xfe,0xfa,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x08,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xd6,0xfa,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x8f,0xfa,0xff,0xff,0x48,0xb9,0xf8,0x61,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb0,0xe1,0xea,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0c 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 0c 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0d 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0d 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c83b85a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fa ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0d 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 0d 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c83b85a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fa ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c83b8580h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f fa ff ff}
00a1h mov rcx,7ff7c85261f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 61 52 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 e1 ea 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[16u]()
; eval_vcmp_expr128_g[16u]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x10,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x18,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x4e,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x20,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x26,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xdf,0xfb,0xff,0xff,0x48,0xb9,0x88,0x67,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x80,0x67,0xd3,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0d 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0d 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0d 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 0d 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c8530120h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e fc ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0d 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 0d 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c8530120h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 fc ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c8530100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df fb ff ff}
00a1h mov rcx,7ff7c8526788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 67 52 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 67 d3 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[16i]()
; eval_vcmp_expr128_g[16i]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x28,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x30,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x46,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x38,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x1e,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xd7,0xfb,0xff,0xff,0x48,0xb9,0x18,0x6d,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x90,0x66,0xd3,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0d 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 0d 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0d 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 0d 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c8530208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 fc ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0d 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 0d 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c8530208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e fc ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c85301e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 fb ff ff}
00a1h mov rcx,7ff7c8526d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 6d 52 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 66 d3 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[32u]()
; eval_vcmp_expr128_g[32u]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x40,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x48,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x3e,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x50,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x50,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x16,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xcf,0xfb,0xff,0xff,0x48,0xb9,0xa8,0x72,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa0,0x65,0xd3,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0d 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 0d 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0d 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 0d 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c85302f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e fc ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0d 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 0d 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c85302f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 fc ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c85302d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf fb ff ff}
00a1h mov rcx,7ff7c85272a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 72 52 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 65 d3 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[32i]()
; eval_vcmp_expr128_g[32i]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x58,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x58,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x60,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x60,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x36,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x68,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x68,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x0e,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0xfb,0xff,0xff,0x48,0xb9,0x38,0x78,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb0,0x64,0xd3,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0d 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 0d 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0d 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 0d 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c85303d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fc ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0d 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 0d 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c85303d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e fc ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c85303b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fb ff ff}
00a1h mov rcx,7ff7c8527838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 78 52 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 64 d3 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[64i]()
; eval_vcmp_expr128_g[64i]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x70,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x70,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x78,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x78,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xe6,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x80,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x80,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xbe,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x77,0xfb,0xff,0xff,0x48,0xb9,0xc8,0x7d,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb0,0x5f,0xd3,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0d 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 0d 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0d 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 0d 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c8530888h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 fb ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0d 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 0d 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c8530888h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be fb ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c8530868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 fb ff ff}
00a1h mov rcx,7ff7c8527dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 52 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 5f d3 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[8u]()
; eval_vcmp_expr256_g[8u]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x88,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x88,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x90,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x17,0xfd,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x98,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xe9,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x7c,0xfc,0xff,0xff,0x48,0xb9,0x70,0x89,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa5,0x5e,0xd3,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0d 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 0d 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0d 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 0d 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c8530ab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 fd ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0d 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 0d 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c8530ab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 fc ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c8530a78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c fc ff ff}
00bch mov rcx,7ff7c8528970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 89 52 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 5e d3 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[8i]()
; eval_vcmp_expr256_g[8i]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xef,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xc1,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x74,0xfc,0xff,0xff,0x48,0xb9,0x80,0x90,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x85,0x5d,0xd3,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0d 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 0d 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0d 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 0d 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c8530bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef fc ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0d 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 0d 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c8530bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 fc ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c8530b90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 fc ff ff}
00bch mov rcx,7ff7c8529080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 52 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 5d d3 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[16u]()
; eval_vcmp_expr256_g[16u]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xe7,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xb9,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x6c,0xfb,0xff,0xff,0x48,0xb9,0x10,0x96,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x55,0x58,0xd3,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0d 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 0d 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0d 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 0d 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c8530fd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 fb ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0d 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 0d 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c8530fd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 fb ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c8530fb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c fb ff ff}
00bch mov rcx,7ff7c8529610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 96 52 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 58 d3 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[16i]()
; eval_vcmp_expr256_g[16i]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xaf,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x81,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x34,0xfb,0xff,0xff,0x48,0xb9,0xa0,0x9b,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x35,0x57,0xd3,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0d 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 0d 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0d 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 0d 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c85310c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af fb ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0d 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0d 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c85310c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 fb ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c85310a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 fb ff ff}
00bch mov rcx,7ff7c8529ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9b 52 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 57 d3 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[32u]()
; eval_vcmp_expr256_g[32u]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf0,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x77,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf8,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x49,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xfc,0xfa,0xff,0xff,0x48,0xb9,0x30,0xa1,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x15,0x56,0xd3,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0d 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 0d 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0d 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0d 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c85311a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 fb ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0d 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 0d 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c85311a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 fb ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c8531188h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc fa ff ff}
00bch mov rcx,7ff7c852a130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a1 52 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 56 d3 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[32i]()
; eval_vcmp_expr256_g[32i]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x00,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x08,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x3f,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x10,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x11,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xc4,0xfa,0xff,0xff,0x48,0xb9,0xc0,0xa6,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf5,0x54,0xd3,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0e 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0e 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0e 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 0e 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c8531290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f fb ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0e 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0e 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c8531290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 fb ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c8531270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 fa ff ff}
00bch mov rcx,7ff7c852a6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a6 52 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 54 d3 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[64i]()
; eval_vcmp_expr256_g[64i]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x18,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x20,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x8f,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x28,0x0e,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x61,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x7c,0xf6,0xff,0xff,0x48,0xb9,0x50,0xac,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xc5,0x4f,0xd3,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0e 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 0e 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0e 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 0e 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c8531810h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f fb ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0e 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 0e 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c8531810h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 fb ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c8531358h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c f6 ff ff}
00bch mov rcx,7ff7c852ac50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ac 52 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 4f d3 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
