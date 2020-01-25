; int nlz(ushort src)
; nlz_16u[7ff7c6e85e60h, 7ff7c6e85e70h][16] = {0f 1f 44 00 00 0f b7 c1 f3 0f bd c0 83 c0 f0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:52:364
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0fffffff0h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 f0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
