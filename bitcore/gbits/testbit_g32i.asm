; bit testbit<int>(int src, int pos)
; testbit_g32i[7ff7c6e8cc60h, 7ff7c6e8cc6fh][15] = {0f 1f 44 00 00 0f a3 d1 0f 92 c0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:53:287
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h bt ecx,edx                              ; BT r/m32, r32 || o32 0F A3 /r || encoded[3]{0f a3 d1}
0008h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
