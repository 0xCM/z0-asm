; long f51<long>(long a, long b, long c)
; X51_g64i[7ff7c6b9bdd0h, 7ff7c6b9bdf4h][36] = {57 56 48 83 ec 28 48 8b f1 49 8b f8 48 f7 d7 48 8b ca e8 71 97 fe ff 48 0b c6 48 23 c7 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:40:260
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
000ch not rdi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d7}
000fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0012h call 7ff7c6b85558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 97 fe ff}
0017h or rax,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c6}
001ah and rax,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c7}
001dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
