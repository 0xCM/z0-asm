; sbyte f41<sbyte>(sbyte a, sbyte b, sbyte c)
; X41_g8i[7ff7c6ba2e50h, 7ff7c6ba2e70h][32] = {0f 1f 44 00 00 48 0f be c2 48 0f be d1 33 c2 48 0f be c0 49 0f be d0 0b c2 f7 d0 48 0f be c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:41:620
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
001bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
