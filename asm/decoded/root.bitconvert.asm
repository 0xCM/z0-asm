------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<byte>(in byte src), hex://root/BitConvert?GetBytes#GetBytes_g[8u](8u~in)
; GetBytes_g[8u](8u~in)[62] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x01,0x00,0x00,0x00,0xe8,0xc0,0x9e,0xbb,0x5e,0x48,0x83,0xc0,0x10,0xba,0x01,0x00,0x00,0x00,0x0f,0xb6,0x0f,0x88,0x08,0x48,0x89,0x06,0x89,0x56,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000ch mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0016h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
001bh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 9e bb 5e}
0020h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0024h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0029h movzx ecx,byte ptr [rdi]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 0f}
002ch mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
002eh mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0031h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0034h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0037h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<sbyte>(in sbyte src), hex://root/BitConvert?GetBytes#GetBytes_g[8i](8i~in)
; GetBytes_g[8i](8i~in)[63] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x01,0x00,0x00,0x00,0xe8,0x60,0x9e,0xbb,0x5e,0x48,0x83,0xc0,0x10,0xba,0x01,0x00,0x00,0x00,0x48,0x0f,0xbe,0x0f,0x88,0x08,0x48,0x89,0x06,0x89,0x56,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000ch mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0016h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
001bh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 9e bb 5e}
0020h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0024h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0029h movsx rcx,byte ptr [rdi]                ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be 0f}
002dh mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
002fh mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0032h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0035h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0038h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<ushort>(in ushort src), hex://root/BitConvert?GetBytes#GetBytes_g[16u](16u~in)
; GetBytes_g[16u](16u~in)[63] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x00,0x9e,0xbb,0x5e,0x48,0x83,0xc0,0x10,0xba,0x02,0x00,0x00,0x00,0x0f,0xb7,0x0f,0x66,0x89,0x08,0x48,0x89,0x06,0x89,0x56,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000ch mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0016h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001bh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 9e bb 5e}
0020h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0024h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0029h movzx ecx,word ptr [rdi]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 0f}
002ch mov [rax],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 08}
002fh mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0032h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0035h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0038h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<short>(in short src), hex://root/BitConvert?GetBytes#GetBytes_g[16i](16i~in)
; GetBytes_g[16i](16i~in)[64] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xa0,0x99,0xbb,0x5e,0x48,0x83,0xc0,0x10,0xba,0x02,0x00,0x00,0x00,0x48,0x0f,0xbf,0x0f,0x66,0x89,0x08,0x48,0x89,0x06,0x89,0x56,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000ch mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0016h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001bh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 99 bb 5e}
0020h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0024h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0029h movsx rcx,word ptr [rdi]                ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf 0f}
002dh mov [rax],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 08}
0030h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0033h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0036h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0039h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<uint>(in uint src), hex://root/BitConvert?GetBytes#GetBytes_g[32u](32u~in)
; GetBytes_g[32u](32u~in)[61] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x04,0x00,0x00,0x00,0xe8,0x40,0x99,0xbb,0x5e,0x48,0x83,0xc0,0x10,0xba,0x04,0x00,0x00,0x00,0x8b,0x0f,0x89,0x08,0x48,0x89,0x06,0x89,0x56,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000ch mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0016h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
001bh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 99 bb 5e}
0020h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0024h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0029h mov ecx,[rdi]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 0f}
002bh mov [rax],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 08}
002dh mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0030h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0033h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0036h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<int>(in int src), hex://root/BitConvert?GetBytes#GetBytes_g[32i](32i~in)
; GetBytes_g[32i](32i~in)[61] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x04,0x00,0x00,0x00,0xe8,0xe0,0x98,0xbb,0x5e,0x48,0x83,0xc0,0x10,0xba,0x04,0x00,0x00,0x00,0x8b,0x0f,0x89,0x08,0x48,0x89,0x06,0x89,0x56,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000ch mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0016h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
001bh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 98 bb 5e}
0020h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0024h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0029h mov ecx,[rdi]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 0f}
002bh mov [rax],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 08}
002dh mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0030h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0033h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0036h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<ulong>(in ulong src), hex://root/BitConvert?GetBytes#GetBytes_g[64u](64u~in)
; GetBytes_g[64u](64u~in)[63] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x08,0x00,0x00,0x00,0xe8,0x80,0x98,0xbb,0x5e,0x48,0x83,0xc0,0x10,0xba,0x08,0x00,0x00,0x00,0x48,0x8b,0x0f,0x48,0x89,0x08,0x48,0x89,0x06,0x89,0x56,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000ch mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0016h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
001bh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 98 bb 5e}
0020h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0024h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0029h mov rcx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0f}
002ch mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
002fh mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0032h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0035h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0038h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<long>(in long src), hex://root/BitConvert?GetBytes#GetBytes_g[64i](64i~in)
; GetBytes_g[64i](64i~in)[63] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x08,0x00,0x00,0x00,0xe8,0x20,0x98,0xbb,0x5e,0x48,0x83,0xc0,0x10,0xba,0x08,0x00,0x00,0x00,0x48,0x8b,0x0f,0x48,0x89,0x08,0x48,0x89,0x06,0x89,0x56,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000ch mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0016h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
001bh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 98 bb 5e}
0020h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0024h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0029h mov rcx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0f}
002ch mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
002fh mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0032h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0035h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0038h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<float>(in float src), hex://root/BitConvert?GetBytes#GetBytes_g[32f](32f~in)
; GetBytes_g[32f](32f~in)[68] = {0x57,0x56,0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x04,0x00,0x00,0x00,0xe8,0xbd,0x97,0xbb,0x5e,0x48,0x83,0xc0,0x10,0xba,0x04,0x00,0x00,0x00,0xc5,0xfa,0x10,0x07,0xc5,0xfa,0x11,0x00,0x48,0x89,0x06,0x89,0x56,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0019h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 97 bb 5e}
0023h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0027h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
002ch vmovss xmm0,dword ptr [rdi]             ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[4]{c5 fa 10 07}
0030h vmovss dword ptr [rax],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 00}
0034h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0037h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
003ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<double>(in double src), hex://root/BitConvert?GetBytes#GetBytes_g[64f](64f~in)
; GetBytes_g[64f](64f~in)[68] = {0x57,0x56,0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x08,0x00,0x00,0x00,0xe8,0x5d,0x97,0xbb,0x5e,0x48,0x83,0xc0,0x10,0xba,0x08,0x00,0x00,0x00,0xc5,0xfb,0x10,0x07,0xc5,0xfb,0x11,0x00,0x48,0x89,0x06,0x89,0x56,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0019h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 97 bb 5e}
0023h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0027h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
002ch vmovsd xmm0,qword ptr [rdi]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[4]{c5 fb 10 07}
0030h vmovsd qword ptr [rax],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 00}
0034h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0037h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
003ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<byte>(in byte src, Span<byte> dst), hex://root/BitConvert?GetBytes#GetBytes_g[8u](8u~in,span8u)
; GetBytes_g[8u](8u~in,span8u)[36] = {0x48,0x83,0xec,0x18,0x33,0xc0,0x48,0x89,0x44,0x24,0x08,0x48,0x8b,0x02,0x8b,0x52,0x08,0x0f,0xb6,0x09,0x88,0x08,0x48,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_SBB
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
000bh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0011h movzx ecx,byte ptr [rcx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 09}
0014h mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
0016h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
001bh mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
001fh add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<sbyte>(in sbyte src, Span<byte> dst), hex://root/BitConvert?GetBytes#GetBytes_g[8i](8i~in,span8u)
; GetBytes_g[8i](8i~in,span8u)[37] = {0x48,0x83,0xec,0x18,0x33,0xc0,0x48,0x89,0x44,0x24,0x08,0x48,0x8b,0x02,0x8b,0x52,0x08,0x48,0x0f,0xbe,0x09,0x88,0x08,0x48,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
000bh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0011h movsx rcx,byte ptr [rcx]                ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be 09}
0015h mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
0017h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
001ch mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0020h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<ushort>(in ushort src, Span<byte> dst), hex://root/BitConvert?GetBytes#GetBytes_g[16u](16u~in,span8u)
; GetBytes_g[16u](16u~in,span8u)[37] = {0x48,0x83,0xec,0x18,0x33,0xc0,0x48,0x89,0x44,0x24,0x08,0x48,0x8b,0x02,0x8b,0x52,0x08,0x0f,0xb7,0x09,0x66,0x89,0x08,0x48,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
000bh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0011h movzx ecx,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 09}
0014h mov [rax],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 08}
0017h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
001ch mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0020h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<short>(in short src, Span<byte> dst), hex://root/BitConvert?GetBytes#GetBytes_g[16i](16i~in,span8u)
; GetBytes_g[16i](16i~in,span8u)[38] = {0x48,0x83,0xec,0x18,0x33,0xc0,0x48,0x89,0x44,0x24,0x08,0x48,0x8b,0x02,0x8b,0x52,0x08,0x48,0x0f,0xbf,0x09,0x66,0x89,0x08,0x48,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
000bh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0011h movsx rcx,word ptr [rcx]                ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf 09}
0015h mov [rax],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 08}
0018h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
001dh mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0021h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<uint>(in uint src, Span<byte> dst), hex://root/BitConvert?GetBytes#GetBytes_g[32u](32u~in,span8u)
; GetBytes_g[32u](32u~in,span8u)[35] = {0x48,0x83,0xec,0x18,0x33,0xc0,0x48,0x89,0x44,0x24,0x08,0x48,0x8b,0x02,0x8b,0x52,0x08,0x8b,0x09,0x89,0x08,0x48,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
000bh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0011h mov ecx,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 09}
0013h mov [rax],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 08}
0015h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
001ah mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
001eh add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<int>(in int src, Span<byte> dst), hex://root/BitConvert?GetBytes#GetBytes_g[32i](32i~in,span8u)
; GetBytes_g[32i](32i~in,span8u)[35] = {0x48,0x83,0xec,0x18,0x33,0xc0,0x48,0x89,0x44,0x24,0x08,0x48,0x8b,0x02,0x8b,0x52,0x08,0x8b,0x09,0x89,0x08,0x48,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
000bh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0011h mov ecx,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 09}
0013h mov [rax],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 08}
0015h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
001ah mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
001eh add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<ulong>(in ulong src, Span<byte> dst), hex://root/BitConvert?GetBytes#GetBytes_g[64u](64u~in,span8u)
; GetBytes_g[64u](64u~in,span8u)[37] = {0x48,0x83,0xec,0x18,0x33,0xc0,0x48,0x89,0x44,0x24,0x08,0x48,0x8b,0x02,0x8b,0x52,0x08,0x48,0x8b,0x09,0x48,0x89,0x08,0x48,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
000bh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0011h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0014h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0017h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
001ch mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0020h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<long>(in long src, Span<byte> dst), hex://root/BitConvert?GetBytes#GetBytes_g[64i](64i~in,span8u)
; GetBytes_g[64i](64i~in,span8u)[37] = {0x48,0x83,0xec,0x18,0x33,0xc0,0x48,0x89,0x44,0x24,0x08,0x48,0x8b,0x02,0x8b,0x52,0x08,0x48,0x8b,0x09,0x48,0x89,0x08,0x48,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
000bh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0011h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0014h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0017h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
001ch mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0020h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<float>(in float src, Span<byte> dst), hex://root/BitConvert?GetBytes#GetBytes_g[32f](32f~in,span8u)
; GetBytes_g[32f](32f~in,span8u)[42] = {0x48,0x83,0xec,0x18,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x08,0x48,0x8b,0x02,0x8b,0x52,0x08,0xc5,0xfa,0x10,0x01,0xc5,0xfa,0x11,0x00,0x48,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
000eh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0011h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0014h vmovss xmm0,dword ptr [rcx]             ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[4]{c5 fa 10 01}
0018h vmovss dword ptr [rax],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 00}
001ch mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0021h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0025h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<double>(in double src, Span<byte> dst), hex://root/BitConvert?GetBytes#GetBytes_g[64f](64f~in,span8u)
; GetBytes_g[64f](64f~in,span8u)[42] = {0x48,0x83,0xec,0x18,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x08,0x48,0x8b,0x02,0x8b,0x52,0x08,0xc5,0xfb,0x10,0x01,0xc5,0xfb,0x11,0x00,0x48,0x89,0x44,0x24,0x08,0x89,0x54,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
000eh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0011h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0014h vmovsd xmm0,qword ptr [rcx]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[4]{c5 fb 10 01}
0018h vmovsd qword ptr [rax],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 00}
001ch mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0021h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0025h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short ToInt16(ReadOnlySpan<byte> src, int offset), hex://root/BitConvert?ToInt16#ToInt16_(uspan8u,32i)
; ToInt16_(uspan8u,32i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x0f,0xbf,0x04,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh movsx rax,word ptr [rax+rdx]            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 04 10}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort ToUInt16(ReadOnlySpan<byte> src, int offset), hex://root/BitConvert?ToUInt16#ToUInt16_(uspan8u,32i)
; ToUInt16_(uspan8u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x0f,0xb7,0x04,0x10,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh movzx eax,word ptr [rax+rdx]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 04 10}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ToInt32(ReadOnlySpan<byte> src, int offset), hex://root/BitConvert?ToInt32#ToInt32_(uspan8u,32i)
; ToInt32_(uspan8u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x8b,0x04,0x10,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov eax,[rax+rdx]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 10}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint ToUInt32(ReadOnlySpan<byte> src, int offset), hex://root/BitConvert?ToUInt32#ToUInt32_(uspan8u,32i)
; ToUInt32_(uspan8u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x8b,0x04,0x10,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov eax,[rax+rdx]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 10}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long ToInt64(ReadOnlySpan<byte> src, int offset), hex://root/BitConvert?ToInt64#ToInt64_(uspan8u,32i)
; ToInt64_(uspan8u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0x10,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 10}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong ToUInt64(ReadOnlySpan<byte> src, int offset), hex://root/BitConvert?ToUInt64#ToUInt64_(uspan8u,32i)
; ToUInt64_(uspan8u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0x10,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 10}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float ToSingle(int src), hex://root/BitConvert?ToSingle#ToSingle_(32i)
; ToSingle_(32i)[20] = {0x50,0xc5,0xf8,0x77,0x90,0x89,0x4c,0x24,0x04,0xc5,0xfa,0x10,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
0009h vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
000fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float ToSingle(uint src), hex://root/BitConvert?ToSingle#ToSingle_(32u)
; ToSingle_(32u)[20] = {0x50,0xc5,0xf8,0x77,0x90,0x89,0x4c,0x24,0x04,0xc5,0xfa,0x10,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
0009h vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
000fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double ToDouble(long src), hex://root/BitConvert?ToDouble#ToDouble_(64i)
; ToDouble_(64i)[19] = {0x50,0xc5,0xf8,0x77,0x90,0x48,0x89,0x0c,0x24,0xc5,0xfb,0x10,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 0c 24}
0009h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
000eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double ToDouble(ulong src), hex://root/BitConvert?ToDouble#ToDouble_(64u)
; ToDouble_(64u)[19] = {0x50,0xc5,0xf8,0x77,0x90,0x48,0x89,0x0c,0x24,0xc5,0xfb,0x10,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 0c 24}
0009h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
000eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ToInt32(float src), hex://root/BitConvert?ToInt32#ToInt32_(32f)
; ToInt32_(32f)[20] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
000fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint ToUInt32(float src), hex://root/BitConvert?ToUInt32#ToUInt32_(32f)
; ToUInt32_(32f)[20] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
000fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long ToInt64(double src), hex://root/BitConvert?ToInt64#ToInt64_(64f)
; ToInt64_(64f)[19] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfb,0x11,0x04,0x24,0x48,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
000ah mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
000eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong ToUInt64(double src), hex://root/BitConvert?ToUInt64#ToUInt64_(64f)
; ToUInt64_(64f)[19] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfb,0x11,0x04,0x24,0x48,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
000ah mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
000eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
