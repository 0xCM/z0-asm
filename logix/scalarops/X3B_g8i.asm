; sbyte f3b<sbyte>(sbyte a, sbyte b, sbyte c)
; X3B_g8i[7ff7c6b928d0h, 7ff7c6b92906h][54] = {56 48 83 ec 20 48 0f be c9 f7 d1 48 0f be c9 49 0f be c0 23 c8 48 0f be f1 48 0f be ca e8 76 cd fd ff 48 0f be c0 48 0f be d6 0b c2 48 0f be c0 48 83 c4 20 5e c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:938
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0009h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000bh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
000fh movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0013h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0015h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0019h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
001dh call 7ff7c6b6f668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 cd fd ff}
0022h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0026h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
002ah or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
