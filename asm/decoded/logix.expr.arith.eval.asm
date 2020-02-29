------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/expr.arith.eval?eval#eval_g[8u]()
; eval_g[8u]()[140] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x41,0xd3,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x32,0xd3,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x42,0xda,0xff,0xff,0x0f,0xb6,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x19,0xd3,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x21,0xda,0xff,0xff,0x44,0x0f,0xb6,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x33,0xda,0xff,0xff,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0xe0,0x71,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd0,0x36,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76308c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 08 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1012cbfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 d3 fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76308c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 08 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1012cceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 d3 fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8640fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 da ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c76308d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 08 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1012ce7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 d3 fe fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8640fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 da ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8641000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 da ff ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c8a871e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 71 a8 c8 f7 7f 00 00}
007bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 36 c2 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/expr.arith.eval?eval#eval_g[8i]()
; eval_g[8i]()[141] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa9,0xd2,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x9a,0xd2,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x7a,0xda,0xff,0xff,0x48,0x0f,0xbe,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x80,0xd2,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x58,0xda,0xff,0xff,0x4c,0x0f,0xbe,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x5a,0xda,0xff,0xff,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0xf8,0x77,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x1f,0x36,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76308d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 08 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1012d57h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 d2 fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76308e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 08 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1012d66h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a d2 fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86410c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a da ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c76308e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 08 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-1012d80h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 d2 fe fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c86410c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 da ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c86410d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a da ff ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c8a877f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 77 a8 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 36 c2 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/expr.arith.eval?eval#eval_g[16u]()
; eval_g[16u]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x11,0xd2,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x08,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x02,0xd2,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x92,0xda,0xff,0xff,0x0f,0xb7,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x00,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe9,0xd1,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x71,0xda,0xff,0xff,0x44,0x0f,0xb7,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0x73,0xda,0xff,0xff,0x0f,0xb7,0xf0,0x48,0xb9,0x50,0x7d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x71,0x35,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76308f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 08 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1012defh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 d2 fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76308f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 08 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1012dfeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 d2 fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8641190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 da ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 09 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1012e17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 d1 fe fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8641190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 da ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c86411a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 da ff ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c8a87d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d a8 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 35 c2 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/expr.arith.eval?eval#eval_g[16i]()
; eval_g[16i]()[141] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x08,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x79,0xcd,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x10,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x6a,0xcd,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x82,0xd6,0xff,0xff,0x48,0x0f,0xbf,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x18,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x50,0xcd,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x60,0xd6,0xff,0xff,0x4c,0x0f,0xbf,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xb2,0xfb,0xff,0xff,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0xa8,0x82,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xbf,0x30,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1013287h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 cd fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1013296h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a cd fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8641230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 d6 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7630918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 09 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10132b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 cd fe fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c8641230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 d6 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8643790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 fb ff ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c8a882a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 a8 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 30 c2 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/expr.arith.eval?eval#eval_g[32u]()
; eval_g[32u]()[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x20,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe1,0xcc,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x28,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd2,0xcc,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xea,0xfb,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x30,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xba,0xcc,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xca,0xfb,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xcd,0xfb,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x00,0x88,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x14,0x30,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-101331fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 cc fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-101332eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 cc fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8643848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea fb ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7630930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 09 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-1013346h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba cc fe fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c8643848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fb ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8643858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd fb ff ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8a88800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 88 a8 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 30 c2 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/expr.arith.eval?eval#eval_g[32i]()
; eval_g[32i]()[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x38,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x59,0xcc,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x40,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x4a,0xcc,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x12,0xfc,0xff,0xff,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x48,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x32,0xcc,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xf2,0xfb,0xff,0xff,0x44,0x8b,0x40,0x08,0x8b,0xcf,0x8b,0xd3,0xe8,0xf5,0xfb,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x58,0x8d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x74,0x2f,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10133a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 cc fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10133b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a cc fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8643910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 fc ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7630948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 09 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10133ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 cc fe fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c8643910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fb ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8643920h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 fb ff ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8a88d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8d a8 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 2f c2 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr), hex://logix/expr.arith.eval?eval#eval_g[64u]()
; eval_g[64u]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x50,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd1,0xcb,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x58,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xc2,0xcb,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x3a,0xfc,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x60,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xa9,0xcb,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x19,0xfc,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0x1b,0xfc,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0xb0,0x92,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd1,0x2e,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-101342fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 cb fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-101343eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 cb fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86439d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fc ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 09 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1013457h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 cb fe fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86439d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 fc ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c86439e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fc ff ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8a892b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 92 a8 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 2e c2 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/expr.arith.eval?eval#eval_g[64i]()
; eval_g[64i]()[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x68,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x39,0xcb,0xfe,0xfe,0x8b,0xf8,0x48,0x8b,0xce,0x49,0xbb,0x70,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x2a,0xcb,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x52,0xfc,0xff,0xff,0x48,0x8b,0x58,0x08,0x48,0x8b,0xce,0x49,0xbb,0x78,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x11,0xcb,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x31,0xfc,0xff,0xff,0x4c,0x8b,0x40,0x08,0x8b,0xcf,0x48,0x8b,0xd3,0xe8,0x33,0xfc,0xff,0xff,0x48,0x8b,0xf0,0x48,0xb9,0x08,0x98,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x21,0x2e,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 09 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10134c7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 cb fe fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 09 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10134d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a cb fe fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c8643aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fc ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7630978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 09 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10134efh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 cb fe fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8643aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 fc ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c8643ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 fc ff ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8a89808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 98 a8 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 2e c2 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> inc<byte>(IUnaryArithmeticOp<byte> a), hex://logix/expr.arith.eval?inc#inc_g[8u]()
; inc_g[8u]()[45] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xee,0xfb,0xff,0xff,0x0f,0xb6,0x48,0x08,0xff,0xc1,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0xe0,0x71,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xcd,0x29,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee fb ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0010h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0014h mov rcx,7ff7c8a871e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 71 a8 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 29 c2 5e}
0023h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> inc<sbyte>(IUnaryArithmeticOp<sbyte> a), hex://logix/expr.arith.eval?inc#inc_g[8i]()
; inc_g[8i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x0e,0xfc,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0xff,0xc1,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0xf8,0x77,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x7c,0x29,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643f28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e fc ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c8a877f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 77 a8 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 29 c2 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> inc<ushort>(IUnaryArithmeticOp<ushort> a), hex://logix/expr.arith.eval?inc#inc_g[16u]()
; inc_g[16u]()[44] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xfe,0xfb,0xff,0xff,0x0f,0xb7,0x48,0x08,0xff,0xc1,0x0f,0xb7,0xf1,0x48,0xb9,0x50,0x7d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x2e,0x29,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643f68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fb ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0010h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0013h mov rcx,7ff7c8a87d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d a8 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 29 c2 5e}
0022h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0026h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> inc<short>(IUnaryArithmeticOp<short> a), hex://logix/expr.arith.eval?inc#inc_g[16i]()
; inc_g[16i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xfe,0xfb,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0xff,0xc1,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0xa8,0x82,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xec,0x28,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fb ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c8a882a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 a8 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 28 c2 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> inc<uint>(IUnaryArithmeticOp<uint> a), hex://logix/expr.arith.eval?inc#inc_g[32u]()
; inc_g[32u]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xee,0xfb,0xff,0xff,0x8b,0x70,0x08,0xff,0xc6,0x48,0xb9,0x00,0x88,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa2,0x28,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643fe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee fb ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
000fh mov rcx,7ff7c8a88800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 88 a8 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 28 c2 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> inc<int>(IUnaryArithmeticOp<int> a), hex://logix/expr.arith.eval?inc#inc_g[32i]()
; inc_g[32i]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xee,0xfb,0xff,0xff,0x8b,0x70,0x08,0xff,0xc6,0x48,0xb9,0x58,0x8d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x62,0x28,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8644028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee fb ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
000fh mov rcx,7ff7c8a88d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8d a8 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 28 c2 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> inc<ulong>(IUnaryArithmeticOp<ulong> a), hex://logix/expr.arith.eval?inc#inc_g[64u]()
; inc_g[64u]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xee,0xfb,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xc6,0x48,0xb9,0xb0,0x92,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x20,0x28,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8644068h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee fb ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0011h mov rcx,7ff7c8a892b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 92 a8 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 28 c2 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> inc<long>(IUnaryArithmeticOp<long> a), hex://logix/expr.arith.eval?inc#inc_g[64i]()
; inc_g[64i]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xee,0xfb,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xc6,0x48,0xb9,0x08,0x98,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xe0,0x27,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c86440a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee fb ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0011h mov rcx,7ff7c8a89808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 98 a8 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 27 c2 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> dec<byte>(IUnaryArithmeticOp<byte> a), hex://logix/expr.arith.eval?dec#dec_g[8u]()
; dec_g[8u]()[45] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xbe,0xf9,0xff,0xff,0x0f,0xb6,0x48,0x08,0xff,0xc9,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0xe0,0x71,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x9d,0x27,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f9 ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0014h mov rcx,7ff7c8a871e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 71 a8 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 27 c2 5e}
0023h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> dec<sbyte>(IUnaryArithmeticOp<sbyte> a), hex://logix/expr.arith.eval?dec#dec_g[8i]()
; dec_g[8i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xde,0xf9,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0xff,0xc9,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0xf8,0x77,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x4c,0x27,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643f28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de f9 ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c8a877f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 77 a8 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 27 c2 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> dec<ushort>(IUnaryArithmeticOp<ushort> a), hex://logix/expr.arith.eval?dec#dec_g[16u]()
; dec_g[16u]()[44] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xce,0xf9,0xff,0xff,0x0f,0xb7,0x48,0x08,0xff,0xc9,0x0f,0xb7,0xf1,0x48,0xb9,0x50,0x7d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xfe,0x26,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643f68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f9 ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0013h mov rcx,7ff7c8a87d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d a8 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 26 c2 5e}
0022h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0026h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> dec<short>(IUnaryArithmeticOp<short> a), hex://logix/expr.arith.eval?dec#dec_g[16i]()
; dec_g[16i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xce,0xf9,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0xff,0xc9,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0xa8,0x82,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xbc,0x26,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f9 ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c8a882a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 a8 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 26 c2 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> dec<uint>(IUnaryArithmeticOp<uint> a), hex://logix/expr.arith.eval?dec#dec_g[32u]()
; dec_g[32u]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xbe,0xf9,0xff,0xff,0x8b,0x70,0x08,0xff,0xce,0x48,0xb9,0x00,0x88,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x72,0x26,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643fe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f9 ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh dec esi                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ce}
000fh mov rcx,7ff7c8a88800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 88 a8 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 26 c2 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> dec<int>(IUnaryArithmeticOp<int> a), hex://logix/expr.arith.eval?dec#dec_g[32i]()
; dec_g[32i]()[39] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xbe,0xf9,0xff,0xff,0x8b,0x70,0x08,0xff,0xce,0x48,0xb9,0x58,0x8d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x32,0x26,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8644028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f9 ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh dec esi                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ce}
000fh mov rcx,7ff7c8a88d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8d a8 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 26 c2 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> dec<ulong>(IUnaryArithmeticOp<ulong> a), hex://logix/expr.arith.eval?dec#dec_g[64u]()
; dec_g[64u]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xbe,0xf9,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xce,0x48,0xb9,0xb0,0x92,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf0,0x25,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8644068h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f9 ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh dec rsi                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ce}
0011h mov rcx,7ff7c8a892b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 92 a8 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 25 c2 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> dec<long>(IUnaryArithmeticOp<long> a), hex://logix/expr.arith.eval?dec#dec_g[64i]()
; dec_g[64i]()[42] = {0x56,0x48,0x83,0xec,0x20,0xe8,0xbe,0xf9,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0xff,0xce,0x48,0xb9,0x08,0x98,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb0,0x25,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c86440a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f9 ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh dec rsi                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ce}
0011h mov rcx,7ff7c8a89808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 98 a8 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 25 c2 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> negate<byte>(IUnaryArithmeticOp<byte> a), hex://logix/expr.arith.eval?negate#negate_g[8u]()
; negate_g[8u]()[47] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x7e,0xf3,0xff,0xff,0x0f,0xb6,0x48,0x08,0xf7,0xd1,0xff,0xc1,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0xe0,0x71,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x5b,0x21,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f3 ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0010h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0012h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0016h mov rcx,7ff7c8a871e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 71 a8 c8 f7 7f 00 00}
0020h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 21 c2 5e}
0025h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0029h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> negate<sbyte>(IUnaryArithmeticOp<sbyte> a), hex://logix/expr.arith.eval?negate#negate_g[8i]()
; negate_g[8i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x9e,0xf3,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0xf7,0xd9,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0xf8,0x77,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x0c,0x21,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643f28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f3 ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c8a877f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 77 a8 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 21 c2 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> negate<ushort>(IUnaryArithmeticOp<ushort> a), hex://logix/expr.arith.eval?negate#negate_g[16u]()
; negate_g[16u]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x8e,0xf3,0xff,0xff,0x0f,0xb7,0x48,0x08,0xf7,0xd1,0xff,0xc1,0x0f,0xb7,0xf1,0x48,0xb9,0x50,0x7d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xbc,0x20,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643f68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e f3 ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0010h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0012h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0015h mov rcx,7ff7c8a87d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d a8 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 20 c2 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> negate<short>(IUnaryArithmeticOp<short> a), hex://logix/expr.arith.eval?negate#negate_g[16i]()
; negate_g[16i]()[46] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x7e,0xf3,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0xf7,0xd9,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0xa8,0x82,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x6c,0x20,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f3 ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c8a882a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 a8 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 20 c2 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> negate<uint>(IUnaryArithmeticOp<uint> a), hex://logix/expr.arith.eval?negate#negate_g[32u]()
; negate_g[32u]()[43] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x6e,0xf3,0xff,0xff,0x8b,0x48,0x08,0x8b,0xf1,0xf7,0xd6,0xff,0xc6,0x48,0xb9,0x00,0x88,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x1e,0x20,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8643fe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f3 ff ff}
000ah mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
000dh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0011h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0013h mov rcx,7ff7c8a88800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 88 a8 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 20 c2 5e}
0022h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0025h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0029h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> negate<int>(IUnaryArithmeticOp<int> a), hex://logix/expr.arith.eval?negate#negate_g[32i]()
; negate_g[32i]()[41] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x6e,0xf3,0xff,0xff,0x8b,0x48,0x08,0x8b,0xf1,0xf7,0xde,0x48,0xb9,0x58,0x8d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xe0,0x1f,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8644028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f3 ff ff}
000ah mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
000dh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000fh neg esi                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 de}
0011h mov rcx,7ff7c8a88d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8d a8 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 1f c2 5e}
0020h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0023h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0027h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> negate<ulong>(IUnaryArithmeticOp<ulong> a), hex://logix/expr.arith.eval?negate#negate_g[64u]()
; negate_g[64u]()[48] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x6e,0xf3,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x8b,0xf1,0x48,0xf7,0xd6,0x48,0xff,0xc6,0x48,0xb9,0xb0,0x92,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x9a,0x1f,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c8644068h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f3 ff ff}
000ah mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0014h inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0017h mov rcx,7ff7c8a892b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 92 a8 c8 f7 7f 00 00}
0021h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 1f c2 5e}
0026h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> negate<long>(IUnaryArithmeticOp<long> a), hex://logix/expr.arith.eval?negate#negate_g[64i]()
; negate_g[64i]()[45] = {0x56,0x48,0x83,0xec,0x20,0xe8,0x5e,0xf3,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x8b,0xf1,0x48,0xf7,0xde,0x48,0xb9,0x08,0x98,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x4d,0x1f,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c86440a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e f3 ff ff}
000ah mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h neg rsi                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 de}
0014h mov rcx,7ff7c8a89808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 98 a8 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 1f c2 5e}
0023h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr), hex://logix/expr.arith.eval?add#add_g[8u]()
; add_g[8u]()[112] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x80,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd2,0xbb,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x2a,0xc2,0xff,0xff,0x40,0x0f,0xb6,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x88,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb8,0xbb,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x08,0xc2,0xff,0xff,0x0f,0xb6,0x48,0x08,0x40,0x0f,0xb6,0xc7,0x03,0xc8,0x40,0x0f,0xb6,0xf1,0x48,0xb9,0xe0,0x71,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xbb,0x1e,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-101442eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 bb fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8640fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c2 ff ff}
0026h movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7630988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 09 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1014448h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 bb fe fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c8640fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 c2 ff ff}
0048h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
004ch movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0050h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0052h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0056h mov rcx,7ff7c8a871e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 71 a8 c8 f7 7f 00 00}
0060h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 1e c2 5e}
0065h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr), hex://logix/expr.arith.eval?add#add_g[8i]()
; add_g[8i]()[113] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x90,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x52,0xbb,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x82,0xc2,0xff,0xff,0x48,0x0f,0xbe,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x98,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x38,0xbb,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x60,0xc2,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0x48,0x0f,0xbe,0xc7,0x03,0xc8,0x48,0x0f,0xbe,0xf1,0x48,0xb9,0xf8,0x77,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x2a,0x1e,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10144aeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 bb fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86410c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 c2 ff ff}
0026h movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7630998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 09 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-10144c8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 bb fe fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c86410c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 c2 ff ff}
0048h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
004dh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0057h mov rcx,7ff7c8a877f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 77 a8 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 1e c2 5e}
0066h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr), hex://logix/expr.arith.eval?add#add_g[16u]()
; add_g[16u]()[109] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xa0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd2,0xba,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xba,0xc2,0xff,0xff,0x0f,0xb7,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xa8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb9,0xba,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x99,0xc2,0xff,0xff,0x0f,0xb7,0x48,0x08,0x0f,0xb7,0xc7,0x03,0xc8,0x0f,0xb7,0xf1,0x48,0xb9,0x50,0x7d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x9e,0x1d,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-101452eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 ba fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8641190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c2 ff ff}
0026h movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c76309a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 09 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1014547h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 ba fe fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c8641190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 c2 ff ff}
0047h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
004bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
004eh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0050h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0053h mov rcx,7ff7c8a87d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d a8 c8 f7 7f 00 00}
005dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 1d c2 5e}
0062h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr), hex://logix/expr.arith.eval?add#add_g[16i]()
; add_g[16i]()[113] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xb0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x52,0xba,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xca,0xc2,0xff,0xff,0x48,0x0f,0xbf,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xb8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x38,0xba,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xa8,0xc2,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0x48,0x0f,0xbf,0xc7,0x03,0xc8,0x48,0x0f,0xbf,0xf1,0x48,0xb9,0xa8,0x82,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x0a,0x1d,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10145aeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 ba fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8641230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca c2 ff ff}
0026h movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c76309b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 09 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-10145c8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 ba fe fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c8641230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 c2 ff ff}
0048h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
004dh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0057h mov rcx,7ff7c8a882a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 a8 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 1d c2 5e}
0066h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr), hex://logix/expr.arith.eval?add#add_g[32u]()
; add_g[32u]()[100] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xc0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xd2,0xb9,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x52,0xe8,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xc8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xba,0xb9,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x32,0xe8,0xff,0xff,0x8b,0x70,0x08,0x03,0xf7,0x48,0xb9,0x00,0x88,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x86,0x1c,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-101462eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 b9 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8643848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 e8 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c76309c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 09 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1014646h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba b9 fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8643848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 e8 ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c8a88800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 88 a8 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 1c c2 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr), hex://logix/expr.arith.eval?add#add_g[32i]()
; add_g[32i]()[100] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xd0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x62,0xb9,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x9a,0xe8,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xd8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x4a,0xb9,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x7a,0xe8,0xff,0xff,0x8b,0x70,0x08,0x03,0xf7,0x48,0xb9,0x58,0x8d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x06,0x1c,0xc2,0x5e,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-101469eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 b9 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8643910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a e8 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c76309d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 09 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-10146b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a b9 fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8643910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a e8 ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c8a88d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8d a8 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 1c c2 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr), hex://logix/expr.arith.eval?add#add_g[64u]()
; add_g[64u]()[104] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xe0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe2,0xb4,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xd2,0xe4,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xe8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xc9,0xb4,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xb1,0xe4,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0x03,0xf7,0x48,0xb9,0xb0,0x92,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x73,0x17,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1014b1eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e2 b4 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86439d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 e4 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c76309e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 09 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1014b37h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 b4 fe fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c86439d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 e4 ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c8a892b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 92 a8 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 17 c2 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr), hex://logix/expr.arith.eval?add#add_g[64i]()
; add_g[64i]()[104] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0xf0,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x72,0xb4,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x1a,0xe5,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0xf8,0x09,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x59,0xb4,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xf9,0xe4,0xff,0xff,0x48,0x8b,0x70,0x08,0x48,0x03,0xf7,0x48,0xb9,0x08,0x98,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf3,0x16,0xc2,0x5e,0x48,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76309f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 09 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1014b8eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 b4 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8643aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a e5 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c76309f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 09 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1014ba7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 b4 fe fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c8643aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 e4 ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c8a89808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 98 a8 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 16 c2 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> sub<byte>(IBinaryArithmeticOp<byte> expr), hex://logix/expr.arith.eval?sub#sub_g[8u]()
; sub_g[8u]()[112] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x00,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x02,0xb4,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xda,0xb9,0xff,0xff,0x40,0x0f,0xb6,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x08,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe8,0xb3,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xb8,0xb9,0xff,0xff,0x0f,0xb6,0x48,0x08,0x40,0x0f,0xb6,0xc7,0x2b,0xc1,0x40,0x0f,0xb6,0xf0,0x48,0xb9,0xe0,0x71,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x6b,0x16,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1014bfeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 b4 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8640fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da b9 ff ff}
0026h movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7630a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0a 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1014c18h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e8 b3 fe fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c8640fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 b9 ff ff}
0048h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
004ch movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0050h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0052h movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0056h mov rcx,7ff7c8a871e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 71 a8 c8 f7 7f 00 00}
0060h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 16 c2 5e}
0065h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> sub<sbyte>(IBinaryArithmeticOp<sbyte> expr), hex://logix/expr.arith.eval?sub#sub_g[8i]()
; sub_g[8i]()[113] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x10,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x82,0xb3,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x32,0xba,0xff,0xff,0x48,0x0f,0xbe,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x18,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x68,0xb3,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x10,0xba,0xff,0xff,0x48,0x0f,0xbe,0x48,0x08,0x48,0x0f,0xbe,0xc7,0x2b,0xc1,0x48,0x0f,0xbe,0xf0,0x48,0xb9,0xf8,0x77,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xda,0x15,0xc2,0x5e,0x40,0x88,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1014c7eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 b3 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86410c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ba ff ff}
0026h movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7630a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0a 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1014c98h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 68 b3 fe fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c86410c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 ba ff ff}
0048h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
004dh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0051h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0053h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0057h mov rcx,7ff7c8a877f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 77 a8 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 15 c2 5e}
0066h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> sub<ushort>(IBinaryArithmeticOp<ushort> expr), hex://logix/expr.arith.eval?sub#sub_g[16u]()
; sub_g[16u]()[109] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x20,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x02,0xb3,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x6a,0xba,0xff,0xff,0x0f,0xb7,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x28,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xe9,0xb2,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x49,0xba,0xff,0xff,0x0f,0xb7,0x48,0x08,0x0f,0xb7,0xc7,0x2b,0xc1,0x0f,0xb7,0xf0,0x48,0xb9,0x50,0x7d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x4e,0x15,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1014cfeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 b3 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8641190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a ba ff ff}
0026h movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7630a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0a 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1014d17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 b2 fe fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c8641190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 ba ff ff}
0047h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
004bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
004eh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0050h movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0053h mov rcx,7ff7c8a87d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d a8 c8 f7 7f 00 00}
005dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 15 c2 5e}
0062h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> sub<short>(IBinaryArithmeticOp<short> expr), hex://logix/expr.arith.eval?sub#sub_g[16i]()
; sub_g[16i]()[113] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x30,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x82,0xb2,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x7a,0xba,0xff,0xff,0x48,0x0f,0xbf,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x38,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x68,0xb2,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x58,0xba,0xff,0xff,0x48,0x0f,0xbf,0x48,0x08,0x48,0x0f,0xbf,0xc7,0x2b,0xc1,0x48,0x0f,0xbf,0xf0,0x48,0xb9,0xa8,0x82,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xba,0x14,0xc2,0x5e,0x66,0x89,0x70,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1014d7eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 b2 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8641230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a ba ff ff}
0026h movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7630a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0a 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1014d98h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 68 b2 fe fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c8641230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ba ff ff}
0048h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
004dh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0051h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0053h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0057h mov rcx,7ff7c8a882a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 a8 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 14 c2 5e}
0066h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> sub<uint>(IBinaryArithmeticOp<uint> expr), hex://logix/expr.arith.eval?sub#sub_g[32u]()
; sub_g[32u]()[100] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x40,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x02,0xb2,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x02,0xe0,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x48,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xea,0xb1,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xe2,0xdf,0xff,0xff,0x8b,0x48,0x08,0x2b,0xf9,0x48,0xb9,0x00,0x88,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x36,0x14,0xc2,0x5e,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1014dfeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 b2 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8643848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 e0 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0a 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1014e16h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea b1 fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8643848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 df ff ff}
0046h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0049h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
004bh mov rcx,7ff7c8a88800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 88 a8 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 14 c2 5e}
005ah mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> sub<int>(IBinaryArithmeticOp<int> expr), hex://logix/expr.arith.eval?sub#sub_g[32i]()
; sub_g[32i]()[100] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x50,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x92,0xb1,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x4a,0xe0,0xff,0xff,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x58,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x7a,0xb1,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x2a,0xe0,0xff,0xff,0x8b,0x48,0x08,0x2b,0xf9,0x48,0xb9,0x58,0x8d,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb6,0x13,0xc2,0x5e,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1014e6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 b1 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8643910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a e0 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7630a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0a 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-1014e86h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7a b1 fe fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c8643910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a e0 ff ff}
0046h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0049h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
004bh mov rcx,7ff7c8a88d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8d a8 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 13 c2 5e}
005ah mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> sub<ulong>(IBinaryArithmeticOp<ulong> expr), hex://logix/expr.arith.eval?sub#sub_g[64u]()
; sub_g[64u]()[104] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x60,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x22,0xb1,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x92,0xe0,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x68,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x09,0xb1,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0x71,0xe0,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x2b,0xf9,0x48,0xb9,0xb0,0x92,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x33,0x13,0xc2,0x5e,0x48,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1014edeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 b1 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86439d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e0 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7630a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0a 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1014ef7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 b1 fe fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c86439d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 e0 ff ff}
0047h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
004bh sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
004eh mov rcx,7ff7c8a892b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 92 a8 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 13 c2 5e}
005dh mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> sub<long>(IBinaryArithmeticOp<long> expr), hex://logix/expr.arith.eval?sub#sub_g[64i]()
; sub_g[64i]()[104] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x49,0xbb,0x70,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xb2,0xb0,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xda,0xe0,0xff,0xff,0x48,0x8b,0x78,0x08,0x48,0x8b,0xce,0x49,0xbb,0x78,0x0a,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x99,0xb0,0xfe,0xfe,0x48,0x8b,0xc8,0xe8,0xb9,0xe0,0xff,0xff,0x48,0x8b,0x48,0x08,0x48,0x2b,0xf9,0x48,0xb9,0x08,0x98,0xa8,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb3,0x12,0xc2,0x5e,0x48,0x89,0x78,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7630a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0a 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1014f4eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 b0 fe fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c8643aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da e0 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7630a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0a 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1014f67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 b0 fe fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c8643aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 e0 ff ff}
0047h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
004bh sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
004eh mov rcx,7ff7c8a89808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 98 a8 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 12 c2 5e}
005dh mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
