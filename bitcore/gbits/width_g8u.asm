; int width<byte>(byte src)
; width_g8u[7ff7c6e78750h, 7ff7c6e78765h][21] = {0f 1f 44 00 00 0f b6 c1 f3 0f bd c0 83 c0 e8 f7 d8 83 c0 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:33:796
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0ffffffe8h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 e8}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 08}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
