; sbyte impl(sbyte a, sbyte b)
; impl_8i[7ff7c719af90h, 7ff7c719afa6h][22] = {0f 1f 44 00 00 48 0f be c2 f7 d0 48 0f be d1 0b c2 48 0f be c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:546
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
