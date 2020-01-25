; sbyte f45<sbyte>(sbyte a, sbyte b, sbyte c)
; X45_g8i[7ff7c6b93900h, 7ff7c6b9393ah][58] = {57 56 48 83 ec 28 8b f2 49 0f be c0 f7 d0 48 0f be f8 48 0f be c9 e8 4d bd fd ff 48 0f be c0 48 0f be d6 0b c2 48 0f be c0 48 0f be d7 23 c2 48 0f be c0 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:079
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0008h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh movsx rdi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f8}
0012h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0016h call 7ff7c6b6f668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d bd fd ff}
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
