; sbyte f19<sbyte>(sbyte a, sbyte b, sbyte c)
; X19_g8i[7ff7c6b9e920h, 7ff7c6b9e95eh][62] = {0f 1f 44 00 00 48 0f be c2 4d 0f be c8 41 33 c1 48 0f be c0 48 0f be d2 4d 0f be c0 41 23 d0 48 0f be d2 48 0f be c9 23 d1 48 0f be d2 48 0f be c0 33 c2 48 0f be c0 f7 d0 48 0f be c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:40:894
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h movsx r9,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c8}
000dh xor eax,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c1}
0010h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0014h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0018h movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
001ch and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
001fh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0023h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0027h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0029h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
002dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0031h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0033h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0037h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0039h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
