; ref BitMatrix<long> and<long>(in BitMatrix<long> A, in BitMatrix<long> B, ref BitMatrix<long> Z)
; bm~and~byref_g[7ff7c6b51e70h, 7ff7c6b51e8fh][31] = {56 48 83 ec 20 49 8b f0 48 8b 09 48 8b 12 4c 8b 06 e8 aa 30 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:44:753
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0011h call 7ff7c6b44f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 30 ff ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
