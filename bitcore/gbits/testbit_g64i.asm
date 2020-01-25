; bit testbit<long>(long src, int pos)
; testbit_g64i[7ff7c6e78110h, 7ff7c6e78120h][16] = {0f 1f 44 00 00 48 0f a3 d1 0f 92 c0 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:33:774
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h bt rcx,rdx                              ; BT r/m64, r64 || REX.W 0F A3 /r || encoded[4]{48 0f a3 d1}
0009h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
