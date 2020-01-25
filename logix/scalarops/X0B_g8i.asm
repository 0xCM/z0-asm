; sbyte f0b<sbyte>(sbyte a, sbyte b, sbyte c)
; X0B_g8i[7ff7c6ca63d0h, 7ff7c6ca640bh][59] = {57 56 48 83 ec 28 41 8b f0 48 0f be c9 f7 d1 48 0f be f9 48 0f be ca e8 64 03 ef ff 48 0f be c0 48 0f be d6 0b c2 48 0f be c0 48 0f be d7 23 c2 48 0f be c0 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:50:258
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0009h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
000dh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000fh movsx rdi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f9}
0013h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0017h call 7ff7c6b96750h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 03 ef ff}
001ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0020h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0024h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0026h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002ah movsx rdx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d7}
002eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0030h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0034h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0038h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0039h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
