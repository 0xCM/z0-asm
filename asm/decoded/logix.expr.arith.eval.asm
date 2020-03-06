------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/expr.arith.eval?eval#eval_g[8u]()
; eval_g[8u]()[158] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x00,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xb6,0xd7,0xff,0xff,0x0f,0xb6,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x08,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x8f,0xd7,0xff,0xff,0x44,0x0f,0xb6,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xa1,0xd7,0xff,0xff,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0x48,0xf2,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x4e,0x0d,0xea,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76309f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 09 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c76309f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 09 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0a 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0a 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83c36d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 d7 ff ff}
004ah movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7630a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0a 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7630a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 0a 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c83c36d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f d7 ff ff}
0071h movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c83c36f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 d7 ff ff}
007fh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0083h mov rcx,7ff7c850f248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f2 50 c8 f7 7f 00 00}
008dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 0d ea 5e}
0092h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0096h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/expr.arith.eval?eval#eval_g[8i]()
; eval_g[8i]()[159] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x10,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x18,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xde,0xd7,0xff,0xff,0x48,0x0f,0xbe,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x20,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xb6,0xd7,0xff,0xff,0x4c,0x0f,0xbe,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xb8,0xd7,0xff,0xff,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0x60,0xf8,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x8d,0x0c,0xea,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0a 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0a 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0a 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 0a 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83c37b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de d7 ff ff}
004ah movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7630a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0a 63 c7 f7 7f 00 00}
005ch mov rax,7ff7c7630a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 0a 63 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c83c37b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 d7 ff ff}
0072h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c83c37c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 d7 ff ff}
0080h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0084h mov rcx,7ff7c850f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 50 c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 0c ea 5e}
0093h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/expr.arith.eval?eval#eval_g[16u]()
; eval_g[16u]()[157] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x28,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x30,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xe6,0xd7,0xff,0xff,0x0f,0xb7,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x38,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xbf,0xd7,0xff,0xff,0x44,0x0f,0xb7,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xc1,0xd7,0xff,0xff,0x0f,0xb7,0xf0,0x48,0xb9,0xb8,0xfd,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xcf,0x0b,0xea,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0a 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 0a 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0a 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 0a 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83c3880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 d7 ff ff}
004ah movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7630a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0a 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7630a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 0a 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c83c3880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf d7 ff ff}
0071h movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c83c3890h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 d7 ff ff}
007fh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0082h mov rcx,7ff7c850fdb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fd 50 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 0b ea 5e}
0091h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/expr.arith.eval?eval#eval_g[16i]()
; eval_g[16i]()[159] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x40,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x48,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xae,0xfb,0xff,0xff,0x48,0x0f,0xbf,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x50,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x50,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x86,0xfb,0xff,0xff,0x4c,0x0f,0xbf,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x88,0xfb,0xff,0xff,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0x38,0x03,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x0d,0x07,0xea,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0a 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 0a 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0a 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 0a 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83c6108h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fb ff ff}
004ah movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7630a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0a 63 c7 f7 7f 00 00}
005ch mov rax,7ff7c7630a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 0a 63 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c83c6108h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fb ff ff}
0072h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c83c6118h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 fb ff ff}
0080h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0084h mov rcx,7ff7c8520338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 03 52 c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 07 ea 5e}
0093h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/expr.arith.eval?eval#eval_g[32u]()
; eval_g[32u]()[153] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x58,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x58,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x60,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x60,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xb6,0xfb,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x68,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x68,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x90,0xfb,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x93,0xfb,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x90,0x08,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x52,0x06,0xea,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0a 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 0a 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0a 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 0a 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83c61d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 fb ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7630a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0a 63 c7 f7 7f 00 00}
005ah mov rax,7ff7c7630a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 0a 63 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c83c61d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 fb ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c83c61e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 fb ff ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c8520890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 08 52 c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 06 ea 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/expr.arith.eval?eval#eval_g[32i]()
; eval_g[32i]()[153] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x70,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x70,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x78,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x78,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xbe,0xfb,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x80,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x80,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x98,0xfb,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x9b,0xfb,0xff,0xff,0x8b,0xf0,0x48,0xb9,0xe8,0x0d,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x92,0x05,0xea,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0a 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 0a 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0a 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 0a 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83c6298h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be fb ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7630a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0a 63 c7 f7 7f 00 00}
005ah mov rax,7ff7c7630a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 0a 63 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c83c6298h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 fb ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c83c62a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b fb ff ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c8520de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 52 c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 05 ea 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr), hex://logix/expr.arith.eval?eval#eval_g[64u]()
; eval_g[64u]()[157] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x88,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x88,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x90,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xc6,0xfb,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x98,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x9f,0xfb,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0xa1,0xfb,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0x40,0x13,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xcf,0x04,0xea,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0a 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 0a 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0a 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 0a 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83c6360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 fb ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7630a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0a 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7630a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 0a 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c83c6360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f fb ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah call 7ff7c83c6370h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 fb ff ff}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h mov rcx,7ff7c8521340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 13 52 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 04 ea 5e}
0091h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/expr.arith.eval?eval#eval_g[64i]()
; eval_g[64i]()[157] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xce,0xfb,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xa7,0xfb,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0xa9,0xfb,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0x98,0x18,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x0f,0x04,0xea,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0a 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 0a 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0a 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 0a 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c83c6428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fb ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7630ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0a 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7630ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 0a 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c83c6428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 fb ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah call 7ff7c83c6438h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 fb ff ff}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h mov rcx,7ff7c8521898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 18 52 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 04 ea 5e}
0091h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> inc<byte>(IUnaryArithmeticOp<byte> a), hex://logix/expr.arith.eval?inc#inc_g[8u]()
; inc_g[8u]()[45] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x0e,0xf8,0xff,0xff,0x0f,0xb6,0x48,0x08,0xff,0xc1,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0x48,0xf2,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xbd,0xff,0xe9,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c64e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e f8 ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0010h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0014h mov rcx,7ff7c850f248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f2 50 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd ff e9 5e}
0023h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> inc<sbyte>(IUnaryArithmeticOp<sbyte> a), hex://logix/expr.arith.eval?inc#inc_g[8i]()
; inc_g[8i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xee,0xfb,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0xff,0xc1,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0x60,0xf8,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x6c,0xff,0xe9,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee fb ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c850f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 50 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c ff e9 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> inc<ushort>(IUnaryArithmeticOp<ushort> a), hex://logix/expr.arith.eval?inc#inc_g[16u]()
; inc_g[16u]()[44] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xde,0xfb,0xff,0xff,0x0f,0xb7,0x48,0x08,0xff,0xc1,0x0f,0xb7,0xf1,0x48,0xb9,0xb8,0xfd,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x1e,0xff,0xe9,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de fb ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0010h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0013h mov rcx,7ff7c850fdb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fd 50 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e ff e9 5e}
0022h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0026h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> inc<short>(IUnaryArithmeticOp<short> a), hex://logix/expr.arith.eval?inc#inc_g[16i]()
; inc_g[16i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xde,0xfb,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0xff,0xc1,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0x38,0x03,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xdc,0xfe,0xe9,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6998h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de fb ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c8520338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 03 52 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc fe e9 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> inc<uint>(IUnaryArithmeticOp<uint> a), hex://logix/expr.arith.eval?inc#inc_g[32u]()
; inc_g[32u]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xce,0xfb,0xff,0xff,0x8b,0x70,0x08,0xff,0xc6,0x48,0xb9,0x90,0x08,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x92,0xfe,0xe9,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c69d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fb ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
000fh mov rcx,7ff7c8520890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 08 52 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fe e9 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> inc<int>(IUnaryArithmeticOp<int> a), hex://logix/expr.arith.eval?inc#inc_g[32i]()
; inc_g[32i]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xce,0xfb,0xff,0xff,0x8b,0x70,0x08,0xff,0xc6,0x48,0xb9,0xe8,0x0d,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x52,0xfe,0xe9,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fb ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
000fh mov rcx,7ff7c8520de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 52 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fe e9 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> inc<ulong>(IUnaryArithmeticOp<ulong> a), hex://logix/expr.arith.eval?inc#inc_g[64u]()
; inc_g[64u]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xce,0xfb,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xc6,0x48,0xb9,0x40,0x13,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x10,0xfe,0xe9,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6a58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fb ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0011h mov rcx,7ff7c8521340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 13 52 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 fe e9 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> inc<long>(IUnaryArithmeticOp<long> a), hex://logix/expr.arith.eval?inc#inc_g[64i]()
; inc_g[64i]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xce,0xfb,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xc6,0x48,0xb9,0x98,0x18,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd0,0xfd,0xe9,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6a98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fb ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0011h mov rcx,7ff7c8521898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 18 52 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 fd e9 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> dec<byte>(IUnaryArithmeticOp<byte> a), hex://logix/expr.arith.eval?dec#dec_g[8u]()
; dec_g[8u]()[45] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xde,0xf5,0xff,0xff,0x0f,0xb6,0x48,0x08,0xff,0xc9,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0x48,0xf2,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x8d,0xfd,0xe9,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c64e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de f5 ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0014h mov rcx,7ff7c850f248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f2 50 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d fd e9 5e}
0023h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> dec<sbyte>(IUnaryArithmeticOp<sbyte> a), hex://logix/expr.arith.eval?dec#dec_g[8i]()
; dec_g[8i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xbe,0xf9,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0xff,0xc9,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0x60,0xf8,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x3c,0xfd,0xe9,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f9 ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c850f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 50 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c fd e9 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> dec<ushort>(IUnaryArithmeticOp<ushort> a), hex://logix/expr.arith.eval?dec#dec_g[16u]()
; dec_g[16u]()[44] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xae,0xf9,0xff,0xff,0x0f,0xb7,0x48,0x08,0xff,0xc9,0x0f,0xb7,0xf1,0x48,0xb9,0xb8,0xfd,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xee,0xfc,0xe9,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae f9 ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0013h mov rcx,7ff7c850fdb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fd 50 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee fc e9 5e}
0022h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0026h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> dec<short>(IUnaryArithmeticOp<short> a), hex://logix/expr.arith.eval?dec#dec_g[16i]()
; dec_g[16i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xae,0xf9,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0xff,0xc9,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0x38,0x03,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xac,0xfc,0xe9,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6998h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae f9 ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c8520338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 03 52 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac fc e9 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> dec<uint>(IUnaryArithmeticOp<uint> a), hex://logix/expr.arith.eval?dec#dec_g[32u]()
; dec_g[32u]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x9e,0xf9,0xff,0xff,0x8b,0x70,0x08,0xff,0xce,0x48,0xb9,0x90,0x08,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x62,0xfc,0xe9,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c69d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f9 ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh dec esi                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ce}
000fh mov rcx,7ff7c8520890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 08 52 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 fc e9 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> dec<int>(IUnaryArithmeticOp<int> a), hex://logix/expr.arith.eval?dec#dec_g[32i]()
; dec_g[32i]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x9e,0xf9,0xff,0xff,0x8b,0x70,0x08,0xff,0xce,0x48,0xb9,0xe8,0x0d,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x22,0xfc,0xe9,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f9 ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh dec esi                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ce}
000fh mov rcx,7ff7c8520de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 52 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 fc e9 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> dec<ulong>(IUnaryArithmeticOp<ulong> a), hex://logix/expr.arith.eval?dec#dec_g[64u]()
; dec_g[64u]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x9e,0xf9,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xce,0x48,0xb9,0x40,0x13,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xe0,0xfb,0xe9,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6a58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f9 ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh dec rsi                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ce}
0011h mov rcx,7ff7c8521340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 13 52 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 fb e9 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> dec<long>(IUnaryArithmeticOp<long> a), hex://logix/expr.arith.eval?dec#dec_g[64i]()
; dec_g[64i]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x9e,0xf9,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xce,0x48,0xb9,0x98,0x18,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa0,0xfb,0xe9,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6a98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f9 ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh dec rsi                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ce}
0011h mov rcx,7ff7c8521898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 18 52 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 fb e9 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> negate<byte>(IUnaryArithmeticOp<byte> a), hex://logix/expr.arith.eval?negate#negate_g[8u]()
; negate_g[8u]()[47] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x9e,0xef,0xff,0xff,0x0f,0xb6,0x48,0x08,0xf7,0xd1,0xff,0xc1,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0x48,0xf2,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x4b,0xf7,0xe9,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c64e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ef ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0010h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0012h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0016h mov rcx,7ff7c850f248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f2 50 c8 f7 7f 00 00}
0020h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b f7 e9 5e}
0025h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0029h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> negate<sbyte>(IUnaryArithmeticOp<sbyte> a), hex://logix/expr.arith.eval?negate#negate_g[8i]()
; negate_g[8i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x7e,0xf3,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0xf7,0xd9,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0x60,0xf8,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xfc,0xf6,0xe9,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f3 ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c850f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 50 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc f6 e9 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> negate<ushort>(IUnaryArithmeticOp<ushort> a), hex://logix/expr.arith.eval?negate#negate_g[16u]()
; negate_g[16u]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x6e,0xf3,0xff,0xff,0x0f,0xb7,0x48,0x08,0xf7,0xd1,0xff,0xc1,0x0f,0xb7,0xf1,0x48,0xb9,0xb8,0xfd,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xac,0xf6,0xe9,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f3 ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0010h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0012h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0015h mov rcx,7ff7c850fdb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fd 50 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac f6 e9 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> negate<short>(IUnaryArithmeticOp<short> a), hex://logix/expr.arith.eval?negate#negate_g[16i]()
; negate_g[16i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x5e,0xf3,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0xf7,0xd9,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0x38,0x03,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x5c,0xf6,0xe9,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6998h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e f3 ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c8520338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 03 52 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c f6 e9 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> negate<uint>(IUnaryArithmeticOp<uint> a), hex://logix/expr.arith.eval?negate#negate_g[32u]()
; negate_g[32u]()[43] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x4e,0xf3,0xff,0xff,0x8b,0x48,0x08,0x8b,0xf1,0xf7,0xd6,0xff,0xc6,0x48,0xb9,0x90,0x08,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x0e,0xf6,0xe9,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c69d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f3 ff ff}
000ah mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
000dh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0011h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0013h mov rcx,7ff7c8520890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 08 52 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e f6 e9 5e}
0022h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0025h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0029h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> negate<int>(IUnaryArithmeticOp<int> a), hex://logix/expr.arith.eval?negate#negate_g[32i]()
; negate_g[32i]()[41] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x4e,0xf3,0xff,0xff,0x8b,0x48,0x08,0x8b,0xf1,0xf7,0xde,0x48,0xb9,0xe8,0x0d,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd0,0xf5,0xe9,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f3 ff ff}
000ah mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
000dh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000fh neg esi                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 de}
0011h mov rcx,7ff7c8520de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 52 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 f5 e9 5e}
0020h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0023h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0027h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> negate<ulong>(IUnaryArithmeticOp<ulong> a), hex://logix/expr.arith.eval?negate#negate_g[64u]()
; negate_g[64u]()[48] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x4e,0xf3,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x8b,0xf1,0x48,0xf7,0xd6,0x48,0xff,0xc6,0x48,0xb9,0x40,0x13,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x8a,0xf5,0xe9,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6a58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f3 ff ff}
000ah mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0014h inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0017h mov rcx,7ff7c8521340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 13 52 c8 f7 7f 00 00}
0021h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f5 e9 5e}
0026h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> negate<long>(IUnaryArithmeticOp<long> a), hex://logix/expr.arith.eval?negate#negate_g[64i]()
; negate_g[64i]()[45] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x3e,0xf3,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x8b,0xf1,0x48,0xf7,0xde,0x48,0xb9,0x98,0x18,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x3d,0xf5,0xe9,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c83c6a98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f3 ff ff}
000ah mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h neg rsi                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 de}
0014h mov rcx,7ff7c8521898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 18 52 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d f5 e9 5e}
0023h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr), hex://logix/expr.arith.eval?add#add_g[8u]()
; add_g[8u]()[124] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x04,0xbf,0xff,0xff,0x40,0x0f,0xb6,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xdc,0xbe,0xff,0xff,0x0f,0xb6,0x48,0x08,0x40,0x0f,0xb6,0xc7,0x03,0xc8,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0x48,0xf2,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x9f,0xf4,0xe9,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0a 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 0a 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c36d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 bf ff ff}
002ch movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c7630ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0a 63 c7 f7 7f 00 00}
003eh mov rax,7ff7c7630ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 0a 63 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c83c36d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc be ff ff}
0054h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
0058h movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
005ch add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005eh movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0062h mov rcx,7ff7c850f248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f2 50 c8 f7 7f 00 00}
006ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f f4 e9 5e}
0071h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0075h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0079h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr), hex://logix/expr.arith.eval?add#add_g[8i]()
; add_g[8i]()[125] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xc8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x4c,0xbf,0xff,0xff,0x48,0x0f,0xbe,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x24,0xbf,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0x48,0x0f,0xbe,0xc7,0x03,0xc8,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0x60,0xf8,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xfe,0xf3,0xe9,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0a 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 0a 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c37b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c bf ff ff}
002ch movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c7630ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0a 63 c7 f7 7f 00 00}
003eh mov rax,7ff7c7630ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 0a 63 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c83c37b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 bf ff ff}
0054h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
0059h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
005dh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005fh movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0063h mov rcx,7ff7c850f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 50 c8 f7 7f 00 00}
006dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe f3 e9 5e}
0072h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0076h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr), hex://logix/expr.arith.eval?add#add_g[16u]()
; add_g[16u]()[121] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xd8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x74,0xbf,0xff,0xff,0x0f,0xb7,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x4d,0xbf,0xff,0xff,0x0f,0xb7,0x48,0x08,0x0f,0xb7,0xc7,0x03,0xc8,0x0f,0xb7,0xf1,0x48,0xb9,0xb8,0xfd,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x62,0xf3,0xe9,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0a 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 0a 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c3880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 bf ff ff}
002ch movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7630ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0a 63 c7 f7 7f 00 00}
003dh mov rax,7ff7c7630ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0a 63 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c83c3880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d bf ff ff}
0053h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
0057h movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
005ah add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005ch movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
005fh mov rcx,7ff7c850fdb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fd 50 c8 f7 7f 00 00}
0069h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 f3 e9 5e}
006eh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr), hex://logix/expr.arith.eval?add#add_g[16i]()
; add_g[16i]()[125] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xe8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x5c,0xe7,0xff,0xff,0x48,0x0f,0xbf,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x34,0xe7,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0x48,0x0f,0xbf,0xc7,0x03,0xc8,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0x38,0x03,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xbe,0xf2,0xe9,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0a 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 0a 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c6108h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c e7 ff ff}
002ch movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c7630af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0a 63 c7 f7 7f 00 00}
003eh mov rax,7ff7c7630af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0a 63 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c83c6108h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e7 ff ff}
0054h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
0059h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
005dh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005fh movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0063h mov rcx,7ff7c8520338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 03 52 c8 f7 7f 00 00}
006dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f2 e9 5e}
0072h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0076h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr), hex://logix/expr.arith.eval?add#add_g[32u]()
; add_g[32u]()[112] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x84,0xe7,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x00,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x5e,0xe7,0xff,0xff,0x8b,0x70,0x08,0x03,0xf7,0x48,0xb9,0x90,0x08,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x2a,0xf2,0xe9,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0a 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 0a 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c61d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 e7 ff ff}
002ch mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0b 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0b 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c83c61d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e7 ff ff}
0052h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0055h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0057h mov rcx,7ff7c8520890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 08 52 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a f2 e9 5e}
0066h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr), hex://logix/expr.arith.eval?add#add_g[32i]()
; add_g[32i]()[112] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x08,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xbc,0xe7,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x10,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x96,0xe7,0xff,0xff,0x8b,0x70,0x08,0x03,0xf7,0x48,0xb9,0xe8,0x0d,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x9a,0xf1,0xe9,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c6298h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e7 ff ff}
002ch mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0b 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0b 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c83c6298h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 e7 ff ff}
0052h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0055h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0057h mov rcx,7ff7c8520de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 52 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f1 e9 5e}
0066h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr), hex://logix/expr.arith.eval?add#add_g[64u]()
; add_g[64u]()[116] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x18,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xf4,0xe3,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x20,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xcd,0xe3,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0x03,0xf7,0x48,0xb9,0x40,0x13,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x07,0xed,0xe9,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c6360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 e3 ff ff}
002ch mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7630b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0b 63 c7 f7 7f 00 00}
003dh mov rax,7ff7c7630b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 0b 63 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c83c6360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd e3 ff ff}
0053h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
0057h add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
005ah mov rcx,7ff7c8521340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 13 52 c8 f7 7f 00 00}
0064h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ed e9 5e}
0069h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr), hex://logix/expr.arith.eval?add#add_g[64i]()
; add_g[64i]()[116] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x28,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x2c,0xe4,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x30,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x05,0xe4,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0x03,0xf7,0x48,0xb9,0x98,0x18,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x77,0xec,0xe9,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c6428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c e4 ff ff}
002ch mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7630b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0b 63 c7 f7 7f 00 00}
003dh mov rax,7ff7c7630b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 0b 63 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c83c6428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 e4 ff ff}
0053h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
0057h add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
005ah mov rcx,7ff7c8521898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 18 52 c8 f7 7f 00 00}
0064h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ec e9 5e}
0069h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> sub<byte>(IBinaryArithmeticOp<byte> expr), hex://logix/expr.arith.eval?sub#sub_g[8u]()
; sub_g[8u]()[124] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x38,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x44,0xb6,0xff,0xff,0x40,0x0f,0xb6,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x40,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x1c,0xb6,0xff,0xff,0x0f,0xb6,0x48,0x08,0x40,0x0f,0xb6,0xc7,0x2b,0xc1,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0x48,0xf2,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xdf,0xeb,0xe9,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c36d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 b6 ff ff}
002ch movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c7630b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0b 63 c7 f7 7f 00 00}
003eh mov rax,7ff7c7630b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 0b 63 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c83c36d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c b6 ff ff}
0054h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
0058h movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
005ch sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
005eh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0062h mov rcx,7ff7c850f248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f2 50 c8 f7 7f 00 00}
006ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df eb e9 5e}
0071h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0075h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0079h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> sub<sbyte>(IBinaryArithmeticOp<sbyte> expr), hex://logix/expr.arith.eval?sub#sub_g[8i]()
; sub_g[8i]()[125] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x48,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x8c,0xb6,0xff,0xff,0x48,0x0f,0xbe,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x50,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x50,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x64,0xb6,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0x48,0x0f,0xbe,0xc7,0x2b,0xc1,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0x60,0xf8,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x3e,0xeb,0xe9,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c37b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c b6 ff ff}
002ch movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c7630b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0b 63 c7 f7 7f 00 00}
003eh mov rax,7ff7c7630b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 0b 63 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c83c37b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 b6 ff ff}
0054h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
0059h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
005dh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
005fh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0063h mov rcx,7ff7c850f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 50 c8 f7 7f 00 00}
006dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e eb e9 5e}
0072h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0076h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> sub<ushort>(IBinaryArithmeticOp<ushort> expr), hex://logix/expr.arith.eval?sub#sub_g[16u]()
; sub_g[16u]()[121] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x58,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x58,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xb4,0xb6,0xff,0xff,0x0f,0xb7,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x60,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x60,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x8d,0xb6,0xff,0xff,0x0f,0xb7,0x48,0x08,0x0f,0xb7,0xc7,0x2b,0xc1,0x0f,0xb7,0xf0,0x48,0xb9,0xb8,0xfd,0x50,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa2,0xea,0xe9,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c3880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 b6 ff ff}
002ch movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7630b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0b 63 c7 f7 7f 00 00}
003dh mov rax,7ff7c7630b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 0b 63 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c83c3880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b6 ff ff}
0053h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
0057h movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
005ah sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
005ch movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
005fh mov rcx,7ff7c850fdb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fd 50 c8 f7 7f 00 00}
0069h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 ea e9 5e}
006eh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> sub<short>(IBinaryArithmeticOp<short> expr), hex://logix/expr.arith.eval?sub#sub_g[16i]()
; sub_g[16i]()[125] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x68,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x68,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x9c,0xde,0xff,0xff,0x48,0x0f,0xbf,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x70,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x70,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x74,0xde,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0x48,0x0f,0xbf,0xc7,0x2b,0xc1,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0x38,0x03,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xfe,0xe9,0xe9,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c6108h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c de ff ff}
002ch movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c7630b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0b 63 c7 f7 7f 00 00}
003eh mov rax,7ff7c7630b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 0b 63 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c83c6108h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 de ff ff}
0054h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
0059h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
005dh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
005fh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0063h mov rcx,7ff7c8520338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 03 52 c8 f7 7f 00 00}
006dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe e9 e9 5e}
0072h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0076h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> sub<uint>(IBinaryArithmeticOp<uint> expr), hex://logix/expr.arith.eval?sub#sub_g[32u]()
; sub_g[32u]()[112] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x78,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x78,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xc4,0xde,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x80,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x80,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x9e,0xde,0xff,0xff,0x8b,0x48,0x08,0x2b,0xf9,0x48,0xb9,0x90,0x08,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x6a,0xe9,0xe9,0x5e,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c61d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 de ff ff}
002ch mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0b 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 0b 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c83c61d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e de ff ff}
0052h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0055h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
0057h mov rcx,7ff7c8520890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 08 52 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a e9 e9 5e}
0066h mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> sub<int>(IBinaryArithmeticOp<int> expr), hex://logix/expr.arith.eval?sub#sub_g[32i]()
; sub_g[32i]()[112] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x88,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x88,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xfc,0xde,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x90,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0xd6,0xde,0xff,0xff,0x8b,0x48,0x08,0x2b,0xf9,0x48,0xb9,0xe8,0x0d,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xda,0xe8,0xe9,0x5e,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c6298h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc de ff ff}
002ch mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0b 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 0b 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c83c6298h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 de ff ff}
0052h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0055h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
0057h mov rcx,7ff7c8520de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 52 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da e8 e9 5e}
0066h mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> sub<ulong>(IBinaryArithmeticOp<ulong> expr), hex://logix/expr.arith.eval?sub#sub_g[64u]()
; sub_g[64u]()[116] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x98,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x34,0xdf,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x0d,0xdf,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x2b,0xf9,0x48,0xb9,0x40,0x13,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x47,0xe8,0xe9,0x5e,0x48,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c6360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 df ff ff}
002ch mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7630ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0b 63 c7 f7 7f 00 00}
003dh mov rax,7ff7c7630ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 0b 63 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c83c6360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d df ff ff}
0053h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
0057h sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
005ah mov rcx,7ff7c8521340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 13 52 c8 f7 7f 00 00}
0064h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 e8 e9 5e}
0069h mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> sub<long>(IBinaryArithmeticOp<long> expr), hex://logix/expr.arith.eval?sub#sub_g[64i]()
; sub_g[64i]()[116] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xa8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x6c,0xdf,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xb0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xc8,0xe8,0x45,0xdf,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x2b,0xf9,0x48,0xb9,0x98,0x18,0x52,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb7,0xe7,0xe9,0x5e,0x48,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0b 63 c7 f7 7f 00 00}
0016h mov rax,7ff7c7630ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 0b 63 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c83c6428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c df ff ff}
002ch mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7630bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0b 63 c7 f7 7f 00 00}
003dh mov rax,7ff7c7630bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 0b 63 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c83c6428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 df ff ff}
0053h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
0057h sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
005ah mov rcx,7ff7c8521898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 18 52 c8 f7 7f 00 00}
0064h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 e7 e9 5e}
0069h mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
