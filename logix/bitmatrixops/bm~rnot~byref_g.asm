; ref BitMatrix<long> rnot<long>(in BitMatrix<long> A, in BitMatrix<long> B, ref BitMatrix<long> Z)
; bm~rnot~byref_g[7ff7c6b57a30h, 7ff7c6b57a4ch][28] = {56 48 83 ec 20 49 8b f0 48 8b 0a 48 8b 16 e8 ad d3 ed ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:45:113
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0008h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
000bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
000eh call 7ff7c6a34df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad d3 ed ff}
0013h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0016h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
