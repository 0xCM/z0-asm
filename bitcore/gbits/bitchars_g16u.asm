; ReadOnlySpan<Char> bitchars<ushort>(in ushort src)
; bitchars_g16u[7ff7c6e7a480h, 7ff7c6e7a510h][144] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 e0 4d c6 f7 7f 00 00 ba 10 00 00 00 e8 3d c9 02 5f 0f b7 17 48 8d 48 10 0f b7 d2 44 0f b6 c2 41 c1 e0 04 4d 63 c0 49 b9 ad 24 dc ed c8 01 00 00 4d 03 c1 4c 8b c9 c4 c1 7a 6f 00 c4 c1 7a 7f 01 c1 fa 08 0f b6 d2 c1 e2 04 48 63 d2 49 b8 ad 24 dc ed c8 01 00 00 49 03 d0 48 83 c1 10 c5 fa 6f 02 c5 fa 7f 01 48 83 c0 10 ba 10 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:33:902
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c64de060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e0 4d c6 f7 7f 00 00}
0019h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d c9 02 5f}
0023h movzx edx,word ptr [rdi]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 17}
0026h lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
002ah movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002dh movzx r8d,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c2}
0031h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
0035h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0038h mov r9,1c8eddc24adh                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 ad 24 dc ed c8 01 00 00}
0042h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0045h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0048h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
004dh vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
0052h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0055h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0058h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
005bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
005eh mov r8,1c8eddc24adh                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 ad 24 dc ed c8 01 00 00}
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
