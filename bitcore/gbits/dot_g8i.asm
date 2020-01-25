; bit dot<sbyte>(sbyte x, sbyte y)
; dot_g8i[7ff7c6e98a10h, 7ff7c6e98a30h][32] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 23 c2 48 0f be c0 f3 0f b8 c0 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:53:831
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0017h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0019h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
