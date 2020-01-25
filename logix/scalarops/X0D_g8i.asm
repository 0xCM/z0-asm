; sbyte f0d<sbyte>(sbyte a, sbyte b, sbyte c)
; X0D_g8i[7ff7c6ca6740h, 7ff7c6ca677ah][58] = {57 56 48 83 ec 28 8b f2 48 0f be c9 f7 d1 48 0f be f9 49 0f be c8 e8 f5 ff ee ff 48 0f be c0 48 0f be d6 0b c2 48 0f be c0 48 0f be d7 23 c2 48 0f be c0 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:50:281
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0008h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
000ch not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000eh movsx rdi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f9}
0012h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0016h call 7ff7c6b96750h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 ff ee ff}
001bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001fh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0023h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0025h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0029h movsx rdx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d7}
002dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0033h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
