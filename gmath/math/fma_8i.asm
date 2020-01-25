; sbyte fma(sbyte x, sbyte y, sbyte z)
; fma_8i[7ff7c7189160h, 7ff7c718917bh][27] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 0f af c2 49 0f be d0 03 c2 48 0f be c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:394
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0014h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0016h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
