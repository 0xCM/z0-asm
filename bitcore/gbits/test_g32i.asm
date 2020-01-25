; bit test<int>(int src, byte pos)
; test_g32i[7ff7c6e8bcc0h, 7ff7c6e8bcd2h][18] = {0f 1f 44 00 00 0f b6 c2 0f a3 c1 0f 92 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:53:252
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h bt ecx,eax                              ; BT r/m32, r32 || o32 0F A3 /r || encoded[3]{0f a3 c1}
000bh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
