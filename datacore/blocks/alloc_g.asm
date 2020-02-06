------------------------------------------------------------------------------------------------------------------------
; Block16<byte> alloc<byte>(N16 w, int blocks, byte t)
; alloc_gn16_32i_8u[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 10 ea 35 c6 f7 7f 00 00 e8 25 e4 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 b6 d4 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 e4 34 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 d4 34 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<sbyte> alloc<sbyte>(N16 w, int blocks, sbyte t)
; alloc_gn16_32i_8i[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 98 f0 35 c6 f7 7f 00 00 e8 b5 e3 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 46 d4 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c635f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 35 c6 f7 7f 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 e3 34 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 d4 34 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<ushort> alloc<ushort>(N16 w, int blocks, ushort t)
; alloc_gn16_32i_16u[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 20 f1 91 c6 f7 7f 00 00 e8 48 e3 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 d9 d3 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c691f120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f1 91 c6 f7 7f 00 00}
0023h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 e3 34 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 d3 34 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<short> alloc<short>(N16 w, int blocks, short t)
; alloc_gn16_32i_16i[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 80 73 bd c6 f7 7f 00 00 e8 d8 e2 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 69 d3 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c6bd7380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 73 bd c6 f7 7f 00 00}
0023h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e2 34 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 d3 34 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<byte> alloc<byte>(N32 w, int blocks, byte t)
; alloc_gn32_32i_8u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 10 ea 35 c6 f7 7f 00 00 e8 54 de 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 e5 ce 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 de 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ce 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<sbyte> alloc<sbyte>(N32 w, int blocks, sbyte t)
; alloc_gn32_32i_8i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 98 f0 35 c6 f7 7f 00 00 e8 e4 dd 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 75 ce 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c635f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 35 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 dd 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 ce 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<ushort> alloc<ushort>(N32 w, int blocks, ushort t)
; alloc_gn32_32i_16u[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 20 f1 91 c6 f7 7f 00 00 e8 75 dd 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 06 ce 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c691f120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f1 91 c6 f7 7f 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 dd 34 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 ce 34 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<short> alloc<short>(N32 w, int blocks, short t)
; alloc_gn32_32i_16i[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 80 73 bd c6 f7 7f 00 00 e8 05 dd 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 96 cd 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c6bd7380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 73 bd c6 f7 7f 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 dd 34 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 cd 34 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<uint> alloc<uint>(N32 w, int blocks, uint t)
; alloc_gn32_32i_32u[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 c8 b4 86 c6 f7 7f 00 00 e8 98 dc 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 29 cd 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c686b4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b4 86 c6 f7 7f 00 00}
0023h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 dc 34 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 cd 34 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<int> alloc<int>(N32 w, int blocks, int t)
; alloc_gn32_32i_32i[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 48 5f 42 c6 f7 7f 00 00 e8 28 dc 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 b9 cc 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c6425f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 42 c6 f7 7f 00 00}
0023h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 dc 34 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 cc 34 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<float> alloc<float>(N32 w, int blocks, float t)
; alloc_gn32_32i_32f[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 90 d3 a3 c6 f7 7f 00 00 e8 b8 db 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 49 cc 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c6a3d390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d3 a3 c6 f7 7f 00 00}
0023h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 db 34 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 cc 34 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<byte> alloc<byte>(N64 w, int blocks, byte t)
; alloc_gn64_32i_8u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 10 ea 35 c6 f7 7f 00 00 e8 44 db 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 d5 cb 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 db 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 cb 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<sbyte> alloc<sbyte>(N64 w, int blocks, sbyte t)
; alloc_gn64_32i_8i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 98 f0 35 c6 f7 7f 00 00 e8 d4 da 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 65 cb 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c635f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 35 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 da 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 cb 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ushort> alloc<ushort>(N64 w, int blocks, ushort t)
; alloc_gn64_32i_16u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 20 f1 91 c6 f7 7f 00 00 e8 64 da 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 f5 ca 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c691f120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f1 91 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 da 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 ca 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<short> alloc<short>(N64 w, int blocks, short t)
; alloc_gn64_32i_16i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 80 73 bd c6 f7 7f 00 00 e8 f4 d9 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 85 ca 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6bd7380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 73 bd c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 d9 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 ca 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<uint> alloc<uint>(N64 w, int blocks, uint t)
; alloc_gn64_32i_32u[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 c8 b4 86 c6 f7 7f 00 00 e8 85 d9 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 16 ca 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c686b4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b4 86 c6 f7 7f 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 d9 34 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 ca 34 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<int> alloc<int>(N64 w, int blocks, int t)
; alloc_gn64_32i_32i[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 48 5f 42 c6 f7 7f 00 00 e8 15 d9 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 a6 c9 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c6425f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 42 c6 f7 7f 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d9 34 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 c9 34 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ulong> alloc<ulong>(N64 w, int blocks, ulong t)
; alloc_gn64_32i_64u[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 18 26 5d c6 f7 7f 00 00 e8 a8 d8 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 39 c9 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c65d2618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 26 5d c6 f7 7f 00 00}
0023h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 d8 34 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 c9 34 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<long> alloc<long>(N64 w, int blocks, long t)
; alloc_gn64_32i_64i[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 68 81 bd c6 f7 7f 00 00 e8 38 d8 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 c9 c8 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c6bd8168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 81 bd c6 f7 7f 00 00}
0023h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 d8 34 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 c8 34 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<float> alloc<float>(N64 w, int blocks, float t)
; alloc_gn64_32i_32f[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 90 d3 a3 c6 f7 7f 00 00 e8 c5 d7 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 56 c8 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c6a3d390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d3 a3 c6 f7 7f 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d7 34 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 c8 34 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<double> alloc<double>(N64 w, int blocks, double t)
; alloc_gn64_32i_64f[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 98 d5 a3 c6 f7 7f 00 00 e8 58 d7 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 e9 c7 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c6a3d598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d5 a3 c6 f7 7f 00 00}
0023h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 d7 34 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 c7 34 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<byte> alloc<byte>(N128 w, int blocks, byte t)
; alloc_gn128_32i_8u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 10 ea 35 c6 f7 7f 00 00 e8 e4 d6 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 75 c7 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 d6 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c7 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<sbyte> alloc<sbyte>(N128 w, int blocks, sbyte t)
; alloc_gn128_32i_8i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 98 f0 35 c6 f7 7f 00 00 e8 74 d6 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 05 c7 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c635f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 35 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 d6 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 c7 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ushort> alloc<ushort>(N128 w, int blocks, ushort t)
; alloc_gn128_32i_16u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 20 f1 91 c6 f7 7f 00 00 e8 04 d6 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 95 c6 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c691f120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f1 91 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 d6 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 c6 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<short> alloc<short>(N128 w, int blocks, short t)
; alloc_gn128_32i_16i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 80 73 bd c6 f7 7f 00 00 e8 94 d5 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 25 c6 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6bd7380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 73 bd c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 d5 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c6 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<uint> alloc<uint>(N128 w, int blocks, uint t)
; alloc_gn128_32i_32u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 c8 b4 86 c6 f7 7f 00 00 e8 24 d5 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 b5 c5 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c686b4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b4 86 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d5 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 c5 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<int> alloc<int>(N128 w, int blocks, int t)
; alloc_gn128_32i_32i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 48 5f 42 c6 f7 7f 00 00 e8 b4 d4 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 45 c5 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6425f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 42 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 d4 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 c5 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ulong> alloc<ulong>(N128 w, int blocks, ulong t)
; alloc_gn128_32i_64u[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 18 26 5d c6 f7 7f 00 00 e8 45 d4 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 d6 c4 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c65d2618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 26 5d c6 f7 7f 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 d4 34 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 c4 34 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<long> alloc<long>(N128 w, int blocks, long t)
; alloc_gn128_32i_64i[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 68 81 bd c6 f7 7f 00 00 e8 d5 d3 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 66 c4 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c6bd8168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 81 bd c6 f7 7f 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 d3 34 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 c4 34 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<float> alloc<float>(N128 w, int blocks, float t)
; alloc_gn128_32i_32f[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 90 d3 a3 c6 f7 7f 00 00 e8 64 d3 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 f5 c3 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6a3d390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d3 a3 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 d3 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c3 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<double> alloc<double>(N128 w, int blocks, double t)
; alloc_gn128_32i_64f[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 98 d5 a3 c6 f7 7f 00 00 e8 f5 d2 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 86 c3 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c6a3d598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d5 a3 c6 f7 7f 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 d2 34 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 c3 34 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<byte> alloc<byte>(N256 w, int blocks, byte t)
; alloc_gn256_32i_8u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 05 49 63 d0 48 b9 10 ea 35 c6 f7 7f 00 00 e8 74 ce 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 05 bf 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 05}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ce 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 bf 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<sbyte> alloc<sbyte>(N256 w, int blocks, sbyte t)
; alloc_gn256_32i_8i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 05 49 63 d0 48 b9 98 f0 35 c6 f7 7f 00 00 e8 04 ce 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 95 be 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 05}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c635f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 35 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ce 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 be 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ushort> alloc<ushort>(N256 w, int blocks, ushort t)
; alloc_gn256_32i_16u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 20 f1 91 c6 f7 7f 00 00 e8 94 cd 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 25 be 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c691f120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f1 91 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 cd 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 be 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<short> alloc<short>(N256 w, int blocks, short t)
; alloc_gn256_32i_16i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 80 73 bd c6 f7 7f 00 00 e8 24 cd 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 b5 bd 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6bd7380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 73 bd c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 cd 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 bd 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<uint> alloc<uint>(N256 w, int blocks, uint t)
; alloc_gn256_32i_32u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 c8 b4 86 c6 f7 7f 00 00 e8 b4 cc 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 45 bd 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c686b4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b4 86 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 cc 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 bd 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<int> alloc<int>(N256 w, int blocks, int t)
; alloc_gn256_32i_32i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 48 5f 42 c6 f7 7f 00 00 e8 44 cc 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 d5 bc 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6425f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 42 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 cc 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 bc 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ulong> alloc<ulong>(N256 w, int blocks, ulong t)
; alloc_gn256_32i_64u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 18 26 5d c6 f7 7f 00 00 e8 d4 cb 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 65 bc 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c65d2618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 26 5d c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 cb 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 bc 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<long> alloc<long>(N256 w, int blocks, long t)
; alloc_gn256_32i_64i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 68 81 bd c6 f7 7f 00 00 e8 64 cb 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 f5 bb 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6bd8168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 81 bd c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 cb 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 bb 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<float> alloc<float>(N256 w, int blocks, float t)
; alloc_gn256_32i_32f[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 90 d3 a3 c6 f7 7f 00 00 e8 f4 ca 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 85 bb 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6a3d390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d3 a3 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 ca 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 bb 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<double> alloc<double>(N256 w, int blocks, double t)
; alloc_gn256_32i_64f[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 98 d5 a3 c6 f7 7f 00 00 e8 84 ca 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 15 bb 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6a3d598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d5 a3 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 ca 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 bb 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<byte> alloc<byte>(N512 w, int blocks, byte t)
; alloc_gn512_32i_8u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 06 49 63 d0 48 b9 10 ea 35 c6 f7 7f 00 00 e8 14 ca 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 a5 ba 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 06}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ca 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 ba 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<sbyte> alloc<sbyte>(N512 w, int blocks, sbyte t)
; alloc_gn512_32i_8i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 06 49 63 d0 48 b9 98 f0 35 c6 f7 7f 00 00 e8 a4 c9 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 35 ba 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 06}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c635f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 35 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 c9 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 ba 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ushort> alloc<ushort>(N512 w, int blocks, ushort t)
; alloc_gn512_32i_16u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 05 49 63 d0 48 b9 20 f1 91 c6 f7 7f 00 00 e8 34 c9 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 c5 b9 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 05}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c691f120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f1 91 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 c9 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 b9 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<short> alloc<short>(N512 w, int blocks, short t)
; alloc_gn512_32i_16i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 05 49 63 d0 48 b9 80 73 bd c6 f7 7f 00 00 e8 c4 c8 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 55 b9 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 05}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6bd7380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 73 bd c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 c8 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 b9 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<uint> alloc<uint>(N512 w, int blocks, uint t)
; alloc_gn512_32i_32u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 c8 b4 86 c6 f7 7f 00 00 e8 54 c8 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 e5 b8 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c686b4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b4 86 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 c8 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 b8 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<int> alloc<int>(N512 w, int blocks, int t)
; alloc_gn512_32i_32i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 48 5f 42 c6 f7 7f 00 00 e8 e4 c7 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 75 b8 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6425f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 42 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 c7 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 b8 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ulong> alloc<ulong>(N512 w, int blocks, ulong t)
; alloc_gn512_32i_64u[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 18 26 5d c6 f7 7f 00 00 e8 74 c7 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 05 b8 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c65d2618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 26 5d c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 c7 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b8 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<long> alloc<long>(N512 w, int blocks, long t)
; alloc_gn512_32i_64i[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 68 81 bd c6 f7 7f 00 00 e8 04 c7 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 95 b7 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6bd8168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 81 bd c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 c7 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 b7 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<float> alloc<float>(N512 w, int blocks, float t)
; alloc_gn512_32i_32f[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 90 d3 a3 c6 f7 7f 00 00 e8 94 c6 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 25 b7 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6a3d390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d3 a3 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 c6 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 b7 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<double> alloc<double>(N512 w, int blocks, double t)
; alloc_gn512_32i_64f[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 98 d5 a3 c6 f7 7f 00 00 e8 24 c6 34 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 b5 b6 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c6a3d598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d5 a3 c6 f7 7f 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 c6 34 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 b6 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
