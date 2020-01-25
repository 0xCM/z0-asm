; sbyte f3c<sbyte>(sbyte a, sbyte b, sbyte c)
; X3C_g8i[7ff7c6b92ac0h, 7ff7c6b92ad4h][20] = {0f 1f 44 00 00 48 0f be c2 48 0f be d1 33 c2 48 0f be c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:48:956
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
