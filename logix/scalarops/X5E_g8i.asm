; sbyte f5e<sbyte>(sbyte a, sbyte b, sbyte c)
; X5E_g8i[7ff7c6b9d550h, 7ff7c6b9d582h][50] = {0f 1f 44 00 00 49 0f be c0 f7 d0 48 0f be c0 48 0f be d2 23 c2 48 0f be c0 48 0f be d1 49 0f be c8 33 d1 48 0f be d2 48 0f be c0 0b c2 48 0f be c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:40:486
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0013h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0015h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0019h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
001dh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0021h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0023h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0027h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
