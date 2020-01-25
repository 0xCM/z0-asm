; ushort dec(ushort src)
; dec_16u[7ff7c7188c50h, 7ff7c7188c61h][17] = {0f 1f 44 00 00 0f b7 c1 ff c8 0f b7 c0 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:361
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
