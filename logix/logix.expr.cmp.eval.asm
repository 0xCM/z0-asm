------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/CmpExprEval?eval#eval_cmp_expr_g[8u]()
; eval_cmp_expr_g[8u]()[140] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x09,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x41,0xb0,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x09,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x32,0xb0,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x4a,0xf9,0xff,0xff,0x0f,0xb6,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x09,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x19,0xb0,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x29,0xf9,0xff,0xff,0x44,0x0f,0xb6,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x63,0xd7,0xff,0xff,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0xf8,0x85,0x97,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xe0,0x12,0xc7,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76209b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 09 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fd4fbfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 b0 02 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76209b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 09 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd4fceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 b0 02 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c85f52d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a f9 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c76209c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 09 62 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0fd4fe7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 b0 02 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c85f52d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f9 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c85f3120h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 d7 ff ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c89785f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 85 97 c8 f7 7f 00 00}
007bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 12 c7 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/CmpExprEval?eval#eval_cmp_expr_g[8i]()
; eval_cmp_expr_g[8i]()[141] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x09,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x79,0xaf,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x09,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x6a,0xaf,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xaa,0xf8,0xff,0xff,0x48,0x0f,0xbe,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x09,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x50,0xaf,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x88,0xf8,0xff,0xff,0x4c,0x0f,0xbe,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x5a,0xd7,0xff,0xff,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0x10,0x8c,0x97,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xff,0x11,0xc7,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76209c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 09 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fd5087h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 af 02 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76209d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 09 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd5096h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a af 02 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c85f5318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f8 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c76209d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 09 62 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0fd50b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 af 02 ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c85f5318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 f8 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c85f31f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a d7 ff ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c8978c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8c 97 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 11 c7 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/CmpExprEval?eval#eval_cmp_expr_g[16u]()
; eval_cmp_expr_g[16u]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x09,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe1,0xae,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x09,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd2,0xae,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x1a,0xf8,0xff,0xff,0x0f,0xb7,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x09,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb9,0xae,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xf9,0xf7,0xff,0xff,0x44,0x0f,0xb7,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x73,0xd7,0xff,0xff,0x0f,0xb7,0xf0,0x48,0xb9,0x68,0x91,0x97,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x51,0x11,0xc7,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76209e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 09 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fd511fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 ae 02 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76209e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 09 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd512eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 ae 02 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c85f5338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a f8 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c76209f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 09 62 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0fd5147h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 ae 02 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c85f5338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 f7 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c85f32c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 d7 ff ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c8979168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 91 97 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 11 c7 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/CmpExprEval?eval#eval_cmp_expr_g[16i]()
; eval_cmp_expr_g[16i]()[141] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x09,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x49,0xae,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x3a,0xae,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x8a,0xf7,0xff,0xff,0x48,0x0f,0xbf,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x20,0xae,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x68,0xf7,0xff,0xff,0x4c,0x0f,0xbf,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x8a,0xd7,0xff,0xff,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0xc0,0x96,0x97,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x9f,0x10,0xc7,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76209f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 09 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fd51b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 ae 02 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0a 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd51c6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a ae 02 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c85f5358h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f7 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7620a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0a 62 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0fd51e0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 ae 02 ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c85f5358h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f7 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c85f3388h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d7 ff ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c89796c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 96 97 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 10 c7 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/CmpExprEval?eval#eval_cmp_expr_g[32u]()
; eval_cmp_expr_g[32u]()[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb1,0xad,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa2,0xad,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xfa,0xf6,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x8a,0xad,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xda,0xf6,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xa5,0xd7,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x18,0x9c,0x97,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf4,0x0f,0xc7,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7620a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0a 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fd524fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 ad 02 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0a 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd525eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 ad 02 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c85f5378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f6 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7620a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0a 62 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0fd5276h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a ad 02 ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c85f5378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da f6 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c85f3450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 d7 ff ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8979c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9c 97 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 0f c7 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/CmpExprEval?eval#eval_cmp_expr_g[32i]()
; eval_cmp_expr_g[32i]()[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x29,0xad,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x1a,0xad,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x7a,0xf6,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x02,0xad,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x5a,0xf6,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x3d,0xdb,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x70,0xa1,0x97,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x54,0x0f,0xc7,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7620a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0a 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fd52d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 ad 02 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0a 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd52e6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a ad 02 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c85f5398h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f6 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7620a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0a 62 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0fd52feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 ad 02 ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c85f5398h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a f6 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c85f3888h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d db ff ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c897a170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a1 97 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 0f c7 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/CmpExprEval?eval#eval_cmp_expr_g[64i]()
; eval_cmp_expr_g[64i]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa1,0xac,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x92,0xac,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xfa,0xf5,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x50,0x0a,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x79,0xac,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xd9,0xf5,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0x2b,0xdc,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0x20,0xac,0x97,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb1,0x0e,0xc7,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7620a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0a 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fd535fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 ac 02 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0a 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd536eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 ac 02 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c85f53b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f5 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7620a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0a 62 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0fd5387h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 ac 02 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c85f53b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f5 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c85f3a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b dc ff ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c897ac20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ac 97 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 0e c7 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr128_g[8u]()
; eval_vcmp_expr128_g[8u]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x49,0xa4,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x3a,0xa4,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x52,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x20,0xa4,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x30,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xc9,0xfb,0xff,0xff,0x48,0xb9,0xa0,0x4a,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x82,0x05,0xc7,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7620b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0b 62 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fd5bb7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 a4 02 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7620b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0b 62 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fd5bc6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a a4 02 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c85f6328h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7620b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0b 62 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fd5be0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 a4 02 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c85f6328h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c85f62e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 fb ff ff}
008fh mov rcx,7ff7c8994aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 4a 99 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 05 c7 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr128_g[8i]()
; eval_vcmp_expr128_g[8i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x81,0xa3,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x72,0xa3,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x6a,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x58,0xa3,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x48,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x01,0xfc,0xff,0xff,0x48,0xb9,0xb0,0x51,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa2,0x04,0xc7,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7620b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0b 62 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fd5c7fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 a3 02 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7620b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0b 62 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fd5c8eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 a3 02 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c85f6420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7620b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0b 62 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fd5ca8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 a3 02 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c85f6420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c85f6400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 fc ff ff}
008fh mov rcx,7ff7c89951b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 51 99 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 04 c7 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr128_g[16u]()
; eval_vcmp_expr128_g[16u]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa9,0x9e,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x9a,0x9e,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x12,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x80,0x9e,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xf0,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xa9,0xfb,0xff,0xff,0x48,0xb9,0x40,0x57,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb2,0xff,0xc6,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7620b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0b 62 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fd6157h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 9e 02 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7620b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0b 62 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fd6166h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a 9e 02 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c85f68b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7620b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0b 62 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fd6180h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 9e 02 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c85f68b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 fb ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c85f6898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 fb ff ff}
008fh mov rcx,7ff7c8995740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 57 99 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 ff c6 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr128_g[16i]()
; eval_vcmp_expr128_g[16i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe1,0x9d,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x50,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd2,0x9d,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x1a,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x58,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb8,0x9d,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xf8,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xb1,0xfb,0xff,0xff,0x48,0xb9,0xd0,0x5c,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd2,0xfe,0xc6,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7620b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0b 62 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fd621fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 9d 02 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7620b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0b 62 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fd622eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 9d 02 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c85f69a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7620b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0b 62 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fd6248h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 9d 02 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c85f69a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 fb ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c85f6980h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 fb ff ff}
008fh mov rcx,7ff7c8995cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 99 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fe c6 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr128_g[32u]()
; eval_vcmp_expr128_g[32u]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x60,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x19,0x9d,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x68,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x0a,0x9d,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x22,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x70,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xf0,0x9c,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x00,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xb9,0xfb,0xff,0xff,0x48,0xb9,0x60,0x62,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf2,0xfd,0xc6,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7620b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0b 62 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fd62e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 9d 02 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7620b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0b 62 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fd62f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a 9d 02 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c85f6a88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7620b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0b 62 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fd6310h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 9c 02 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c85f6a88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c85f6a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 fb ff ff}
008fh mov rcx,7ff7c8996260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 62 99 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fd c6 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr128_g[32i]()
; eval_vcmp_expr128_g[32i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x78,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x51,0x9c,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x80,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x42,0x9c,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x2a,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x88,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x28,0x9c,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x08,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xc1,0xfb,0xff,0xff,0x48,0xb9,0xf0,0x67,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x12,0xfd,0xc6,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7620b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0b 62 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fd63afh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 9c 02 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7620b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0b 62 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fd63beh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 9c 02 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c85f6b70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7620b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0b 62 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fd63d8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 28 9c 02 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c85f6b70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c85f6b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 fb ff ff}
008fh mov rcx,7ff7c89967f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 67 99 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 fd c6 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr128_g[64i]()
; eval_vcmp_expr128_g[64i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x79,0x97,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x6a,0x97,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xba,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x50,0x97,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x98,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xb9,0xf7,0xff,0xff,0x48,0xb9,0x80,0x6d,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x22,0xf8,0xc6,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7620b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0b 62 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fd6887h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 97 02 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7620b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0b 62 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fd6896h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 97 02 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c85f6ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fb ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7620ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0b 62 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fd68b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 97 02 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c85f6ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 fb ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c85f6c38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f7 ff ff}
008fh mov rcx,7ff7c8996d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6d 99 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 f8 c6 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr256_g[8u]()
; eval_vcmp_expr256_g[8u]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa2,0x96,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x93,0x96,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xfb,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x73,0x96,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xd3,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x66,0xfc,0xff,0xff,0x48,0xb9,0x28,0x79,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x27,0xf7,0xc6,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0b 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd695eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 96 02 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7620bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0b 62 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fd696dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 93 96 02 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c85f7220h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb fc ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7620bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0b 62 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fd698dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 73 96 02 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c85f7220h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 fc ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c85f71e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 fc ff ff}
00aah mov rcx,7ff7c8997928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 79 99 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f7 c6 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr256_g[8i]()
; eval_vcmp_expr256_g[8i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xaa,0x95,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x9b,0x95,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xe3,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x7b,0x95,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xbb,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x6e,0xfc,0xff,0xff,0x48,0xb9,0x38,0x80,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x17,0xf6,0xc6,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0b 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd6a56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 95 02 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7620bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0b 62 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fd6a65h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9b 95 02 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c85f7318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 fc ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7620bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0b 62 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fd6a85h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7b 95 02 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c85f7318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fc ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c85f72f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e fc ff ff}
00aah mov rcx,7ff7c8998038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 99 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 f6 c6 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr256_g[16u]()
; eval_vcmp_expr256_g[16u]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa2,0x90,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x93,0x90,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xbb,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x73,0x90,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x93,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x46,0xfb,0xff,0xff,0x48,0xb9,0xc8,0x85,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf7,0xf0,0xc6,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0b 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd6f5eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 90 02 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7620be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0b 62 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fd6f6dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 93 90 02 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c85f7710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7620be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0b 62 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fd6f8dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 73 90 02 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c85f7710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c85f76f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 fb ff ff}
00aah mov rcx,7ff7c89985c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 85 99 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f0 c6 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr256_g[16i]()
; eval_vcmp_expr256_g[16i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xaa,0x8f,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0b,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x9b,0x8f,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x93,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0c,0x62,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x7b,0x8f,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x6b,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x1e,0xfb,0xff,0xff,0x48,0xb9,0x58,0x8b,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xe7,0xef,0xc6,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0b 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd7056h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 8f 02 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7620bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0b 62 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fd7065h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9b 8f 02 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c85f77f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7620c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0c 62 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fd7085h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7b 8f 02 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c85f77f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c85f77d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e fb ff ff}
00aah mov rcx,7ff7c8998b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8b 99 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 ef c6 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr256_g[32u]()
; eval_vcmp_expr256_g[32u]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0c,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb2,0x8e,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0c,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa3,0x8e,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x6b,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0c,0x62,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x83,0x8e,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x43,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xf6,0xfa,0xff,0xff,0x48,0xb9,0xe8,0x90,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd7,0xee,0xc6,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0c 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd714eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 8e 02 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7620c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0c 62 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fd715dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a3 8e 02 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c85f78e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7620c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0c 62 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fd717dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 83 8e 02 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c85f78e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c85f78c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fa ff ff}
00aah mov rcx,7ff7c89990e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 90 99 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 ee c6 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr256_g[32i]()
; eval_vcmp_expr256_g[32i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0c,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xba,0x8d,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0c,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xab,0x8d,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x43,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0c,0x62,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x8b,0x8d,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x1b,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xce,0xfa,0xff,0xff,0x48,0xb9,0x78,0x96,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xc7,0xed,0xc6,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0c 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd7246h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba 8d 02 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7620c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0c 62 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fd7255h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ab 8d 02 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c85f79c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7620c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0c 62 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fd7275h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8b 8d 02 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c85f79c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c85f79a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fa ff ff}
00aah mov rcx,7ff7c8999678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 96 99 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 ed c6 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr), hex://logix/CmpExprEval?eval#eval_vcmp_expr256_g[64i]()
; eval_vcmp_expr256_g[64i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0c,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xc2,0x8c,0x02,0xff,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0c,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb3,0x8c,0x02,0xff,0x48,0x8b,0xc8,0xe8,0x1b,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0c,0x62,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x93,0x8c,0x02,0xff,0x48,0x8b,0xc8,0xe8,0xf3,0xfa,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xa6,0xfa,0xff,0xff,0x48,0xb9,0x08,0x9c,0x99,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb7,0xec,0xc6,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7620c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0c 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fd733eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 8c 02 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7620c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0c 62 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fd734dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b3 8c 02 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c85f7ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7620c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0c 62 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fd736dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 93 8c 02 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c85f7ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fa ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c85f7a90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 fa ff ff}
00aah mov rcx,7ff7c8999c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9c 99 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ec c6 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
