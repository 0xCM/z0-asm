; ref BitMatrix<long> not<long>(in BitMatrix<long> A, ref BitMatrix<long> Z)
; bm~not~byref_g[7ff7c6b4f2b0h, 7ff7c6b4f2cch][28] = {56 48 83 ec 20 48 8b f2 48 8b 09 48 8b 16 e8 2d 5b ee ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:44:392
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
000eh call 7ff7c6a34df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 5b ee ff}
0013h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0016h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
