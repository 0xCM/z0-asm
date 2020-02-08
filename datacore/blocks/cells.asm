------------------------------------------------------------------------------------------------------------------------
; Block16<ushort> cells(N16 n, ushort x0)
; cells_(n16,16u)[106] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 41 8b f0 48 b9 a8 b0 cc c7 f7 7f 00 00 ba 01 00 00 00 e8 45 94 4f 5f 66 89 70 10 48 83 c0 10 ba 01 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 c3 84 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov rcx,7ff7c7ccb0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 cc c7 f7 7f 00 00}
0021h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 94 4f 5f}
002bh mov [rax+10h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 10}
002fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0033h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0038h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003dh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0041h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0045h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
004ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0050h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0053h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0058h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 84 4f 5f}
005dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0062h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<ulong> cells(N16 n, ulong x0)
; cells_(n16,64u)[144] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 49 8b f0 48 b9 a0 c8 a2 c7 f7 7f 00 00 ba 01 00 00 00 e8 85 86 4f 5f 48 8b f8 48 89 77 10 b8 01 00 00 00 33 c9 99 f7 f9 ba 01 00 00 00 83 ea 00 74 0f ba 01 00 00 00 b9 10 00 00 00 e8 e3 ad ff ff 48 83 c7 10 b8 01 00 00 00 48 8d 54 24 20 c5 f8 57 c0 c5 fa 7f 02 48 8d 54 24 20 48 89 3a 89 42 08 48 8b fb 48 8d 74 24 20 e8 dd 76 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0017h mov rcx,7ff7c7a2c8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c8 a2 c7 f7 7f 00 00}
0021h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 86 4f 5f}
002bh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
002eh mov [rdi+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 77 10}
0032h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0037h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0039h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
003ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
003ch mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0041h sub edx,0                               ; SUB r/m32, imm8 || o32 83 /5 ib || encoded[3]{83 ea 00}
0044h je short 0055h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
0046h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
004bh mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0050h call 7ff7c7d69568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 ad ff ff}
0055h add rdi,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c7 10}
0059h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
005eh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0063h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0067h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
006bh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0070h mov [rdx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3a}
0073h mov [rdx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 42 08}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 76 4f 5f}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<ulong> cells(N32 n, ulong x0)
; cells_(n32,64u)[144] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 49 8b f0 48 b9 a0 c8 a2 c7 f7 7f 00 00 ba 01 00 00 00 e8 85 85 4f 5f 48 8b f8 48 89 77 10 b8 01 00 00 00 33 c9 99 f7 f9 ba 01 00 00 00 83 ea 00 74 0f ba 01 00 00 00 b9 20 00 00 00 e8 e3 ac ff ff 48 83 c7 10 b8 01 00 00 00 48 8d 54 24 20 c5 f8 57 c0 c5 fa 7f 02 48 8d 54 24 20 48 89 3a 89 42 08 48 8b fb 48 8d 74 24 20 e8 dd 75 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0017h mov rcx,7ff7c7a2c8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c8 a2 c7 f7 7f 00 00}
0021h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 85 4f 5f}
002bh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
002eh mov [rdi+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 77 10}
0032h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0037h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0039h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
003ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
003ch mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0041h sub edx,0                               ; SUB r/m32, imm8 || o32 83 /5 ib || encoded[3]{83 ea 00}
0044h je short 0055h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
0046h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
004bh mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0050h call 7ff7c7d69568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 ac ff ff}
0055h add rdi,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c7 10}
0059h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
005eh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0063h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0067h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
006bh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0070h mov [rdx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3a}
0073h mov [rdx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 42 08}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 75 4f 5f}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<byte> cells(N32 n, byte x0, byte x1, byte x2, byte x3)
; cells_(n32,8u,8u,8u,8u)[129] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 41 8b f0 41 8b f9 48 b9 10 ea 73 c7 f7 7f 00 00 ba 04 00 00 00 e8 d2 84 4f 5f 40 88 70 10 40 88 78 11 8b 74 24 70 40 88 70 12 8b 74 24 78 40 88 70 13 48 83 c0 10 ba 04 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 3c 75 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c773ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 73 c7 f7 7f 00 00}
0024h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 84 4f 5f}
002eh mov [rax+10h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 10}
0032h mov [rax+11h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 11}
0036h mov esi,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 70}
003ah mov [rax+12h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 12}
003eh mov esi,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 78}
0042h mov [rax+13h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 13}
0046h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
004ah mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
004fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0061h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0064h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0067h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
006fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 75 4f 5f}
0074h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0076h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0079h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<ushort> cells(N32 n, ushort x0, ushort x1)
; cells_(n32,16u,16u)[113] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 41 8b f0 41 8b f9 48 b9 a8 b0 cc c7 f7 7f 00 00 ba 02 00 00 00 e8 32 84 4f 5f 66 89 70 10 66 89 78 12 48 83 c0 10 ba 02 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 ac 74 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c7ccb0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 cc c7 f7 7f 00 00}
0024h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 84 4f 5f}
002eh mov [rax+10h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 10}
0032h mov [rax+12h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 12}
0036h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
003ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
003fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0051h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0054h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0057h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
005fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 74 4f 5f}
0064h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0066h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0069h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
006dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<uint> cells(N32 n, uint x0)
; cells_(n32,32u)[105] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 41 8b f0 48 b9 a8 ca a2 c7 f7 7f 00 00 ba 01 00 00 00 e8 a5 83 4f 5f 89 70 10 48 83 c0 10 ba 01 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 24 74 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov rcx,7ff7c7a2caa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ca a2 c7 f7 7f 00 00}
0021h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 83 4f 5f}
002bh mov [rax+10h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 10}
002eh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0032h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0040h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0044h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0049h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004ch mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
004fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0052h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0057h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 74 4f 5f}
005ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0065h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0066h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0067h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0068h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<byte> cells(N64 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7)
; cells_(n64,8u,8u,8u,8u,8u,8u,8u,8u)[173] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 41 8b f0 41 8b f9 48 b9 10 ea 73 c7 f7 7f 00 00 ba 08 00 00 00 e8 12 7f 4f 5f 40 88 70 10 40 88 78 11 8b 74 24 70 40 88 70 12 8b 74 24 78 40 88 70 13 8b b4 24 80 00 00 00 40 88 70 14 8b b4 24 88 00 00 00 40 88 70 15 8b b4 24 90 00 00 00 40 88 70 16 8b b4 24 98 00 00 00 40 88 70 17 48 83 c0 10 ba 08 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 50 6f 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c773ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 73 c7 f7 7f 00 00}
0024h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 7f 4f 5f}
002eh mov [rax+10h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 10}
0032h mov [rax+11h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 11}
0036h mov esi,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 70}
003ah mov [rax+12h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 12}
003eh mov esi,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 78}
0042h mov [rax+13h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 13}
0046h mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
004dh mov [rax+14h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 14}
0051h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
0058h mov [rax+15h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 15}
005ch mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
0063h mov [rax+16h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 16}
0067h mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
006eh mov [rax+17h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 17}
0072h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0076h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
007bh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0080h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0084h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0088h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
008dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0090h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0093h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0096h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
009bh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 6f 4f 5f}
00a0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a5h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00a9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ach ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ushort> cells(N64 n, ushort x0, ushort x1, ushort x2, ushort x3)
; cells_(n64,16u,16u,16u,16u)[129] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 41 8b f0 41 8b f9 48 b9 a8 b0 cc c7 f7 7f 00 00 ba 04 00 00 00 e8 42 7e 4f 5f 66 89 70 10 66 89 78 12 8b 74 24 70 66 89 70 14 8b 74 24 78 66 89 70 16 48 83 c0 10 ba 04 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 ac 6e 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c7ccb0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 cc c7 f7 7f 00 00}
0024h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 7e 4f 5f}
002eh mov [rax+10h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 10}
0032h mov [rax+12h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 12}
0036h mov esi,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 70}
003ah mov [rax+14h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 14}
003eh mov esi,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 78}
0042h mov [rax+16h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 16}
0046h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
004ah mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
004fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0061h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0064h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0067h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
006fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 6e 4f 5f}
0074h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0076h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0079h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<uint> cells(N64 n, uint x0, uint x1)
; cells_(n64,32u,32u)[111] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 41 8b f0 41 8b f9 48 b9 a8 ca a2 c7 f7 7f 00 00 ba 02 00 00 00 e8 a2 7d 4f 5f 89 70 10 89 78 14 48 83 c0 10 ba 02 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 1e 6e 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c7a2caa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ca a2 c7 f7 7f 00 00}
0024h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 7d 4f 5f}
002eh mov [rax+10h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 10}
0031h mov [rax+14h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 14}
0034h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0038h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
003dh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0042h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0046h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
004fh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0052h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0055h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0058h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
005dh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 6e 4f 5f}
0062h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0064h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0067h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
006bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ulong> cells(N64 n, ulong x0)
; cells_(n64,64u)[106] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 49 8b f0 48 b9 a0 c8 a2 c7 f7 7f 00 00 ba 01 00 00 00 e8 15 7d 4f 5f 48 89 70 10 48 83 c0 10 ba 01 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 93 6d 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0017h mov rcx,7ff7c7a2c8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c8 a2 c7 f7 7f 00 00}
0021h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 7d 4f 5f}
002bh mov [rax+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 10}
002fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0033h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0038h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003dh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0041h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0045h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
004ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0050h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0053h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0058h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 6d 4f 5f}
005dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0062h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<byte> cells(N128 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xA, byte xB, byte xC, byte xD, byte xE, byte xF)
; cells_(n128,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u)[266] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 8b f0 41 8b f9 48 b9 10 ea 73 c7 f7 7f 00 00 ba 10 00 00 00 e8 7d 7c 4f 5f 40 88 70 10 40 88 78 11 8b 74 24 70 40 88 70 12 8b 74 24 78 40 88 70 13 8b b4 24 80 00 00 00 40 88 70 14 8b b4 24 88 00 00 00 40 88 70 15 8b b4 24 90 00 00 00 40 88 70 16 8b b4 24 98 00 00 00 40 88 70 17 8b b4 24 a0 00 00 00 40 88 70 18 8b b4 24 a8 00 00 00 40 88 70 19 8b b4 24 b0 00 00 00 40 88 70 1a 8b b4 24 b8 00 00 00 40 88 70 1b 8b b4 24 c0 00 00 00 40 88 70 1c 8b b4 24 c8 00 00 00 40 88 70 1d 8b b4 24 d0 00 00 00 40 88 70 1e 8b b4 24 d8 00 00 00 40 88 70 1f 48 83 c0 10 ba 10 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 63 6c 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0016h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0019h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
001ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001fh mov rcx,7ff7c773ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 73 c7 f7 7f 00 00}
0029h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
002eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 7c 4f 5f}
0033h mov [rax+10h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 10}
0037h mov [rax+11h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 11}
003bh mov esi,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 70}
003fh mov [rax+12h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 12}
0043h mov esi,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 78}
0047h mov [rax+13h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 13}
004bh mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
0052h mov [rax+14h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 14}
0056h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
005dh mov [rax+15h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 15}
0061h mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
0068h mov [rax+16h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 16}
006ch mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
0073h mov [rax+17h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 17}
0077h mov esi,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a0 00 00 00}
007eh mov [rax+18h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 18}
0082h mov esi,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a8 00 00 00}
0089h mov [rax+19h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 19}
008dh mov esi,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b0 00 00 00}
0094h mov [rax+1ah],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1a}
0098h mov esi,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b8 00 00 00}
009fh mov [rax+1bh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1b}
00a3h mov esi,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c0 00 00 00}
00aah mov [rax+1ch],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1c}
00aeh mov esi,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c8 00 00 00}
00b5h mov [rax+1dh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1d}
00b9h mov esi,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d0 00 00 00}
00c0h mov [rax+1eh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1e}
00c4h mov esi,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d8 00 00 00}
00cbh mov [rax+1fh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1f}
00cfh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d3h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
00d8h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
00ddh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
00e1h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00e5h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
00eah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
00edh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
00f0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00f3h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
00f8h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 6c 4f 5f}
00fdh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00ffh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0102h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0106h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0107h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0108h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0109h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ushort> cells(N128 n, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7)
; cells_(n128,16u,16u,16u,16u,16u,16u,16u,16u)[173] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 41 8b f0 41 8b f9 48 b9 a8 b0 cc c7 f7 7f 00 00 ba 08 00 00 00 e8 52 7b 4f 5f 66 89 70 10 66 89 78 12 8b 74 24 70 66 89 70 14 8b 74 24 78 66 89 70 16 8b b4 24 80 00 00 00 66 89 70 18 8b b4 24 88 00 00 00 66 89 70 1a 8b b4 24 90 00 00 00 66 89 70 1c 8b b4 24 98 00 00 00 66 89 70 1e 48 83 c0 10 ba 08 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 90 6b 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c7ccb0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 cc c7 f7 7f 00 00}
0024h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 7b 4f 5f}
002eh mov [rax+10h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 10}
0032h mov [rax+12h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 12}
0036h mov esi,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 70}
003ah mov [rax+14h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 14}
003eh mov esi,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 78}
0042h mov [rax+16h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 16}
0046h mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
004dh mov [rax+18h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 18}
0051h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
0058h mov [rax+1ah],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1a}
005ch mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
0063h mov [rax+1ch],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1c}
0067h mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
006eh mov [rax+1eh],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1e}
0072h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0076h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
007bh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0080h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0084h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0088h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
008dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0090h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0093h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0096h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
009bh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 6b 4f 5f}
00a0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a5h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00a9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ach ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<uint> cells(N128 n, uint x0, uint x1, uint x2, uint x3)
; cells_(n128,32u,32u,32u,32u)[125] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 41 8b f0 41 8b f9 48 b9 a8 ca a2 c7 f7 7f 00 00 ba 04 00 00 00 e8 82 7a 4f 5f 89 70 10 89 78 14 8b 74 24 70 89 70 18 8b 74 24 78 89 70 1c 48 83 c0 10 ba 04 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 f0 6a 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c7a2caa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ca a2 c7 f7 7f 00 00}
0024h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 7a 4f 5f}
002eh mov [rax+10h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 10}
0031h mov [rax+14h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 14}
0034h mov esi,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 70}
0038h mov [rax+18h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 18}
003bh mov esi,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 78}
003fh mov [rax+1ch],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 1c}
0042h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0046h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
004bh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0050h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0054h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0058h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
005dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0060h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0063h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0066h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
006bh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 6a 4f 5f}
0070h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0072h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0075h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0079h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ulong> cells(N128 n, ulong x0, ulong x1)
; cells_(n128,64u,64u)[113] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 49 8b f0 49 8b f9 48 b9 a0 c8 a2 c7 f7 7f 00 00 ba 02 00 00 00 e8 e2 75 4f 5f 48 89 70 10 48 89 78 18 48 83 c0 10 ba 02 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 5c 66 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0017h mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
001ah mov rcx,7ff7c7a2c8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c8 a2 c7 f7 7f 00 00}
0024h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 75 4f 5f}
002eh mov [rax+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 10}
0032h mov [rax+18h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 18}
0036h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
003ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
003fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0051h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0054h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0057h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
005fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 66 4f 5f}
0064h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0066h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0069h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
006dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<byte> cells(N256 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xA, byte xB, byte xC, byte xD, byte xE, byte xF, byte x10, byte x11, byte x12, byte x13, byte x14, byte x15, byte x16, byte x17, byte x18, byte x19, byte x1A, byte x1B, byte x1C, byte x1D, byte x1E, byte x1F)
; cells_(n256,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u)[442] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 8b f0 41 8b f9 48 b9 10 ea 73 c7 f7 7f 00 00 ba 20 00 00 00 e8 4d 75 4f 5f 40 88 70 10 40 88 78 11 8b 74 24 70 40 88 70 12 8b 74 24 78 40 88 70 13 8b b4 24 80 00 00 00 40 88 70 14 8b b4 24 88 00 00 00 40 88 70 15 8b b4 24 90 00 00 00 40 88 70 16 8b b4 24 98 00 00 00 40 88 70 17 8b b4 24 a0 00 00 00 40 88 70 18 8b b4 24 a8 00 00 00 40 88 70 19 8b b4 24 b0 00 00 00 40 88 70 1a 8b b4 24 b8 00 00 00 40 88 70 1b 8b b4 24 c0 00 00 00 40 88 70 1c 8b b4 24 c8 00 00 00 40 88 70 1d 8b b4 24 d0 00 00 00 40 88 70 1e 8b b4 24 d8 00 00 00 40 88 70 1f 8b b4 24 e0 00 00 00 40 88 70 20 8b b4 24 e8 00 00 00 40 88 70 21 8b b4 24 f0 00 00 00 40 88 70 22 8b b4 24 f8 00 00 00 40 88 70 23 8b b4 24 00 01 00 00 40 88 70 24 8b b4 24 08 01 00 00 40 88 70 25 8b b4 24 10 01 00 00 40 88 70 26 8b b4 24 18 01 00 00 40 88 70 27 8b b4 24 20 01 00 00 40 88 70 28 8b b4 24 28 01 00 00 40 88 70 29 8b b4 24 30 01 00 00 40 88 70 2a 8b b4 24 38 01 00 00 40 88 70 2b 8b b4 24 40 01 00 00 40 88 70 2c 8b b4 24 48 01 00 00 40 88 70 2d 8b b4 24 50 01 00 00 40 88 70 2e 8b b4 24 58 01 00 00 40 88 70 2f 48 83 c0 10 ba 20 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 83 64 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0016h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0019h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
001ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001fh mov rcx,7ff7c773ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 73 c7 f7 7f 00 00}
0029h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
002eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 75 4f 5f}
0033h mov [rax+10h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 10}
0037h mov [rax+11h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 11}
003bh mov esi,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 70}
003fh mov [rax+12h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 12}
0043h mov esi,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 78}
0047h mov [rax+13h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 13}
004bh mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
0052h mov [rax+14h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 14}
0056h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
005dh mov [rax+15h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 15}
0061h mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
0068h mov [rax+16h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 16}
006ch mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
0073h mov [rax+17h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 17}
0077h mov esi,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a0 00 00 00}
007eh mov [rax+18h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 18}
0082h mov esi,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a8 00 00 00}
0089h mov [rax+19h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 19}
008dh mov esi,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b0 00 00 00}
0094h mov [rax+1ah],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1a}
0098h mov esi,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b8 00 00 00}
009fh mov [rax+1bh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1b}
00a3h mov esi,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c0 00 00 00}
00aah mov [rax+1ch],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1c}
00aeh mov esi,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c8 00 00 00}
00b5h mov [rax+1dh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1d}
00b9h mov esi,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d0 00 00 00}
00c0h mov [rax+1eh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1e}
00c4h mov esi,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d8 00 00 00}
00cbh mov [rax+1fh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1f}
00cfh mov esi,[rsp+0e0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 e0 00 00 00}
00d6h mov [rax+20h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 20}
00dah mov esi,[rsp+0e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 e8 00 00 00}
00e1h mov [rax+21h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 21}
00e5h mov esi,[rsp+0f0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 f0 00 00 00}
00ech mov [rax+22h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 22}
00f0h mov esi,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 f8 00 00 00}
00f7h mov [rax+23h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 23}
00fbh mov esi,[rsp+100h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 00 01 00 00}
0102h mov [rax+24h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 24}
0106h mov esi,[rsp+108h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 08 01 00 00}
010dh mov [rax+25h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 25}
0111h mov esi,[rsp+110h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 10 01 00 00}
0118h mov [rax+26h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 26}
011ch mov esi,[rsp+118h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 18 01 00 00}
0123h mov [rax+27h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 27}
0127h mov esi,[rsp+120h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 20 01 00 00}
012eh mov [rax+28h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 28}
0132h mov esi,[rsp+128h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 28 01 00 00}
0139h mov [rax+29h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 29}
013dh mov esi,[rsp+130h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 30 01 00 00}
0144h mov [rax+2ah],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2a}
0148h mov esi,[rsp+138h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 38 01 00 00}
014fh mov [rax+2bh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2b}
0153h mov esi,[rsp+140h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 40 01 00 00}
015ah mov [rax+2ch],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2c}
015eh mov esi,[rsp+148h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 48 01 00 00}
0165h mov [rax+2dh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2d}
0169h mov esi,[rsp+150h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 50 01 00 00}
0170h mov [rax+2eh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2e}
0174h mov esi,[rsp+158h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 58 01 00 00}
017bh mov [rax+2fh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2f}
017fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0183h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0188h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
018dh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0191h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0195h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
019ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
019dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
01a0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01a3h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
01a8h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 64 4f 5f}
01adh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01afh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01b2h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
01b6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01b7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01b8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01b9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ushort> cells(N256 n, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort xA, ushort xB, ushort xC, ushort xD, ushort xE, ushort xF)
; cells_(n256,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u)[266] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 8b f0 41 8b f9 48 b9 a8 b0 cc c7 f7 7f 00 00 ba 10 00 00 00 e8 6d 73 4f 5f 66 89 70 10 66 89 78 12 8b 74 24 70 66 89 70 14 8b 74 24 78 66 89 70 16 8b b4 24 80 00 00 00 66 89 70 18 8b b4 24 88 00 00 00 66 89 70 1a 8b b4 24 90 00 00 00 66 89 70 1c 8b b4 24 98 00 00 00 66 89 70 1e 8b b4 24 a0 00 00 00 66 89 70 20 8b b4 24 a8 00 00 00 66 89 70 22 8b b4 24 b0 00 00 00 66 89 70 24 8b b4 24 b8 00 00 00 66 89 70 26 8b b4 24 c0 00 00 00 66 89 70 28 8b b4 24 c8 00 00 00 66 89 70 2a 8b b4 24 d0 00 00 00 66 89 70 2c 8b b4 24 d8 00 00 00 66 89 70 2e 48 83 c0 10 ba 10 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 53 63 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0016h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0019h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
001ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001fh mov rcx,7ff7c7ccb0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 cc c7 f7 7f 00 00}
0029h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
002eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 73 4f 5f}
0033h mov [rax+10h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 10}
0037h mov [rax+12h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 12}
003bh mov esi,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 70}
003fh mov [rax+14h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 14}
0043h mov esi,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 78}
0047h mov [rax+16h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 16}
004bh mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
0052h mov [rax+18h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 18}
0056h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
005dh mov [rax+1ah],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1a}
0061h mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
0068h mov [rax+1ch],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1c}
006ch mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
0073h mov [rax+1eh],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1e}
0077h mov esi,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a0 00 00 00}
007eh mov [rax+20h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 20}
0082h mov esi,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a8 00 00 00}
0089h mov [rax+22h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 22}
008dh mov esi,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b0 00 00 00}
0094h mov [rax+24h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 24}
0098h mov esi,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b8 00 00 00}
009fh mov [rax+26h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 26}
00a3h mov esi,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c0 00 00 00}
00aah mov [rax+28h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 28}
00aeh mov esi,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c8 00 00 00}
00b5h mov [rax+2ah],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 2a}
00b9h mov esi,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d0 00 00 00}
00c0h mov [rax+2ch],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 2c}
00c4h mov esi,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d8 00 00 00}
00cbh mov [rax+2eh],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 2e}
00cfh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d3h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
00d8h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
00ddh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
00e1h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00e5h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
00eah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
00edh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
00f0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00f3h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
00f8h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 63 4f 5f}
00fdh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00ffh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0102h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0106h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0107h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0108h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0109h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<uint> cells(N256 n, uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7)
; cells_(n256,32u,32u,32u,32u,32u,32u,32u,32u)[165] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 41 8b f0 41 8b f9 48 b9 a8 ca a2 c7 f7 7f 00 00 ba 08 00 00 00 e8 42 72 4f 5f 89 70 10 89 78 14 8b 74 24 70 89 70 18 8b 74 24 78 89 70 1c 8b b4 24 80 00 00 00 89 70 20 8b b4 24 88 00 00 00 89 70 24 8b b4 24 90 00 00 00 89 70 28 8b b4 24 98 00 00 00 89 70 2c 48 83 c0 10 ba 08 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 88 62 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c7a2caa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ca a2 c7 f7 7f 00 00}
0024h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 72 4f 5f}
002eh mov [rax+10h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 10}
0031h mov [rax+14h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 14}
0034h mov esi,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 70}
0038h mov [rax+18h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 18}
003bh mov esi,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 78}
003fh mov [rax+1ch],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 1c}
0042h mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
0049h mov [rax+20h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 20}
004ch mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
0053h mov [rax+24h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 24}
0056h mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
005dh mov [rax+28h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 28}
0060h mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
0067h mov [rax+2ch],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 2c}
006ah add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
006eh mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0073h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0078h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
007ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0080h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0085h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0088h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
008bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
008eh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0093h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 62 4f 5f}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00a1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ulong> cells(N256 n, ulong x0, ulong x1, ulong x2, ulong x3)
; cells_(n256,64u,64u,64u,64u)[131] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 49 8b f0 49 8b f9 48 b9 a0 c8 a2 c7 f7 7f 00 00 ba 04 00 00 00 e8 82 71 4f 5f 48 89 70 10 48 89 78 18 48 8b 74 24 70 48 89 70 20 48 8b 74 24 78 48 89 70 28 48 83 c0 10 ba 04 00 00 00 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 48 89 01 89 51 08 48 8b fb 48 8d 74 24 20 e8 ea 61 4f 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0017h mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
001ah mov rcx,7ff7c7a2c8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c8 a2 c7 f7 7f 00 00}
0024h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 71 4f 5f}
002eh mov [rax+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 10}
0032h mov [rax+18h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 18}
0036h mov rsi,[rsp+70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 74 24 70}
003bh mov [rax+20h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 20}
003fh mov rsi,[rsp+78h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 74 24 78}
0044h mov [rax+28h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 28}
0048h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
004ch mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0051h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0056h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005ah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0063h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0066h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0069h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006ch lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0071h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 61 4f 5f}
0076h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0078h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
007fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
