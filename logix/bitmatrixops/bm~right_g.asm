------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> right<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; bm~right_g8u_8u[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 8d 5a b7 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 5a b7 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<sbyte> right<sbyte>(in BitMatrix<sbyte> A, in BitMatrix<sbyte> B)
; bm~right_g8i_8i[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 4d 5a b7 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 5a b7 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> right<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; bm~right_g16u_16u[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 0d 5a b7 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 5a b7 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<short> right<short>(in BitMatrix<short> A, in BitMatrix<short> B)
; bm~right_g16i_16i[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 cd 59 b7 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 59 b7 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> right<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; bm~right_g32u_32u[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 8d 59 b7 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 59 b7 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<int> right<int>(in BitMatrix<int> A, in BitMatrix<int> B)
; bm~right_g32i_32i[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 4d 59 b7 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 59 b7 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> right<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; bm~right_g64u_64u[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 0d 59 b7 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 59 b7 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<long> right<long>(in BitMatrix<long> A, in BitMatrix<long> B)
; bm~right_g64i_64i[28] = {57 56 53 66 90 48 8b d9 48 8b fb 49 8b f0 e8 cd 58 b7 5e 48 a5 48 8b c3 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 58 b7 5e}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
