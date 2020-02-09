------------------------------------------------------------------------------------------------------------------------
; Block16<byte> alloc<byte>(N16 w, int blocks, byte t)
; alloc_g[8u](n16,32i,8u)[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 10 ea 71 c7 f7 7f 00 00 e8 95 46 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 26 37 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001ch mov rcx,7ff7c771ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 71 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 46 54 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 37 54 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<sbyte> alloc<sbyte>(N16 w, int blocks, sbyte t)
; alloc_g[8i](n16,32i,8i)[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 98 f0 71 c7 f7 7f 00 00 e8 65 44 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 f6 34 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001ch mov rcx,7ff7c771f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 71 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 44 54 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 34 54 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<ushort> alloc<ushort>(N16 w, int blocks, ushort t)
; alloc_g[16u](n16,32i,16u)[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 20 1c c1 c7 f7 7f 00 00 e8 f8 43 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 89 34 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7c11c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 1c c1 c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 43 54 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 34 54 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<short> alloc<short>(N16 w, int blocks, short t)
; alloc_g[16i](n16,32i,16i)[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 c8 ad a0 c7 f7 7f 00 00 e8 88 43 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 19 34 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7a0adc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ad a0 c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 43 54 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 34 54 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<byte> alloc<byte>(N32 w, int blocks, byte t)
; alloc_g[8u](n32,32i,8u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 10 ea 71 c7 f7 7f 00 00 e8 14 43 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 a5 33 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c771ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 71 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 43 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 33 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<sbyte> alloc<sbyte>(N32 w, int blocks, sbyte t)
; alloc_g[8i](n32,32i,8i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 98 f0 71 c7 f7 7f 00 00 e8 a4 42 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 35 33 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c771f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 71 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 42 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 33 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<ushort> alloc<ushort>(N32 w, int blocks, ushort t)
; alloc_g[16u](n32,32i,16u)[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 20 1c c1 c7 f7 7f 00 00 e8 35 42 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 c6 32 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001ch mov rcx,7ff7c7c11c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 1c c1 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 42 54 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 32 54 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<short> alloc<short>(N32 w, int blocks, short t)
; alloc_g[16i](n32,32i,16i)[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 c8 ad a0 c7 f7 7f 00 00 e8 c5 41 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 56 32 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001ch mov rcx,7ff7c7a0adc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ad a0 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 41 54 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 32 54 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<uint> alloc<uint>(N32 w, int blocks, uint t)
; alloc_g[32u](n32,32i,32u)[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 d8 b1 a0 c7 f7 7f 00 00 e8 58 41 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 e9 31 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7a0b1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b1 a0 c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 41 54 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 31 54 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<int> alloc<int>(N32 w, int blocks, int t)
; alloc_g[32i](n32,32i,32i)[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 48 5f 7e c7 f7 7f 00 00 e8 e8 40 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 79 31 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0019h mov rcx,7ff7c77e5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7e c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 40 54 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 31 54 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<float> alloc<float>(N32 w, int blocks, float t)
; alloc_g[32f](n32,32i,32f)[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 b0 8a c6 c7 f7 7f 00 00 e8 78 40 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 09 31 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7c68ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 8a c6 c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 40 54 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 31 54 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<byte> alloc<byte>(N64 w, int blocks, byte t)
; alloc_g[8u](n64,32i,8u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 10 ea 71 c7 f7 7f 00 00 e8 f4 3b 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 85 2c 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c771ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 71 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 3b 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 2c 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<sbyte> alloc<sbyte>(N64 w, int blocks, sbyte t)
; alloc_g[8i](n64,32i,8i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 98 f0 71 c7 f7 7f 00 00 e8 84 3b 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 15 2c 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c771f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 71 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 3b 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 2c 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ushort> alloc<ushort>(N64 w, int blocks, ushort t)
; alloc_g[16u](n64,32i,16u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 20 1c c1 c7 f7 7f 00 00 e8 14 3b 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 a5 2b 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7c11c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 1c c1 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 3b 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 2b 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<short> alloc<short>(N64 w, int blocks, short t)
; alloc_g[16i](n64,32i,16i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 c8 ad a0 c7 f7 7f 00 00 e8 a4 3a 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 35 2b 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7a0adc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ad a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 3a 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 2b 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<uint> alloc<uint>(N64 w, int blocks, uint t)
; alloc_g[32u](n64,32i,32u)[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 d8 b1 a0 c7 f7 7f 00 00 e8 35 3a 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 c6 2a 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001ch mov rcx,7ff7c7a0b1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b1 a0 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 3a 54 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 2a 54 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<int> alloc<int>(N64 w, int blocks, int t)
; alloc_g[32i](n64,32i,32i)[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 48 5f 7e c7 f7 7f 00 00 e8 c5 39 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 56 2a 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001ch mov rcx,7ff7c77e5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7e c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 39 54 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 2a 54 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ulong> alloc<ulong>(N64 w, int blocks, ulong t)
; alloc_g[64u](n64,32i,64u)[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 d0 af a0 c7 f7 7f 00 00 e8 58 39 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 e9 29 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7a0afd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 af a0 c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 39 54 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 29 54 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<long> alloc<long>(N64 w, int blocks, long t)
; alloc_g[64i](n64,32i,64i)[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 00 67 e3 c7 f7 7f 00 00 e8 e8 38 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 79 29 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7e36700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 67 e3 c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 38 54 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 29 54 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<float> alloc<float>(N64 w, int blocks, float t)
; alloc_g[32f](n64,32i,32f)[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 b0 8a c6 c7 f7 7f 00 00 e8 75 38 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 06 29 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001ch mov rcx,7ff7c7c68ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 8a c6 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 38 54 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 29 54 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<double> alloc<double>(N64 w, int blocks, double t)
; alloc_g[64f](n64,32i,64f)[84] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 49 63 d0 48 b9 b8 8c c6 c7 f7 7f 00 00 e8 08 38 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 99 28 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7c68cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8c c6 c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 38 54 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 28 54 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<byte> alloc<byte>(N128 w, int blocks, byte t)
; alloc_g[8u](n128,32i,8u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 10 ea 71 c7 f7 7f 00 00 e8 94 37 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 25 28 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c771ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 71 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 37 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 28 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<sbyte> alloc<sbyte>(N128 w, int blocks, sbyte t)
; alloc_g[8i](n128,32i,8i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 98 f0 71 c7 f7 7f 00 00 e8 24 37 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 b5 27 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c771f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 71 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 37 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 27 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ushort> alloc<ushort>(N128 w, int blocks, ushort t)
; alloc_g[16u](n128,32i,16u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 20 1c c1 c7 f7 7f 00 00 e8 b4 36 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 45 27 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7c11c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 1c c1 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 36 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 27 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<short> alloc<short>(N128 w, int blocks, short t)
; alloc_g[16i](n128,32i,16i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 c8 ad a0 c7 f7 7f 00 00 e8 44 36 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 d5 26 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7a0adc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ad a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 36 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 26 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<uint> alloc<uint>(N128 w, int blocks, uint t)
; alloc_g[32u](n128,32i,32u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 d8 b1 a0 c7 f7 7f 00 00 e8 d4 35 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 65 26 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7a0b1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b1 a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 35 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 26 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<int> alloc<int>(N128 w, int blocks, int t)
; alloc_g[32i](n128,32i,32i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 48 5f 7e c7 f7 7f 00 00 e8 64 35 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 f5 25 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c77e5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7e c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 35 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 25 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ulong> alloc<ulong>(N128 w, int blocks, ulong t)
; alloc_g[64u](n128,32i,64u)[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 d0 af a0 c7 f7 7f 00 00 e8 f5 34 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 86 25 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001ch mov rcx,7ff7c7a0afd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 af a0 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 34 54 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 25 54 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<long> alloc<long>(N128 w, int blocks, long t)
; alloc_g[64i](n128,32i,64i)[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 00 67 e3 c7 f7 7f 00 00 e8 85 34 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 16 25 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001ch mov rcx,7ff7c7e36700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 67 e3 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 34 54 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 25 54 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<float> alloc<float>(N128 w, int blocks, float t)
; alloc_g[32f](n128,32i,32f)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 b0 8a c6 c7 f7 7f 00 00 e8 14 34 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 a5 24 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7c68ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 8a c6 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 34 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 24 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<double> alloc<double>(N128 w, int blocks, double t)
; alloc_g[64f](n128,32i,64f)[87] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 d1 e0 49 63 d0 48 b9 b8 8c c6 c7 f7 7f 00 00 e8 a5 33 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 36 24 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001ch mov rcx,7ff7c7c68cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8c c6 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 33 54 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 24 54 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<byte> alloc<byte>(N256 w, int blocks, byte t)
; alloc_g[8u](n256,32i,8u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 05 49 63 d0 48 b9 10 ea 71 c7 f7 7f 00 00 e8 24 2f 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 b5 1f 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c771ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 71 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 2f 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 1f 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<sbyte> alloc<sbyte>(N256 w, int blocks, sbyte t)
; alloc_g[8i](n256,32i,8i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 05 49 63 d0 48 b9 98 f0 71 c7 f7 7f 00 00 e8 b4 2e 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 45 1f 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c771f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 71 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 2e 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 1f 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ushort> alloc<ushort>(N256 w, int blocks, ushort t)
; alloc_g[16u](n256,32i,16u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 20 1c c1 c7 f7 7f 00 00 e8 44 2e 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 d5 1e 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7c11c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 1c c1 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 2e 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 1e 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<short> alloc<short>(N256 w, int blocks, short t)
; alloc_g[16i](n256,32i,16i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 c8 ad a0 c7 f7 7f 00 00 e8 d4 2d 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 65 1e 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7a0adc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ad a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 2d 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 1e 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<uint> alloc<uint>(N256 w, int blocks, uint t)
; alloc_g[32u](n256,32i,32u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 d8 b1 a0 c7 f7 7f 00 00 e8 64 2d 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 f5 1d 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7a0b1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b1 a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 2d 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 1d 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<int> alloc<int>(N256 w, int blocks, int t)
; alloc_g[32i](n256,32i,32i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 48 5f 7e c7 f7 7f 00 00 e8 f4 2c 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 85 1d 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c77e5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7e c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 2c 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 1d 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ulong> alloc<ulong>(N256 w, int blocks, ulong t)
; alloc_g[64u](n256,32i,64u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 d0 af a0 c7 f7 7f 00 00 e8 84 2c 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 15 1d 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7a0afd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 af a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 2c 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 1d 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<long> alloc<long>(N256 w, int blocks, long t)
; alloc_g[64i](n256,32i,64i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 00 67 e3 c7 f7 7f 00 00 e8 14 2c 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 a5 1c 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7e36700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 67 e3 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 2c 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 1c 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<float> alloc<float>(N256 w, int blocks, float t)
; alloc_g[32f](n256,32i,32f)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 b0 8a c6 c7 f7 7f 00 00 e8 a4 2b 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 35 1c 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7c68ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 8a c6 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 2b 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 1c 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<double> alloc<double>(N256 w, int blocks, double t)
; alloc_g[64f](n256,32i,64f)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 02 49 63 d0 48 b9 b8 8c c6 c7 f7 7f 00 00 e8 34 2b 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 c5 1b 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7c68cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8c c6 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 2b 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 1b 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<byte> alloc<byte>(N512 w, int blocks, byte t)
; alloc_g[8u](n512,32i,8u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 06 49 63 d0 48 b9 10 ea 71 c7 f7 7f 00 00 e8 c4 2a 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 55 1b 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c771ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 71 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 2a 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 1b 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<sbyte> alloc<sbyte>(N512 w, int blocks, sbyte t)
; alloc_g[8i](n512,32i,8i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 06 49 63 d0 48 b9 98 f0 71 c7 f7 7f 00 00 e8 54 2a 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 e5 1a 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c771f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 71 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 2a 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 1a 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ushort> alloc<ushort>(N512 w, int blocks, ushort t)
; alloc_g[16u](n512,32i,16u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 05 49 63 d0 48 b9 20 1c c1 c7 f7 7f 00 00 e8 e4 29 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 75 1a 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7c11c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 1c c1 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 29 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 1a 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<short> alloc<short>(N512 w, int blocks, short t)
; alloc_g[16i](n512,32i,16i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 05 49 63 d0 48 b9 c8 ad a0 c7 f7 7f 00 00 e8 74 29 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 05 1a 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7a0adc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ad a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 29 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 1a 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<uint> alloc<uint>(N512 w, int blocks, uint t)
; alloc_g[32u](n512,32i,32u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 d8 b1 a0 c7 f7 7f 00 00 e8 04 29 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 95 19 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7a0b1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b1 a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 29 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 19 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<int> alloc<int>(N512 w, int blocks, int t)
; alloc_g[32i](n512,32i,32i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 48 5f 7e c7 f7 7f 00 00 e8 94 28 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 25 19 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c77e5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7e c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 28 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 19 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ulong> alloc<ulong>(N512 w, int blocks, ulong t)
; alloc_g[64u](n512,32i,64u)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 d0 af a0 c7 f7 7f 00 00 e8 24 28 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 b5 18 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7a0afd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 af a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 28 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 18 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<long> alloc<long>(N512 w, int blocks, long t)
; alloc_g[64i](n512,32i,64i)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 00 67 e3 c7 f7 7f 00 00 e8 b4 27 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 45 18 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7e36700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 67 e3 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 27 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 18 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<float> alloc<float>(N512 w, int blocks, float t)
; alloc_g[32f](n512,32i,32f)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 04 49 63 d0 48 b9 b0 8a c6 c7 f7 7f 00 00 e8 44 27 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 d5 17 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7c68ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 8a c6 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 27 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 17 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<double> alloc<double>(N512 w, int blocks, double t)
; alloc_g[64f](n512,32i,64f)[88] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 41 c1 e0 03 49 63 d0 48 b9 b8 8c c6 c7 f7 7f 00 00 e8 d4 26 54 5f 48 8d 50 10 8b 40 08 48 8d 4c 24 20 48 89 11 89 41 08 48 8b fb 48 8d 74 24 20 e8 65 17 54 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
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
001dh mov rcx,7ff7c7c68cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8c c6 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 26 54 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 17 54 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
