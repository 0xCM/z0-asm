------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> left<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; bm~left_g8u_8u[28] = {57 56 53 66 90 48 8b d9 48 8b fb 48 8b f2 e8 6d be 30 5f 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d be 30 5f}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<sbyte> left<sbyte>(in BitMatrix<sbyte> A, in BitMatrix<sbyte> B)
; bm~left_g8i_8i[28] = {57 56 53 66 90 48 8b d9 48 8b fb 48 8b f2 e8 2d be 30 5f 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d be 30 5f}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> left<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; bm~left_g16u_16u[28] = {57 56 53 66 90 48 8b d9 48 8b fb 48 8b f2 e8 ed bd 30 5f 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed bd 30 5f}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<short> left<short>(in BitMatrix<short> A, in BitMatrix<short> B)
; bm~left_g16i_16i[28] = {57 56 53 66 90 48 8b d9 48 8b fb 48 8b f2 e8 ad bd 30 5f 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad bd 30 5f}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> left<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; bm~left_g32u_32u[28] = {57 56 53 66 90 48 8b d9 48 8b fb 48 8b f2 e8 6d bd 30 5f 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d bd 30 5f}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<int> left<int>(in BitMatrix<int> A, in BitMatrix<int> B)
; bm~left_g32i_32i[28] = {57 56 53 66 90 48 8b d9 48 8b fb 48 8b f2 e8 2d bd 30 5f 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d bd 30 5f}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> left<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; bm~left_g64u_64u[28] = {57 56 53 66 90 48 8b d9 48 8b fb 48 8b f2 e8 ed bc 30 5f 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed bc 30 5f}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<long> left<long>(in BitMatrix<long> A, in BitMatrix<long> B)
; bm~left_g64i_64i[28] = {57 56 53 66 90 48 8b d9 48 8b fb 48 8b f2 e8 ad bc 30 5f 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad bc 30 5f}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
