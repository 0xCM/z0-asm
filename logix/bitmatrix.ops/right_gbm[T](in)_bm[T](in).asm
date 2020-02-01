------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> right<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; right_gbm8x8u(in)_bm8x8u(in)[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 cd c3 b3 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd c3 b3 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> right<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; right_gbm16x16u(in)_bm16x16u(in)[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 8d c3 b3 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c3 b3 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> right<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; right_gbm32x32u(in)_bm32x32u(in)[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 4d c3 b3 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d c3 b3 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> right<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; right_gbm64x64u(in)_bm64x64u(in)[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 0d c3 b3 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d c3 b3 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
