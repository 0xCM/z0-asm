; sbyte f37<sbyte>(sbyte a, sbyte b, sbyte c)
; X37_g8i[7ff7c6b92260h, 7ff7c6b92280h][32] = {0f 1f 44 00 00 48 0f be c1 49 0f be c8 0b c1 48 0f be c0 48 0f be d2 23 c2 f7 d0 48 0f be c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:48:660
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
000dh or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
001bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
