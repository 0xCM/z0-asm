------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> true<byte>()
; true_g[39] = {56 48 83 ec 30 48 8b f1 b9 ff 00 00 00 88 4c 24 28 48 8b ce 0f b6 54 24 28 e8 12 66 ff ff 48 8b c6 48 83 c4 30 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
000dh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0011h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0014h movzx edx,byte ptr [rsp+28h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 28}
0019h call 7ff7c86fc600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 66 ff ff}
001eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0021h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> true<ushort>()
; true_g[40] = {56 48 83 ec 30 48 8b f1 b9 ff ff 00 00 66 89 4c 24 28 48 8b ce 0f b7 54 24 28 e8 29 7b ff ff 48 8b c6 48 83 c4 30 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
000dh mov [rsp+28h],cx                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 28}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h movzx edx,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 28}
001ah call 7ff7c86fdb58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 7b ff ff}
001fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0022h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0026h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> true<uint>()
; true_g[30] = {56 48 83 ec 20 48 8b f1 48 8b ce ba ff ff ff ff e8 23 80 ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0010h call 7ff7c86fe088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 80 ff ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> true<ulong>()
; true_g[35] = {56 48 83 ec 20 48 8b f1 48 8b ce 48 ba ff ff ff ff ff ff ff ff e8 a6 9b ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
0015h call 7ff7c86ffc50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 9b ff ff}
001ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> true<byte>(in BitMatrix<byte> A)
; true_gbm8x8u~in[39] = {56 48 83 ec 30 48 8b f1 b9 ff 00 00 00 88 4c 24 28 48 8b ce 0f b6 54 24 28 e8 52 64 ff ff 48 8b c6 48 83 c4 30 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
000dh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0011h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0014h movzx edx,byte ptr [rsp+28h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 28}
0019h call 7ff7c86fc600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 64 ff ff}
001eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0021h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> true<ushort>(in BitMatrix<ushort> A)
; true_gbm16x16u~in[40] = {56 48 83 ec 30 48 8b f1 b9 ff ff 00 00 66 89 4c 24 28 48 8b ce 0f b7 54 24 28 e8 59 75 ff ff 48 8b c6 48 83 c4 30 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
000dh mov [rsp+28h],cx                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 28}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h movzx edx,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 28}
001ah call 7ff7c86fdb58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 75 ff ff}
001fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0022h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0026h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> true<uint>(in BitMatrix<uint> A)
; true_gbm32x32u~in[30] = {56 48 83 ec 20 48 8b f1 48 8b ce ba ff ff ff ff e8 53 7a ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0010h call 7ff7c86fe088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 7a ff ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> true<ulong>(in BitMatrix<ulong> A)
; true_gbm64x64u~in[35] = {56 48 83 ec 20 48 8b f1 48 8b ce 48 ba ff ff ff ff ff ff ff ff e8 d6 95 ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
0015h call 7ff7c86ffc50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 95 ff ff}
001ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> true<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; true_gbm8x8u~in_bm8x8u~in[39] = {56 48 83 ec 30 48 8b f1 b9 ff 00 00 00 88 4c 24 28 48 8b ce 0f b6 54 24 28 e8 c2 49 ff ff 48 8b c6 48 83 c4 30 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
000dh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0011h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0014h movzx edx,byte ptr [rsp+28h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 28}
0019h call 7ff7c86fc600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 49 ff ff}
001eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0021h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> true<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; true_gbm16x16u~in_bm16x16u~in[40] = {56 48 83 ec 30 48 8b f1 b9 ff ff 00 00 66 89 4c 24 28 48 8b ce 0f b7 54 24 28 e8 d9 5e ff ff 48 8b c6 48 83 c4 30 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
000dh mov [rsp+28h],cx                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 28}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h movzx edx,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 28}
001ah call 7ff7c86fdb58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 5e ff ff}
001fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0022h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0026h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> true<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; true_gbm32x32u~in_bm32x32u~in[30] = {56 48 83 ec 20 48 8b f1 48 8b ce ba ff ff ff ff e8 d3 63 ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0010h call 7ff7c86fe088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 63 ff ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> true<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; true_gbm64x64u~in_bm64x64u~in[35] = {56 48 83 ec 20 48 8b f1 48 8b ce 48 ba ff ff ff ff ff ff ff ff e8 56 7f ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
0015h call 7ff7c86ffc50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 7f ff ff}
001ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> true<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z)
; true_gbm8x8u~in_bm8x8u~in_bm8x8u~ref[70] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 ba ff 00 00 00 e8 b3 9b 07 ff 48 8b c6 48 83 c4 30 5e c3}
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
0038h call 7ff7c7781d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 9b 07 ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> true<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
; true_gbm16x16u~in_bm16x16u~in_bm16x16u~ref[70] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 ba ff ff 00 00 e8 33 f4 67 ff 48 8b c6 48 83 c4 30 5e c3}
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
0038h call 7ff7c7d875f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f4 67 ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> true<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z)
; true_gbm32x32u~in_bm32x32u~in_bm32x32u~ref[70] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 ba ff ff ff ff e8 63 05 68 ff 48 8b c6 48 83 c4 30 5e c3}
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
0038h call 7ff7c7d88780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 05 68 ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> true<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
; true_gbm64x64u~in_bm64x64u~in_bm64x64u~ref[75] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 48 ba ff ff ff ff ff ff ff ff e8 ce 00 68 ff 48 8b c6 48 83 c4 30 5e c3}
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
003dh call 7ff7c7d88350h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 00 68 ff}
0042h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0045h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
