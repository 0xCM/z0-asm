; bit test<long>(long src, byte pos)
; test_g64i[7ff7c6e8bd20h, 7ff7c6e8bd33h][19] = {0f 1f 44 00 00 0f b6 c2 48 0f a3 c1 0f 92 c0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:53:254
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h bt rcx,rax                              ; BT r/m64, r64 || REX.W 0F A3 /r || encoded[4]{48 0f a3 c1}
000ch setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
