; sbyte and<sbyte>(sbyte a, sbyte b)
; and_g8i[7ff7c71a3850h, 7ff7c71a3864h][20] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 23 c2 48 0f be c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:57:588
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
