; sbyte f31<sbyte>(sbyte a, sbyte b, sbyte c)
; X31_g8i[7ff7c6b91510h, 7ff7c6b9153eh][46] = {0f 1f 44 00 00 48 0f be c2 f7 d0 48 0f be c0 49 0f be d0 f7 d2 48 0f be d2 48 0f be c9 0b d1 48 0f be d2 48 0f be c0 23 c2 48 0f be c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:584
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0013h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0015h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0019h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
001dh or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
001fh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0023h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0027h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0029h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
