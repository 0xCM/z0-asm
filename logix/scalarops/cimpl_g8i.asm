; sbyte cimpl<sbyte>(sbyte a, sbyte b)
; cimpl_g8i[7ff7c6ca13d0h, 7ff7c6ca13e6h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 f7 d0 0b c2 48 0f be c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:516
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
