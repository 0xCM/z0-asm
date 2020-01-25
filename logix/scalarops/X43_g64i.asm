; long f43<long>(long a, long b, long c)
; X43_g64i[7ff7c6ba3330h, 7ff7c6ba3357h][39] = {57 56 48 83 ec 28 48 8b f1 4c 23 c6 49 8b f8 48 f7 d7 48 8b ca e8 0e 22 fe ff 48 33 c6 48 23 c7 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:41:678
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h and r8,rsi                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c6}
000ch mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
000fh not rdi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d7}
0012h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0015h call 7ff7c6b85558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 22 fe ff}
001ah xor rax,rsi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c6}
001dh and rax,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c7}
0020h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0024h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0025h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
