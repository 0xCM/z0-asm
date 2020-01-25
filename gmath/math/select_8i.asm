; sbyte select(sbyte a, sbyte b, sbyte c)
; select_8i[7ff7c7198e00h, 7ff7c7198e1fh][31] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 23 d0 49 0f be c8 c4 e2 78 f2 c1 0b c2 48 0f be c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:211
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
000fh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0013h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
