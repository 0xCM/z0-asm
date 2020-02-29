------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[8u]()
; eval_cmp_expr_g[8u]()[140] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xc1,0xc6,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb2,0xc6,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xea,0xf9,0xff,0xff,0x0f,0xb6,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x99,0xc6,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xc9,0xf9,0xff,0xff,0x44,0x0f,0xb6,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xdb,0xd6,0xff,0xff,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0xb0,0x21,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x80,0x28,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-102393fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 c6 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0a 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-102394eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 c6 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8653dd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea f9 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0a 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1023967h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 c6 fd fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8653dd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f9 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8651af8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db d6 ff ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c8a921b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 21 a9 c8 f7 7f 00 00}
007bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 28 c1 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[8i]()
; eval_cmp_expr_g[8i]()[141] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xf9,0xc5,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xea,0xc5,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x4a,0xf9,0xff,0xff,0x48,0x0f,0xbe,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd0,0xc5,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x28,0xf9,0xff,0xff,0x4c,0x0f,0xbe,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xd2,0xd6,0xff,0xff,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0xc8,0x27,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x9f,0x27,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1023a07h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 c5 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0a 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1023a16h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea c5 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8653e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a f9 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7630ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0a 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-1023a30h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 c5 fd fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c8653e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 f9 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8651bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 d6 ff ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c8a927c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 27 a9 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 27 c1 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[16u]()
; eval_cmp_expr_g[16u]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x61,0xc5,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x52,0xc5,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xba,0xf8,0xff,0xff,0x0f,0xb7,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x39,0xc5,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x99,0xf8,0xff,0xff,0x44,0x0f,0xb7,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xeb,0xd6,0xff,0xff,0x0f,0xb7,0xf0,0x48,0xb9,0x20,0x2d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf1,0x26,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1023a9fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 c5 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0a 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1023aaeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 c5 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8653e38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba f8 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0a 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1023ac7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 c5 fd fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8653e38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f8 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8651c98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb d6 ff ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c8a92d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2d a9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 26 c1 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[16i]()
; eval_cmp_expr_g[16i]()[141] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xc9,0xc4,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xba,0xc4,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x2a,0xf8,0xff,0xff,0x48,0x0f,0xbf,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa0,0xc4,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x08,0xf8,0xff,0xff,0x4c,0x0f,0xbf,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x02,0xd7,0xff,0xff,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0x78,0x32,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x3f,0x26,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1023b37h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 c4 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0a 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1023b46h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba c4 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8653e58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a f8 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7630ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0a 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-1023b60h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 c4 fd fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c8653e58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 f8 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8651d60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 d7 ff ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c8a93278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 32 a9 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 26 c1 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[32u]()
; eval_cmp_expr_g[32u]()[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x31,0xc4,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x22,0xc4,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x9a,0xf7,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x0a,0xc4,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x7a,0xf7,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x1d,0xd7,0xff,0xff,0x8b,0xf0,0x48,0xb9,0xd0,0x37,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x94,0x25,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0a 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1023bcfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 c4 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0a 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1023bdeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 c4 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8653e78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f7 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7630b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0b 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-1023bf6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a c4 fd fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c8653e78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f7 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8651e28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d d7 ff ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8a937d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 37 a9 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 25 c1 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[32i]()
; eval_cmp_expr_g[32i]()[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa9,0xc3,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x9a,0xc3,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x1a,0xf7,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x82,0xc3,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xfa,0xf6,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x1d,0xd7,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x28,0x3d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf4,0x24,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0b 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1023c57h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 c3 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0b 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1023c66h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a c3 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8653e98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a f7 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7630b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0b 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-1023c7eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 c3 fd fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c8653e98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f6 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8651ec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d d7 ff ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8a93d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3d a9 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 24 c1 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/expr.cmp.eval?eval#eval_cmp_expr_g[64i]()
; eval_cmp_expr_g[64i]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x21,0xc3,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x12,0xc3,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x9a,0xf6,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xf9,0xc2,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x79,0xf6,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0x9b,0xdb,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0xd8,0x47,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x51,0x24,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0b 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1023cdfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 c3 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0b 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1023ceeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 c3 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8653eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f6 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0b 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1023d07h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 c2 fd fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8653eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f6 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c86523e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b db ff ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8a947d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 47 a9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 24 c1 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[8u]()
; eval_vcmp_expr128_g[8u]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xc9,0xba,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xba,0xba,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xb2,0xfd,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa0,0xba,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x90,0xfd,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x29,0xfd,0xff,0xff,0x48,0xb9,0x18,0xe6,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x22,0x1b,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0b 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-1024537h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 ba fd fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0b 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1024546h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba ba fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8654ee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 fd ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0b 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-1024560h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 ba fd fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c8654ee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 fd ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8654ea8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 fd ff ff}
008fh mov rcx,7ff7c8a9e618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e6 a9 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 1b c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[8i]()
; eval_vcmp_expr128_g[8i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0b,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x01,0xba,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xf2,0xb9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xca,0xfd,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd8,0xb9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xa8,0xfd,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x61,0xfd,0xff,0xff,0x48,0xb9,0x28,0xed,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x42,0x1a,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0b 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-10245ffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 ba fd fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-102460eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 b9 fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8654fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fd ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-1024628h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 b9 fd fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c8654fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 fd ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8654fc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 fd ff ff}
008fh mov rcx,7ff7c8a9ed28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ed a9 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 1a c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[16u]()
; eval_vcmp_expr128_g[16u]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x39,0xb9,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x2a,0xb9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xd2,0xfd,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x10,0xb9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xb0,0xfd,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x69,0xfd,0xff,0xff,0x48,0xb9,0xb8,0xf2,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x62,0x19,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0c 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-10246c7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 b9 fd fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-10246d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a b9 fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c86550c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fd ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-10246f0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 b9 fd fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c86550c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 fd ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c86550a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 fd ff ff}
008fh mov rcx,7ff7c8a9f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 a9 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 19 c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[16i]()
; eval_vcmp_expr128_g[16i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x61,0xb4,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x52,0xb4,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x72,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x38,0xb4,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x50,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x09,0xfc,0xff,0xff,0x48,0xb9,0x48,0xf8,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x72,0x14,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0c 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-1024b9fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 b4 fd fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1024baeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 b4 fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8655458h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-1024bc8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 b4 fd fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c8655458h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8655438h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 fc ff ff}
008fh mov rcx,7ff7c8a9f848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f8 a9 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 14 c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[32u]()
; eval_vcmp_expr128_g[32u]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x99,0xb3,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x8a,0xb3,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x7a,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x50,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x70,0xb3,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x58,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x11,0xfc,0xff,0xff,0x48,0xb9,0xd8,0xfd,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x92,0x13,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0c 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-1024c67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 b3 fd fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1024c76h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a b3 fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8655540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-1024c90h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 70 b3 fd fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c8655540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8655520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 fc ff ff}
008fh mov rcx,7ff7c8a9fdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 fd a9 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 13 c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[32i]()
; eval_vcmp_expr128_g[32i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x58,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd1,0xb2,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x60,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xc2,0xb2,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x82,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x68,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa8,0xb2,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x60,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x19,0xfc,0xff,0xff,0x48,0xb9,0xe8,0x03,0xab,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb2,0x12,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0c 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-1024d2fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 b2 fd fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1024d3eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 b2 fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8655628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-1024d58h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 b2 fd fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c8655628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8655608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 fc ff ff}
008fh mov rcx,7ff7c8ab03e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 03 ab c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 12 c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr128_g[64i]()
; eval_vcmp_expr128_g[64i]()[182] = {0x57,0x56,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x70,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x09,0xb2,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x78,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xfa,0xb1,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x8a,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x80,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe0,0xb1,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x68,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x40,0x8b,0xd7,0xc5,0xf9,0x29,0x74,0x24,0x30,0xc5,0xf9,0x29,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x30,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x21,0xfc,0xff,0xff,0x48,0xb9,0x78,0x09,0xab,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd2,0x11,0xc1,0x5e,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x40,0x08,0xc5,0xf8,0x28,0x74,0x24,0x50,0x48,0x83,0xc4,0x68,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0c 63 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-1024df7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 b2 fd fe}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0c 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1024e06h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa b1 fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8655710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a fc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7630c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0c 63 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-1024e20h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 b1 fd fe}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c8655710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 fc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c86556f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 fc ff ff}
008fh mov rcx,7ff7c8ab0978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 09 ab c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 11 c1 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr), hex://logix/expr.cmp.eval?eval#eval_vcmp_expr256_g[8u]()
; eval_vcmp_expr256_g[8u]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x88,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x22,0xad,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x90,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x13,0xad,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x4b,0xfd,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x98,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0xf3,0xac,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x23,0xfd,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xb6,0xfc,0xff,0xff,0x48,0xb9,0x20,0x15,0xab,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xc7,0x0c,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10252deh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 ad fd fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10252edh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 13 ad fd fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c8655cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fd ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0c 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-102530dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f3 ac fd fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c8655cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 fd ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8655c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 fc ff ff}
00aah mov rcx,7ff7c8ab1520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 15 ab c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 0c c1 5e}
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
; eval_vcmp_expr256_g[8i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x2a,0xac,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x1b,0xac,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x33,0xfd,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0xfb,0xab,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x0b,0xfd,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xbe,0xfc,0xff,0xff,0x48,0xb9,0x30,0x1c,0xab,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb7,0x0b,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10253d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a ac fd fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10253e5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1b ac fd fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c8655dc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 fd ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0c 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-1025405h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fb ab fd fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c8655dc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b fd ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8655da8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be fc ff ff}
00aah mov rcx,7ff7c8ab1c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 1c ab c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 0b c1 5e}
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
; eval_vcmp_expr256_g[16u]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x32,0xab,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x23,0xab,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x0b,0xfd,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x03,0xab,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xe3,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x96,0xfc,0xff,0xff,0x48,0xb9,0xc0,0x21,0xab,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa7,0x0a,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10254ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 ab fd fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10254ddh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 23 ab fd fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c8655eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b fd ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0c 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-10254fdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 03 ab fd fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c8655eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 fc ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8655e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fc ff ff}
00aah mov rcx,7ff7c8ab21c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 21 ab c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 0a c1 5e}
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
; eval_vcmp_expr256_g[16i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x2a,0xa6,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x1b,0xa6,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x1b,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0xfb,0xa5,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xf3,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0xa6,0xfb,0xff,0xff,0x48,0xb9,0x50,0x27,0xab,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x87,0x05,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10259d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a a6 fd fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10259e5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1b a6 fd fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86562e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fc ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0c 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-1025a05h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fb a5 fd fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86562e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86562c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 fb ff ff}
00aah mov rcx,7ff7c8ab2750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 27 ab c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 05 c1 5e}
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
; eval_vcmp_expr256_g[32u]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x32,0xa5,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x23,0xa5,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xf3,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x0c,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x03,0xa5,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xcb,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x7e,0xfb,0xff,0xff,0x48,0xb9,0xe0,0x2c,0xab,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x77,0x04,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0c 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1025aceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 a5 fd fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0c 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-1025addh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 23 a5 fd fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86563c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0c 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-1025afdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 03 a5 fd fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86563c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86563a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e fb ff ff}
00aah mov rcx,7ff7c8ab2ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 2c ab c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 04 c1 5e}
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
; eval_vcmp_expr256_g[32i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x3a,0xa4,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x2b,0xa4,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xcb,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x0b,0xa4,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xa3,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x56,0xfb,0xff,0xff,0x48,0xb9,0x70,0x32,0xab,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x67,0x03,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0d 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1025bc6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a a4 fd fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0d 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-1025bd5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2b a4 fd fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86564b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0d 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-1025bf5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0b a4 fd fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86564b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8656490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 fb ff ff}
00aah mov rcx,7ff7c8ab3270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 32 ab c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 03 c1 5e}
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
; eval_vcmp_expr256_g[64i]()[227] = {0x57,0x56,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x29,0xbc,0x24,0x80,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x42,0xa3,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x33,0xa3,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xa3,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x70,0x08,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0xc4,0xe3,0x7d,0x19,0xf7,0x01,0x39,0x09,0xff,0x15,0x13,0xa3,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x7b,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0x48,0x8d,0x4c,0x24,0x60,0x8b,0xd7,0xc4,0xe3,0x4d,0x18,0xf7,0x01,0xc5,0xfd,0x11,0x74,0x24,0x40,0xc5,0xfd,0x11,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x40,0x4c,0x8d,0x4c,0x24,0x20,0xe8,0x2e,0xfb,0xff,0xff,0x48,0xb9,0x00,0x38,0xab,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x57,0x02,0xc1,0x5e,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x11,0x40,0x08,0xc5,0xf8,0x28,0xb4,0x24,0x90,0x00,0x00,0x00,0xc5,0xf8,0x28,0xbc,0x24,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xa8,0x00,0x00,0x00,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0d 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1025cbeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 a3 fd fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7630d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0d 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-1025ccdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 33 a3 fd fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c8656598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 fb ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7630d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0d 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-1025cedh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 13 a3 fd fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c8656598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b fb ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8656578h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e fb ff ff}
00aah mov rcx,7ff7c8ab3800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 38 ab c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 02 c1 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
