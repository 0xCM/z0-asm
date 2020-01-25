; ushort not(ushort src)
; not_16u[7ff7c71886d0h, 7ff7c71886deh][14] = {0f 1f 44 00 00 0f b7 c1 f7 d0 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:316
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
