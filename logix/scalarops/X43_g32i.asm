; int f43<int>(int a, int b, int c)
; X43_g32i[7ff7c6ba32c0h, 7ff7c6ba32e2h][34] = {57 56 48 83 ec 28 8b f1 44 23 c6 41 8b f8 f7 d7 8b ca e8 39 02 fe ff 33 c6 23 c7 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:672
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h and r8d,esi                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 c6}
000bh mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
000eh not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
0010h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0012h call 7ff7c6b83510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 02 fe ff}
0017h xor eax,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c6}
0019h and eax,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c7}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
