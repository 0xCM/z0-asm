; ref BitMatrix<long> select<long>(in BitMatrix<long> A, in BitMatrix<long> B, in BitMatrix<long> C, ref BitMatrix<long> Z)
; bm~select~byref_g[7ff7c6b6beb0h, 7ff7c6b6bed2h][34] = {56 48 83 ec 20 49 8b f1 48 8b 09 48 8b 12 4d 8b 00 4c 8b 0e e8 2f f1 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:39:053
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0011h mov r9,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0e}
0014h call 7ff7c6b6aff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f f1 ff ff}
0019h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0020h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
