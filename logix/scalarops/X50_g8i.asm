; sbyte f50<sbyte>(sbyte a, sbyte b, sbyte c)
; X50_g8i[7ff7c6b8bef0h, 7ff7c6b8bf07h][23] = {0f 1f 44 00 00 48 0f be c1 49 0f be d0 c4 e2 68 f2 c0 48 0f be c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:47:350
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
000dh andn eax,edx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c0}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
