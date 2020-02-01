------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<char> bitchars<byte>(in byte src)
; bitchars_g8u(in)[97] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 36 6f c6 f7 7f 00 00 ba 08 00 00 00 e8 9d d4 fb 5e 0f b6 17 48 8d 48 10 0f b6 d2 c1 e2 04 48 63 d2 49 b8 b5 9e 83 cc be 01 00 00 49 03 d0 c5 fa 6f 02 c5 fa 7f 01 48 83 c0 10 ba 08 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0019h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d d4 fb 5e}
0023h movzx edx,byte ptr [rdi]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 17}
0026h lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
002ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002dh shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0030h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0033h mov r8,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 b5 9e 83 cc be 01 00 00}
003dh add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
0040h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0044h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0048h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
004ch mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0051h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0054h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0057h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
005ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0060h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<char> bitchars<sbyte>(in sbyte src)
; bitchars_g8i(in)[102] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 36 6f c6 f7 7f 00 00 ba 08 00 00 00 e8 fd d3 fb 5e 48 0f be 17 48 8d 48 10 48 0f be d2 0f b6 d2 c1 e2 04 48 63 d2 49 b8 b5 9e 83 cc be 01 00 00 49 03 d0 c5 fa 6f 02 c5 fa 7f 01 48 83 c0 10 ba 08 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0019h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd d3 fb 5e}
0023h movsx rdx,byte ptr [rdi]                ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be 17}
0027h lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
002bh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
002fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0032h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0035h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0038h mov r8,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 b5 9e 83 cc be 01 00 00}
0042h add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
0045h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0049h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004dh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0051h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0056h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0059h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
005ch mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
005fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0063h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0064h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0065h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<char> bitchars<ushort>(in ushort src)
; bitchars_g16u(in)[144] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 36 6f c6 f7 7f 00 00 ba 10 00 00 00 e8 7d d3 fb 5e 0f b7 17 48 8d 48 10 0f b7 d2 44 0f b6 c2 41 c1 e0 04 4d 63 c0 49 b9 b5 9e 83 cc be 01 00 00 4d 03 c1 4c 8b c9 c4 c1 7a 6f 00 c4 c1 7a 7f 01 c1 fa 08 0f b6 d2 c1 e2 04 48 63 d2 49 b8 b5 9e 83 cc be 01 00 00 49 03 d0 48 83 c1 10 c5 fa 6f 02 c5 fa 7f 01 48 83 c0 10 ba 10 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0019h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d d3 fb 5e}
0023h movzx edx,word ptr [rdi]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 17}
0026h lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
002ah movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002dh movzx r8d,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c2}
0031h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
0035h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0038h mov r9,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 b5 9e 83 cc be 01 00 00}
0042h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0045h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0048h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
004dh vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
0052h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0055h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0058h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
005bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
005eh mov r8,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 b5 9e 83 cc be 01 00 00}
0068h add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
006bh add rcx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 10}
006fh vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0073h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0077h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
007bh mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
0080h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0083h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0086h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0089h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<char> bitchars<short>(in short src)
; bitchars_g16i(in)[149] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 36 6f c6 f7 7f 00 00 ba 10 00 00 00 e8 cd d2 fb 5e 48 0f bf 17 48 8d 48 10 48 0f bf d2 0f b7 d2 44 0f b6 c2 41 c1 e0 04 4d 63 c0 49 b9 b5 9e 83 cc be 01 00 00 4d 03 c1 4c 8b c9 c4 c1 7a 6f 00 c4 c1 7a 7f 01 c1 fa 08 0f b6 d2 c1 e2 04 48 63 d2 49 b8 b5 9e 83 cc be 01 00 00 49 03 d0 48 83 c1 10 c5 fa 6f 02 c5 fa 7f 01 48 83 c0 10 ba 10 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0019h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd d2 fb 5e}
0023h movsx rdx,word ptr [rdi]                ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf 17}
0027h lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
002bh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
002fh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0032h movzx r8d,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c2}
0036h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
003ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
003dh mov r9,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 b5 9e 83 cc be 01 00 00}
0047h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
004ah mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
004dh vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0052h vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
0057h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
005ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
005dh shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0060h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0063h mov r8,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 b5 9e 83 cc be 01 00 00}
006dh add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
0070h add rcx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 10}
0074h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0078h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
007ch add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0080h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
0085h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0088h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
008bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
008eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0092h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0093h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0094h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<char> bitchars<uint>(in uint src)
; bitchars_g32u(in)[136] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 36 6f c6 f7 7f 00 00 ba 20 00 00 00 e8 1d d2 fb 5e 8b 17 4c 8d 40 10 45 33 c9 41 8b c9 c1 e1 03 44 8b d2 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 ba 20 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0019h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d d2 fb 5e}
0023h mov edx,[rdi]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 17}
0025h lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
0029h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
002ch mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
002fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0032h mov r10d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d2}
0035h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0038h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
003ch shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
003fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0042h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
004ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
004fh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0052h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0056h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0059h lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
005dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0061h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0066h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0069h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
006dh jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
006fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0073h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0078h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
007bh mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
007eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0081h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0085h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0086h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0087h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<char> bitchars<int>(in int src)
; bitchars_g32i(in)[136] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 36 6f c6 f7 7f 00 00 ba 20 00 00 00 e8 6d d1 fb 5e 8b 17 4c 8d 40 10 45 33 c9 41 8b c9 c1 e1 03 44 8b d2 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 ba 20 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0019h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d d1 fb 5e}
0023h mov edx,[rdi]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 17}
0025h lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
0029h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
002ch mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
002fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0032h mov r10d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d2}
0035h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0038h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
003ch shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
003fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0042h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
004ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
004fh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0052h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0056h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0059h lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
005dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0061h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0066h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0069h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
006dh jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
006fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0073h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0078h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
007bh mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
007eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0081h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0085h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0086h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0087h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<char> bitchars<ulong>(in ulong src)
; bitchars_g64u(in)[137] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 36 6f c6 f7 7f 00 00 ba 40 00 00 00 e8 bd d0 fb 5e 48 8b 17 4c 8d 40 10 45 33 c9 41 8b c9 c1 e1 03 4c 8b d2 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 ba 40 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0019h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd d0 fb 5e}
0023h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0026h lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
002ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
002dh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0030h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0033h mov r10,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d2}
0036h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0039h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
003dh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0040h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0043h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
004dh add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
0050h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0053h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0057h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
005ah lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
005eh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0062h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0067h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
006ah cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
006eh jl short 002dh                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
0070h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0074h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0079h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
007ch mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
007fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0082h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<char> bitchars<long>(in long src)
; bitchars_g64i(in)[137] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 36 6f c6 f7 7f 00 00 ba 40 00 00 00 e8 0d d0 fb 5e 48 8b 17 4c 8d 40 10 45 33 c9 41 8b c9 c1 e1 03 4c 8b d2 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 ba 40 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0019h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d d0 fb 5e}
0023h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0026h lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
002ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
002dh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0030h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0033h mov r10,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d2}
0036h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0039h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
003dh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0040h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0043h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
004dh add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
0050h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0053h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0057h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
005ah lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
005eh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0062h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0067h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
006ah cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
006eh jl short 002dh                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
0070h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0074h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0079h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
007ch mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
007fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0082h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<char> bitchars<float>(in float src)
; bitchars_g32f(in)[149] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 36 6f c6 f7 7f 00 00 ba 20 00 00 00 e8 5d cf fb 5e c5 fa 10 07 48 8d 50 10 c5 fa 11 44 24 24 44 8b 44 24 24 45 33 c9 41 8b c9 c1 e1 03 45 8b d0 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 ba 20 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0019h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d cf fb 5e}
0023h vmovss xmm0,dword ptr [rdi]             ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[4]{c5 fa 10 07}
0027h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002bh vmovss dword ptr [rsp+24h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 24}
0031h mov r8d,[rsp+24h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 24}
0036h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0039h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
003ch shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
003fh mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0042h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0045h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0049h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
004ch movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
004fh mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
0059h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
005ch mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
005fh shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0063h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0066h lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
006ah vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
006eh vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0073h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0076h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
007ah jl short 0039h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
007ch add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0080h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0085h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0088h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
008bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
008eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0092h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0093h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0094h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<char> bitchars<double>(in double src)
; bitchars_g64f(in)[149] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 36 6f c6 f7 7f 00 00 ba 40 00 00 00 e8 ad ce fb 5e c5 fb 10 07 48 8d 50 10 c5 fb 11 44 24 20 4c 8b 44 24 20 45 33 c9 41 8b c9 c1 e1 03 4d 8b d0 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 ba 40 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0019h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad ce fb 5e}
0023h vmovsd xmm0,qword ptr [rdi]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[4]{c5 fb 10 07}
0027h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002bh vmovsd qword ptr [rsp+20h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 20}
0031h mov r8,[rsp+20h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 20}
0036h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0039h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
003ch shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
003fh mov r10,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d0}
0042h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0045h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0049h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
004ch movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
004fh mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
0059h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
005ch mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
005fh shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0063h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0066h lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
006ah vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
006eh vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0073h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0076h cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
007ah jl short 0039h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
007ch add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0080h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0085h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0088h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
008bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
008eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0092h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0093h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0094h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<byte>(ReadOnlySpan<byte> src, int maxlen)
; bitchars_gspan8u[336] = {41 57 41 56 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 44 24 70 48 8b f9 48 8b f2 8b 5e 08 8b d3 c1 e2 03 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 dc c9 fb 5e 48 8d 68 10 44 8b 70 08 48 8b 36 45 33 ff 85 db 0f 8e 8a 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 08 00 00 00 e8 b2 c9 fb 5e 4d 63 c7 46 0f b6 04 06 48 8d 48 10 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba b5 9e 83 cc be 01 00 00 4c 03 c2 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 08 00 00 00 48 8b d0 41 8b cf c1 e1 03 41 3b ce 0f 87 91 00 00 00 41 8b c6 2b c1 48 63 c9 48 8d 4c 4d 00 44 3b c0 0f 87 81 00 00 00 4d 63 c0 49 d1 e0 e8 b8 ea ff 4e 41 ff c7 44 3b fb 0f 8c 76 ff ff ff 80 7c 24 70 00 74 1b 48 8d 44 24 70 0f b6 10 8b 40 04 44 3b f0 0f 9d c0 0f b6 c0 0f b6 d2 85 c2 75 17 48 89 2f 44 89 77 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 80 7c 24 70 00 74 30 8b 44 24 74 8b d0 41 8b ce 48 3b d1 77 28 48 89 2f 89 47 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 e8 2b 84 4b ff cc e8 2d 84 4b ff cc e8 4f 85 4b ff cc e8 19 84 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh mov [rsp+70h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 70}
0014h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
001dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001fh shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0022h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0025h mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
002fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c9 fb 5e}
0034h lea rbp,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 68 10}
0038h mov r14d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 70 08}
003ch mov rsi,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 36}
003fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0042h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0044h jle near ptr 00d4h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e 8a 00 00 00}
004ah mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0054h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0059h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c9 fb 5e}
005eh movsxd r8,r15d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c7}
0061h movzx r8d,byte ptr [rsi+r8]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 04 06}
0066h lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
006ah movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
006eh shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
0072h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0075h mov rdx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b5 9e 83 cc be 01 00 00}
007fh add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
0082h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0087h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
008bh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
008fh mov r8d,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 08 00 00 00}
0095h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0098h mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
009bh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
009eh cmp ecx,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ce}
00a1h ja near ptr 0138h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 91 00 00 00}
00a7h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00aah sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00ach movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00afh lea rcx,[rbp+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 4d 00}
00b4h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00b7h ja near ptr 013eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 81 00 00 00}
00bdh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00c0h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00c3h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 ea ff 4e}
00c8h inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
00cbh cmp r15d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b fb}
00ceh jl near ptr 004ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 76 ff ff ff}
00d4h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
00d9h je short 00f6h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
00dbh lea rax,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 70}
00e0h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
00e3h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
00e6h cmp r14d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f0}
00e9h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00ech movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00efh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00f2h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
00f4h jne short 010dh                         ; JNE rel8 || 75 cb || encoded[2]{75 17}
00f6h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
00f9h mov [rdi+8],r14d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 77 08}
00fdh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0100h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0104h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0105h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0106h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0107h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0108h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
010ah pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
010ch ret                                     ; RET || C3 || encoded[1]{c3}
010dh cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0112h je short 0144h                          ; JE rel8 || 74 cb || encoded[2]{74 30}
0114h mov eax,[rsp+74h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 74}
0118h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
011ah mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
011dh cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
0120h ja short 014ah                          ; JA rel8 || 77 cb || encoded[2]{77 28}
0122h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0125h mov [rdi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 47 08}
0128h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
012bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
012fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0130h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0131h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0132h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0133h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0135h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0137h ret                                     ; RET || C3 || encoded[1]{c3}
0138h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 84 4b ff}
013dh int 3                                   ; INT3 || CC || encoded[1]{cc}
013eh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 84 4b ff}
0143h int 3                                   ; INT3 || CC || encoded[1]{cc}
0144h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 85 4b ff}
0149h int 3                                   ; INT3 || CC || encoded[1]{cc}
014ah call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 84 4b ff}
014fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<sbyte>(ReadOnlySpan<sbyte> src, int maxlen)
; bitchars_gspan8i[340] = {41 57 41 56 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 44 24 70 48 8b f9 48 8b f2 8b 5e 08 8b d3 c1 e2 03 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 5c c8 fb 5e 48 8d 68 10 44 8b 70 08 48 8b 36 45 33 ff 85 db 0f 8e 8e 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 08 00 00 00 e8 32 c8 fb 5e 4d 63 c7 4e 0f be 04 06 48 8d 48 10 4d 0f be c0 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba b5 9e 83 cc be 01 00 00 4c 03 c2 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 08 00 00 00 48 8b d0 41 8b cf c1 e1 03 41 3b ce 0f 87 91 00 00 00 41 8b c6 2b c1 48 63 c9 48 8d 4c 4d 00 44 3b c0 0f 87 81 00 00 00 4d 63 c0 49 d1 e0 e8 34 e9 ff 4e 41 ff c7 44 3b fb 0f 8c 72 ff ff ff 80 7c 24 70 00 74 1b 48 8d 44 24 70 0f b6 10 8b 40 04 44 3b f0 0f 9d c0 0f b6 c0 0f b6 d2 85 c2 75 17 48 89 2f 44 89 77 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 80 7c 24 70 00 74 30 8b 44 24 74 8b d0 41 8b ce 48 3b d1 77 28 48 89 2f 89 47 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 e8 a7 82 4b ff cc e8 a9 82 4b ff cc e8 cb 83 4b ff cc e8 95 82 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh mov [rsp+70h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 70}
0014h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
001dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001fh shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0022h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0025h mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
002fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c8 fb 5e}
0034h lea rbp,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 68 10}
0038h mov r14d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 70 08}
003ch mov rsi,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 36}
003fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0042h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0044h jle near ptr 00d8h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e 8e 00 00 00}
004ah mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0054h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0059h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 c8 fb 5e}
005eh movsxd r8,r15d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c7}
0061h movsx r8,byte ptr [rsi+r8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 04 06}
0066h lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
006ah movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
006eh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0072h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
0076h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0079h mov rdx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b5 9e 83 cc be 01 00 00}
0083h add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
0086h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
008bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
008fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0093h mov r8d,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 08 00 00 00}
0099h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
009ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
009fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
00a2h cmp ecx,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ce}
00a5h ja near ptr 013ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 91 00 00 00}
00abh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00aeh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00b0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00b3h lea rcx,[rbp+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 4d 00}
00b8h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00bbh ja near ptr 0142h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 81 00 00 00}
00c1h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00c4h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00c7h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e9 ff 4e}
00cch inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
00cfh cmp r15d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b fb}
00d2h jl near ptr 004ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 72 ff ff ff}
00d8h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
00ddh je short 00fah                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
00dfh lea rax,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 70}
00e4h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
00e7h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
00eah cmp r14d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f0}
00edh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00f0h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f3h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00f6h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
00f8h jne short 0111h                         ; JNE rel8 || 75 cb || encoded[2]{75 17}
00fah mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
00fdh mov [rdi+8],r14d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 77 08}
0101h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0104h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0108h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0109h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
010ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ch pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
010eh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0110h ret                                     ; RET || C3 || encoded[1]{c3}
0111h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0116h je short 0148h                          ; JE rel8 || 74 cb || encoded[2]{74 30}
0118h mov eax,[rsp+74h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 74}
011ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
011eh mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
0121h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
0124h ja short 014eh                          ; JA rel8 || 77 cb || encoded[2]{77 28}
0126h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0129h mov [rdi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 47 08}
012ch mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
012fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0133h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0134h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0135h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0136h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0137h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0139h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
013bh ret                                     ; RET || C3 || encoded[1]{c3}
013ch call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 82 4b ff}
0141h int 3                                   ; INT3 || CC || encoded[1]{cc}
0142h call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 82 4b ff}
0147h int 3                                   ; INT3 || CC || encoded[1]{cc}
0148h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 83 4b ff}
014dh int 3                                   ; INT3 || CC || encoded[1]{cc}
014eh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 82 4b ff}
0153h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<ushort>(ReadOnlySpan<ushort> src, int maxlen)
; bitchars_gspan16u[383] = {41 57 41 56 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 44 24 70 48 8b f9 48 8b f2 8b 5e 08 8b d3 c1 e2 04 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 dc c6 fb 5e 48 8d 68 10 44 8b 70 08 48 8b 36 45 33 ff 85 db 0f 8e b9 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 10 00 00 00 e8 b2 c6 fb 5e 4d 63 c7 46 0f b7 04 46 48 8d 48 10 45 0f b7 c0 41 0f b6 d0 c1 e2 04 48 63 d2 49 b9 b5 9e 83 cc be 01 00 00 49 03 d1 4c 8b c9 c5 fa 6f 02 c4 c1 7a 7f 01 41 c1 f8 08 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba b5 9e 83 cc be 01 00 00 4c 03 c2 48 83 c1 10 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 10 00 00 00 48 8b d0 41 8b cf c1 e1 04 41 3b ce 0f 87 91 00 00 00 41 8b c6 2b c1 48 63 c9 48 8d 4c 4d 00 44 3b c0 0f 87 81 00 00 00 4d 63 c0 49 d1 e0 e8 89 e7 ff 4e 41 ff c7 44 3b fb 0f 8c 47 ff ff ff 80 7c 24 70 00 74 1b 48 8d 44 24 70 0f b6 10 8b 40 04 44 3b f0 0f 9d c0 0f b6 c0 0f b6 d2 85 c2 75 17 48 89 2f 44 89 77 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 80 7c 24 70 00 74 30 8b 44 24 74 8b d0 41 8b ce 48 3b d1 77 28 48 89 2f 89 47 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 e8 fc 80 4b ff cc e8 fe 80 4b ff cc e8 20 82 4b ff cc e8 ea 80 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh mov [rsp+70h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 70}
0014h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
001dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001fh shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0022h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0025h mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
002fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c6 fb 5e}
0034h lea rbp,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 68 10}
0038h mov r14d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 70 08}
003ch mov rsi,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 36}
003fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0042h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0044h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b9 00 00 00}
004ah mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0054h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
0059h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c6 fb 5e}
005eh movsxd r8,r15d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c7}
0061h movzx r8d,word ptr [rsi+r8*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 04 46}
0066h lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
006ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
006eh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0072h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0075h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0078h mov r9,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 b5 9e 83 cc be 01 00 00}
0082h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0085h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0088h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
008ch vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
0091h sar r8d,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 08}
0095h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0099h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
009dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00a0h mov rdx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b5 9e 83 cc be 01 00 00}
00aah add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
00adh add rcx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 10}
00b1h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
00b6h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00bah add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00beh mov r8d,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 10 00 00 00}
00c4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c7h mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
00cah shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
00cdh cmp ecx,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ce}
00d0h ja near ptr 0167h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 91 00 00 00}
00d6h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00d9h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00dbh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00deh lea rcx,[rbp+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 4d 00}
00e3h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00e6h ja near ptr 016dh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 81 00 00 00}
00ech movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00efh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f2h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 e7 ff 4e}
00f7h inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
00fah cmp r15d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b fb}
00fdh jl near ptr 004ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 47 ff ff ff}
0103h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0108h je short 0125h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
010ah lea rax,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 70}
010fh movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0112h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
0115h cmp r14d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f0}
0118h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
011bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
011eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0121h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0123h jne short 013ch                         ; JNE rel8 || 75 cb || encoded[2]{75 17}
0125h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0128h mov [rdi+8],r14d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 77 08}
012ch mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
012fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0133h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0134h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0135h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0136h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0137h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0139h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
013bh ret                                     ; RET || C3 || encoded[1]{c3}
013ch cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0141h je short 0173h                          ; JE rel8 || 74 cb || encoded[2]{74 30}
0143h mov eax,[rsp+74h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 74}
0147h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0149h mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
014ch cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
014fh ja short 0179h                          ; JA rel8 || 77 cb || encoded[2]{77 28}
0151h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0154h mov [rdi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 47 08}
0157h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
015ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
015eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
015fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0160h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0161h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0162h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0164h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0166h ret                                     ; RET || C3 || encoded[1]{c3}
0167h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 80 4b ff}
016ch int 3                                   ; INT3 || CC || encoded[1]{cc}
016dh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 80 4b ff}
0172h int 3                                   ; INT3 || CC || encoded[1]{cc}
0173h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 82 4b ff}
0178h int 3                                   ; INT3 || CC || encoded[1]{cc}
0179h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 80 4b ff}
017eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<short>(ReadOnlySpan<short> src, int maxlen)
; bitchars_gspan16i[387] = {41 57 41 56 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 44 24 70 48 8b f9 48 8b f2 8b 5e 08 8b d3 c1 e2 04 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 2c c5 fb 5e 48 8d 68 10 44 8b 70 08 48 8b 36 45 33 ff 85 db 0f 8e bd 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 10 00 00 00 e8 02 c5 fb 5e 4d 63 c7 4e 0f bf 04 46 48 8d 48 10 4d 0f bf c0 45 0f b7 c0 41 0f b6 d0 c1 e2 04 48 63 d2 49 b9 b5 9e 83 cc be 01 00 00 49 03 d1 4c 8b c9 c5 fa 6f 02 c4 c1 7a 7f 01 41 c1 f8 08 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba b5 9e 83 cc be 01 00 00 4c 03 c2 48 83 c1 10 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 10 00 00 00 48 8b d0 41 8b cf c1 e1 04 41 3b ce 0f 87 91 00 00 00 41 8b c6 2b c1 48 63 c9 48 8d 4c 4d 00 44 3b c0 0f 87 81 00 00 00 4d 63 c0 49 d1 e0 e8 d5 e5 ff 4e 41 ff c7 44 3b fb 0f 8c 43 ff ff ff 80 7c 24 70 00 74 1b 48 8d 44 24 70 0f b6 10 8b 40 04 44 3b f0 0f 9d c0 0f b6 c0 0f b6 d2 85 c2 75 17 48 89 2f 44 89 77 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 80 7c 24 70 00 74 30 8b 44 24 74 8b d0 41 8b ce 48 3b d1 77 28 48 89 2f 89 47 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 e8 48 7f 4b ff cc e8 4a 7f 4b ff cc e8 6c 80 4b ff cc e8 36 7f 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh mov [rsp+70h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 70}
0014h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
001dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001fh shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0022h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0025h mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
002fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c c5 fb 5e}
0034h lea rbp,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 68 10}
0038h mov r14d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 70 08}
003ch mov rsi,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 36}
003fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0042h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0044h jle near ptr 0107h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e bd 00 00 00}
004ah mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0054h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
0059h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 c5 fb 5e}
005eh movsxd r8,r15d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c7}
0061h movsx r8,word ptr [rsi+r8*2]            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 04 46}
0066h lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
006ah movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
006eh movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0072h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0076h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0079h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
007ch mov r9,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 b5 9e 83 cc be 01 00 00}
0086h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0089h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
008ch vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0090h vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
0095h sar r8d,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 08}
0099h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
009dh shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
00a1h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00a4h mov rdx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b5 9e 83 cc be 01 00 00}
00aeh add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
00b1h add rcx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 10}
00b5h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
00bah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00beh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00c2h mov r8d,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 10 00 00 00}
00c8h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00cbh mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
00ceh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
00d1h cmp ecx,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ce}
00d4h ja near ptr 016bh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 91 00 00 00}
00dah mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00ddh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00dfh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00e2h lea rcx,[rbp+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 4d 00}
00e7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00eah ja near ptr 0171h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 81 00 00 00}
00f0h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00f3h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f6h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 e5 ff 4e}
00fbh inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
00feh cmp r15d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b fb}
0101h jl near ptr 004ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 43 ff ff ff}
0107h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
010ch je short 0129h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
010eh lea rax,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 70}
0113h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0116h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
0119h cmp r14d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f0}
011ch setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
011fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0122h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0125h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0127h jne short 0140h                         ; JNE rel8 || 75 cb || encoded[2]{75 17}
0129h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
012ch mov [rdi+8],r14d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 77 08}
0130h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0133h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0137h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0138h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0139h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
013bh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
013dh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
013fh ret                                     ; RET || C3 || encoded[1]{c3}
0140h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0145h je short 0177h                          ; JE rel8 || 74 cb || encoded[2]{74 30}
0147h mov eax,[rsp+74h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 74}
014bh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
014dh mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
0150h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
0153h ja short 017dh                          ; JA rel8 || 77 cb || encoded[2]{77 28}
0155h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0158h mov [rdi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 47 08}
015bh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
015eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0162h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0163h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0164h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0165h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0166h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0168h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
016ah ret                                     ; RET || C3 || encoded[1]{c3}
016bh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 7f 4b ff}
0170h int 3                                   ; INT3 || CC || encoded[1]{cc}
0171h call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 7f 4b ff}
0176h int 3                                   ; INT3 || CC || encoded[1]{cc}
0177h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 80 4b ff}
017ch int 3                                   ; INT3 || CC || encoded[1]{cc}
017dh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 7f 4b ff}
0182h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<uint>(ReadOnlySpan<uint> src, int maxlen)
; bitchars_gspan32u[372] = {41 57 41 56 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 44 24 70 48 8b f9 48 8b f2 8b 5e 08 8b d3 c1 e2 05 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 7c c3 fb 5e 48 8d 68 10 44 8b 70 08 48 8b 36 45 33 ff 85 db 0f 8e ae 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 20 00 00 00 e8 52 c3 fb 5e 49 63 cf 44 8b 04 8e 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 45 8b d0 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cf c1 e1 05 41 3b ce 0f 87 91 00 00 00 41 8b c6 2b c1 48 63 c9 48 8d 4c 4d 00 44 3b c0 0f 87 81 00 00 00 4d 63 c0 49 d1 e0 e8 34 e4 ff 4e 41 ff c7 44 3b fb 0f 8c 52 ff ff ff 80 7c 24 70 00 74 1b 48 8d 44 24 70 0f b6 10 8b 40 04 44 3b f0 0f 9d c0 0f b6 c0 0f b6 d2 85 c2 75 17 48 89 2f 44 89 77 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 80 7c 24 70 00 74 30 8b 44 24 74 8b d0 41 8b ce 48 3b d1 77 28 48 89 2f 89 47 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 e8 a7 7d 4b ff cc e8 a9 7d 4b ff cc e8 cb 7e 4b ff cc e8 95 7d 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh mov [rsp+70h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 70}
0014h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
001dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001fh shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
0022h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0025h mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
002fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c c3 fb 5e}
0034h lea rbp,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 68 10}
0038h mov r14d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 70 08}
003ch mov rsi,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 36}
003fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0042h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0044h jle near ptr 00f8h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e ae 00 00 00}
004ah mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0054h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0059h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 c3 fb 5e}
005eh movsxd rcx,r15d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cf}
0061h mov r8d,[rsi+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 04 8e}
0065h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0069h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
006ch mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
006fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0072h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0075h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0078h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
007ch shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
007fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0082h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
008ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
008fh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0092h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0096h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0099h lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
009dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00a1h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00a6h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00a9h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00adh jl short 006ch                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00afh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00b3h mov r8d,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 20 00 00 00}
00b9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
00bfh shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
00c2h cmp ecx,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ce}
00c5h ja near ptr 015ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 91 00 00 00}
00cbh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00ceh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00d0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00d3h lea rcx,[rbp+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 4d 00}
00d8h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00dbh ja near ptr 0162h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 81 00 00 00}
00e1h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00e4h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00e7h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e4 ff 4e}
00ech inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
00efh cmp r15d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b fb}
00f2h jl near ptr 004ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 52 ff ff ff}
00f8h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
00fdh je short 011ah                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
00ffh lea rax,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 70}
0104h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0107h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
010ah cmp r14d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f0}
010dh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0110h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0113h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0116h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0118h jne short 0131h                         ; JNE rel8 || 75 cb || encoded[2]{75 17}
011ah mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
011dh mov [rdi+8],r14d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 77 08}
0121h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0124h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0128h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0129h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
012ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
012bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
012ch pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
012eh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0130h ret                                     ; RET || C3 || encoded[1]{c3}
0131h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0136h je short 0168h                          ; JE rel8 || 74 cb || encoded[2]{74 30}
0138h mov eax,[rsp+74h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 74}
013ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
013eh mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
0141h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
0144h ja short 016eh                          ; JA rel8 || 77 cb || encoded[2]{77 28}
0146h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0149h mov [rdi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 47 08}
014ch mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
014fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0153h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0154h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0155h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0156h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0157h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0159h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
015bh ret                                     ; RET || C3 || encoded[1]{c3}
015ch call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 7d 4b ff}
0161h int 3                                   ; INT3 || CC || encoded[1]{cc}
0162h call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 7d 4b ff}
0167h int 3                                   ; INT3 || CC || encoded[1]{cc}
0168h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 7e 4b ff}
016dh int 3                                   ; INT3 || CC || encoded[1]{cc}
016eh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 7d 4b ff}
0173h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<int>(ReadOnlySpan<int> src, int maxlen)
; bitchars_gspan32i[372] = {41 57 41 56 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 44 24 70 48 8b f9 48 8b f2 8b 5e 08 8b d3 c1 e2 05 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 dc c1 fb 5e 48 8d 68 10 44 8b 70 08 48 8b 36 45 33 ff 85 db 0f 8e ae 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 20 00 00 00 e8 b2 c1 fb 5e 49 63 cf 44 8b 04 8e 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 45 8b d0 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cf c1 e1 05 41 3b ce 0f 87 91 00 00 00 41 8b c6 2b c1 48 63 c9 48 8d 4c 4d 00 44 3b c0 0f 87 81 00 00 00 4d 63 c0 49 d1 e0 e8 94 e2 ff 4e 41 ff c7 44 3b fb 0f 8c 52 ff ff ff 80 7c 24 70 00 74 1b 48 8d 44 24 70 0f b6 10 8b 40 04 44 3b f0 0f 9d c0 0f b6 c0 0f b6 d2 85 c2 75 17 48 89 2f 44 89 77 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 80 7c 24 70 00 74 30 8b 44 24 74 8b d0 41 8b ce 48 3b d1 77 28 48 89 2f 89 47 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 e8 07 7c 4b ff cc e8 09 7c 4b ff cc e8 2b 7d 4b ff cc e8 f5 7b 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh mov [rsp+70h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 70}
0014h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
001dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001fh shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
0022h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0025h mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
002fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c1 fb 5e}
0034h lea rbp,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 68 10}
0038h mov r14d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 70 08}
003ch mov rsi,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 36}
003fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0042h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0044h jle near ptr 00f8h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e ae 00 00 00}
004ah mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0054h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0059h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c1 fb 5e}
005eh movsxd rcx,r15d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cf}
0061h mov r8d,[rsi+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 04 8e}
0065h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0069h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
006ch mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
006fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0072h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0075h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0078h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
007ch shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
007fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0082h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
008ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
008fh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0092h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0096h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0099h lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
009dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00a1h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00a6h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00a9h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00adh jl short 006ch                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00afh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00b3h mov r8d,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 20 00 00 00}
00b9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
00bfh shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
00c2h cmp ecx,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ce}
00c5h ja near ptr 015ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 91 00 00 00}
00cbh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00ceh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00d0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00d3h lea rcx,[rbp+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 4d 00}
00d8h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00dbh ja near ptr 0162h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 81 00 00 00}
00e1h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00e4h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00e7h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 e2 ff 4e}
00ech inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
00efh cmp r15d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b fb}
00f2h jl near ptr 004ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 52 ff ff ff}
00f8h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
00fdh je short 011ah                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
00ffh lea rax,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 70}
0104h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0107h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
010ah cmp r14d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f0}
010dh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0110h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0113h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0116h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0118h jne short 0131h                         ; JNE rel8 || 75 cb || encoded[2]{75 17}
011ah mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
011dh mov [rdi+8],r14d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 77 08}
0121h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0124h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0128h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0129h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
012ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
012bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
012ch pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
012eh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0130h ret                                     ; RET || C3 || encoded[1]{c3}
0131h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0136h je short 0168h                          ; JE rel8 || 74 cb || encoded[2]{74 30}
0138h mov eax,[rsp+74h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 74}
013ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
013eh mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
0141h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
0144h ja short 016eh                          ; JA rel8 || 77 cb || encoded[2]{77 28}
0146h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0149h mov [rdi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 47 08}
014ch mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
014fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0153h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0154h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0155h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0156h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0157h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0159h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
015bh ret                                     ; RET || C3 || encoded[1]{c3}
015ch call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 7c 4b ff}
0161h int 3                                   ; INT3 || CC || encoded[1]{cc}
0162h call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 7c 4b ff}
0167h int 3                                   ; INT3 || CC || encoded[1]{cc}
0168h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 7d 4b ff}
016dh int 3                                   ; INT3 || CC || encoded[1]{cc}
016eh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 7b 4b ff}
0173h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<ulong>(ReadOnlySpan<ulong> src, int maxlen)
; bitchars_gspan64u[372] = {41 57 41 56 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 44 24 70 48 8b f9 48 8b f2 8b 5e 08 8b d3 c1 e2 06 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 3c c0 fb 5e 48 8d 68 10 44 8b 70 08 48 8b 36 45 33 ff 85 db 0f 8e ae 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 40 00 00 00 e8 12 c0 fb 5e 49 63 cf 4c 8b 04 ce 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 4d 8b d0 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 41 b8 40 00 00 00 48 8b d0 41 8b cf c1 e1 06 41 3b ce 0f 87 91 00 00 00 41 8b c6 2b c1 48 63 c9 48 8d 4c 4d 00 44 3b c0 0f 87 81 00 00 00 4d 63 c0 49 d1 e0 e8 f4 e0 ff 4e 41 ff c7 44 3b fb 0f 8c 52 ff ff ff 80 7c 24 70 00 74 1b 48 8d 44 24 70 0f b6 10 8b 40 04 44 3b f0 0f 9d c0 0f b6 c0 0f b6 d2 85 c2 75 17 48 89 2f 44 89 77 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 80 7c 24 70 00 74 30 8b 44 24 74 8b d0 41 8b ce 48 3b d1 77 28 48 89 2f 89 47 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 e8 67 7a 4b ff cc e8 69 7a 4b ff cc e8 8b 7b 4b ff cc e8 55 7a 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh mov [rsp+70h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 70}
0014h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
001dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001fh shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
0022h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0025h mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
002fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c c0 fb 5e}
0034h lea rbp,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 68 10}
0038h mov r14d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 70 08}
003ch mov rsi,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 36}
003fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0042h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0044h jle near ptr 00f8h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e ae 00 00 00}
004ah mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0054h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0059h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 c0 fb 5e}
005eh movsxd rcx,r15d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cf}
0061h mov r8,[rsi+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 04 ce}
0065h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0069h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
006ch mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
006fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0072h mov r10,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d0}
0075h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0078h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
007ch shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
007fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0082h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
008ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
008fh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0092h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0096h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0099h lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
009dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00a1h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00a6h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00a9h cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
00adh jl short 006ch                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00afh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00b3h mov r8d,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 40 00 00 00}
00b9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
00bfh shl ecx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 06}
00c2h cmp ecx,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ce}
00c5h ja near ptr 015ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 91 00 00 00}
00cbh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00ceh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00d0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00d3h lea rcx,[rbp+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 4d 00}
00d8h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00dbh ja near ptr 0162h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 81 00 00 00}
00e1h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00e4h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00e7h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 e0 ff 4e}
00ech inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
00efh cmp r15d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b fb}
00f2h jl near ptr 004ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 52 ff ff ff}
00f8h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
00fdh je short 011ah                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
00ffh lea rax,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 70}
0104h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0107h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
010ah cmp r14d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f0}
010dh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0110h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0113h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0116h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0118h jne short 0131h                         ; JNE rel8 || 75 cb || encoded[2]{75 17}
011ah mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
011dh mov [rdi+8],r14d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 77 08}
0121h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0124h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0128h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0129h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
012ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
012bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
012ch pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
012eh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0130h ret                                     ; RET || C3 || encoded[1]{c3}
0131h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0136h je short 0168h                          ; JE rel8 || 74 cb || encoded[2]{74 30}
0138h mov eax,[rsp+74h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 74}
013ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
013eh mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
0141h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
0144h ja short 016eh                          ; JA rel8 || 77 cb || encoded[2]{77 28}
0146h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0149h mov [rdi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 47 08}
014ch mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
014fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0153h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0154h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0155h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0156h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0157h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0159h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
015bh ret                                     ; RET || C3 || encoded[1]{c3}
015ch call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 7a 4b ff}
0161h int 3                                   ; INT3 || CC || encoded[1]{cc}
0162h call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 7a 4b ff}
0167h int 3                                   ; INT3 || CC || encoded[1]{cc}
0168h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 7b 4b ff}
016dh int 3                                   ; INT3 || CC || encoded[1]{cc}
016eh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 7a 4b ff}
0173h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<long>(ReadOnlySpan<long> src, int maxlen)
; bitchars_gspan64i[372] = {41 57 41 56 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 44 24 70 48 8b f9 48 8b f2 8b 5e 08 8b d3 c1 e2 06 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 9c be fb 5e 48 8d 68 10 44 8b 70 08 48 8b 36 45 33 ff 85 db 0f 8e ae 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 40 00 00 00 e8 72 be fb 5e 49 63 cf 4c 8b 04 ce 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 4d 8b d0 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 41 b8 40 00 00 00 48 8b d0 41 8b cf c1 e1 06 41 3b ce 0f 87 91 00 00 00 41 8b c6 2b c1 48 63 c9 48 8d 4c 4d 00 44 3b c0 0f 87 81 00 00 00 4d 63 c0 49 d1 e0 e8 54 df ff 4e 41 ff c7 44 3b fb 0f 8c 52 ff ff ff 80 7c 24 70 00 74 1b 48 8d 44 24 70 0f b6 10 8b 40 04 44 3b f0 0f 9d c0 0f b6 c0 0f b6 d2 85 c2 75 17 48 89 2f 44 89 77 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 80 7c 24 70 00 74 30 8b 44 24 74 8b d0 41 8b ce 48 3b d1 77 28 48 89 2f 89 47 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 e8 c7 78 4b ff cc e8 c9 78 4b ff cc e8 eb 79 4b ff cc e8 b5 78 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh mov [rsp+70h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 70}
0014h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
001dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001fh shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
0022h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0025h mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
002fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c be fb 5e}
0034h lea rbp,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 68 10}
0038h mov r14d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 70 08}
003ch mov rsi,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 36}
003fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0042h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0044h jle near ptr 00f8h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e ae 00 00 00}
004ah mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0054h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0059h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 be fb 5e}
005eh movsxd rcx,r15d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cf}
0061h mov r8,[rsi+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 04 ce}
0065h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0069h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
006ch mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
006fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0072h mov r10,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d0}
0075h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0078h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
007ch shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
007fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0082h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
008ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
008fh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0092h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0096h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0099h lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
009dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00a1h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00a6h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00a9h cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
00adh jl short 006ch                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00afh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00b3h mov r8d,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 40 00 00 00}
00b9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
00bfh shl ecx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 06}
00c2h cmp ecx,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ce}
00c5h ja near ptr 015ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 91 00 00 00}
00cbh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00ceh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00d0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00d3h lea rcx,[rbp+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 4d 00}
00d8h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00dbh ja near ptr 0162h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 81 00 00 00}
00e1h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00e4h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00e7h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 df ff 4e}
00ech inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
00efh cmp r15d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b fb}
00f2h jl near ptr 004ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 52 ff ff ff}
00f8h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
00fdh je short 011ah                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
00ffh lea rax,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 70}
0104h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0107h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
010ah cmp r14d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f0}
010dh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0110h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0113h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0116h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0118h jne short 0131h                         ; JNE rel8 || 75 cb || encoded[2]{75 17}
011ah mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
011dh mov [rdi+8],r14d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 77 08}
0121h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0124h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0128h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0129h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
012ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
012bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
012ch pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
012eh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0130h ret                                     ; RET || C3 || encoded[1]{c3}
0131h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0136h je short 0168h                          ; JE rel8 || 74 cb || encoded[2]{74 30}
0138h mov eax,[rsp+74h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 74}
013ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
013eh mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
0141h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
0144h ja short 016eh                          ; JA rel8 || 77 cb || encoded[2]{77 28}
0146h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0149h mov [rdi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 47 08}
014ch mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
014fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0153h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0154h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0155h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0156h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0157h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0159h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
015bh ret                                     ; RET || C3 || encoded[1]{c3}
015ch call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 78 4b ff}
0161h int 3                                   ; INT3 || CC || encoded[1]{cc}
0162h call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 78 4b ff}
0167h int 3                                   ; INT3 || CC || encoded[1]{cc}
0168h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 79 4b ff}
016dh int 3                                   ; INT3 || CC || encoded[1]{cc}
016eh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 78 4b ff}
0173h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<float>(ReadOnlySpan<float> src, int maxlen)
; bitchars_gspan32f[383] = {41 57 41 56 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 44 24 70 48 8b f9 48 8b f2 8b 5e 08 8b d3 c1 e2 05 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 fc bc fb 5e 48 8d 68 10 44 8b 70 08 48 8b 36 45 33 ff 85 db 0f 8e b9 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 20 00 00 00 e8 d2 bc fb 5e 49 63 cf c5 fa 10 04 8e 4c 8d 40 10 c5 fa 11 44 24 24 8b 54 24 24 45 33 c9 41 8b c9 c1 e1 03 44 8b d2 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cf c1 e1 05 41 3b ce 0f 87 91 00 00 00 41 8b c6 2b c1 48 63 c9 48 8d 4c 4d 00 44 3b c0 0f 87 81 00 00 00 4d 63 c0 49 d1 e0 e8 a9 dd ff 4e 41 ff c7 44 3b fb 0f 8c 47 ff ff ff 80 7c 24 70 00 74 1b 48 8d 44 24 70 0f b6 10 8b 40 04 44 3b f0 0f 9d c0 0f b6 c0 0f b6 d2 85 c2 75 17 48 89 2f 44 89 77 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 80 7c 24 70 00 74 30 8b 44 24 74 8b d0 41 8b ce 48 3b d1 77 28 48 89 2f 89 47 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 e8 1c 77 4b ff cc e8 1e 77 4b ff cc e8 40 78 4b ff cc e8 0a 77 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh mov [rsp+70h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 70}
0014h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
001dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001fh shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
0022h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0025h mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
002fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc bc fb 5e}
0034h lea rbp,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 68 10}
0038h mov r14d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 70 08}
003ch mov rsi,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 36}
003fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0042h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0044h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b9 00 00 00}
004ah mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0054h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0059h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 bc fb 5e}
005eh movsxd rcx,r15d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cf}
0061h vmovss xmm0,dword ptr [rsi+rcx*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 8e}
0066h lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
006ah vmovss dword ptr [rsp+24h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 24}
0070h mov edx,[rsp+24h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 24}
0074h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0077h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
007ah shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
007dh mov r10d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d2}
0080h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0083h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0087h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
008ah movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
008dh mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
0097h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
009ah mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
009dh shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00a1h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00a4h lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
00a8h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00ach vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00b1h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00b4h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00b8h jl short 0077h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00bah add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00beh mov r8d,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 20 00 00 00}
00c4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c7h mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
00cah shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
00cdh cmp ecx,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ce}
00d0h ja near ptr 0167h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 91 00 00 00}
00d6h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00d9h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00dbh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00deh lea rcx,[rbp+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 4d 00}
00e3h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00e6h ja near ptr 016dh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 81 00 00 00}
00ech movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00efh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f2h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 dd ff 4e}
00f7h inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
00fah cmp r15d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b fb}
00fdh jl near ptr 004ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 47 ff ff ff}
0103h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0108h je short 0125h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
010ah lea rax,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 70}
010fh movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0112h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
0115h cmp r14d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f0}
0118h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
011bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
011eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0121h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0123h jne short 013ch                         ; JNE rel8 || 75 cb || encoded[2]{75 17}
0125h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0128h mov [rdi+8],r14d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 77 08}
012ch mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
012fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0133h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0134h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0135h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0136h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0137h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0139h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
013bh ret                                     ; RET || C3 || encoded[1]{c3}
013ch cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0141h je short 0173h                          ; JE rel8 || 74 cb || encoded[2]{74 30}
0143h mov eax,[rsp+74h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 74}
0147h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0149h mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
014ch cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
014fh ja short 0179h                          ; JA rel8 || 77 cb || encoded[2]{77 28}
0151h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0154h mov [rdi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 47 08}
0157h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
015ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
015eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
015fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0160h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0161h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0162h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0164h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0166h ret                                     ; RET || C3 || encoded[1]{c3}
0167h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 77 4b ff}
016ch int 3                                   ; INT3 || CC || encoded[1]{cc}
016dh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 77 4b ff}
0172h int 3                                   ; INT3 || CC || encoded[1]{cc}
0173h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 78 4b ff}
0178h int 3                                   ; INT3 || CC || encoded[1]{cc}
0179h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 77 4b ff}
017eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<double>(ReadOnlySpan<double> src, int maxlen)
; bitchars_gspan64f[384] = {41 57 41 56 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 44 24 70 48 8b f9 48 8b f2 8b 5e 08 8b d3 c1 e2 06 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 4c bb fb 5e 48 8d 68 10 44 8b 70 08 48 8b 36 45 33 ff 85 db 0f 8e ba 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 40 00 00 00 e8 22 bb fb 5e 49 63 cf c5 fb 10 04 ce 4c 8d 40 10 c5 fb 11 44 24 20 48 8b 54 24 20 45 33 c9 41 8b c9 c1 e1 03 4c 8b d2 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 41 b8 40 00 00 00 48 8b d0 41 8b cf c1 e1 06 41 3b ce 0f 87 91 00 00 00 41 8b c6 2b c1 48 63 c9 48 8d 4c 4d 00 44 3b c0 0f 87 81 00 00 00 4d 63 c0 49 d1 e0 e8 f8 db ff 4e 41 ff c7 44 3b fb 0f 8c 46 ff ff ff 80 7c 24 70 00 74 1b 48 8d 44 24 70 0f b6 10 8b 40 04 44 3b f0 0f 9d c0 0f b6 c0 0f b6 d2 85 c2 75 17 48 89 2f 44 89 77 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 80 7c 24 70 00 74 30 8b 44 24 74 8b d0 41 8b ce 48 3b d1 77 28 48 89 2f 89 47 08 48 8b c7 48 83 c4 28 5b 5d 5e 5f 41 5e 41 5f c3 e8 6b 75 4b ff cc e8 6d 75 4b ff cc e8 8f 76 4b ff cc e8 59 75 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh mov [rsp+70h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 70}
0014h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
001dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001fh shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
0022h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0025h mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
002fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c bb fb 5e}
0034h lea rbp,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 68 10}
0038h mov r14d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 70 08}
003ch mov rsi,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 36}
003fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0042h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0044h jle near ptr 0104h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e ba 00 00 00}
004ah mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0054h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0059h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 bb fb 5e}
005eh movsxd rcx,r15d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cf}
0061h vmovsd xmm0,qword ptr [rsi+rcx*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 ce}
0066h lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
006ah vmovsd qword ptr [rsp+20h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 20}
0070h mov rdx,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 20}
0075h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0078h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
007bh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
007eh mov r10,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d2}
0081h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0084h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0088h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
008bh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
008eh mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
0098h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
009bh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
009eh shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00a2h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00a5h lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
00a9h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00adh vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00b2h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00b5h cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
00b9h jl short 0078h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00bbh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00bfh mov r8d,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 40 00 00 00}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
00cbh shl ecx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 06}
00ceh cmp ecx,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ce}
00d1h ja near ptr 0168h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 91 00 00 00}
00d7h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00dah sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00dch movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00dfh lea rcx,[rbp+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 4d 00}
00e4h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00e7h ja near ptr 016eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 81 00 00 00}
00edh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00f0h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f3h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 db ff 4e}
00f8h inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
00fbh cmp r15d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b fb}
00feh jl near ptr 004ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 46 ff ff ff}
0104h cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0109h je short 0126h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
010bh lea rax,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 70}
0110h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0113h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
0116h cmp r14d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f0}
0119h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
011ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
011fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0122h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0124h jne short 013dh                         ; JNE rel8 || 75 cb || encoded[2]{75 17}
0126h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0129h mov [rdi+8],r14d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 77 08}
012dh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0130h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0134h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0135h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0136h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0137h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0138h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
013ah pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
013ch ret                                     ; RET || C3 || encoded[1]{c3}
013dh cmp byte ptr [rsp+70h],0                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 70 00}
0142h je short 0174h                          ; JE rel8 || 74 cb || encoded[2]{74 30}
0144h mov eax,[rsp+74h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 74}
0148h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
014ah mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
014dh cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
0150h ja short 017ah                          ; JA rel8 || 77 cb || encoded[2]{77 28}
0152h mov [rdi],rbp                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 2f}
0155h mov [rdi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 47 08}
0158h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
015bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
015fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0160h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0161h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0162h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0163h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0165h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0167h ret                                     ; RET || C3 || encoded[1]{c3}
0168h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 75 4b ff}
016dh int 3                                   ; INT3 || CC || encoded[1]{cc}
016eh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 75 4b ff}
0173h int 3                                   ; INT3 || CC || encoded[1]{cc}
0174h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 76 4b ff}
0179h int 3                                   ; INT3 || CC || encoded[1]{cc}
017ah call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 75 4b ff}
017fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<byte>(Span<byte> src, int maxlen)
; bitchars_gspan8u[313] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 03 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 85 b9 fb 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e 7d 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 08 00 00 00 e8 5e b9 fb 5e 4d 63 c5 46 0f b6 04 07 48 8d 48 10 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba b5 9e 83 cc be 01 00 00 4c 03 c2 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 08 00 00 00 48 8b d0 41 8b cd c1 e1 03 41 3b cc 77 6a 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 5f 4d 63 c0 49 d1 e0 e8 6d da ff 4e 41 ff c5 44 3b eb 7c 83 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 02 74 4b ff cc e8 04 74 4b ff cc e8 26 75 4b ff cc e8 f0 73 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b9 fb 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 00dbh                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e 7d 00 00 00}
005eh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0068h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e b9 fb 5e}
0072h movsxd r8,r13d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c5}
0075h movzx r8d,byte ptr [rdi+r8]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 04 07}
007ah lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
007eh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0082h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
0086h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0089h mov rdx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b5 9e 83 cc be 01 00 00}
0093h add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
0096h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
009bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
009fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00a3h mov r8d,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 08 00 00 00}
00a9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00ach mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00afh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
00b2h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00b5h ja short 0121h                          ; JA rel8 || 77 cb || encoded[2]{77 6a}
00b7h mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00bah sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00bch movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00bfh lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00c3h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00c6h ja short 0127h                          ; JA rel8 || 77 cb || encoded[2]{77 5f}
00c8h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00cbh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00ceh call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d da ff 4e}
00d3h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00d6h cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00d9h jl short 005eh                          ; JL rel8 || 7C cb || encoded[2]{7c 83}
00dbh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
00deh je short 00f1h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
00e0h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
00e3h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00e6h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00e9h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
00edh test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
00efh jne short 00f3h                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
00f1h jmp short 0106h                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
00f3h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
00f6h je short 012dh                          ; JE rel8 || 74 cb || encoded[2]{74 35}
00f8h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00fbh mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
00feh cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0101h ja short 0133h                          ; JA rel8 || 77 cb || encoded[2]{77 30}
0103h mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
0106h mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0109h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
010dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0110h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0114h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0115h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0116h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0117h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0118h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
011ah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
011ch pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
011eh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0120h ret                                     ; RET || C3 || encoded[1]{c3}
0121h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 74 4b ff}
0126h int 3                                   ; INT3 || CC || encoded[1]{cc}
0127h call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 74 4b ff}
012ch int 3                                   ; INT3 || CC || encoded[1]{cc}
012dh call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 75 4b ff}
0132h int 3                                   ; INT3 || CC || encoded[1]{cc}
0133h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 73 4b ff}
0138h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<sbyte>(Span<sbyte> src, int maxlen)
; bitchars_gspan8i[321] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 03 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 25 b8 fb 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e 85 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 08 00 00 00 e8 fe b7 fb 5e 4d 63 c5 4e 0f be 04 07 48 8d 48 10 4d 0f be c0 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba b5 9e 83 cc be 01 00 00 4c 03 c2 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 08 00 00 00 48 8b d0 41 8b cd c1 e1 03 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 09 d9 ff 4e 41 ff c5 44 3b eb 0f 8c 7b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 9a 72 4b ff cc e8 9c 72 4b ff cc e8 be 73 4b ff cc e8 88 72 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 b8 fb 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 00e3h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e 85 00 00 00}
005eh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0068h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe b7 fb 5e}
0072h movsxd r8,r13d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c5}
0075h movsx r8,byte ptr [rdi+r8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 04 07}
007ah lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
007eh movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
0082h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0086h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
008ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
008dh mov rdx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b5 9e 83 cc be 01 00 00}
0097h add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
009ah vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
009fh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00a3h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00a7h mov r8d,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 08 00 00 00}
00adh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00b0h mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00b3h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
00b6h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00b9h ja short 0129h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00bbh mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00beh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00c0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00c3h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00c7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00cah ja short 012fh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00cch movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00cfh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00d2h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 d9 ff 4e}
00d7h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00dah cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00ddh jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 7b ff ff ff}
00e3h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
00e6h je short 00f9h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
00e8h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
00ebh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00eeh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f1h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
00f5h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
00f7h jne short 00fbh                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
00f9h jmp short 010eh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
00fbh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
00feh je short 0135h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
0100h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0103h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0106h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0109h ja short 013bh                          ; JA rel8 || 77 cb || encoded[2]{77 30}
010bh mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
010eh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0111h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0115h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0118h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
011ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
011dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
011eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0120h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0122h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0124h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0126h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0128h ret                                     ; RET || C3 || encoded[1]{c3}
0129h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 72 4b ff}
012eh int 3                                   ; INT3 || CC || encoded[1]{cc}
012fh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 72 4b ff}
0134h int 3                                   ; INT3 || CC || encoded[1]{cc}
0135h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 73 4b ff}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
013bh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 72 4b ff}
0140h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<ushort>(Span<ushort> src, int maxlen)
; bitchars_gspan16u[364] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 04 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 b5 b6 fb 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e b0 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 10 00 00 00 e8 8e b6 fb 5e 4d 63 c5 46 0f b7 04 47 48 8d 48 10 45 0f b7 c0 41 0f b6 d0 c1 e2 04 48 63 d2 49 b9 b5 9e 83 cc be 01 00 00 49 03 d1 4c 8b c9 c5 fa 6f 02 c4 c1 7a 7f 01 41 c1 f8 08 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba b5 9e 83 cc be 01 00 00 4c 03 c2 48 83 c1 10 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 10 00 00 00 48 8b d0 41 8b cd c1 e1 04 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 6e d7 ff 4e 41 ff c5 44 3b eb 0f 8c 50 ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 ff 70 4b ff cc e8 01 71 4b ff cc e8 23 72 4b ff cc e8 ed 70 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 b6 fb 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 010eh                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b0 00 00 00}
005eh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0068h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e b6 fb 5e}
0072h movsxd r8,r13d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c5}
0075h movzx r8d,word ptr [rdi+r8*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 04 47}
007ah lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
007eh movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0082h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0086h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0089h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
008ch mov r9,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 b5 9e 83 cc be 01 00 00}
0096h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0099h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
009ch vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
00a0h vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
00a5h sar r8d,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 08}
00a9h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00adh shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
00b1h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00b4h mov rdx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b5 9e 83 cc be 01 00 00}
00beh add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
00c1h add rcx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 10}
00c5h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
00cah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00ceh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d2h mov r8d,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 10 00 00 00}
00d8h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00dbh mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00deh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
00e1h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00e4h ja short 0154h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00e6h mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00e9h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00ebh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00eeh lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00f2h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00f5h ja short 015ah                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00f7h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00fah shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00fdh call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e d7 ff 4e}
0102h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
0105h cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
0108h jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 50 ff ff ff}
010eh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0111h je short 0124h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0113h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
0116h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0119h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
011ch movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0120h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0122h jne short 0126h                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0124h jmp short 0139h                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
0126h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0129h je short 0160h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
012bh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
012eh mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0131h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0134h ja short 0166h                          ; JA rel8 || 77 cb || encoded[2]{77 30}
0136h mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
0139h mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
013ch mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0140h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0143h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0147h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0148h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0149h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
014ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
014bh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
014dh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
014fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0151h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0153h ret                                     ; RET || C3 || encoded[1]{c3}
0154h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 70 4b ff}
0159h int 3                                   ; INT3 || CC || encoded[1]{cc}
015ah call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 71 4b ff}
015fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0160h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 72 4b ff}
0165h int 3                                   ; INT3 || CC || encoded[1]{cc}
0166h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 70 4b ff}
016bh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<short>(Span<short> src, int maxlen)
; bitchars_gspan16i[368] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 04 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 15 b5 fb 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e b4 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 10 00 00 00 e8 ee b4 fb 5e 4d 63 c5 4e 0f bf 04 47 48 8d 48 10 4d 0f bf c0 45 0f b7 c0 41 0f b6 d0 c1 e2 04 48 63 d2 49 b9 b5 9e 83 cc be 01 00 00 49 03 d1 4c 8b c9 c5 fa 6f 02 c4 c1 7a 7f 01 41 c1 f8 08 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba b5 9e 83 cc be 01 00 00 4c 03 c2 48 83 c1 10 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 10 00 00 00 48 8b d0 41 8b cd c1 e1 04 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 ca d5 ff 4e 41 ff c5 44 3b eb 0f 8c 4c ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 5b 6f 4b ff cc e8 5d 6f 4b ff cc e8 7f 70 4b ff cc e8 49 6f 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 b5 fb 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0112h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b4 00 00 00}
005eh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0068h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee b4 fb 5e}
0072h movsxd r8,r13d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c5}
0075h movsx r8,word ptr [rdi+r8*2]            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 04 47}
007ah lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
007eh movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
0082h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0086h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
008ah shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
008dh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0090h mov r9,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 b5 9e 83 cc be 01 00 00}
009ah add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
009dh mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
00a0h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
00a4h vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
00a9h sar r8d,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 08}
00adh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00b1h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
00b5h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00b8h mov rdx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b5 9e 83 cc be 01 00 00}
00c2h add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
00c5h add rcx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 10}
00c9h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
00ceh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00d2h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d6h mov r8d,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 10 00 00 00}
00dch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00dfh mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00e2h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
00e5h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00e8h ja short 0158h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00eah mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00edh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00efh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00f2h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00f6h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00f9h ja short 015eh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00fbh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00feh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0101h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca d5 ff 4e}
0106h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
0109h cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
010ch jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 4c ff ff ff}
0112h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0115h je short 0128h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0117h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
011ah setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
011dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0120h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0124h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0126h jne short 012ah                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0128h jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
012ah test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
012dh je short 0164h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
012fh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0132h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0135h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0138h ja short 016ah                          ; JA rel8 || 77 cb || encoded[2]{77 30}
013ah mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
013dh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0140h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0144h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0147h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
014bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
014ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
014dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
014eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
014fh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0151h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0153h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0155h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0157h ret                                     ; RET || C3 || encoded[1]{c3}
0158h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 6f 4b ff}
015dh int 3                                   ; INT3 || CC || encoded[1]{cc}
015eh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 6f 4b ff}
0163h int 3                                   ; INT3 || CC || encoded[1]{cc}
0164h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 70 4b ff}
0169h int 3                                   ; INT3 || CC || encoded[1]{cc}
016ah call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 6f 4b ff}
016fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<uint>(Span<uint> src, int maxlen)
; bitchars_gspan32u[353] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 05 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 75 b3 fb 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e a5 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 20 00 00 00 e8 4e b3 fb 5e 49 63 cd 44 8b 04 8f 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 45 8b d0 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cd c1 e1 05 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 39 d4 ff 4e 41 ff c5 44 3b eb 0f 8c 5b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 ca 6d 4b ff cc e8 cc 6d 4b ff cc e8 ee 6e 4b ff cc e8 b8 6d 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 b3 fb 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e a5 00 00 00}
005eh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0068h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e b3 fb 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h mov r8d,[rdi+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 04 8f}
0079h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
007dh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0080h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0083h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0086h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0089h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
008ch movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0090h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0093h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0096h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
00a0h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00a3h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00a6h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00aah movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00adh lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
00b1h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00b5h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00bah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00bdh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00c1h jl short 0080h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00c3h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00c7h mov r8d,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 20 00 00 00}
00cdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00d0h mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00d3h shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
00d6h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00d9h ja short 0149h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00dbh mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00deh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00e0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00e3h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00e7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00eah ja short 014fh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00ech movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00efh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f2h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 d4 ff 4e}
00f7h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00fah cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00fdh jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 5b ff ff ff}
0103h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0106h je short 0119h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0108h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
010bh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
010eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0111h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0115h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0117h jne short 011bh                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0119h jmp short 012eh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
011bh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
011eh je short 0155h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
0120h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0123h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0126h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0129h ja short 015bh                          ; JA rel8 || 77 cb || encoded[2]{77 30}
012bh mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
012eh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0131h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0135h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0142h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0144h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0146h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0148h ret                                     ; RET || C3 || encoded[1]{c3}
0149h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 6d 4b ff}
014eh int 3                                   ; INT3 || CC || encoded[1]{cc}
014fh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 6d 4b ff}
0154h int 3                                   ; INT3 || CC || encoded[1]{cc}
0155h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 6e 4b ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 6d 4b ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<int>(Span<int> src, int maxlen)
; bitchars_gspan32i[353] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 05 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 e5 b1 fb 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e a5 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 20 00 00 00 e8 be b1 fb 5e 49 63 cd 44 8b 04 8f 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 45 8b d0 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cd c1 e1 05 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 a9 d2 ff 4e 41 ff c5 44 3b eb 0f 8c 5b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 3a 6c 4b ff cc e8 3c 6c 4b ff cc e8 5e 6d 4b ff cc e8 28 6c 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 b1 fb 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e a5 00 00 00}
005eh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0068h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be b1 fb 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h mov r8d,[rdi+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 04 8f}
0079h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
007dh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0080h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0083h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0086h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0089h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
008ch movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0090h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0093h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0096h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
00a0h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00a3h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00a6h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00aah movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00adh lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
00b1h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00b5h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00bah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00bdh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00c1h jl short 0080h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00c3h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00c7h mov r8d,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 20 00 00 00}
00cdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00d0h mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00d3h shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
00d6h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00d9h ja short 0149h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00dbh mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00deh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00e0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00e3h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00e7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00eah ja short 014fh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00ech movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00efh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f2h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 d2 ff 4e}
00f7h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00fah cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00fdh jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 5b ff ff ff}
0103h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0106h je short 0119h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0108h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
010bh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
010eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0111h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0115h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0117h jne short 011bh                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0119h jmp short 012eh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
011bh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
011eh je short 0155h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
0120h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0123h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0126h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0129h ja short 015bh                          ; JA rel8 || 77 cb || encoded[2]{77 30}
012bh mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
012eh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0131h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0135h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0142h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0144h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0146h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0148h ret                                     ; RET || C3 || encoded[1]{c3}
0149h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 6c 4b ff}
014eh int 3                                   ; INT3 || CC || encoded[1]{cc}
014fh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 6c 4b ff}
0154h int 3                                   ; INT3 || CC || encoded[1]{cc}
0155h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 6d 4b ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 6c 4b ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<ulong>(Span<ulong> src, int maxlen)
; bitchars_gspan64u[353] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 06 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 55 b0 fb 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e a5 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 40 00 00 00 e8 2e b0 fb 5e 49 63 cd 4c 8b 04 cf 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 4d 8b d0 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 41 b8 40 00 00 00 48 8b d0 41 8b cd c1 e1 06 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 19 d1 ff 4e 41 ff c5 44 3b eb 0f 8c 5b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 aa 6a 4b ff cc e8 ac 6a 4b ff cc e8 ce 6b 4b ff cc e8 98 6a 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 b0 fb 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e a5 00 00 00}
005eh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0068h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e b0 fb 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h mov r8,[rdi+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 04 cf}
0079h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
007dh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0080h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0083h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0086h mov r10,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d0}
0089h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
008ch movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0090h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0093h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0096h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
00a0h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00a3h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00a6h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00aah movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00adh lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
00b1h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00b5h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00bah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00bdh cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
00c1h jl short 0080h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00c3h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00c7h mov r8d,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 40 00 00 00}
00cdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00d0h mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00d3h shl ecx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 06}
00d6h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00d9h ja short 0149h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00dbh mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00deh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00e0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00e3h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00e7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00eah ja short 014fh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00ech movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00efh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f2h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 d1 ff 4e}
00f7h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00fah cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00fdh jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 5b ff ff ff}
0103h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0106h je short 0119h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0108h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
010bh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
010eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0111h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0115h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0117h jne short 011bh                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0119h jmp short 012eh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
011bh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
011eh je short 0155h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
0120h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0123h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0126h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0129h ja short 015bh                          ; JA rel8 || 77 cb || encoded[2]{77 30}
012bh mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
012eh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0131h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0135h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0142h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0144h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0146h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0148h ret                                     ; RET || C3 || encoded[1]{c3}
0149h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 6a 4b ff}
014eh int 3                                   ; INT3 || CC || encoded[1]{cc}
014fh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 6a 4b ff}
0154h int 3                                   ; INT3 || CC || encoded[1]{cc}
0155h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 6b 4b ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 6a 4b ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<long>(Span<long> src, int maxlen)
; bitchars_gspan64i[353] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 06 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 c5 ae fb 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e a5 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 40 00 00 00 e8 9e ae fb 5e 49 63 cd 4c 8b 04 cf 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 4d 8b d0 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 41 b8 40 00 00 00 48 8b d0 41 8b cd c1 e1 06 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 89 cf ff 4e 41 ff c5 44 3b eb 0f 8c 5b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 1a 69 4b ff cc e8 1c 69 4b ff cc e8 3e 6a 4b ff cc e8 08 69 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 ae fb 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e a5 00 00 00}
005eh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0068h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ae fb 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h mov r8,[rdi+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 04 cf}
0079h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
007dh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0080h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0083h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0086h mov r10,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d0}
0089h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
008ch movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0090h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0093h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0096h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
00a0h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00a3h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00a6h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00aah movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00adh lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
00b1h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00b5h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00bah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00bdh cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
00c1h jl short 0080h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00c3h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00c7h mov r8d,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 40 00 00 00}
00cdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00d0h mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00d3h shl ecx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 06}
00d6h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00d9h ja short 0149h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00dbh mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00deh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00e0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00e3h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00e7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00eah ja short 014fh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00ech movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00efh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f2h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 cf ff 4e}
00f7h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00fah cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00fdh jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 5b ff ff ff}
0103h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0106h je short 0119h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0108h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
010bh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
010eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0111h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0115h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0117h jne short 011bh                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0119h jmp short 012eh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
011bh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
011eh je short 0155h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
0120h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0123h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0126h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0129h ja short 015bh                          ; JA rel8 || 77 cb || encoded[2]{77 30}
012bh mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
012eh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0131h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0135h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0142h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0144h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0146h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0148h ret                                     ; RET || C3 || encoded[1]{c3}
0149h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 69 4b ff}
014eh int 3                                   ; INT3 || CC || encoded[1]{cc}
014fh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 69 4b ff}
0154h int 3                                   ; INT3 || CC || encoded[1]{cc}
0155h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 6a 4b ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 69 4b ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<float>(Span<float> src, int maxlen)
; bitchars_gspan32f[364] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 05 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 35 ad fb 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e b0 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 20 00 00 00 e8 0e ad fb 5e 49 63 cd c5 fa 10 04 8f 4c 8d 40 10 c5 fa 11 44 24 24 8b 54 24 24 45 33 c9 41 8b c9 c1 e1 03 44 8b d2 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cd c1 e1 05 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 ee cd ff 4e 41 ff c5 44 3b eb 0f 8c 50 ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 7f 67 4b ff cc e8 81 67 4b ff cc e8 a3 68 4b ff cc e8 6d 67 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 ad fb 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 010eh                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b0 00 00 00}
005eh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0068h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e ad fb 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h vmovss xmm0,dword ptr [rdi+rcx*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 8f}
007ah lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
007eh vmovss dword ptr [rsp+24h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 24}
0084h mov edx,[rsp+24h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 24}
0088h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
008bh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
008eh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0091h mov r10d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d2}
0094h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0097h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
009bh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
009eh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00a1h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
00abh add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00aeh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00b1h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00b5h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00b8h lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
00bch vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00c0h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00c5h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00c8h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00cch jl short 008bh                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00ceh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d2h mov r8d,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 20 00 00 00}
00d8h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00dbh mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00deh shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
00e1h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00e4h ja short 0154h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00e6h mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00e9h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00ebh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00eeh lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00f2h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00f5h ja short 015ah                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00f7h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00fah shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00fdh call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee cd ff 4e}
0102h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
0105h cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
0108h jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 50 ff ff ff}
010eh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0111h je short 0124h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0113h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
0116h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0119h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
011ch movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0120h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0122h jne short 0126h                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0124h jmp short 0139h                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
0126h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0129h je short 0160h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
012bh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
012eh mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0131h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0134h ja short 0166h                          ; JA rel8 || 77 cb || encoded[2]{77 30}
0136h mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
0139h mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
013ch mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0140h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0143h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0147h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0148h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0149h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
014ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
014bh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
014dh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
014fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0151h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0153h ret                                     ; RET || C3 || encoded[1]{c3}
0154h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 67 4b ff}
0159h int 3                                   ; INT3 || CC || encoded[1]{cc}
015ah call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 67 4b ff}
015fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0160h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 68 4b ff}
0165h int 3                                   ; INT3 || CC || encoded[1]{cc}
0166h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 67 4b ff}
016bh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<double>(Span<double> src, int maxlen)
; bitchars_gspan64f[365] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 06 48 63 d2 48 b9 60 36 6f c6 f7 7f 00 00 e8 95 a7 fb 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e b1 00 00 00 48 b9 60 36 6f c6 f7 7f 00 00 ba 40 00 00 00 e8 6e a7 fb 5e 49 63 cd c5 fb 10 04 cf 4c 8d 40 10 c5 fb 11 44 24 20 48 8b 54 24 20 45 33 c9 41 8b c9 c1 e1 03 4c 8b d2 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba b5 9e 83 cc be 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 41 b8 40 00 00 00 48 8b d0 41 8b cd c1 e1 06 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 4d c8 ff 4e 41 ff c5 44 3b eb 0f 8c 4f ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 de 61 4b ff cc e8 e0 61 4b ff cc e8 02 63 4b ff cc e8 cc 61 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 a7 fb 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 010fh                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b1 00 00 00}
005eh mov rcx,7ff7c66f3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 6f c6 f7 7f 00 00}
0068h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e a7 fb 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h vmovsd xmm0,qword ptr [rdi+rcx*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 cf}
007ah lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
007eh vmovsd qword ptr [rsp+20h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 20}
0084h mov rdx,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 20}
0089h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
008ch mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
008fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0092h mov r10,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d2}
0095h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0098h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
009ch shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
009fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00a2h mov r10,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba b5 9e 83 cc be 01 00 00}
00ach add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00afh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00b2h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00b6h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00b9h lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
00bdh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00c1h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00c6h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00c9h cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
00cdh jl short 008ch                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00cfh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d3h mov r8d,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 40 00 00 00}
00d9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00dch mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00dfh shl ecx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 06}
00e2h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00e5h ja short 0155h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00e7h mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00eah sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00ech movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00efh lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00f3h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00f6h ja short 015bh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00f8h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00fbh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00feh call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d c8 ff 4e}
0103h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
0106h cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
0109h jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 4f ff ff ff}
010fh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0112h je short 0125h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0114h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
0117h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
011ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
011dh movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0121h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0123h jne short 0127h                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0125h jmp short 013ah                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
0127h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
012ah je short 0161h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
012ch mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
012fh mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0132h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0135h ja short 0167h                          ; JA rel8 || 77 cb || encoded[2]{77 30}
0137h mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
013ah mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
013dh mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0141h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0144h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0148h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0149h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
014ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
014bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
014ch pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
014eh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0150h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0152h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0154h ret                                     ; RET || C3 || encoded[1]{c3}
0155h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 61 4b ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63a2940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 61 4b ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
0161h call 7ff7c63a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 63 4b ff}
0166h int 3                                   ; INT3 || CC || encoded[1]{cc}
0167h call 7ff7c63a2938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 61 4b ff}
016ch int 3                                   ; INT3 || CC || encoded[1]{cc}
