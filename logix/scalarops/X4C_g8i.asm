; sbyte f4c<sbyte>(sbyte a, sbyte b, sbyte c)
; X4C_g8i[7ff7c6ba4560h, 7ff7c6ba4580h][32] = {0f 1f 44 00 00 48 0f be c1 49 0f be c8 23 c1 f7 d0 48 0f be c0 48 0f be d2 23 c2 48 0f be c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:41:813
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
000dh and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000fh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0011h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0015h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0019h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
