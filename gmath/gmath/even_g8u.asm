; bit even<byte>(byte a)
; even_g8u[7ff7c7194be0h, 7ff7c7194bf6h][22] = {0f 1f 44 00 00 0f b6 c1 a8 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:241
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
