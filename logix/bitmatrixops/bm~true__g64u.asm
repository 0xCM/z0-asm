; BitMatrix<ulong> true<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; bm~true__g64u[7ff7c6b50c50h, 7ff7c6b50c73h][35] = {56 48 83 ec 20 48 8b f1 48 8b ce 48 ba ff ff ff ff ff ff ff ff e8 ae 29 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:44:634
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
0015h call 7ff7c6b43618h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 29 ff ff}
001ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
