; int f3b<int>(int a, int b, int c)
; X3B_g32i[7ff7c6b929f0h, 7ff7c6b92a0bh][27] = {56 48 83 ec 20 8b f1 f7 d6 41 23 f0 8b ca e8 0d 0f fe ff 0b c6 48 83 c4 20 5e c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:951
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0007h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0009h and esi,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 f0}
000ch mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000eh call 7ff7c6b73910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 0f fe ff}
0013h or eax,esi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c6}
0015h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0019h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
