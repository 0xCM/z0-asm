; bit test<byte>(byte src, byte pos)
; test_g8u[7ff7c6e8bbe0h, 7ff7c6e8bbf1h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca d3 e8 83 e0 01 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:53:246
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000dh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
