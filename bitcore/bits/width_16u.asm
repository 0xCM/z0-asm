; int width(in ushort src)
; width_16u[7ff7c6e7c4d0h, 7ff7c6e7c4e5h][21] = {0f 1f 44 00 00 0f b7 01 f3 0f bd c0 83 c0 f0 f7 d8 83 c0 10 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:51:922
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 01}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0fffffff0h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 f0}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 10}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
