; ushort identity<ushort>(ushort a)
; identity_g16u[7ff7c6b950d0h, 7ff7c6b950d9h][9] = {0f 1f 44 00 00 0f b7 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:240
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
