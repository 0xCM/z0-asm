; bit dot<byte>(byte x, byte y)
; dot_g8u[7ff7c6e840e0h, 7ff7c6e840fdh][29] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 23 c2 0f b6 c0 f3 0f b8 c0 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:34:187
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0014h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0016h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
