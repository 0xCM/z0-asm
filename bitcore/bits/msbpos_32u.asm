; int msbpos(uint src)
; msbpos_32u[7ff7c6e85de0h, 7ff7c6e85df1h][17] = {0f 1f 44 00 00 33 c0 f3 0f bd c1 f7 d8 83 c0 1f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:361
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt eax,ecx                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c1}
000bh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000dh add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
