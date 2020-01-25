; sbyte f25<sbyte>(sbyte a, sbyte b, sbyte c)
; X25_g8i[7ff7c6b900d0h, 7ff7c6b90108h][56] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 23 c2 48 0f be c0 f7 d0 48 0f be c0 49 0f be d0 f7 d2 48 0f be d2 48 0f be c9 33 d1 48 0f be d2 48 0f be c0 23 c2 48 0f be c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:48:325
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0019h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
001dh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
001fh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0023h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0027h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0029h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
002dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
