------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> false<byte>()
; false[18] = {0f 1f 44 00 00 48 b8 d0 38 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a38d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 38 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> false<ushort>()
; false[18] = {0f 1f 44 00 00 48 b8 20 39 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a3920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 39 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> false<uint>()
; false[18] = {0f 1f 44 00 00 48 b8 40 39 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a3940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 39 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> false<ulong>()
; false[18] = {0f 1f 44 00 00 48 b8 60 39 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a3960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 39 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> false<byte>(in BitMatrix<byte> A)
; false_g8u[18] = {0f 1f 44 00 00 48 b8 d0 38 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a38d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 38 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> false<ushort>(in BitMatrix<ushort> A)
; false_g16u[18] = {0f 1f 44 00 00 48 b8 20 39 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a3920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 39 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> false<uint>(in BitMatrix<uint> A)
; false_g32u[18] = {0f 1f 44 00 00 48 b8 40 39 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a3940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 39 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> false<ulong>(in BitMatrix<ulong> A)
; false_g64u[18] = {0f 1f 44 00 00 48 b8 60 39 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a3960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 39 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> false<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; false_g8u_8u[18] = {0f 1f 44 00 00 48 b8 d0 38 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a38d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 38 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> false<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; false_g16u_16u[18] = {0f 1f 44 00 00 48 b8 20 39 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a3920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 39 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> false<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; false_g32u_32u[18] = {0f 1f 44 00 00 48 b8 40 39 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a3940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 39 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> false<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; false_g64u_64u[18] = {0f 1f 44 00 00 48 b8 60 39 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71a3960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 39 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> false<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z)
; false_g[67] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 33 d2 e8 06 1c 1f ff 48 8b c6 48 83 c4 30 5e c3}
; TermCode = RET_INTR
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
0035h call 7ff7c63b0b20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 1c 1f ff}
003ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> false<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
; false_g[67] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 33 d2 e8 ce 42 7d ff 48 8b c6 48 83 c4 30 5e c3}
; TermCode = RET_INTR
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
0035h call 7ff7c6993248h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 42 7d ff}
003ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> false<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z)
; false_g[67] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 33 d2 e8 56 3a 7d ff 48 8b c6 48 83 c4 30 5e c3}
; TermCode = RET_INTR
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
0035h call 7ff7c6992a30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 3a 7d ff}
003ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> false<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
; false_g[67] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 33 d2 e8 5e 2f 7d ff 48 8b c6 48 83 c4 30 5e c3}
; TermCode = RET_INTR
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
0035h call 7ff7c6991f98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 2f 7d ff}
003ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
