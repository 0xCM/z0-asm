------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[8u]()
; eval_cmp_expr_g[8u]()[158] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x78,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x78,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x80,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x80,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xce,0xf8,0xff,0xff,0x0f,0xb6,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x88,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x88,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xa7,0xf8,0xff,0xff,0x44,0x0f,0xb6,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xd1,0xd5,0xff,0xff,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0xf8,0xec,0x9a,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xae,0x43,0xc7,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7610b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0b 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7610b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 0b 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7610b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0b 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7610b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 0b 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c85f2188h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f8 ff ff}
004ah movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7610b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0b 61 c7 f7 7f 00 00}
005bh mov rax,7ff7c7610b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 0b 61 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c85f2188h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f8 ff ff}
0071h movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c85efec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 d5 ff ff}
007fh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0083h mov rcx,7ff7c89aecf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ec 9a c8 f7 7f 00 00}
008dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 43 c7 5e}
0092h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0096h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[8i]()
; eval_cmp_expr_g[8i]()[159] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x90,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x98,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x1e,0xf8,0xff,0xff,0x48,0x0f,0xbe,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xf6,0xf7,0xff,0xff,0x4c,0x0f,0xbe,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xb8,0xd5,0xff,0xff,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0x10,0xf3,0x9a,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xbd,0x42,0xc7,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7610b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0b 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7610b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 0b 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7610b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0b 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7610b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 0b 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c85f21c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e f8 ff ff}
004ah movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7610ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0b 61 c7 f7 7f 00 00}
005ch mov rax,7ff7c7610ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 0b 61 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c85f21c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 f7 ff ff}
0072h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c85eff98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 d5 ff ff}
0080h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0084h mov rcx,7ff7c89af310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f3 9a c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 42 c7 5e}
0093h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[16u]()
; eval_cmp_expr_g[16u]()[157] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x7e,0xf7,0xff,0xff,0x0f,0xb7,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x57,0xf7,0xff,0xff,0x44,0x0f,0xb7,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xc1,0xd5,0xff,0xff,0x0f,0xb7,0xf0,0x48,0xb9,0x68,0xf8,0x9a,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xff,0x41,0xc7,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7610ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0b 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7610ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 0b 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7610bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0b 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7610bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 0b 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c85f21e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f7 ff ff}
004ah movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7610bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0b 61 c7 f7 7f 00 00}
005bh mov rax,7ff7c7610bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 0b 61 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c85f21e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f7 ff ff}
0071h movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c85f0060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 d5 ff ff}
007fh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0082h mov rcx,7ff7c89af868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f8 9a c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 41 c7 5e}
0091h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[16i]()
; eval_cmp_expr_g[16i]()[159] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xde,0xf6,0xff,0xff,0x48,0x0f,0xbf,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xb6,0xf6,0xff,0xff,0x4c,0x0f,0xbf,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xc8,0xd5,0xff,0xff,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0xc0,0xfd,0x9a,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x3d,0x41,0xc7,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7610bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0b 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7610bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 0b 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7610bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0b 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7610bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 0b 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c85f2208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de f6 ff ff}
004ah movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7610bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0b 61 c7 f7 7f 00 00}
005ch mov rax,7ff7c7610bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 0b 61 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c85f2208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 f6 ff ff}
0072h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c85f0128h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 d5 ff ff}
0080h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0084h mov rcx,7ff7c89afdc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 fd 9a c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 41 c7 5e}
0093h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[32u]()
; eval_cmp_expr_g[32u]()[153] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x3e,0xf6,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x18,0xf6,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xd3,0xd5,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x38,0x03,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x82,0x40,0xc7,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7610bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0b 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7610bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 0b 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7610be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0b 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7610be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0b 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c85f2228h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f6 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7610be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0b 61 c7 f7 7f 00 00}
005ah mov rax,7ff7c7610be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 0b 61 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c85f2228h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 f6 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c85f01f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 d5 ff ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c89c0338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 03 9c c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 40 c7 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[32i]()
; eval_cmp_expr_g[32i]()[153] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf0,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf8,0x0b,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x9e,0xf5,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x00,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x78,0xf5,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xa3,0xd9,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x90,0x08,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xc2,0x3f,0xc7,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7610bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0b 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7610bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0b 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7610bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0b 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7610bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 0b 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c85f2248h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f5 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7610c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0c 61 c7 f7 7f 00 00}
005ah mov rax,7ff7c7610c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0c 61 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c85f2248h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f5 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c85f0680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 d9 ff ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c89c0890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 08 9c c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 3f c7 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[64i]()
; eval_cmp_expr_g[64i]()[157] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x08,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x10,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xfe,0xf4,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x18,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xd7,0xf4,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0x71,0xda,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0x40,0x13,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xff,0x3e,0xc7,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7610c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0c 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7610c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 0c 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7610c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0c 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7610c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0c 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c85f2268h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe f4 ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7610c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0c 61 c7 f7 7f 00 00}
005bh mov rax,7ff7c7610c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 0c 61 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c85f2268h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f4 ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah call 7ff7c85f0810h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 da ff ff}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h mov rcx,7ff7c89c1340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 13 9c c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 3e c7 5e}
0091h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[8u]()
; eval_vcmp_expr128_g[8u]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc8,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd0,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x76,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd8,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x4e,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xe7,0xfa,0xff,0xff,0x48,0xb9,0x80,0xb1,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x50,0x35,0xc7,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7610cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0c 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7610cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 0c 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7610cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0c 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7610cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 0c 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c85f3278h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fb ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7610cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0c 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7610cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 0c 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c85f3278h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e fb ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c85f3238h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 fa ff ff}
00a1h mov rcx,7ff7c89cb180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b1 9c c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 35 c7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[8i]()
; eval_vcmp_expr128_g[8i]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe0,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe8,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x7e,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf0,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x56,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x0f,0xfb,0xff,0xff,0x48,0xb9,0x90,0xb8,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x60,0x34,0xc7,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7610ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0c 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7610ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0c 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7610ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0c 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7610ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 0c 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c85f3370h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e fb ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7610cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0c 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7610cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0c 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c85f3370h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 fb ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c85f3350h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f fb ff ff}
00a1h mov rcx,7ff7c89cb890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b8 9c c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 34 c7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[16u]()
; eval_vcmp_expr128_g[16u]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf8,0x0c,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x00,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x0e,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x08,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xe6,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x97,0xf6,0xff,0xff,0x48,0xb9,0x20,0xbe,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x60,0x2f,0xc7,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7610cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0c 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7610cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 0c 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7610d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0d 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7610d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0d 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c85f3900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e fc ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7610d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0d 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7610d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 0d 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c85f3900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 fb ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c85f33d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 f6 ff ff}
00a1h mov rcx,7ff7c89cbe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 be 9c c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 2f c7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[16i]()
; eval_vcmp_expr128_g[16i]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x10,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x18,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x06,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x20,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xde,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x97,0xfb,0xff,0xff,0x48,0xb9,0xb0,0xc3,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x70,0x2e,0xc7,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7610d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0d 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7610d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0d 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7610d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0d 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7610d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 0d 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c85f39e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 fc ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7610d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0d 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7610d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 0d 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c85f39e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de fb ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c85f39c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 fb ff ff}
00a1h mov rcx,7ff7c89cc3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c3 9c c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 2e c7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[32u]()
; eval_vcmp_expr128_g[32u]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x28,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x30,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xfe,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x38,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xd6,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x8f,0xfb,0xff,0xff,0x48,0xb9,0x40,0xc9,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x80,0x2d,0xc7,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7610d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0d 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7610d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 0d 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7610d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0d 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7610d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 0d 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c85f3ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fb ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7610d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0d 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7610d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 0d 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c85f3ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fb ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c85f3ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f fb ff ff}
00a1h mov rcx,7ff7c89cc940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 c9 9c c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 2d c7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[32i]()
; eval_vcmp_expr128_g[32i]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x40,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x48,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xf6,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x50,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x50,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xce,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x87,0xfb,0xff,0xff,0x48,0xb9,0xd0,0xce,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x90,0x2c,0xc7,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7610d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0d 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7610d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 0d 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7610d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0d 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7610d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 0d 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c85f3bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fb ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7610d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0d 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7610d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 0d 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c85f3bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fb ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c85f3b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 fb ff ff}
00a1h mov rcx,7ff7c89cced0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ce 9c c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 2c c7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[64i]()
; eval_vcmp_expr128_g[64i]()[200] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x58,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x58,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x60,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x60,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xae,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x68,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x68,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x86,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x6f,0xf7,0xff,0xff,0x48,0xb9,0x60,0xd4,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x90,0x27,0xc7,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7610d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0d 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7610d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 0d 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7610d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0d 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7610d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 0d 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c85f4070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fb ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7610d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0d 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7610d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 0d 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c85f4070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fb ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c85f3c80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f f7 ff ff}
00a1h mov rcx,7ff7c89cd460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d4 9c c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 27 c7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[8u]()
; eval_vcmp_expr256_g[8u]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x70,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x70,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x78,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x78,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xdf,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x80,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x80,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xb1,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x44,0xfc,0xff,0xff,0x48,0xb9,0x08,0xe0,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x85,0x26,0xc7,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7610d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0d 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c7610d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 0d 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7610d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0d 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c7610d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 0d 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c85f42a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df fc ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7610d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0d 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c7610d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 0d 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c85f42a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 fc ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c85f4260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 fc ff ff}
00bch mov rcx,7ff7c89ce008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e0 9c c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 26 c7 5e}
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
; eval_vcmp_expr256_g[8i]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x88,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x88,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x90,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xb7,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x98,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x89,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x3c,0xfc,0xff,0xff,0x48,0xb9,0x18,0xe7,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x65,0x25,0xc7,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7610d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0d 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c7610d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 0d 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7610d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0d 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c7610d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 0d 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c85f4398h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 fc ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7610d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0d 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c7610d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 0d 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c85f4398h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 fc ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c85f4378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c fc ff ff}
00bch mov rcx,7ff7c89ce718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e7 9c c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 25 c7 5e}
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
; eval_vcmp_expr256_g[16u]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xaf,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x81,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x34,0xfb,0xff,0xff,0x48,0xb9,0xa8,0xec,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x35,0x20,0xc7,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7610da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0d 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c7610da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 0d 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7610da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0d 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c7610da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 0d 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c85f47c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af fb ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7610db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0d 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c7610db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 0d 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c85f47c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 fb ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c85f47a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 fb ff ff}
00bch mov rcx,7ff7c89ceca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ec 9c c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 20 c7 5e}
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
; eval_vcmp_expr256_g[16i]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x77,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x49,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xfc,0xfa,0xff,0xff,0x48,0xb9,0x38,0xf2,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x15,0x1f,0xc7,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7610db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0d 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c7610db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 0d 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7610dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0d 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c7610dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 0d 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c85f48a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 fb ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7610dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0d 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c7610dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 0d 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c85f48a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 fb ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c85f4888h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc fa ff ff}
00bch mov rcx,7ff7c89cf238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f2 9c c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 1f c7 5e}
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
; eval_vcmp_expr256_g[32u]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x3f,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x11,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xc4,0xfa,0xff,0xff,0x48,0xb9,0xc8,0xf7,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf5,0x1d,0xc7,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7610dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0d 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c7610dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 0d 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7610dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0d 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c7610dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 0d 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c85f4990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f fb ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7610de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0d 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c7610de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0d 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c85f4990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 fb ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c85f4970h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 fa ff ff}
00bch mov rcx,7ff7c89cf7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 9c c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 1d c7 5e}
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
; eval_vcmp_expr256_g[32i]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf0,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x07,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf8,0x0d,0x61,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xd9,0xfa,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x8c,0xfa,0xff,0xff,0x48,0xb9,0x58,0xfd,0x9c,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd5,0x1c,0xc7,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7610de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0d 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c7610de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 0d 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7610df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0d 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c7610df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0d 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c85f4a78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 fb ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7610df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0d 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c7610df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 0d 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c85f4a78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 fa ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c85f4a58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c fa ff ff}
00bch mov rcx,7ff7c89cfd58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fd 9c c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 1c c7 5e}
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
; eval_vcmp_expr256_g[64i]()[245] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0e,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x00,0x0e,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0e,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x08,0x0e,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xcf,0xfa,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0e,0x61,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x10,0x0e,0x61,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xa1,0xfa,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x54,0xfa,0xff,0xff,0x48,0xb9,0x30,0x03,0x9e,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb5,0x1b,0xc7,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7610e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0e 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c7610e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0e 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7610e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0e 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c7610e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 0e 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c85f4b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf fa ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7610e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0e 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c7610e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0e 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c85f4b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 fa ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c85f4b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 fa ff ff}
00bch mov rcx,7ff7c89e0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 9e c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 1b c7 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
