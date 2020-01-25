; long f0b<long>(long a, long b, long c)
; X0B_g64i[7ff7c6ca6580h, 7ff7c6ca65a4h][36] = {57 56 48 83 ec 28 49 8b f0 48 8b f9 48 f7 d7 48 8b ca e8 a9 03 ef ff 48 0b c6 48 23 c7 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:50:267
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0009h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
000ch not rdi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d7}
000fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0012h call 7ff7c6b96940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 03 ef ff}
0017h or rax,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c6}
001ah and rax,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c7}
001dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
