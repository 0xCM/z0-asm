; uint rank<ushort>(ushort src, int pos)
; rank_g16u[7ff7c6e717a0h, 7ff7c6e717c3h][35] = {0f 1f 44 00 00 0f b7 c1 0f b6 d2 ff c2 0f b6 d2 c1 e2 08 0f b7 d2 c4 e2 68 f7 c0 0f b7 c0 f3 0f b8 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:33:484
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
000dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0010h shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
0013h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0016h bextr eax,eax,edx                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 68 f7 c0}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
