------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[8u]()
; eval_cmp_expr_g[8u]()[140] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x80,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x41,0xb0,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x88,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x32,0xb0,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x62,0xf9,0xff,0xff,0x0f,0xb6,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x19,0xb0,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x41,0xf9,0xff,0xff,0x44,0x0f,0xb6,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x73,0xb5,0xff,0xff,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0xe0,0x71,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x10,0x12,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1014fbfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 b0 fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0a 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1014fceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 b0 fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86453c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 f9 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0a 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1014fe7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 b0 fe fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86453c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f9 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8641000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 b5 ff ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c8a871e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 71 a8 c8 f7 7f 00 00}
007bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 12 c2 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[8i]()
; eval_cmp_expr_g[8i]()[141] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x79,0xaf,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x6a,0xaf,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xc2,0xf8,0xff,0xff,0x48,0x0f,0xbe,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x50,0xaf,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xa0,0xf8,0xff,0xff,0x4c,0x0f,0xbe,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x6a,0xb5,0xff,0xff,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0xf8,0x77,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x2f,0x11,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1015087h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 af fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0a 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1015096h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a af fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8645400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f8 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7630aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0a 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10150b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 af fe fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c8645400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 f8 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c86410d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a b5 ff ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c8a877f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 77 a8 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 11 c2 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[16u]()
; eval_cmp_expr_g[16u]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe1,0xae,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd2,0xae,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x32,0xf8,0xff,0xff,0x0f,0xb7,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb9,0xae,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x11,0xf8,0xff,0xff,0x44,0x0f,0xb7,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x83,0xb5,0xff,0xff,0x0f,0xb7,0xf0,0x48,0xb9,0x50,0x7d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x81,0x10,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-101511fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 ae fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0a 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-101512eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 ae fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8645420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f8 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0a 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1015147h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 ae fe fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8645420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f8 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c86411a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 b5 ff ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c8a87d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d a8 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 10 c2 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[16i]()
; eval_cmp_expr_g[16i]()[141] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x49,0xae,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x3a,0xae,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xa2,0xf7,0xff,0xff,0x48,0x0f,0xbf,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x20,0xae,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x80,0xf7,0xff,0xff,0x4c,0x0f,0xbf,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xc2,0xda,0xff,0xff,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0xa8,0x82,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xcf,0x0f,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10151b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 ae fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0a 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10151c6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a ae fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8645440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f7 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7630ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0a 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10151e0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 ae fe fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c8645440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 f7 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8643790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 da ff ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c8a882a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 a8 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 0f c2 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[32u]()
; eval_cmp_expr_g[32u]()[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb1,0xad,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa2,0xad,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x12,0xf7,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x8a,0xad,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xf2,0xf6,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xdd,0xda,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x00,0x88,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x24,0x0f,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-101524fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 ad fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0a 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-101525eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 ad fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8645460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f7 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7630af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0a 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-1015276h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a ad fe fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c8645460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 f6 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8643858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd da ff ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8a88800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 88 a8 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 0f c2 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[32i]()
; eval_cmp_expr_g[32i]()[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x29,0xad,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x1a,0xad,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x92,0xf6,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x02,0xad,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x72,0xf6,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x05,0xdb,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x58,0x8d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x84,0x0e,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10152d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 ad fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0b 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10152e6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a ad fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8645480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f6 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7630b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0b 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10152feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 ad fe fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c8645480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 f6 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8643920h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 db ff ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8a88d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8d a8 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 0e c2 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[64i]()
; eval_cmp_expr_g[64i]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa1,0xac,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x92,0xac,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x12,0xf6,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x79,0xac,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xf1,0xf5,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0xf3,0xdb,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0x08,0x98,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xe1,0x0d,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0b 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-101535fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 ac fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0b 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-101536eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 ac fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86454a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f6 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0b 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1015387h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 ac fe fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86454a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 f5 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c8643ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 db ff ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8a89808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 98 a8 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 0d c2 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[8u]()
; eval_vcmp_expr128_g[8u]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x49,0xa4,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x3a,0xa4,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xea,0xfa,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x20,0xa4,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xc8,0xfa,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x61,0xfa,0xff,0xff,0x48,0xb9,0xb8,0x36,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb2,0x04,0xc2,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0b 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-1015bb7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 a4 fe fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0b 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1015bc6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a a4 fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8646290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea fa ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0b 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-1015be0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 a4 fe fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c8646290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 fa ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8646250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 fa ff ff}
008fh mov rcx,7ff7c8aa36b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 36 aa c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 04 c2 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[8i]()
; eval_vcmp_expr128_g[8i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x71,0x9f,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x62,0x9f,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x3a,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x48,0x9f,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x18,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xd1,0xfb,0xff,0xff,0x48,0xb9,0xc8,0x3d,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xc2,0xff,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0b 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-101608fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 9f fe fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0b 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-101609eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 9f fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c86468d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0b 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-10160b8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 48 9f fe fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c86468d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c86468b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 fb ff ff}
008fh mov rcx,7ff7c8aa3dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 3d aa c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 ff c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[16u]()
; eval_vcmp_expr128_g[16u]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa9,0x9e,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x9a,0x9e,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x42,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x80,0x9e,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x20,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xd9,0xfb,0xff,0xff,0x48,0xb9,0x58,0x43,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xe2,0xfe,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0c 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-1016157h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 9e fe fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1016166h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a 9e fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c86469b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-1016180h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 9e fe fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c86469b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8646998h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 fb ff ff}
008fh mov rcx,7ff7c8aa4358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 43 aa c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fe c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[16i]()
; eval_vcmp_expr128_g[16i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe1,0x9d,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd2,0x9d,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x4a,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb8,0x9d,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x28,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xe1,0xfb,0xff,0xff,0x48,0xb9,0xe8,0x48,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x02,0xfe,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0c 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-101621fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 9d fe fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-101622eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 9d fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8646aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-1016248h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 9d fe fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c8646aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8646a80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 fb ff ff}
008fh mov rcx,7ff7c8aa48e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 48 aa c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 fe c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[32u]()
; eval_vcmp_expr128_g[32u]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x19,0x9d,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x0a,0x9d,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x52,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xf0,0x9c,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x30,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xe9,0xfb,0xff,0xff,0x48,0xb9,0x78,0x4e,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x22,0xfd,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0c 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-10162e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 9d fe fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-10162f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a 9d fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8646b88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-1016310h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 9c fe fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c8646b88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8646b68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 fb ff ff}
008fh mov rcx,7ff7c8aa4e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 4e aa c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 fd c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[32i]()
; eval_vcmp_expr128_g[32i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x41,0x98,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x50,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x32,0x98,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xda,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x58,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x18,0x98,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xb8,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x71,0xfb,0xff,0xff,0x48,0xb9,0x08,0x54,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x32,0xf8,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0c 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-10167bfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 98 fe fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-10167ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 98 fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8647000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da fb ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-10167e8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 98 fe fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c8647000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fb ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8646fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 fb ff ff}
008fh mov rcx,7ff7c8aa5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 aa c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f8 c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[64i]()
; eval_vcmp_expr128_g[64i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x60,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x79,0x97,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x68,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x6a,0x97,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xe2,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x70,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x50,0x97,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xc0,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x79,0xfb,0xff,0xff,0x48,0xb9,0x98,0x59,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x52,0xf7,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0c 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-1016887h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 97 fe fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1016896h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 97 fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c86470e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-10168b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 97 fe fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c86470e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 fb ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c86470c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fb ff ff}
008fh mov rcx,7ff7c8aa5998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 59 aa c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 f7 c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[8u]()
; eval_vcmp_expr256_g[8u]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x78,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa2,0x96,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x80,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x93,0x96,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x23,0xfd,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x88,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x73,0x96,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xfb,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x8e,0xfc,0xff,0xff,0x48,0xb9,0x40,0x65,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x57,0xf6,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-101695eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 96 fe fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-101696dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 93 96 fe fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c8647318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 fd ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0c 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-101698dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 73 96 fe fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c8647318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb fc ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86472d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e fc ff ff}
00aah mov rcx,7ff7c8aa6540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 65 aa c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f6 c1 5e}
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
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[8i]()
; eval_vcmp_expr256_g[8i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x9a,0x91,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x8b,0x91,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xe3,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x6b,0x91,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xbb,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x6e,0xfb,0xff,0xff,0x48,0xb9,0x50,0x6c,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x37,0xf1,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1016e66h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a 91 fe fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-1016e75h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8b 91 fe fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86476f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0c 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-1016e95h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6b 91 fe fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86476f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86476d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e fb ff ff}
00aah mov rcx,7ff7c8aa6c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c aa c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 f1 c1 5e}
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
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[16u]()
; eval_vcmp_expr256_g[16u]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa2,0x90,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x93,0x90,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xbb,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x73,0x90,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x93,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x46,0xfb,0xff,0xff,0x48,0xb9,0xe0,0x71,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x27,0xf0,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1016f5eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 90 fe fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-1016f6dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 93 90 fe fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86477e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0c 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-1016f8dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 73 90 fe fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86477e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86477c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 fb ff ff}
00aah mov rcx,7ff7c8aa71e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 71 aa c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f0 c1 5e}
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
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[16i]()
; eval_vcmp_expr256_g[16i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xaa,0x8f,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x9b,0x8f,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x93,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x7b,0x8f,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x6b,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x1e,0xfb,0xff,0xff,0x48,0xb9,0x70,0x77,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x17,0xef,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1017056h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 8f fe fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-1017065h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9b 8f fe fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86478c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0c 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-1017085h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7b 8f fe fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86478c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86478a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e fb ff ff}
00aah mov rcx,7ff7c8aa7770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 77 aa c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 ef c1 5e}
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
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[32u]()
; eval_vcmp_expr256_g[32u]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb2,0x8e,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa3,0x8e,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x6b,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x83,0x8e,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x43,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xf6,0xfa,0xff,0xff,0x48,0xb9,0x00,0x7d,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x07,0xee,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-101714eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 8e fe fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-101715dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a3 8e fe fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86479b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0c 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-101717dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 83 8e fe fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86479b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8647990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fa ff ff}
00aah mov rcx,7ff7c8aa7d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 7d aa c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ee c1 5e}
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
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[32i]()
; eval_vcmp_expr256_g[32i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xba,0x8d,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xab,0x8d,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x43,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x8b,0x8d,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x1b,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xce,0xfa,0xff,0xff,0x48,0xb9,0x90,0x82,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf7,0xec,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1017246h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba 8d fe fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-1017255h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ab 8d fe fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c8647a98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0d 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-1017275h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8b 8d fe fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c8647a98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8647a78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fa ff ff}
00aah mov rcx,7ff7c8aa8290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 82 aa c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 ec c1 5e}
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
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[64i]()
; eval_vcmp_expr256_g[64i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb2,0x88,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa3,0x88,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x73,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x83,0x88,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x4b,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xfe,0xfb,0xff,0xff,0x48,0xb9,0x20,0x88,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd7,0xe7,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0d 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-101774eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 88 fe fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0d 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-101775dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a3 88 fe fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86480e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 fc ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0d 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-101777dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 83 88 fe fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86480e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fc ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86480c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fb ff ff}
00aah mov rcx,7ff7c8aa8820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 88 aa c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 e7 c1 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
