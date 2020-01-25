; byte lo(byte src)
; lo_8u[7ff7c6e85830h, 7ff7c6e8583ch][12] = {0f 1f 44 00 00 0f b6 c1 83 e0 0f c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:52:326
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
