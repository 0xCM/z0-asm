; byte mod<byte>(byte a, byte m)
; mod_g8u[7ff7c71a85d0h, 7ff7c71a85e3h][19] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca 33 d2 f7 f1 0f b6 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:58:344
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000dh div ecx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f1}
000fh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
