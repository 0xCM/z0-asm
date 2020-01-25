; int f45<int>(int a, int b, int c)
; X45_g32i[7ff7c6ba3a40h, 7ff7c6ba3a5dh][29] = {57 56 48 83 ec 28 8b f2 41 8b f8 f7 d7 e8 be fa fd ff 0b c6 23 c7 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:708
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0008h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
000bh not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
000dh call 7ff7c6b83510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be fa fd ff}
0012h or eax,esi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c6}
0014h and eax,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c7}
0016h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
