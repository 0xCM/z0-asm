; bit testbit<sbyte>(sbyte src, int pos)
; testbit_g8i[7ff7c6e78020h, 7ff7c6e78033h][19] = {0f 1f 44 00 00 48 0f be c1 0f a3 d0 0f 92 c0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:33:766
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h bt eax,edx                              ; BT r/m32, r32 || o32 0F A3 /r || encoded[3]{0f a3 d0}
000ch setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
