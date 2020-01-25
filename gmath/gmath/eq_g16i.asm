; bit eq<Int16>(Int16 a, Int16 b)
; eq_g16i[7ff7c718cf60h, 7ff7c718cf7ah][26] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 48 0f bf c0 3b c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:38:286
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
