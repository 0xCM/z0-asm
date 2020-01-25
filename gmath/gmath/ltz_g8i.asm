; sbyte ltz<sbyte>(sbyte a, sbyte b)
; ltz_g8i[7ff7c718db60h, 7ff7c718db84h][36] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9c c0 0f b6 c0 48 0f be c0 48 0f be c0 f7 d8 48 0f be c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:38:365
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0019h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001dh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
001fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
