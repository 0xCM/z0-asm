------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/expr.arith.eval?eval#eval_g[8u]()
; eval_g[8u]()[140] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd1,0xe9,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xc2,0xe9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xba,0xfb,0xff,0xff,0x0f,0xb6,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa9,0xe9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x99,0xfb,0xff,0xff,0x44,0x0f,0xb6,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xab,0xfb,0xff,0xff,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0xb0,0x21,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x50,0x4d,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76308d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 08 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-102162fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 e9 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76308d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 08 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-102163eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 e9 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8651ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fb ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c76308e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 08 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1021657h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 e9 fd fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8651ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 fb ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8651af8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab fb ff ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c8a921b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 21 a9 c8 f7 7f 00 00}
007bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 4d c1 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/expr.arith.eval?eval#eval_g[8i]()
; eval_g[8i]()[141] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x39,0xe9,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x2a,0xe9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xf2,0xfb,0xff,0xff,0x48,0x0f,0xbe,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x10,0xe9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xd0,0xfb,0xff,0xff,0x4c,0x0f,0xbe,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xd2,0xfb,0xff,0xff,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0xc8,0x27,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x9f,0x4c,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76308e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 08 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10216c7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 e9 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76308f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 08 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10216d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a e9 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8651bc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fb ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c76308f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 08 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10216f0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 e9 fd fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c8651bc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 fb ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8651bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fb ff ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c8a927c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 27 a9 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 4c c1 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/expr.arith.eval?eval#eval_g[16u]()
; eval_g[16u]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x00,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa1,0xe8,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x08,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x92,0xe8,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x0a,0xfc,0xff,0xff,0x0f,0xb7,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x10,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x79,0xe8,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xe9,0xfb,0xff,0xff,0x44,0x0f,0xb7,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xeb,0xfb,0xff,0xff,0x0f,0xb7,0xf0,0x48,0xb9,0x20,0x2d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf1,0x4b,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-102175fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 e8 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-102176eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 e8 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8651c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a fc ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 09 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1021787h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 e8 fd fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8651c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 fb ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8651c98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb fb ff ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c8a92d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2d a9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 4b c1 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/expr.arith.eval?eval#eval_g[16i]()
; eval_g[16i]()[141] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x18,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x09,0xe8,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x20,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xfa,0xe7,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x22,0xfc,0xff,0xff,0x48,0x0f,0xbf,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x28,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe0,0xe7,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x00,0xfc,0xff,0xff,0x4c,0x0f,0xbf,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x02,0xfc,0xff,0xff,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0x78,0x32,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x3f,0x4b,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10217f7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 e8 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1021806h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa e7 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8651d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 fc ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7630928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 09 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-1021820h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 e7 fd fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c8651d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 fc ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8651d60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 fc ff ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c8a93278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 32 a9 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 4b c1 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/expr.arith.eval?eval#eval_g[32u]()
; eval_g[32u]()[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x30,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x71,0xe7,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x38,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x62,0xe7,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x3a,0xfc,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x40,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x4a,0xe7,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x1a,0xfc,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x1d,0xfc,0xff,0xff,0x8b,0xf0,0x48,0xb9,0xd0,0x37,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x94,0x4a,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-102188fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 e7 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-102189eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 e7 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8651e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fc ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7630940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 09 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10218b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a e7 fd fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c8651e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a fc ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8651e28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d fc ff ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8a937d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 37 a9 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 4a c1 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/expr.arith.eval?eval#eval_g[32i]()
; eval_g[32i]()[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x48,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd9,0xe2,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x50,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xca,0xe2,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x2a,0xf8,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x58,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb2,0xe2,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x0a,0xf8,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x0d,0xf8,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x28,0x3d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xe4,0x45,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1021d27h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 e2 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1021d36h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca e2 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8651eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a f8 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7630958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 09 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-1021d4eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 e2 fd fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c8651eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a f8 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8651ec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d f8 ff ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8a93d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3d a9 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 45 c1 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr), hex://logix/expr.arith.eval?eval#eval_g[64u]()
; eval_g[64u]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x60,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x51,0xe2,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x68,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x42,0xe2,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xe2,0xfb,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x70,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x29,0xe2,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xc1,0xfb,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0xc3,0xfb,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0x80,0x42,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x41,0x45,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1021dafh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 e2 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1021dbeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 e2 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8652310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 09 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1021dd7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 e2 fd fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8652310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 fb ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c8652320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 fb ff ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8a94280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 42 a9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 45 c1 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/expr.arith.eval?eval#eval_g[64i]()
; eval_g[64i]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x78,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb9,0xe1,0xfd,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x80,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xaa,0xe1,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xfa,0xfb,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x88,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x91,0xe1,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xd9,0xfb,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0xdb,0xfb,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0xd8,0x47,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x91,0x44,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1021e47h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 e1 fd fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1021e56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa e1 fd fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86523d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa fb ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 09 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1021e6fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 e1 fd fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86523d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 fb ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c86523e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fb ff ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8a947d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 47 a9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 44 c1 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> inc<byte>(IUnaryArithmeticOp<byte> a), hex://logix/expr.arith.eval?inc#inc_g[8u]()
; inc_g[8u]()[45] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x3e,0xfc,0xff,0xff,0x0f,0xb6,0x48,0x08,0xff,0xc1,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0xb0,0x21,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x3d,0x44,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652498h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e fc ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0010h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0014h mov rcx,7ff7c8a921b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 21 a9 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 44 c1 5e}
0023h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> inc<sbyte>(IUnaryArithmeticOp<sbyte> a), hex://logix/expr.arith.eval?inc#inc_g[8i]()
; inc_g[8i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x5e,0xfc,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0xff,0xc1,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0xc8,0x27,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xec,0x43,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e fc ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c8a927c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 27 a9 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 43 c1 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> inc<ushort>(IUnaryArithmeticOp<ushort> a), hex://logix/expr.arith.eval?inc#inc_g[16u]()
; inc_g[16u]()[44] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x4e,0xfc,0xff,0xff,0x0f,0xb7,0x48,0x08,0xff,0xc1,0x0f,0xb7,0xf1,0x48,0xb9,0x20,0x2d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x9e,0x43,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652548h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e fc ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0010h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0013h mov rcx,7ff7c8a92d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2d a9 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 43 c1 5e}
0022h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0026h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> inc<short>(IUnaryArithmeticOp<short> a), hex://logix/expr.arith.eval?inc#inc_g[16i]()
; inc_g[16i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x4e,0xfc,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0xff,0xc1,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0x78,0x32,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x5c,0x43,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652588h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e fc ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c8a93278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 32 a9 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 43 c1 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> inc<uint>(IUnaryArithmeticOp<uint> a), hex://logix/expr.arith.eval?inc#inc_g[32u]()
; inc_g[32u]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x3e,0xfc,0xff,0xff,0x8b,0x70,0x08,0xff,0xc6,0x48,0xb9,0xd0,0x37,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x12,0x43,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c86525c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e fc ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
000fh mov rcx,7ff7c8a937d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 37 a9 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 43 c1 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> inc<int>(IUnaryArithmeticOp<int> a), hex://logix/expr.arith.eval?inc#inc_g[32i]()
; inc_g[32i]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x3e,0xfc,0xff,0xff,0x8b,0x70,0x08,0xff,0xc6,0x48,0xb9,0x28,0x3d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd2,0x42,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e fc ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
000fh mov rcx,7ff7c8a93d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3d a9 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 42 c1 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> inc<ulong>(IUnaryArithmeticOp<ulong> a), hex://logix/expr.arith.eval?inc#inc_g[64u]()
; inc_g[64u]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xf6,0xfb,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xc6,0x48,0xb9,0x80,0x42,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x80,0x3e,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652a10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fb ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0011h mov rcx,7ff7c8a94280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 42 a9 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 3e c1 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> inc<long>(IUnaryArithmeticOp<long> a), hex://logix/expr.arith.eval?inc#inc_g[64i]()
; inc_g[64i]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xf6,0xfb,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xc6,0x48,0xb9,0xd8,0x47,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x40,0x3e,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fb ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0011h mov rcx,7ff7c8a947d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 47 a9 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 3e c1 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> dec<byte>(IUnaryArithmeticOp<byte> a), hex://logix/expr.arith.eval?dec#dec_g[8u]()
; dec_g[8u]()[45] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xfe,0xf5,0xff,0xff,0x0f,0xb6,0x48,0x08,0xff,0xc9,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0xb0,0x21,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xfd,0x3d,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652498h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe f5 ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0014h mov rcx,7ff7c8a921b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 21 a9 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 3d c1 5e}
0023h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> dec<sbyte>(IUnaryArithmeticOp<sbyte> a), hex://logix/expr.arith.eval?dec#dec_g[8i]()
; dec_g[8i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x1e,0xf6,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0xff,0xc9,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0xc8,0x27,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xac,0x3d,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e f6 ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c8a927c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 27 a9 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 3d c1 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> dec<ushort>(IUnaryArithmeticOp<ushort> a), hex://logix/expr.arith.eval?dec#dec_g[16u]()
; dec_g[16u]()[44] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x0e,0xf6,0xff,0xff,0x0f,0xb7,0x48,0x08,0xff,0xc9,0x0f,0xb7,0xf1,0x48,0xb9,0x20,0x2d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x5e,0x3d,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652548h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e f6 ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0013h mov rcx,7ff7c8a92d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2d a9 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 3d c1 5e}
0022h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0026h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> dec<short>(IUnaryArithmeticOp<short> a), hex://logix/expr.arith.eval?dec#dec_g[16i]()
; dec_g[16i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x0e,0xf6,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0xff,0xc9,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0x78,0x32,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x1c,0x3d,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652588h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e f6 ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c8a93278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 32 a9 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 3d c1 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> dec<uint>(IUnaryArithmeticOp<uint> a), hex://logix/expr.arith.eval?dec#dec_g[32u]()
; dec_g[32u]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xfe,0xf5,0xff,0xff,0x8b,0x70,0x08,0xff,0xce,0x48,0xb9,0xd0,0x37,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd2,0x3c,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c86525c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe f5 ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh dec esi                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ce}
000fh mov rcx,7ff7c8a937d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 37 a9 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 3c c1 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> dec<int>(IUnaryArithmeticOp<int> a), hex://logix/expr.arith.eval?dec#dec_g[32i]()
; dec_g[32i]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xfe,0xf5,0xff,0xff,0x8b,0x70,0x08,0xff,0xce,0x48,0xb9,0x28,0x3d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x92,0x3c,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe f5 ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh dec esi                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ce}
000fh mov rcx,7ff7c8a93d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3d a9 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 3c c1 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> dec<ulong>(IUnaryArithmeticOp<ulong> a), hex://logix/expr.arith.eval?dec#dec_g[64u]()
; dec_g[64u]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xc6,0xf9,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xce,0x48,0xb9,0x80,0x42,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x50,0x3c,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652a10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f9 ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh dec rsi                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ce}
0011h mov rcx,7ff7c8a94280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 42 a9 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 3c c1 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> dec<long>(IUnaryArithmeticOp<long> a), hex://logix/expr.arith.eval?dec#dec_g[64i]()
; dec_g[64i]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xc6,0xf9,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xce,0x48,0xb9,0xd8,0x47,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x10,0x3c,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f9 ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh dec rsi                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ce}
0011h mov rcx,7ff7c8a947d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 47 a9 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 3c c1 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> negate<byte>(IUnaryArithmeticOp<byte> a), hex://logix/expr.arith.eval?negate#negate_g[8u]()
; negate_g[8u]()[47] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xce,0xf3,0xff,0xff,0x0f,0xb6,0x48,0x08,0xf7,0xd1,0xff,0xc1,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0xb0,0x21,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xcb,0x3b,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652498h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f3 ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0010h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0012h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0016h mov rcx,7ff7c8a921b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 21 a9 c8 f7 7f 00 00}
0020h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 3b c1 5e}
0025h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0029h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> negate<sbyte>(IUnaryArithmeticOp<sbyte> a), hex://logix/expr.arith.eval?negate#negate_g[8i]()
; negate_g[8i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xee,0xf3,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0xf7,0xd9,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0xc8,0x27,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x7c,0x3b,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f3 ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c8a927c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 27 a9 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 3b c1 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> negate<ushort>(IUnaryArithmeticOp<ushort> a), hex://logix/expr.arith.eval?negate#negate_g[16u]()
; negate_g[16u]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xde,0xf3,0xff,0xff,0x0f,0xb7,0x48,0x08,0xf7,0xd1,0xff,0xc1,0x0f,0xb7,0xf1,0x48,0xb9,0x20,0x2d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x2c,0x3b,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652548h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de f3 ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0010h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0012h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0015h mov rcx,7ff7c8a92d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2d a9 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 3b c1 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> negate<short>(IUnaryArithmeticOp<short> a), hex://logix/expr.arith.eval?negate#negate_g[16i]()
; negate_g[16i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xce,0xf3,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0xf7,0xd9,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0x78,0x32,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xdc,0x3a,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652588h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f3 ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c8a93278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 32 a9 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 3a c1 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> negate<uint>(IUnaryArithmeticOp<uint> a), hex://logix/expr.arith.eval?negate#negate_g[32u]()
; negate_g[32u]()[43] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xbe,0xf3,0xff,0xff,0x8b,0x48,0x08,0x8b,0xf1,0xf7,0xd6,0xff,0xc6,0x48,0xb9,0xd0,0x37,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x8e,0x3a,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c86525c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f3 ff ff}
000ah mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
000dh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0011h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0013h mov rcx,7ff7c8a937d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 37 a9 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 3a c1 5e}
0022h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0025h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0029h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> negate<int>(IUnaryArithmeticOp<int> a), hex://logix/expr.arith.eval?negate#negate_g[32i]()
; negate_g[32i]()[41] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xbe,0xf3,0xff,0xff,0x8b,0x48,0x08,0x8b,0xf1,0xf7,0xde,0x48,0xb9,0x28,0x3d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x50,0x3a,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f3 ff ff}
000ah mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
000dh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000fh neg esi                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 de}
0011h mov rcx,7ff7c8a93d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3d a9 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 3a c1 5e}
0020h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0023h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0027h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> negate<ulong>(IUnaryArithmeticOp<ulong> a), hex://logix/expr.arith.eval?negate#negate_g[64u]()
; negate_g[64u]()[48] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x86,0xf7,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x8b,0xf1,0x48,0xf7,0xd6,0x48,0xff,0xc6,0x48,0xb9,0x80,0x42,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x0a,0x3a,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652a10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 f7 ff ff}
000ah mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0014h inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0017h mov rcx,7ff7c8a94280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 42 a9 c8 f7 7f 00 00}
0021h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 3a c1 5e}
0026h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> negate<long>(IUnaryArithmeticOp<long> a), hex://logix/expr.arith.eval?negate#negate_g[64i]()
; negate_g[64i]()[45] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x76,0xf7,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x8b,0xf1,0x48,0xf7,0xde,0x48,0xb9,0xd8,0x47,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xbd,0x39,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8652a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 f7 ff ff}
000ah mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h neg rsi                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 de}
0014h mov rcx,7ff7c8a947d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 47 a9 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 39 c1 5e}
0023h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr), hex://logix/expr.arith.eval?add#add_g[8u]()
; add_g[8u]()[112] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x90,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x52,0xd2,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x92,0xe3,0xff,0xff,0x40,0x0f,0xb6,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x98,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x38,0xd2,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x70,0xe3,0xff,0xff,0x0f,0xb6,0x48,0x08,0x40,0x0f,0xb6,0xc7,0x03,0xc8,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0xb0,0x21,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x2b,0x35,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1022daeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 d2 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e3 ff ff}
0026h movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7630998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 09 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1022dc8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 d2 fd fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c8651ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 e3 ff ff}
0048h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
004ch movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0050h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0052h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0056h mov rcx,7ff7c8a921b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 21 a9 c8 f7 7f 00 00}
0060h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 35 c1 5e}
0065h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr), hex://logix/expr.arith.eval?add#add_g[8i]()
; add_g[8i]()[113] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd2,0xd1,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xea,0xe3,0xff,0xff,0x48,0x0f,0xbe,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb8,0xd1,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xc8,0xe3,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0x48,0x0f,0xbe,0xc7,0x03,0xc8,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0xc8,0x27,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x9a,0x34,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1022e2eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 d1 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651bc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea e3 ff ff}
0026h movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c76309a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 09 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1022e48h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 d1 fd fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c8651bc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 e3 ff ff}
0048h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
004dh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0057h mov rcx,7ff7c8a927c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 27 a9 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 34 c1 5e}
0066h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr), hex://logix/expr.arith.eval?add#add_g[16u]()
; add_g[16u]()[109] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x52,0xd1,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x22,0xe4,0xff,0xff,0x0f,0xb7,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x39,0xd1,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x01,0xe4,0xff,0xff,0x0f,0xb7,0x48,0x08,0x0f,0xb7,0xc7,0x03,0xc8,0x0f,0xb7,0xf1,0x48,0xb9,0x20,0x2d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x0e,0x34,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1022eaeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 d1 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 e4 ff ff}
0026h movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c76309b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 09 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1022ec7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 d1 fd fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c8651c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e4 ff ff}
0047h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
004bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
004eh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0050h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0053h mov rcx,7ff7c8a92d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2d a9 c8 f7 7f 00 00}
005dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 34 c1 5e}
0062h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr), hex://logix/expr.arith.eval?add#add_g[16i]()
; add_g[16i]()[113] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd2,0xd0,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x5a,0xe4,0xff,0xff,0x48,0x0f,0xbf,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb8,0xd0,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x38,0xe4,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0x48,0x0f,0xbf,0xc7,0x03,0xc8,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0x78,0x32,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x7a,0x33,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1022f2eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 d0 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a e4 ff ff}
0026h movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c76309c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 09 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1022f48h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 d0 fd fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c8651d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 e4 ff ff}
0048h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
004dh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0057h mov rcx,7ff7c8a93278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 32 a9 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 33 c1 5e}
0066h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr), hex://logix/expr.arith.eval?add#add_g[32u]()
; add_g[32u]()[100] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x52,0xd0,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x92,0xe4,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x3a,0xd0,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x72,0xe4,0xff,0xff,0x8b,0x70,0x08,0x03,0xf7,0x48,0xb9,0xd0,0x37,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf6,0x32,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1022faeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 d0 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e4 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c76309d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 09 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1022fc6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a d0 fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8651e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e4 ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c8a937d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 37 a9 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 32 c1 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr), hex://logix/expr.arith.eval?add#add_g[32i]()
; add_g[32i]()[100] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe2,0xcf,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xb2,0xe4,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xca,0xcf,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x92,0xe4,0xff,0xff,0x8b,0x70,0x08,0x03,0xf7,0x48,0xb9,0x28,0x3d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x76,0x32,0xc1,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-102301eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e2 cf fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 e4 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c76309e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 09 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1023036h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca cf fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8651eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e4 ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c8a93d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3d a9 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 32 c1 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr), hex://logix/expr.arith.eval?add#add_g[64u]()
; add_g[64u]()[104] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x72,0xcf,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x8a,0xe8,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x59,0xcf,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x69,0xe8,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0x03,0xf7,0x48,0xb9,0x80,0x42,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf3,0x31,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-102308eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 cf fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8652310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a e8 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c76309f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 09 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-10230a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 cf fd fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c8652310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e8 ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c8a94280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 42 a9 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 31 c1 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr), hex://logix/expr.arith.eval?add#add_g[64i]()
; add_g[64i]()[104] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x02,0xcf,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xd2,0xe8,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe9,0xce,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xb1,0xe8,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0x03,0xf7,0x48,0xb9,0xd8,0x47,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x73,0x31,0xc1,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10230feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 cf fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86523d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 e8 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7630a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0a 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1023117h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 ce fd fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c86523d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 e8 ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c8a947d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 47 a9 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 31 c1 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> sub<byte>(IBinaryArithmeticOp<byte> expr), hex://logix/expr.arith.eval?sub#sub_g[8u]()
; sub_g[8u]()[112] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x92,0xce,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x52,0xdf,0xff,0xff,0x40,0x0f,0xb6,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x78,0xce,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x30,0xdf,0xff,0xff,0x0f,0xb6,0x48,0x08,0x40,0x0f,0xb6,0xc7,0x2b,0xc1,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0xb0,0x21,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xeb,0x30,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-102316eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 ce fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 df ff ff}
0026h movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7630a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0a 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1023188h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 78 ce fd fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c8651ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 df ff ff}
0048h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
004ch movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0050h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0052h movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0056h mov rcx,7ff7c8a921b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 21 a9 c8 f7 7f 00 00}
0060h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 30 c1 5e}
0065h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> sub<sbyte>(IBinaryArithmeticOp<sbyte> expr), hex://logix/expr.arith.eval?sub#sub_g[8i]()
; sub_g[8i]()[113] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x12,0xce,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xaa,0xdf,0xff,0xff,0x48,0x0f,0xbe,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xf8,0xcd,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x88,0xdf,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0x48,0x0f,0xbe,0xc7,0x2b,0xc1,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0xc8,0x27,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x5a,0x30,0xc1,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10231eeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 ce fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651bc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa df ff ff}
0026h movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7630a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0a 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1023208h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 cd fd fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c8651bc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 df ff ff}
0048h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
004dh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0051h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0053h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0057h mov rcx,7ff7c8a927c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 27 a9 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 30 c1 5e}
0066h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> sub<ushort>(IBinaryArithmeticOp<ushort> expr), hex://logix/expr.arith.eval?sub#sub_g[16u]()
; sub_g[16u]()[109] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x82,0xc9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xd2,0xdb,0xff,0xff,0x0f,0xb7,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x69,0xc9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xb1,0xdb,0xff,0xff,0x0f,0xb7,0x48,0x08,0x0f,0xb7,0xc7,0x2b,0xc1,0x0f,0xb7,0xf0,0x48,0xb9,0x20,0x2d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xbe,0x2b,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-102367eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 c9 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 db ff ff}
0026h movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7630a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0a 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1023697h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 c9 fd fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c8651c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 db ff ff}
0047h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
004bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
004eh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0050h movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0053h mov rcx,7ff7c8a92d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2d a9 c8 f7 7f 00 00}
005dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 2b c1 5e}
0062h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> sub<short>(IBinaryArithmeticOp<short> expr), hex://logix/expr.arith.eval?sub#sub_g[16i]()
; sub_g[16i]()[113] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x02,0xc9,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x0a,0xdc,0xff,0xff,0x48,0x0f,0xbf,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe8,0xc8,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0xe8,0xdb,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0x48,0x0f,0xbf,0xc7,0x2b,0xc1,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0x78,0x32,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x2a,0x2b,0xc1,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10236feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 c9 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a dc ff ff}
0026h movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7630a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0a 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1023718h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e8 c8 fd fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c8651d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 db ff ff}
0048h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
004dh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0051h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0053h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0057h mov rcx,7ff7c8a93278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 32 a9 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 2b c1 5e}
0066h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> sub<uint>(IBinaryArithmeticOp<uint> expr), hex://logix/expr.arith.eval?sub#sub_g[32u]()
; sub_g[32u]()[100] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x50,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x82,0xc8,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x42,0xdc,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x58,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x6a,0xc8,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x22,0xdc,0xff,0xff,0x8b,0x48,0x08,0x2b,0xf9,0x48,0xb9,0xd0,0x37,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa6,0x2a,0xc1,0x5e,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-102377eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 c8 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 dc ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0a 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1023796h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a c8 fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8651e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 dc ff ff}
0046h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0049h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
004bh mov rcx,7ff7c8a937d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 37 a9 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 2a c1 5e}
005ah mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> sub<int>(IBinaryArithmeticOp<int> expr), hex://logix/expr.arith.eval?sub#sub_g[32i]()
; sub_g[32i]()[100] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x60,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x12,0xc8,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x62,0xdc,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x68,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xfa,0xc7,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x42,0xdc,0xff,0xff,0x8b,0x48,0x08,0x2b,0xf9,0x48,0xb9,0x28,0x3d,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x26,0x2a,0xc1,0x5e,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10237eeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 c8 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8651eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 dc ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0a 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1023806h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa c7 fd fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8651eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 dc ff ff}
0046h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0049h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
004bh mov rcx,7ff7c8a93d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3d a9 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 2a c1 5e}
005ah mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> sub<ulong>(IBinaryArithmeticOp<ulong> expr), hex://logix/expr.arith.eval?sub#sub_g[64u]()
; sub_g[64u]()[104] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x70,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa2,0xc7,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x3a,0xe0,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x78,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x89,0xc7,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x19,0xe0,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x2b,0xf9,0x48,0xb9,0x80,0x42,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa3,0x29,0xc1,0x5e,0x48,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-102385eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 c7 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8652310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a e0 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7630a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0a 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1023877h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 c7 fd fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c8652310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 e0 ff ff}
0047h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
004bh sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
004eh mov rcx,7ff7c8a94280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 42 a9 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 29 c1 5e}
005dh mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> sub<long>(IBinaryArithmeticOp<long> expr), hex://logix/expr.arith.eval?sub#sub_g[64i]()
; sub_g[64i]()[104] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x80,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x32,0xc7,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x82,0xe0,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x88,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x19,0xc7,0xfd,0xfe,0x48,0x8b,0xc8,0xe8,0x61,0xe0,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x2b,0xf9,0x48,0xb9,0xd8,0x47,0xa9,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x23,0x29,0xc1,0x5e,0x48,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10238ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 c7 fd fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86523d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 e0 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7630a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0a 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-10238e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 c7 fd fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c86523d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 e0 ff ff}
0047h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
004bh sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
004eh mov rcx,7ff7c8a947d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 47 a9 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 29 c1 5e}
005dh mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
