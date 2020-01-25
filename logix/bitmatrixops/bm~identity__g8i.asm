; BitMatrix<sbyte> identity<sbyte>(in BitMatrix<sbyte> A)
; bm~identity__g8i[7ff7c6b4f480h, 7ff7c6b4f49ch][28] = {57 56 53 66 90 48 8b d9 48 8b fb 48 8b f2 e8 fd 69 35 5f 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:44:403
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0008h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
000bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 69 35 5f}
0013h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0015h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0018h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
