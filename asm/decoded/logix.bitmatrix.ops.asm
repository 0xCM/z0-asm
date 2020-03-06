------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> false<byte>(), hex://logix/bitmatrix.ops?false#false_g[8u]()
; false_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x08,0x65,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8546508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 65 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> false<ushort>(), hex://logix/bitmatrix.ops?false#false_g[16u]()
; false_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x58,0x71,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8547158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 71 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> false<uint>(), hex://logix/bitmatrix.ops?false#false_g[32u]()
; false_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x08,0x72,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8547208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 72 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> false<ulong>(), hex://logix/bitmatrix.ops?false#false_g[64u]()
; false_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb8,0x72,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c85472b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 72 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> true<byte>(), hex://logix/bitmatrix.ops?true#true_g[8u]()
; true_g[8u]()[39] = {0x56,0x48,0x83,0xec,0x30,0x48,0x8b,0xf1,0xb9,0xff,0x00,0x00,0x00,0x88,0x4c,0x24,0x28,0x48,0x8b,0xce,0x0f,0xb6,0x54,0x24,0x28,0xe8,0xaa,0xfe,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
000dh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0011h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0014h movzx edx,byte ptr [rsp+28h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 28}
0019h call 7ff7c8547498h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fe ff ff}
001eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0021h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> true<ushort>(), hex://logix/bitmatrix.ops?true#true_g[16u]()
; true_g[16u]()[40] = {0x56,0x48,0x83,0xec,0x30,0x48,0x8b,0xf1,0xb9,0xff,0xff,0x00,0x00,0x66,0x89,0x4c,0x24,0x28,0x48,0x8b,0xce,0x0f,0xb7,0x54,0x24,0x28,0xe8,0xb9,0xfe,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
000dh mov [rsp+28h],cx                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 28}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h movzx edx,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 28}
001ah call 7ff7c85474e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 fe ff ff}
001fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0022h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0026h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> true<uint>(), hex://logix/bitmatrix.ops?true#true_g[32u]()
; true_g[32u]()[30] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0xba,0xff,0xff,0xff,0xff,0xe8,0xc3,0xfe,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0010h call 7ff7c8547528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 fe ff ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> true<ulong>(), hex://logix/bitmatrix.ops?true#true_g[64u]()
; true_g[64u]()[35] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xe8,0x0e,0xfc,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
0015h call 7ff7c85476b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e fc ff ff}
001ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> false<byte>(in BitMatrix<byte> A), hex://logix/bitmatrix.ops?false#false_g[8u](bm8x8u~in)
; false_g[8u](bm8x8u~in)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x08,0x65,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8546508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 65 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> false<ushort>(in BitMatrix<ushort> A), hex://logix/bitmatrix.ops?false#false_g[16u](bm16x16u~in)
; false_g[16u](bm16x16u~in)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x58,0x71,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8547158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 71 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> false<uint>(in BitMatrix<uint> A), hex://logix/bitmatrix.ops?false#false_g[32u](bm32x32u~in)
; false_g[32u](bm32x32u~in)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x08,0x72,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8547208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 72 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> false<ulong>(in BitMatrix<ulong> A), hex://logix/bitmatrix.ops?false#false_g[64u](bm64x64u~in)
; false_g[64u](bm64x64u~in)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb8,0x72,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c85472b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 72 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> true<byte>(in BitMatrix<byte> A), hex://logix/bitmatrix.ops?true#true_g[8u](bm8x8u~in)
; true_g[8u](bm8x8u~in)[39] = {0x56,0x48,0x83,0xec,0x30,0x48,0x8b,0xf1,0xb9,0xff,0x00,0x00,0x00,0x88,0x4c,0x24,0x28,0x48,0x8b,0xce,0x0f,0xb6,0x54,0x24,0x28,0xe8,0xaa,0xec,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
000dh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0011h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0014h movzx edx,byte ptr [rsp+28h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 28}
0019h call 7ff7c8547498h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa ec ff ff}
001eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0021h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> true<ushort>(in BitMatrix<ushort> A), hex://logix/bitmatrix.ops?true#true_g[16u](bm16x16u~in)
; true_g[16u](bm16x16u~in)[40] = {0x56,0x48,0x83,0xec,0x30,0x48,0x8b,0xf1,0xb9,0xff,0xff,0x00,0x00,0x66,0x89,0x4c,0x24,0x28,0x48,0x8b,0xce,0x0f,0xb7,0x54,0x24,0x28,0xe8,0xb9,0xec,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
000dh mov [rsp+28h],cx                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 28}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h movzx edx,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 28}
001ah call 7ff7c85474e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 ec ff ff}
001fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0022h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0026h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> true<uint>(in BitMatrix<uint> A), hex://logix/bitmatrix.ops?true#true_g[32u](bm32x32u~in)
; true_g[32u](bm32x32u~in)[30] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0xba,0xff,0xff,0xff,0xff,0xe8,0xc3,0xec,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0010h call 7ff7c8547528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 ec ff ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> true<ulong>(in BitMatrix<ulong> A), hex://logix/bitmatrix.ops?true#true_g[64u](bm64x64u~in)
; true_g[64u](bm64x64u~in)[35] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xe8,0x0e,0xee,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
0015h call 7ff7c85476b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e ee ff ff}
001ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> not<byte>(in BitMatrix<byte> A), hex://logix/bitmatrix.ops?not#not_g[8u](bm8x8u~in)
; not_g[8u](bm8x8u~in)[92] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x0a,0xd8,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x20,0x48,0x8b,0x12,0x48,0x8b,0x00,0x48,0xf7,0xd0,0x48,0x89,0x02,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x71,0xd1,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0029h call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a d8 ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
003ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
003fh mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0042h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0045h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004ah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 d1 d1 5e}
004fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0051h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0054h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0058h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> not<ushort>(in BitMatrix<ushort> A), hex://logix/bitmatrix.ops?not#not_g[16u](bm16x16u~in)
; not_g[16u](bm16x16u~in)[124] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x50,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x48,0x8d,0x4c,0x24,0x50,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x50,0xe8,0xba,0xdc,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x50,0x48,0x8b,0x12,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x02,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x50,0xe8,0xb4,0xc9,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0029h call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba dc ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 50}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
003dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0043h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0047h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
004dh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0053h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0057h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
005bh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
005fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0062h lea rsi,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 50}
0067h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 c9 d1 5e}
006ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0074h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> not<uint>(in BitMatrix<uint> A), hex://logix/bitmatrix.ops?not#not_g[32u](bm32x32u~in)
; not_g[32u](bm32x32u~in)[156] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x50,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x48,0x8d,0x4c,0x24,0x50,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x50,0xe8,0xca,0xdc,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x50,0x48,0x8b,0x12,0x33,0xc9,0x45,0x33,0xc0,0x4d,0x63,0xc8,0x49,0xc1,0xe1,0x02,0x4e,0x8d,0x14,0x08,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc4,0xc1,0x7f,0xf0,0x02,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xca,0xc4,0xc1,0x7e,0x7f,0x01,0xff,0xc1,0x41,0x83,0xc0,0x08,0x83,0xf9,0x04,0x7c,0xbf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x50,0xe8,0xf4,0xc8,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0029h call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca dc ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 50}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
003bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003eh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0041h shl r9,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 02}
0045h lea r10,[rax+r9]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 08}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0053h vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
0058h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
005eh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0064h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0068h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
006ch add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
006fh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0074h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0076h add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
007ah cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
007dh jl short 003eh                          ; JL rel8 || 7C cb || encoded[2]{7c bf}
007fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0082h lea rsi,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 50}
0087h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 c8 d1 5e}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0098h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0099h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> not<ulong>(in BitMatrix<ulong> A), hex://logix/bitmatrix.ops?not#not_g[64u](bm64x64u~in)
; not_g[64u](bm64x64u~in)[157] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x50,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x48,0x8d,0x4c,0x24,0x50,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x50,0xe8,0xba,0xdc,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x50,0x48,0x8b,0x12,0x33,0xc9,0x45,0x33,0xc0,0x4d,0x63,0xc8,0x49,0xc1,0xe1,0x03,0x4e,0x8d,0x14,0x08,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc4,0xc1,0x7f,0xf0,0x02,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xca,0xc4,0xc1,0x7e,0x7f,0x01,0xff,0xc1,0x41,0x83,0xc0,0x04,0x83,0xf9,0x10,0x7c,0xbe,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x50,0xe8,0x33,0xc8,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0029h call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba dc ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 50}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
003bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003eh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0041h shl r9,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 03}
0045h lea r10,[rax+r9]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 08}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0053h vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
0058h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
005eh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0064h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0069h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
006dh add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
0070h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0075h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0077h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
007bh cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
007eh jl short 003eh                          ; JL rel8 || 7C cb || encoded[2]{7c be}
0080h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0083h lea rsi,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 50}
0088h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 c8 d1 5e}
008dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> not<byte>(in BitMatrix<byte> A, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?not#not_g[8u](bm8x8u~in,bm8x8u~ref)
; not_g[8u](bm8x8u~in,bm8x8u~ref)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x0a,0x48,0x8b,0x00,0x48,0xf7,0xd0,0x48,0x89,0x01,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
000bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
000eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0011h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0014h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> not<ushort>(in BitMatrix<ushort> A, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?not#not_g[16u](bm16x16u~in,bm16x16u~ref)
; not_g[16u](bm16x16u~in,bm16x16u~ref)[59] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x0a,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x04,0x24,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
000dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0011h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0016h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
001ah vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
001fh vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0024h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0028h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
002ch vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0030h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> not<uint>(in BitMatrix<uint> A, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?not#not_g[32u](bm32x32u~in,bm32x32u~ref)
; not_g[32u](bm32x32u~in,bm32x32u~ref)[94] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x0a,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x04,0x24,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xc0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0013h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0016h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
001ah lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
001eh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0022h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0027h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
002ch vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0031h vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0036h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
003ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
003eh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0041h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0046h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0049h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
004dh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0051h jl short 0013h                          ; JL rel8 || 7C cb || encoded[2]{7c c0}
0053h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0056h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0059h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> not<ulong>(in BitMatrix<ulong> A, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?not#not_g[64u](bm64x64u~in,bm64x64u~ref)
; not_g[64u](bm64x64u~in,bm64x64u~ref)[95] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x0a,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x04,0x24,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xbf,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0013h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0016h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
001ah lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
001eh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0022h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0027h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
002ch vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0031h vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0036h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
003bh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
003fh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0042h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0047h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
004ah add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
004eh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0052h jl short 0013h                          ; JL rel8 || 7C cb || encoded[2]{7c bf}
0054h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0057h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ah add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> identity<byte>(in BitMatrix<byte> A), hex://logix/bitmatrix.ops?identity#identity_g[8u](bm8x8u~in)
; identity_g[8u](bm8x8u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x48,0x8b,0xf2,0xe8,0x4d,0xc2,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d c2 d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> identity<ushort>(in BitMatrix<ushort> A), hex://logix/bitmatrix.ops?identity#identity_g[16u](bm16x16u~in)
; identity_g[16u](bm16x16u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x48,0x8b,0xf2,0xe8,0x0d,0xc2,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d c2 d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> identity<uint>(in BitMatrix<uint> A), hex://logix/bitmatrix.ops?identity#identity_g[32u](bm32x32u~in)
; identity_g[32u](bm32x32u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x48,0x8b,0xf2,0xe8,0xcd,0xc1,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd c1 d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> identity<ulong>(in BitMatrix<ulong> A), hex://logix/bitmatrix.ops?identity#identity_g[64u](bm64x64u~in)
; identity_g[64u](bm64x64u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x48,0x8b,0xf2,0xe8,0x8d,0xc1,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c1 d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> identity<byte>(in BitMatrix<byte> A, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?identity#identity_g[8u](bm8x8u~in,bm8x8u~ref)
; identity_g[8u](bm8x8u~in,bm8x8u~ref)[96] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xf2,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x01,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x11,0x8b,0x49,0x08,0x4c,0x8d,0x44,0x24,0x20,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x41,0x3b,0xc8,0x77,0x14,0x4c,0x63,0xc1,0x48,0x8b,0xc8,0xe8,0xce,0xed,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0xd8,0xa8,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0030h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0033h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0036h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003bh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
003eh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0042h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
0045h ja short 005bh                          ; JA rel8 || 77 cb || encoded[2]{77 14}
0047h movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce ed 7a 4e}
0052h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0055h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
005bh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 a8 21 ff}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> identity<ushort>(in BitMatrix<ushort> A, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?identity#identity_g[16u](bm16x16u~in,bm16x16u~ref)
; identity_g[16u](bm16x16u~in,bm16x16u~ref)[99] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xf2,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x01,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x4c,0x8d,0x44,0x24,0x30,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x01,0x8b,0x49,0x08,0x44,0x3b,0xc1,0x77,0x17,0x48,0x8b,0xc8,0x4d,0x63,0xc0,0x49,0xd1,0xe0,0xe8,0x4b,0xed,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0x55,0xa8,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005eh                          ; JA rel8 || 77 cb || encoded[2]{77 17}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0050h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b ed 7a 4e}
0055h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0058h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
005eh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 a8 21 ff}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> identity<uint>(in BitMatrix<uint> A, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?identity#identity_g[32u](bm32x32u~in,bm32x32u~ref)
; identity_g[32u](bm32x32u~in,bm32x32u~ref)[100] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xf2,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x01,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x4c,0x8d,0x44,0x24,0x30,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x01,0x8b,0x49,0x08,0x44,0x3b,0xc1,0x77,0x18,0x48,0x8b,0xc8,0x4d,0x63,0xc0,0x49,0xc1,0xe0,0x02,0xe8,0xca,0xec,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0xd4,0xa7,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
0051h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca ec 7a 4e}
0056h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0059h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
005fh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 a7 21 ff}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> identity<ulong>(in BitMatrix<ulong> A, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?identity#identity_g[64u](bm64x64u~in,bm64x64u~ref)
; identity_g[64u](bm64x64u~in,bm64x64u~ref)[100] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xf2,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x01,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x4c,0x8d,0x44,0x24,0x30,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x01,0x8b,0x49,0x08,0x44,0x3b,0xc1,0x77,0x18,0x48,0x8b,0xc8,0x4d,0x63,0xc0,0x49,0xc1,0xe0,0x03,0xe8,0x3a,0xe8,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0x44,0xa3,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
0051h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a e8 7a 4e}
0056h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0059h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
005fh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a3 21 ff}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> false<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?false#false_g[8u](bm8x8u~in,bm8x8u~in)
; false_g[8u](bm8x8u~in,bm8x8u~in)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x08,0x65,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8546508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 65 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> false<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?false#false_g[16u](bm16x16u~in,bm16x16u~in)
; false_g[16u](bm16x16u~in,bm16x16u~in)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x58,0x71,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8547158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 71 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> false<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?false#false_g[32u](bm32x32u~in,bm32x32u~in)
; false_g[32u](bm32x32u~in,bm32x32u~in)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x08,0x72,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8547208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 72 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> false<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?false#false_g[64u](bm64x64u~in,bm64x64u~in)
; false_g[64u](bm64x64u~in,bm64x64u~in)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb8,0x72,0x54,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c85472b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 72 54 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> false<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?false#false_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; false_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[67] = {0x56,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8b,0x0e,0x48,0x89,0x4c,0x24,0x20,0x8b,0x4e,0x08,0x89,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x20,0x33,0xd2,0xe8,0xb6,0x39,0x5b,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0035h call 7ff7c7afe5f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 39 5b ff}
003ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> false<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?false#false_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; false_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[67] = {0x56,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8b,0x0e,0x48,0x89,0x4c,0x24,0x20,0x8b,0x4e,0x08,0x89,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x20,0x33,0xd2,0xe8,0x0e,0x63,0xb0,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0035h call 7ff7c8050fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 63 b0 ff}
003ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> false<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?false#false_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; false_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[67] = {0x56,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8b,0x0e,0x48,0x89,0x4c,0x24,0x20,0x8b,0x4e,0x08,0x89,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x20,0x33,0xd2,0xe8,0x6e,0xeb,0x86,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0035h call 7ff7c7db9868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e eb 86 ff}
003ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> false<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?false#false_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; false_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[67] = {0x56,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8b,0x0e,0x48,0x89,0x4c,0x24,0x20,0x8b,0x4e,0x08,0x89,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x20,0x33,0xd2,0xe8,0x1e,0x16,0xb1,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0035h call 7ff7c805c378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 16 b1 ff}
003ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> true<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?true#true_g[8u](bm8x8u~in,bm8x8u~in)
; true_g[8u](bm8x8u~in,bm8x8u~in)[39] = {0x56,0x48,0x83,0xec,0x30,0x48,0x8b,0xf1,0xb9,0xff,0x00,0x00,0x00,0x88,0x4c,0x24,0x28,0x48,0x8b,0xce,0x0f,0xb6,0x54,0x24,0x28,0xe8,0xfa,0xc6,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
000dh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0011h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0014h movzx edx,byte ptr [rsp+28h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 28}
0019h call 7ff7c8547498h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa c6 ff ff}
001eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0021h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> true<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?true#true_g[16u](bm16x16u~in,bm16x16u~in)
; true_g[16u](bm16x16u~in,bm16x16u~in)[40] = {0x56,0x48,0x83,0xec,0x30,0x48,0x8b,0xf1,0xb9,0xff,0xff,0x00,0x00,0x66,0x89,0x4c,0x24,0x28,0x48,0x8b,0xce,0x0f,0xb7,0x54,0x24,0x28,0xe8,0x09,0xc7,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
000dh mov [rsp+28h],cx                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 28}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h movzx edx,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 28}
001ah call 7ff7c85474e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 c7 ff ff}
001fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0022h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0026h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> true<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?true#true_g[32u](bm32x32u~in,bm32x32u~in)
; true_g[32u](bm32x32u~in,bm32x32u~in)[30] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0xba,0xff,0xff,0xff,0xff,0xe8,0x13,0xc7,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0010h call 7ff7c8547528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 c7 ff ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> true<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?true#true_g[64u](bm64x64u~in,bm64x64u~in)
; true_g[64u](bm64x64u~in,bm64x64u~in)[35] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xe8,0x5e,0xc8,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
0015h call 7ff7c85476b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e c8 ff ff}
001ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> true<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?true#true_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; true_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[70] = {0x56,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8b,0x0e,0x48,0x89,0x4c,0x24,0x20,0x8b,0x4e,0x08,0x89,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x20,0xba,0xff,0x00,0x00,0x00,0xe8,0x33,0x33,0x5b,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov edx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff 00 00 00}
0038h call 7ff7c7afe5f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 33 5b ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> true<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?true#true_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; true_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[70] = {0x56,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8b,0x0e,0x48,0x89,0x4c,0x24,0x20,0x8b,0x4e,0x08,0x89,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x20,0xba,0xff,0xff,0x00,0x00,0xe8,0x8b,0x5c,0xb0,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov edx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff 00 00}
0038h call 7ff7c8050fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 5c b0 ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> true<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?true#true_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; true_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[70] = {0x56,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8b,0x0e,0x48,0x89,0x4c,0x24,0x20,0x8b,0x4e,0x08,0x89,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x20,0xba,0xff,0xff,0xff,0xff,0xe8,0xeb,0xe4,0x86,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0038h call 7ff7c7db9868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb e4 86 ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> true<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?true#true_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; true_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[75] = {0x56,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8b,0x0e,0x48,0x89,0x4c,0x24,0x20,0x8b,0x4e,0x08,0x89,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x20,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xe8,0x96,0x0f,0xb1,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x30,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
003dh call 7ff7c805c378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 0f b1 ff}
0042h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0045h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> and<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?and#and_g[8u](bm8x8u~in,bm8x8u~in)
; and_g[8u](bm8x8u~in,bm8x8u~in)[101] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0xac,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x23,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x28,0xa6,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 ac ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0048h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
004eh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0053h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 a6 d1 5e}
0058h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
005dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0061h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0062h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0063h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> and<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?and#and_g[16u](bm16x16u~in,bm16x16u~in)
; and_g[16u](bm16x16u~in,bm16x16u~in)[108] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x97,0xb8,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xdb,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xa4,0xa5,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 b8 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0047h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
004bh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
004fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0052h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0057h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a5 d1 5e}
005ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> and<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?and#and_g[32u](bm32x32u~in,bm32x32u~in)
; and_g[32u](bm32x32u~in,bm32x32u~in)[147] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xa7,0xb4,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xdd,0xa0,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 b4 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0070h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0074h jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd a0 d1 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> and<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?and#and_g[64u](bm64x64u~in,bm64x64u~in)
; and_g[64u](bm64x64u~in,bm64x64u~in)[147] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xa7,0xb4,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x2d,0xa0,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 b4 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0070h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0074h jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d a0 d1 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> and<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?and#and_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; and_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x23,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0017h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ah mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> and<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?and#and_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; and_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[37] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xdb,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
001ah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
001eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> and<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?and#and_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; and_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
003eh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> and<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?and#and_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; and_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
003eh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> nand<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?nand#nand_g[8u](bm8x8u~in,bm8x8u~in)
; nand_g[8u](bm8x8u~in,bm8x8u~in)[104] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xf7,0xa0,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x23,0xc2,0x48,0xf7,0xd0,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x55,0x9a,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 a0 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0048h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
004bh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0051h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0056h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 9a d1 5e}
005bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0060h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> nand<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?nand#nand_g[16u](bm16x16u~in,bm16x16u~in)
; nand_g[16u](bm16x16u~in,bm16x16u~in)[116] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xb7,0xac,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xdb,0xc1,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xbc,0x99,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ac ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0047h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
004bh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
004fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0053h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0057h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
005fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 99 d1 5e}
0064h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0066h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0069h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0070h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> nand<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?nand#nand_g[32u](bm32x32u~in,bm32x32u~in)
; nand_g[32u](bm32x32u~in,bm32x32u~in)[155] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0xa8,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xdb,0xc1,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xc7,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xf5,0x94,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 a8 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0061h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0065h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0069h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
006ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0071h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0074h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0078h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
007ch jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
007eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0081h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0086h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 94 d1 5e}
008bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0090h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0093h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0097h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0098h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0099h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> nand<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?nand#nand_g[64u](bm64x64u~in,bm64x64u~in)
; nand_g[64u](bm64x64u~in,bm64x64u~in)[156] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xb7,0xa8,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xdb,0xc1,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xc6,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x34,0x94,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 a8 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0061h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0066h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
006ah add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
006dh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0072h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0075h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0079h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
007dh jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
007fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0082h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0087h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 94 d1 5e}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0098h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0099h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> nand<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?nand#nand_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; nand_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x23,0xc2,0x48,0xf7,0xd0,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0017h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> nand<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?nand#nand_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; nand_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[45] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xdb,0xc1,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
001ah vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
001eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0022h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0026h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> nand<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?nand#nand_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; nand_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[85] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xdb,0xc1,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xc8,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
002fh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0033h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0037h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003ah vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
003fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0042h add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
0046h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
004ah jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
004ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> nand<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?nand#nand_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; nand_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[86] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xdb,0xc1,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xc7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
002fh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0034h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0038h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003bh vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0040h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0043h add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
0047h cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
004bh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
004dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> or<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?or#or_g[8u](bm8x8u~in,bm8x8u~in)
; or_g[8u](bm8x8u~in,bm8x8u~in)[101] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0x94,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x0b,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x28,0x8e,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 94 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0048h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
004eh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0053h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 8e d1 5e}
0058h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
005dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0061h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0062h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0063h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> or<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?or#or_g[16u](bm16x16u~in,bm16x16u~in)
; or_g[16u](bm16x16u~in,bm16x16u~in)[158] = {0x57,0x56,0x53,0x48,0x81,0xec,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x70,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x70,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x70,0xe8,0x84,0x9c,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x70,0x48,0x8b,0x09,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x40,0xc5,0xfd,0x10,0x4c,0x24,0x20,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x70,0xe8,0x65,0x89,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x80,0x00,0x00,0x00,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,80h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 00 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh mov [rsp+70h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 70}
0014h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001dh lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0022h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0026h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
002ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
002fh call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 9c ff ff}
0034h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0037h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
003ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
003fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0042h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0046h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
004ch vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0050h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0056h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
005ah vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0060h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0064h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
006ah vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0070h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
0076h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
007ah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
007eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0081h lea rsi,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 70}
0086h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 89 d1 5e}
008bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0090h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0093h add rsp,80h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 00 00 00}
009ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> or<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?or#or_g[32u](bm32x32u~in,bm32x32u~in)
; or_g[32u](bm32x32u~in,bm32x32u~in)[197] = {0x57,0x56,0x53,0x48,0x81,0xec,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x70,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x70,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x70,0xe8,0x64,0x9c,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x70,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x06,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x40,0xc5,0xfd,0x10,0x4c,0x24,0x20,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xa3,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x70,0xe8,0x6e,0x88,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x80,0x00,0x00,0x00,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,80h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 00 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh mov [rsp+70h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 70}
0014h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001dh lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0022h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0026h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
002ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
002fh call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 9c ff ff}
0034h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0037h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
003ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
003fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0042h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0045h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0048h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
004bh shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004fh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0053h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0057h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
005bh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0061h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0065h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
006bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0070h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0076h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
007ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0080h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0086h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
008ch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0090h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0093h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0098h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
009bh add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
009fh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
00a3h jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c a3}
00a5h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00a8h lea rsi,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 70}
00adh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 88 d1 5e}
00b2h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00b4h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00b7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bah add rsp,80h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 00 00 00}
00c1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> or<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?or#or_g[64u](bm64x64u~in,bm64x64u~in)
; or_g[64u](bm64x64u~in,bm64x64u~in)[197] = {0x57,0x56,0x53,0x48,0x81,0xec,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x70,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x70,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x70,0xe8,0x24,0x9c,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x70,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x06,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x40,0xc5,0xfd,0x10,0x4c,0x24,0x20,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xa3,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x70,0xe8,0x7e,0x87,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x80,0x00,0x00,0x00,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,80h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 00 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh mov [rsp+70h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 70}
0014h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001dh lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0022h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0026h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
002ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
002fh call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 9c ff ff}
0034h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0037h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
003ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
003fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0042h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0045h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0048h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
004bh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004fh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0053h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0057h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
005bh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0061h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0065h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
006bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0070h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0076h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
007ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0080h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0086h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
008ch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0090h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0093h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0098h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
009bh add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
009fh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
00a3h jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c a3}
00a5h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00a8h lea rsi,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 70}
00adh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 87 d1 5e}
00b2h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00b4h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00b7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bah add rsp,80h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 00 00 00}
00c1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> or<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?or#or_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; or_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x0b,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0017h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ah mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> or<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?or#or_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; or_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[84] = {0x48,0x83,0xec,0x58,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x10,0x0c,0x24,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x58,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000dh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0010h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0014h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
001ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
001eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0023h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0027h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
002dh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0031h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0036h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
003ch vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
0041h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0045h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0049h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> or<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?or#or_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; or_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[126] = {0x57,0x56,0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x06,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x07,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x10,0x0c,0x24,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xa7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x48,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0012h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0015h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0018h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001bh shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001fh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
0023h lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0027h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
002bh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
003ah vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0044h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
0048h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
004dh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0053h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
0058h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
005ch add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
005fh vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0064h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0067h add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
006bh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
006fh jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c a7}
0071h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0074h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0077h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
007bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> or<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?or#or_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; or_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[126] = {0x57,0x56,0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x06,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x07,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x10,0x0c,0x24,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xa7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x48,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0012h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0015h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0018h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001bh shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001fh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
0023h lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0027h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
002bh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
003ah vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0044h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
0048h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
004dh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0053h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
0058h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
005ch add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
005fh vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0064h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0067h add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
006bh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
006fh jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c a7}
0071h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0074h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0077h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
007bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> nor<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?nor#nor_g[8u](bm8x8u~in,bm8x8u~in)
; nor_g[8u](bm8x8u~in,bm8x8u~in)[104] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x67,0x83,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x0b,0xc2,0x48,0xf7,0xd0,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xc5,0x7c,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 83 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0048h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
004bh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0051h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0056h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 7c d1 5e}
005bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0060h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> nor<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?nor#nor_g[16u](bm16x16u~in,bm16x16u~in)
; nor_g[16u](bm16x16u~in,bm16x16u~in)[166] = {0x57,0x56,0x53,0x48,0x81,0xec,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x70,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x70,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x70,0xe8,0x24,0x8f,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x70,0x48,0x8b,0x09,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x40,0xc5,0xfd,0x10,0x4c,0x24,0x20,0xc5,0xfd,0xeb,0xc1,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x70,0xe8,0xfd,0x7b,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x80,0x00,0x00,0x00,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,80h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 00 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh mov [rsp+70h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 70}
0014h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001dh lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0022h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0026h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
002ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
002fh call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 8f ff ff}
0034h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0037h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
003ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
003fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0042h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0046h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
004ch vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0050h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0056h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
005ah vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0060h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0064h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
006ah vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0070h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
0076h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
007ah vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
007eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0082h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0086h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0089h lea rsi,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 70}
008eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 7b d1 5e}
0093h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0095h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0098h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
009bh add rsp,80h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 00 00 00}
00a2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> nor<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?nor#nor_g[32u](bm32x32u~in,bm32x32u~in)
; nor_g[32u](bm32x32u~in,bm32x32u~in)[205] = {0x57,0x56,0x53,0x48,0x81,0xec,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x70,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x70,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x70,0xe8,0x04,0x8f,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x70,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x06,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x40,0xc5,0xfd,0x10,0x4c,0x24,0x20,0xc5,0xfd,0xeb,0xc1,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0x9b,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x70,0xe8,0x06,0x7b,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x80,0x00,0x00,0x00,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,80h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 00 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh mov [rsp+70h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 70}
0014h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001dh lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0022h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0026h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
002ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
002fh call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 8f ff ff}
0034h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0037h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
003ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
003fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0042h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0045h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0048h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
004bh shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004fh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0053h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0057h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
005bh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0061h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0065h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
006bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0070h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0076h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
007ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0080h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0086h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
008ch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0090h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0094h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0098h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
009bh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
00a0h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
00a3h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
00a7h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
00abh jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c 9b}
00adh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00b0h lea rsi,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 70}
00b5h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 7b d1 5e}
00bah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00bfh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c2h add rsp,80h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 00 00 00}
00c9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00cbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00cch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> nor<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?nor#nor_g[64u](bm64x64u~in,bm64x64u~in)
; nor_g[64u](bm64x64u~in,bm64x64u~in)[206] = {0x57,0x56,0x53,0x48,0x81,0xec,0x80,0x00,0x00,0x00,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x70,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x70,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x70,0xe8,0xb4,0x8e,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x70,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x06,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x40,0xc5,0xfd,0x10,0x4c,0x24,0x20,0xc5,0xfd,0xeb,0xc1,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0x9a,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x70,0xe8,0x05,0x7a,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x80,0x00,0x00,0x00,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,80h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 00 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh mov [rsp+70h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 70}
0014h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001dh lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0022h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0026h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
002ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
002fh call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 8e ff ff}
0034h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0037h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
003ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
003fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0042h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0045h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0048h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
004bh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004fh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0053h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0057h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
005bh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0061h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0065h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
006bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0070h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0076h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
007ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0080h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0086h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
008ch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0090h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0095h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0099h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
009ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
00a1h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
00a4h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
00a8h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
00ach jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c 9a}
00aeh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00b1h lea rsi,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 70}
00b6h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 7a d1 5e}
00bbh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bdh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00c0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c3h add rsp,80h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 00 00 00}
00cah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cbh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00cch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00cdh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> nor<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?nor#nor_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; nor_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x0b,0xc2,0x48,0xf7,0xd0,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0017h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> nor<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?nor#nor_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; nor_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[92] = {0x48,0x83,0xec,0x58,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x10,0x0c,0x24,0xc5,0xfd,0xeb,0xc1,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x58,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000dh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0010h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0014h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
001ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
001eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0023h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0027h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
002dh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0031h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0036h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
003ch vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
0041h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0045h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0049h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
004dh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0051h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0054h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0057h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> nor<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?nor#nor_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; nor_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[134] = {0x57,0x56,0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x06,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x07,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x10,0x0c,0x24,0xc5,0xfd,0xeb,0xc1,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0x9f,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x48,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0012h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0015h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0018h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001bh shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001fh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
0023h lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0027h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
002bh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
003ah vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0044h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
0048h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
004dh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0053h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
0058h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
005ch vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0060h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0064h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0067h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
006ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
006fh add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
0073h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0077h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c 9f}
0079h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
007ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007fh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0083h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0084h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0085h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> nor<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?nor#nor_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; nor_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[135] = {0x57,0x56,0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x06,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x07,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x10,0x0c,0x24,0xc5,0xfd,0xeb,0xc1,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0x9e,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x48,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0012h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0015h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0018h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001bh shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001fh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
0023h lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0027h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
002bh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
003ah vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0044h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
0048h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
004dh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0053h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
0058h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
005ch vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0061h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0065h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0068h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
006dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0070h add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
0074h cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
0078h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c 9e}
007ah mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
007dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0080h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> xor<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?xor#xor_g[8u](bm8x8u~in,bm8x8u~in)
; xor_g[8u](bm8x8u~in,bm8x8u~in)[101] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xd7,0x75,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x33,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x38,0x6f,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 75 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0048h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
004eh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0053h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 6f d1 5e}
0058h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
005dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0061h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0062h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0063h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> xor<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?xor#xor_g[16u](bm16x16u~in,bm16x16u~in)
; xor_g[16u](bm16x16u~in,bm16x16u~in)[108] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xa7,0x81,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xb4,0x6e,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 81 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0047h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
004bh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
004fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0052h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0057h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 6e d1 5e}
005ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> xor<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?xor#xor_g[32u](bm32x32u~in,bm32x32u~in)
; xor_g[32u](bm32x32u~in,bm32x32u~in)[147] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0x81,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xfd,0x6d,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 81 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0070h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0074h jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 6d d1 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> xor<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?xor#xor_g[64u](bm64x64u~in,bm64x64u~in)
; xor_g[64u](bm64x64u~in,bm64x64u~in)[147] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0x81,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x4d,0x6d,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 81 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0070h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0074h jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 6d d1 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> xor<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?xor#xor_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; xor_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x33,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0017h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ah mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> xor<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?xor#xor_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; xor_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[37] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
001ah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
001eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> xor<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?xor#xor_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; xor_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
003eh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> xor<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?xor#xor_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; xor_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
003eh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> xnor<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?xnor#xnor_g[8u](bm8x8u~in,bm8x8u~in)
; xnor_g[8u](bm8x8u~in,bm8x8u~in)[104] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x07,0x6a,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x33,0xc2,0x48,0xf7,0xd0,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x65,0x63,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 6a ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0048h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
004bh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0051h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0056h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 63 d1 5e}
005bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0060h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> xnor<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?xnor#xnor_g[16u](bm16x16u~in,bm16x16u~in)
; xnor_g[16u](bm16x16u~in,bm16x16u~in)[116] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0x75,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xef,0xc1,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xcc,0x62,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 75 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0047h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
004bh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
004fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0053h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0057h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
005fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 62 d1 5e}
0064h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0066h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0069h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0070h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> xnor<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?xnor#xnor_g[32u](bm32x32u~in,bm32x32u~in)
; xnor_g[32u](bm32x32u~in,bm32x32u~in)[155] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xd7,0x75,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xef,0xc1,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xc7,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x05,0x62,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 75 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0061h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0065h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0069h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
006ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0071h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0074h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0078h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
007ch jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
007eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0081h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0086h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 62 d1 5e}
008bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0090h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0093h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0097h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0098h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0099h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> xnor<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?xnor#xnor_g[64u](bm64x64u~in,bm64x64u~in)
; xnor_g[64u](bm64x64u~in,bm64x64u~in)[156] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0x75,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xef,0xc1,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xc6,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x44,0x61,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 75 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0061h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0066h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
006ah add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
006dh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0072h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0075h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0079h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
007dh jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
007fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0082h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0087h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 61 d1 5e}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0098h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0099h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> xnor<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?xnor#xnor_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; xnor_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x33,0xc2,0x48,0xf7,0xd0,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0017h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> xnor<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?xnor#xnor_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; xnor_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[45] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xef,0xc1,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
001ah vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
001eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0022h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0026h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> xnor<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?xnor#xnor_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; xnor_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[85] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xef,0xc1,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xc8,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
002fh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0033h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0037h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003ah vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
003fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0042h add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
0046h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
004ah jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
004ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> xnor<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?xnor#xnor_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; xnor_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[86] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xef,0xc1,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xc7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
002fh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0034h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0038h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003bh vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0040h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0043h add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
0047h cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
004bh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
004dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> left<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?left#left_g[8u](bm8x8u~in,bm8x8u~in)
; left_g[8u](bm8x8u~in,bm8x8u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x48,0x8b,0xf2,0xe8,0x6d,0x57,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 57 d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> left<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?left#left_g[16u](bm16x16u~in,bm16x16u~in)
; left_g[16u](bm16x16u~in,bm16x16u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x48,0x8b,0xf2,0xe8,0x2d,0x57,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 57 d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> left<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?left#left_g[32u](bm32x32u~in,bm32x32u~in)
; left_g[32u](bm32x32u~in,bm32x32u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x48,0x8b,0xf2,0xe8,0xed,0x56,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 56 d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> left<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?left#left_g[64u](bm64x64u~in,bm64x64u~in)
; left_g[64u](bm64x64u~in,bm64x64u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x48,0x8b,0xf2,0xe8,0xad,0x56,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 56 d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> left<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?left#left_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; left_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[96] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x01,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x11,0x8b,0x49,0x08,0x4c,0x8d,0x44,0x24,0x20,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x41,0x3b,0xc8,0x77,0x14,0x4c,0x63,0xc1,0x48,0x8b,0xc8,0xe8,0xee,0x86,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0xf8,0x41,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0030h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0033h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0036h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003bh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
003eh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0042h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
0045h ja short 005bh                          ; JA rel8 || 77 cb || encoded[2]{77 14}
0047h movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 86 7a 4e}
0052h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0055h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
005bh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 41 21 ff}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> left<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?left#left_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; left_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[99] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x01,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x4c,0x8d,0x44,0x24,0x30,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x01,0x8b,0x49,0x08,0x44,0x3b,0xc1,0x77,0x17,0x48,0x8b,0xc8,0x4d,0x63,0xc0,0x49,0xd1,0xe0,0xe8,0x6b,0x86,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0x75,0x41,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005eh                          ; JA rel8 || 77 cb || encoded[2]{77 17}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0050h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 86 7a 4e}
0055h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0058h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
005eh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 41 21 ff}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> left<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?left#left_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; left_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[100] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x01,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x4c,0x8d,0x44,0x24,0x30,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x01,0x8b,0x49,0x08,0x44,0x3b,0xc1,0x77,0x18,0x48,0x8b,0xc8,0x4d,0x63,0xc0,0x49,0xc1,0xe0,0x02,0xe8,0xea,0x85,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0xf4,0x40,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
0051h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 85 7a 4e}
0056h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0059h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
005fh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 40 21 ff}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> left<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?left#left_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; left_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[100] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x01,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x4c,0x8d,0x44,0x24,0x30,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x01,0x8b,0x49,0x08,0x44,0x3b,0xc1,0x77,0x18,0x48,0x8b,0xc8,0x4d,0x63,0xc0,0x49,0xc1,0xe0,0x03,0xe8,0x6a,0x85,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0x74,0x40,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
0051h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 85 7a 4e}
0056h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0059h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
005fh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 40 21 ff}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> right<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?right#right_g[8u](bm8x8u~in,bm8x8u~in)
; right_g[8u](bm8x8u~in,bm8x8u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x49,0x8b,0xf0,0xe8,0x5d,0x50,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 50 d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> right<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?right#right_g[16u](bm16x16u~in,bm16x16u~in)
; right_g[16u](bm16x16u~in,bm16x16u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x49,0x8b,0xf0,0xe8,0x1d,0x50,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 50 d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> right<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?right#right_g[32u](bm32x32u~in,bm32x32u~in)
; right_g[32u](bm32x32u~in,bm32x32u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x49,0x8b,0xf0,0xe8,0xdd,0x4f,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 4f d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> right<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?right#right_g[64u](bm64x64u~in,bm64x64u~in)
; right_g[64u](bm64x64u~in,bm64x64u~in)[28] = {0x57,0x56,0x53,0x66,0x90,0x48,0x8b,0xd9,0x48,0x8b,0xfb,0x49,0x8b,0xf0,0xe8,0x9d,0x4f,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 4f d1 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> right<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?right#right_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; right_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[96] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x02,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x11,0x8b,0x49,0x08,0x4c,0x8d,0x44,0x24,0x20,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x41,0x3b,0xc8,0x77,0x14,0x4c,0x63,0xc1,0x48,0x8b,0xc8,0xe8,0xde,0x7f,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0xe8,0x3a,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0030h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0033h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0036h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003bh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
003eh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0042h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
0045h ja short 005bh                          ; JA rel8 || 77 cb || encoded[2]{77 14}
0047h movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 7f 7a 4e}
0052h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0055h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
005bh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 3a 21 ff}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> right<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?right#right_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; right_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[99] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x02,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x4c,0x8d,0x44,0x24,0x30,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x01,0x8b,0x49,0x08,0x44,0x3b,0xc1,0x77,0x17,0x48,0x8b,0xc8,0x4d,0x63,0xc0,0x49,0xd1,0xe0,0xe8,0x5b,0x7f,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0x65,0x3a,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005eh                          ; JA rel8 || 77 cb || encoded[2]{77 17}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0050h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 7f 7a 4e}
0055h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0058h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
005eh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 3a 21 ff}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> right<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?right#right_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; right_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[100] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x02,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x4c,0x8d,0x44,0x24,0x30,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x01,0x8b,0x49,0x08,0x44,0x3b,0xc1,0x77,0x18,0x48,0x8b,0xc8,0x4d,0x63,0xc0,0x49,0xc1,0xe0,0x02,0xe8,0xda,0x7e,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0xe4,0x39,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
0051h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 7e 7a 4e}
0056h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0059h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
005fh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 39 21 ff}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> right<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?right#right_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; right_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[100] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x20,0x49,0x8b,0xf0,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0xc5,0xfa,0x6f,0x02,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x4c,0x8d,0x44,0x24,0x30,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x01,0x8b,0x49,0x08,0x44,0x3b,0xc1,0x77,0x18,0x48,0x8b,0xc8,0x4d,0x63,0xc0,0x49,0xc1,0xe0,0x03,0xe8,0x5a,0x7e,0x7a,0x4e,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3,0xe8,0x64,0x39,0x21,0xff}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
0051h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 7e 7a 4e}
0056h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0059h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
005fh call 7ff7c7764a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 39 21 ff}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> lnot<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?lnot#lnot_g[8u](bm8x8u~in,bm8x8u~in)
; lnot_g[8u](bm8x8u~in,bm8x8u~in)[92] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xaa,0x4f,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x20,0x48,0x8b,0x12,0x48,0x8b,0x00,0x48,0xf7,0xd0,0x48,0x89,0x02,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x11,0x49,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0029h call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 4f ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
003ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
003fh mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0042h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0045h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004ah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 49 d1 5e}
004fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0051h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0054h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0058h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> lnot<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?lnot#lnot_g[16u](bm16x16u~in,bm16x16u~in)
; lnot_g[16u](bm16x16u~in,bm16x16u~in)[124] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x50,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x48,0x8d,0x4c,0x24,0x50,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x50,0xe8,0x7a,0x5b,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x50,0x48,0x8b,0x12,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x02,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x50,0xe8,0x74,0x48,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0029h call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 5b ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 50}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
003dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0043h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0047h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
004dh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0053h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0057h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
005bh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
005fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0062h lea rsi,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 50}
0067h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 48 d1 5e}
006ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0074h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> lnot<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?lnot#lnot_g[32u](bm32x32u~in,bm32x32u~in)
; lnot_g[32u](bm32x32u~in,bm32x32u~in)[156] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x50,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x48,0x8d,0x4c,0x24,0x50,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x50,0xe8,0x8a,0x5b,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x50,0x48,0x8b,0x12,0x33,0xc9,0x45,0x33,0xc0,0x4d,0x63,0xc8,0x49,0xc1,0xe1,0x02,0x4e,0x8d,0x14,0x08,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc4,0xc1,0x7f,0xf0,0x02,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xca,0xc4,0xc1,0x7e,0x7f,0x01,0xff,0xc1,0x41,0x83,0xc0,0x08,0x83,0xf9,0x04,0x7c,0xbf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x50,0xe8,0xb4,0x47,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0029h call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 5b ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 50}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
003bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003eh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0041h shl r9,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 02}
0045h lea r10,[rax+r9]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 08}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0053h vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
0058h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
005eh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0064h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0068h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
006ch add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
006fh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0074h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0076h add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
007ah cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
007dh jl short 003eh                          ; JL rel8 || 7C cb || encoded[2]{7c bf}
007fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0082h lea rsi,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 50}
0087h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 47 d1 5e}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0098h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0099h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> lnot<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?lnot#lnot_g[64u](bm64x64u~in,bm64x64u~in)
; lnot_g[64u](bm64x64u~in,bm64x64u~in)[157] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x50,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x48,0x8d,0x4c,0x24,0x50,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x50,0xe8,0x7a,0x5b,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x50,0x48,0x8b,0x12,0x33,0xc9,0x45,0x33,0xc0,0x4d,0x63,0xc8,0x49,0xc1,0xe1,0x03,0x4e,0x8d,0x14,0x08,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc4,0xc1,0x7f,0xf0,0x02,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xca,0xc4,0xc1,0x7e,0x7f,0x01,0xff,0xc1,0x41,0x83,0xc0,0x04,0x83,0xf9,0x10,0x7c,0xbe,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x50,0xe8,0xf3,0x46,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0029h call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 5b ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 50}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
003bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003eh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0041h shl r9,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 03}
0045h lea r10,[rax+r9]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 08}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0053h vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
0058h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
005eh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0064h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0069h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
006dh add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
0070h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0075h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0077h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
007bh cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
007eh jl short 003eh                          ; JL rel8 || 7C cb || encoded[2]{7c be}
0080h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0083h lea rsi,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 50}
0088h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 46 d1 5e}
008dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> lnot<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?lnot#lnot_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; lnot_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x49,0x8b,0x10,0x48,0x8b,0x00,0x48,0xf7,0xd0,0x48,0x89,0x02,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
000eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0011h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0014h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> lnot<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?lnot#lnot_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; lnot_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[59] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x49,0x8b,0x10,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x04,0x24,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x02,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0011h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0016h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
001ah vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
001fh vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0024h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0028h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
002ch vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0030h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> lnot<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?lnot#lnot_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; lnot_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[91] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x49,0x8b,0x10,0x33,0xc9,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x04,0x24,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd2,0xc4,0xc1,0x7e,0x7f,0x02,0xff,0xc1,0x41,0x83,0xc1,0x08,0x83,0xf9,0x04,0x7c,0xc2,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0015h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0019h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
001dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0021h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0026h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
002bh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0030h vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0035h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0039h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
003dh add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
0040h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0045h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0047h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
004bh cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
004eh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c c2}
0050h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> lnot<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?lnot#lnot_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; lnot_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[92] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x49,0x8b,0x10,0x33,0xc9,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x04,0x24,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd2,0xc4,0xc1,0x7e,0x7f,0x02,0xff,0xc1,0x41,0x83,0xc1,0x04,0x83,0xf9,0x10,0x7c,0xc1,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0015h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0019h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
001dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0021h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0026h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
002bh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0030h vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0035h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
003ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
003eh add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
0041h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0046h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0048h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
004ch cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
004fh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c c1}
0051h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0054h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0057h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> rnot<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?rnot#rnot_g[8u](bm8x8u~in,bm8x8u~in)
; rnot_g[8u](bm8x8u~in,bm8x8u~in)[92] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x7a,0x47,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x20,0x48,0x8b,0x12,0x48,0x8b,0x00,0x48,0xf7,0xd0,0x48,0x89,0x02,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xe1,0x40,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0029h call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 47 ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
003ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
003fh mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0042h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0045h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004ah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 40 d1 5e}
004fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0051h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0054h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0058h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> rnot<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?rnot#rnot_g[16u](bm16x16u~in,bm16x16u~in)
; rnot_g[16u](bm16x16u~in,bm16x16u~in)[124] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x50,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x50,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x50,0xe8,0x4a,0x53,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x50,0x48,0x8b,0x12,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x02,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x50,0xe8,0x44,0x40,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0029h call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 53 ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 50}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
003dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0043h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0047h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
004dh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0053h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0057h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
005bh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
005fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0062h lea rsi,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 50}
0067h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 40 d1 5e}
006ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0074h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> rnot<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?rnot#rnot_g[32u](bm32x32u~in,bm32x32u~in)
; rnot_g[32u](bm32x32u~in,bm32x32u~in)[156] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x50,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x50,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x50,0xe8,0x5a,0x53,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x50,0x48,0x8b,0x12,0x33,0xc9,0x45,0x33,0xc0,0x4d,0x63,0xc8,0x49,0xc1,0xe1,0x02,0x4e,0x8d,0x14,0x08,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc4,0xc1,0x7f,0xf0,0x02,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xca,0xc4,0xc1,0x7e,0x7f,0x01,0xff,0xc1,0x41,0x83,0xc0,0x08,0x83,0xf9,0x04,0x7c,0xbf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x50,0xe8,0x84,0x3f,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0029h call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 53 ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 50}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
003bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003eh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0041h shl r9,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 02}
0045h lea r10,[rax+r9]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 08}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0053h vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
0058h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
005eh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0064h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0068h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
006ch add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
006fh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0074h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0076h add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
007ah cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
007dh jl short 003eh                          ; JL rel8 || 7C cb || encoded[2]{7c bf}
007fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0082h lea rsi,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 50}
0087h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 3f d1 5e}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0098h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0099h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> rnot<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?rnot#rnot_g[64u](bm64x64u~in,bm64x64u~in)
; rnot_g[64u](bm64x64u~in,bm64x64u~in)[157] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x50,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x48,0x8d,0x4c,0x24,0x50,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x50,0xe8,0x4a,0x53,0xff,0xff,0x48,0x8b,0x06,0x48,0x8d,0x54,0x24,0x50,0x48,0x8b,0x12,0x33,0xc9,0x45,0x33,0xc0,0x4d,0x63,0xc8,0x49,0xc1,0xe1,0x03,0x4e,0x8d,0x14,0x08,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc4,0xc1,0x7f,0xf0,0x02,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x20,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xca,0xc4,0xc1,0x7e,0x7f,0x01,0xff,0xc1,0x41,0x83,0xc0,0x04,0x83,0xf9,0x10,0x7c,0xbe,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x50,0xe8,0xc3,0x3e,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0029h call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 53 ff ff}
002eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0031h lea rdx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 50}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
003bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003eh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0041h shl r9,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 03}
0045h lea r10,[rax+r9]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 08}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0053h vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
0058h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
005eh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0064h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0069h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
006dh add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
0070h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0075h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0077h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
007bh cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
007eh jl short 003eh                          ; JL rel8 || 7C cb || encoded[2]{7c be}
0080h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0083h lea rsi,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 50}
0088h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 3e d1 5e}
008dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> rnot<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?rnot#rnot_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; rnot_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x48,0x8b,0x00,0x48,0xf7,0xd0,0x48,0x89,0x02,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
000eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0011h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0014h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> rnot<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?rnot#rnot_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; rnot_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[59] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x02,0x49,0x8b,0x10,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x04,0x24,0xc5,0xfd,0x75,0xc8,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x02,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000ah mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0011h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0016h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
001ah vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
001fh vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0024h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0028h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
002ch vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0030h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> rnot<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?rnot#rnot_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; rnot_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[91] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x02,0x49,0x8b,0x10,0x33,0xc9,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x04,0x24,0xc5,0xfd,0x76,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd2,0xc4,0xc1,0x7e,0x7f,0x02,0xff,0xc1,0x41,0x83,0xc1,0x08,0x83,0xf9,0x04,0x7c,0xc2,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000ah mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0015h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0019h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
001dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0021h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0026h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
002bh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0030h vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0035h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0039h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
003dh add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
0040h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0045h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0047h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
004bh cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
004eh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c c2}
0050h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> rnot<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?rnot#rnot_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; rnot_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[92] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x02,0x49,0x8b,0x10,0x33,0xc9,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x04,0x24,0xc4,0xe2,0x7d,0x29,0xc8,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd2,0xc4,0xc1,0x7e,0x7f,0x02,0xff,0xc1,0x41,0x83,0xc1,0x04,0x83,0xf9,0x10,0x7c,0xc1,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000ah mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0015h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0019h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
001dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0021h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0026h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
002bh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0030h vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0035h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
003ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
003eh add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
0041h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0046h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0048h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
004ch cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
004fh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c c1}
0051h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0054h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0057h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> impl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?impl#impl_g[8u](bm8x8u~in,bm8x8u~in)
; impl_g[8u](bm8x8u~in,bm8x8u~in)[104] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x47,0x3f,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd2,0x48,0x0b,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xa5,0x38,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 3f ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0048h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
004bh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0051h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0056h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 38 d1 5e}
005bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0060h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> impl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?impl#impl_g[16u](bm16x16u~in,bm16x16u~in)
; impl_g[16u](bm16x16u~in,bm16x16u~in)[116] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x07,0x4b,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0x75,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x0c,0x38,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 4b ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0047h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
004bh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
004fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0053h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0057h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
005fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 38 d1 5e}
0064h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0066h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0069h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0070h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> impl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?impl#impl_g[32u](bm32x32u~in,bm32x32u~in)
; impl_g[32u](bm32x32u~in,bm32x32u~in)[155] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x17,0x4b,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xf5,0x76,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xc7,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x45,0x37,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 4b ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
0061h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0065h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0069h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
006ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0071h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0074h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0078h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
007ch jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
007eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0081h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0086h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 37 d1 5e}
008bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0090h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0093h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0097h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0098h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0099h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> impl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?impl#impl_g[64u](bm64x64u~in,bm64x64u~in)
; impl_g[64u](bm64x64u~in,bm64x64u~in)[156] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x07,0x4b,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc4,0xe2,0x75,0x29,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xc6,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x84,0x36,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 4b ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0062h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0066h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
006ah add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
006dh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0072h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0075h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0079h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
007dh jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
007fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0082h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0087h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 36 d1 5e}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0098h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0099h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> impl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?impl#impl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; impl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd2,0x48,0x0b,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0017h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> impl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?impl#impl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; impl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[45] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0x75,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
001ah vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
001eh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0022h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0026h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> impl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?impl#impl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; impl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[85] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xf5,0x76,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xc8,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
002fh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0033h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0037h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003ah vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
003fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0042h add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
0046h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
004ah jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
004ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> impl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?impl#impl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; impl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[86] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc4,0xe2,0x75,0x29,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xc7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0030h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0034h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0038h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003bh vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0040h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0043h add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
0047h cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
004bh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
004dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> nonimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?nonimpl#nonimpl_g[8u](bm8x8u~in,bm8x8u~in)
; nonimpl_g[8u](bm8x8u~in,bm8x8u~in)[103] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x07,0x33,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0xc4,0xe2,0xf8,0xf2,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x66,0x2c,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 33 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h andn rax,rax,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c2}
004ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0050h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0055h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 2c d1 5e}
005ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
005fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0063h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> nonimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?nonimpl#nonimpl_g[16u](bm16x16u~in,bm16x16u~in)
; nonimpl_g[16u](bm16x16u~in,bm16x16u~in)[108] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0x3e,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xdf,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xd4,0x2b,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 3e ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0047h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
004bh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
004fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0052h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0057h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 2b d1 5e}
005ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> nonimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?nonimpl#nonimpl_g[32u](bm32x32u~in,bm32x32u~in)
; nonimpl_g[32u](bm32x32u~in,bm32x32u~in)[147] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xd7,0x3a,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xdf,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x0d,0x27,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 3a ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0070h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0074h jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 27 d1 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> nonimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?nonimpl#nonimpl_g[64u](bm64x64u~in,bm64x64u~in)
; nonimpl_g[64u](bm64x64u~in,bm64x64u~in)[147] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xd7,0x3a,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xdf,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x5d,0x26,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 3a ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0070h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0074h jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 26 d1 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> nonimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?nonimpl#nonimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; nonimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0xc4,0xe2,0xf8,0xf2,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h andn rax,rax,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c2}
0019h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> nonimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?nonimpl#nonimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; nonimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[37] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xdf,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
001ah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
001eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> nonimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?nonimpl#nonimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; nonimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xdf,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
003eh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> nonimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?nonimpl#nonimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; nonimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xdf,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
003eh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> cimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?cimpl#cimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; cimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd0,0x48,0x0b,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0017h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> cimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?cimpl#cimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; cimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[45] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0x75,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
001ah vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
001eh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0022h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0026h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> cimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?cimpl#cimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; cimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[85] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0x76,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xc8,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpcmpeqd ymm2,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 d0}
002fh vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0033h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0037h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003ah vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
003fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0042h add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
0046h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
004ah jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
004ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> cimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?cimpl#cimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; cimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[86] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc4,0xe2,0x7d,0x29,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xc7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpcmpeqq ymm2,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 d0}
0030h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0034h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0038h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003bh vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0040h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0043h add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
0047h cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
004bh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
004dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> cnonimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?cnonimpl#cnonimpl_g[8u](bm8x8u~in,bm8x8u~in)
; cnonimpl_g[8u](bm8x8u~in,bm8x8u~in)[103] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xa7,0x1d,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0xc4,0xe2,0xe8,0xf2,0xc0,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x06,0x17,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 1d ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h andn rax,rdx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c0}
004ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0050h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0055h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 17 d1 5e}
005ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
005fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0063h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> cnonimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?cnonimpl#cnonimpl_g[16u](bm16x16u~in,bm16x16u~in)
; cnonimpl_g[16u](bm16x16u~in,bm16x16u~in)[108] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x67,0x29,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0xdf,0xc0,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x74,0x16,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 29 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0047h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
004bh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
004fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0052h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0057h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 16 d1 5e}
005ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> cnonimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?cnonimpl#cnonimpl_g[32u](bm32x32u~in,bm32x32u~in)
; cnonimpl_g[32u](bm32x32u~in,bm32x32u~in)[147] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x87,0x29,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xbd,0x15,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 29 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0070h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0074h jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 15 d1 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> cnonimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?cnonimpl#cnonimpl_g[64u](bm64x64u~in,bm64x64u~in)
; cnonimpl_g[64u](bm64x64u~in,bm64x64u~in)[147] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x87,0x29,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x0d,0x15,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 29 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0070h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0074h jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 15 d1 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> cnonimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?cnonimpl#cnonimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; cnonimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0xc4,0xe2,0xe8,0xf2,0xc0,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h andn rax,rdx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c0}
0019h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> cnonimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?cnonimpl#cnonimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; cnonimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[37] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0xdf,0xc0,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
001ah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
001eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> cnonimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?cnonimpl#cnonimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; cnonimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
003eh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> cnonimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?cnonimpl#cnonimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; cnonimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
003eh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> xornot<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://logix/bitmatrix.ops?xornot#xornot_g[8u](bm8x8u~in,bm8x8u~in)
; xornot_g[8u](bm8x8u~in,bm8x8u~in)[104] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0x11,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd2,0x48,0x33,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x25,0x0b,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 11 ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0048h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
004bh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0051h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0056h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 0b d1 5e}
005bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0060h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> xornot<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://logix/bitmatrix.ops?xornot#xornot_g[16u](bm16x16u~in,bm16x16u~in)
; xornot_g[16u](bm16x16u~in,bm16x16u~in)[116] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x87,0x1d,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0x75,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x8c,0x0a,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 1d ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0047h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
004bh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
004fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0053h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0057h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
005fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 0a d1 5e}
0064h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0066h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0069h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0070h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> xornot<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://logix/bitmatrix.ops?xornot#xornot_g[32u](bm32x32u~in,bm32x32u~in)
; xornot_g[32u](bm32x32u~in,bm32x32u~in)[155] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x97,0x1d,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xf5,0x76,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xc7,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xc5,0x09,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 1d ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
0061h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0065h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0069h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
006ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0071h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0074h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0078h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
007ch jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
007eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0081h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0086h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 09 d1 5e}
008bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0090h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0093h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0097h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0098h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0099h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> xornot<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://logix/bitmatrix.ops?xornot#xornot_g[64u](bm64x64u~in,bm64x64u~in)
; xornot_g[64u](bm64x64u~in,bm64x64u~in)[156] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x87,0x1d,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc4,0xe2,0x75,0x29,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xc6,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x04,0x09,0xd1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 1d ff ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0062h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0066h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
006ah add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
006dh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0072h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0075h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0079h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
007dh jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
007fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0082h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0087h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 09 d1 5e}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0098h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0099h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> xornot<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?xornot#xornot_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; xornot_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd2,0x48,0x33,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0017h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> xornot<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?xornot#xornot_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; xornot_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[45] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0x75,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xef,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
001ah vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
001eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0022h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0026h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> xornot<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?xornot#xornot_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; xornot_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[85] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xf5,0x76,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xc8,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
002fh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0033h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0037h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003ah vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
003fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0042h add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
0046h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
004ah jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
004ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> xornot<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?xornot#xornot_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; xornot_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[86] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc4,0xe2,0x75,0x29,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xef,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xc7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0030h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0034h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0038h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003bh vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0040h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0043h add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
0047h cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
004bh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
004dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> select<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, in BitMatrix<byte> C), hex://logix/bitmatrix.ops?select#select_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~in)
; select_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~in)[121] = {0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x49,0x8b,0xe9,0x48,0x8d,0x4c,0x24,0x28,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x28,0xe8,0x83,0x05,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8b,0x4d,0x00,0x4c,0x8d,0x44,0x24,0x28,0x4d,0x8b,0x00,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x8b,0x09,0x48,0x23,0xd0,0xc4,0xe2,0xf8,0xf2,0xc1,0x48,0x0b,0xc2,0x49,0x89,0x00,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x28,0xe8,0xd5,0xfe,0xd0,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x38,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0012h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0015h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0018h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001bh mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
001eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0023h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0027h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
002bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0030h call 7ff7c8546508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 05 ff ff}
0035h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0038h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
003bh mov rcx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d 00}
003fh lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0044h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0047h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
004ah mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
004dh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0050h and rdx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d0}
0053h andn rax,rax,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c1}
0058h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
005bh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
005eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0061h lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
0066h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 fe d0 5e}
006bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0070h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> select<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, in BitMatrix<ushort> C), hex://logix/bitmatrix.ops?select#select_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~in)
; select_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~in)[221] = {0x57,0x56,0x55,0x53,0x48,0x81,0xec,0x98,0x00,0x00,0x00,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x84,0x24,0x88,0x00,0x00,0x00,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x49,0x8b,0xe9,0x48,0x8d,0x8c,0x24,0x88,0x00,0x00,0x00,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x8c,0x24,0x88,0x00,0x00,0x00,0xe8,0x27,0x11,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8b,0x4d,0x00,0x4c,0x8d,0x84,0x24,0x88,0x00,0x00,0x00,0x4d,0x8b,0x00,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x60,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x44,0x24,0x60,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x01,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x10,0x4c,0x24,0x40,0xc5,0xfd,0x10,0x54,0x24,0x20,0xc5,0xfc,0x28,0xd8,0xc5,0xe5,0xdb,0xc9,0xc5,0xfd,0xdf,0xc2,0xc5,0xf5,0xeb,0xc0,0xc4,0xc1,0x7e,0x7f,0x00,0x48,0x8b,0xfb,0x48,0x8d,0xb4,0x24,0x88,0x00,0x00,0x00,0xe8,0xd7,0xfd,0xd0,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x98,0x00,0x00,0x00,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,98h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0010h mov [rsp+88h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 84 24 88 00 00 00}
0018h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0021h mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0024h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0034h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
003ch call 7ff7c8547158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 11 ff ff}
0041h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0044h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0047h mov rcx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d 00}
004bh lea r8,[rsp+88h]                        ; LEA r64, m || REX.W 8D /r || encoded[8]{4c 8d 84 24 88 00 00 00}
0053h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0056h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
005ah vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0060h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0064h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
006ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
006eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0074h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0078h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
007eh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0082h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0088h vlddqu ymm0,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 01}
008ch vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0092h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
0098h vmovupd ymm1,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 40}
009eh vmovupd ymm2,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 54 24 20}
00a4h vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
00a8h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
00ach vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
00b0h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
00b4h vmovdqu ymmword ptr [r8],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 00}
00b9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00bch lea rsi,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 88 00 00 00}
00c4h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 fd d0 5e}
00c9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00cbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d1h add rsp,98h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 00 00 00}
00d8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00dah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00dbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00dch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> select<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, in BitMatrix<uint> C), hex://logix/bitmatrix.ops?select#select_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~in)
; select_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~in)[267] = {0x57,0x56,0x55,0x53,0x48,0x81,0xec,0x98,0x00,0x00,0x00,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x84,0x24,0x88,0x00,0x00,0x00,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x49,0x8b,0xe9,0x48,0x8d,0x8c,0x24,0x88,0x00,0x00,0x00,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x8c,0x24,0x88,0x00,0x00,0x00,0xe8,0xc7,0x10,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8b,0x4d,0x00,0x4c,0x8d,0x84,0x24,0x88,0x00,0x00,0x00,0x4d,0x8b,0x00,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0x4a,0x8d,0x2c,0x19,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x60,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x06,0xc5,0xfd,0x11,0x44,0x24,0x60,0xc5,0xff,0xf0,0x07,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x45,0x00,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x10,0x4c,0x24,0x40,0xc5,0xfd,0x10,0x54,0x24,0x20,0xc5,0xfc,0x28,0xd8,0xc5,0xe5,0xdb,0xc9,0xc5,0xfd,0xdf,0xc2,0xc5,0xf5,0xeb,0xc0,0x4d,0x03,0xd8,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x0f,0x8c,0x75,0xff,0xff,0xff,0x48,0x8b,0xfb,0x48,0x8d,0xb4,0x24,0x88,0x00,0x00,0x00,0xe8,0x99,0xfc,0xd0,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x98,0x00,0x00,0x00,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,98h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0010h mov [rsp+88h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 84 24 88 00 00 00}
0018h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0021h mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0024h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0034h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
003ch call 7ff7c8547208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 10 ff ff}
0041h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0044h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0047h mov rcx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d 00}
004bh lea r8,[rsp+88h]                        ; LEA r64, m || REX.W 8D /r || encoded[8]{4c 8d 84 24 88 00 00 00}
0053h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0056h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0059h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
005ch movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
005fh shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
0063h lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
0067h lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
006bh lea rbp,[rcx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 2c 19}
006fh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0073h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0079h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007dh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0083h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0087h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
008dh vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0091h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0097h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
009bh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
00a1h vlddqu ymm0,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 45 00}
00a6h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00ach vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00b2h vmovupd ymm1,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 40}
00b8h vmovupd ymm2,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 54 24 20}
00beh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
00c2h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
00c6h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
00cah vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
00ceh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
00d1h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
00d6h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00d9h add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
00ddh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00e1h jl near ptr 005ch                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 75 ff ff ff}
00e7h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00eah lea rsi,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 88 00 00 00}
00f2h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 fc d0 5e}
00f7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00f9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00fch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ffh add rsp,98h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 00 00 00}
0106h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0107h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0108h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0109h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> select<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, in BitMatrix<ulong> C), hex://logix/bitmatrix.ops?select#select_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~in)
; select_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~in)[267] = {0x57,0x56,0x55,0x53,0x48,0x81,0xec,0x98,0x00,0x00,0x00,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x84,0x24,0x88,0x00,0x00,0x00,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x49,0x8b,0xe9,0x48,0x8d,0x8c,0x24,0x88,0x00,0x00,0x00,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x8c,0x24,0x88,0x00,0x00,0x00,0xe8,0x37,0x10,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8b,0x4d,0x00,0x4c,0x8d,0x84,0x24,0x88,0x00,0x00,0x00,0x4d,0x8b,0x00,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0x4a,0x8d,0x2c,0x19,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x60,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x06,0xc5,0xfd,0x11,0x44,0x24,0x60,0xc5,0xff,0xf0,0x07,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x45,0x00,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfd,0x10,0x44,0x24,0x60,0xc5,0xfd,0x10,0x4c,0x24,0x40,0xc5,0xfd,0x10,0x54,0x24,0x20,0xc5,0xfc,0x28,0xd8,0xc5,0xe5,0xdb,0xc9,0xc5,0xfd,0xdf,0xc2,0xc5,0xf5,0xeb,0xc0,0x4d,0x03,0xd8,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x0f,0x8c,0x75,0xff,0xff,0xff,0x48,0x8b,0xfb,0x48,0x8d,0xb4,0x24,0x88,0x00,0x00,0x00,0xe8,0x59,0xfb,0xd0,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x98,0x00,0x00,0x00,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,98h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0010h mov [rsp+88h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 84 24 88 00 00 00}
0018h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0021h mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0024h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0034h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
003ch call 7ff7c85472b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 10 ff ff}
0041h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0044h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0047h mov rcx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d 00}
004bh lea r8,[rsp+88h]                        ; LEA r64, m || REX.W 8D /r || encoded[8]{4c 8d 84 24 88 00 00 00}
0053h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0056h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0059h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
005ch movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
005fh shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
0063h lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
0067h lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
006bh lea rbp,[rcx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 2c 19}
006fh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0073h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0079h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007dh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0083h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0087h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
008dh vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0091h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0097h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
009bh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
00a1h vlddqu ymm0,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 45 00}
00a6h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00ach vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00b2h vmovupd ymm1,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 40}
00b8h vmovupd ymm2,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 54 24 20}
00beh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
00c2h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
00c6h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
00cah vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
00ceh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
00d1h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
00d6h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00d9h add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
00ddh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
00e1h jl near ptr 005ch                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 75 ff ff ff}
00e7h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00eah lea rsi,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 88 00 00 00}
00f2h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 fb d0 5e}
00f7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00f9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00fch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ffh add rsp,98h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 00 00 00}
0106h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0107h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0108h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0109h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> select<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, in BitMatrix<byte> C, ref BitMatrix<byte> Z), hex://logix/bitmatrix.ops?select#select_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; select_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~in,bm8x8u~ref)[44] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x4d,0x8b,0x01,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x8b,0x09,0x48,0x23,0xd0,0xc4,0xe2,0xf8,0xf2,0xc1,0x48,0x0b,0xc2,0x49,0x89,0x00,0x49,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
0011h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0014h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0017h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
001ah and rdx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d0}
001dh andn rax,rax,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c1}
0022h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0025h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0028h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> select<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, in BitMatrix<ushort> C, ref BitMatrix<ushort> Z), hex://logix/bitmatrix.ops?select#select_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; select_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~in,bm16x16u~ref)[126] = {0x48,0x83,0xec,0x78,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x4d,0x8b,0x01,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x01,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x44,0x24,0x40,0xc5,0xfd,0x10,0x4c,0x24,0x20,0xc5,0xfd,0x10,0x14,0x24,0xc5,0xfc,0x28,0xd8,0xc5,0xe5,0xdb,0xc9,0xc5,0xfd,0xdf,0xc2,0xc5,0xf5,0xeb,0xc0,0xc4,0xc1,0x7e,0x7f,0x00,0x49,0x8b,0xc1,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x78,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,78h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 78}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000dh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0010h mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
0013h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0017h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
001dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0021h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0027h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
002bh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0030h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0034h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
003ah vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
003eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0044h vlddqu ymm0,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 01}
0048h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
004dh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0053h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
0059h vmovupd ymm2,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 14 24}
005eh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0062h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
0066h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
006ah vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
006eh vmovdqu ymmword ptr [r8],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 00}
0073h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0076h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0079h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
007dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> select<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, in BitMatrix<uint> C, ref BitMatrix<uint> Z), hex://logix/bitmatrix.ops?select#select_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; select_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~in,bm32x32u~ref)[179] = {0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x78,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x4d,0x8b,0x01,0x45,0x33,0xd2,0x45,0x33,0xdb,0x49,0x63,0xf3,0x48,0xc1,0xe6,0x02,0x48,0x8d,0x3c,0x30,0x48,0x8d,0x1c,0x32,0x48,0x8d,0x2c,0x31,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x07,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x03,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x45,0x00,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x44,0x24,0x40,0xc5,0xfd,0x10,0x4c,0x24,0x20,0xc5,0xfd,0x10,0x14,0x24,0xc5,0xfc,0x28,0xd8,0xc5,0xe5,0xdb,0xc9,0xc5,0xfd,0xdf,0xc2,0xc5,0xf5,0xeb,0xc0,0x49,0x03,0xf0,0xc5,0xfe,0x7f,0x06,0x41,0xff,0xc2,0x41,0x83,0xc3,0x08,0x41,0x83,0xfa,0x04,0x0f,0x8c,0x79,0xff,0xff,0xff,0x49,0x8b,0xc1,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x78,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,78h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 78}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000eh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0011h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0014h mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
0017h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001ah xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001dh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0020h shl rsi,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 02}
0024h lea rdi,[rax+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 30}
0028h lea rbx,[rdx+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 1c 32}
002ch lea rbp,[rcx+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 2c 31}
0030h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0034h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
003ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
003eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0044h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0048h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
004dh vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
0051h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0057h vlddqu ymm0,ymmword ptr [rbx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 03}
005bh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0061h vlddqu ymm0,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 45 00}
0066h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
006bh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0071h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
0077h vmovupd ymm2,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 14 24}
007ch vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0080h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
0084h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
0088h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
008ch add rsi,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f0}
008fh vmovdqu ymmword ptr [rsi],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 06}
0093h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0096h add r11d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c3 08}
009ah cmp r10d,4                              ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 fa 04}
009eh jl near ptr 001dh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 79 ff ff ff}
00a4h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
00a7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00aah add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00aeh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00afh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> select<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, in BitMatrix<ulong> C, ref BitMatrix<ulong> Z), hex://logix/bitmatrix.ops?select#select_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; select_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~in,bm64x64u~ref)[179] = {0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x78,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x4d,0x8b,0x01,0x45,0x33,0xd2,0x45,0x33,0xdb,0x49,0x63,0xf3,0x48,0xc1,0xe6,0x03,0x48,0x8d,0x3c,0x30,0x48,0x8d,0x1c,0x32,0x48,0x8d,0x2c,0x31,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xff,0xf0,0x07,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xff,0xf0,0x03,0xc5,0xfd,0x11,0x44,0x24,0x20,0xc5,0xff,0xf0,0x45,0x00,0xc5,0xfd,0x11,0x04,0x24,0xc5,0xfd,0x10,0x44,0x24,0x40,0xc5,0xfd,0x10,0x4c,0x24,0x20,0xc5,0xfd,0x10,0x14,0x24,0xc5,0xfc,0x28,0xd8,0xc5,0xe5,0xdb,0xc9,0xc5,0xfd,0xdf,0xc2,0xc5,0xf5,0xeb,0xc0,0x49,0x03,0xf0,0xc5,0xfe,0x7f,0x06,0x41,0xff,0xc2,0x41,0x83,0xc3,0x04,0x41,0x83,0xfa,0x10,0x0f,0x8c,0x79,0xff,0xff,0xff,0x49,0x8b,0xc1,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x78,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,78h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 78}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000eh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0011h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0014h mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
0017h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001ah xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001dh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0020h shl rsi,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 03}
0024h lea rdi,[rax+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 30}
0028h lea rbx,[rdx+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 1c 32}
002ch lea rbp,[rcx+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 2c 31}
0030h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0034h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
003ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
003eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0044h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0048h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
004dh vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
0051h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0057h vlddqu ymm0,ymmword ptr [rbx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 03}
005bh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0061h vlddqu ymm0,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 45 00}
0066h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
006bh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0071h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
0077h vmovupd ymm2,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 14 24}
007ch vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0080h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
0084h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
0088h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
008ch add rsi,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f0}
008fh vmovdqu ymmword ptr [rsi],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 06}
0093h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0096h add r11d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c3 04}
009ah cmp r10d,10h                            ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 fa 10}
009eh jl near ptr 001dh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 79 ff ff ff}
00a4h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
00a7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00aah add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00aeh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00afh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h ret                                     ; RET || C3 || encoded[1]{c3}
