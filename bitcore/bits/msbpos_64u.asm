; int msbpos(ulong src)
; msbpos_64u[7ff7c6e71620h, 7ff7c6e71632h][18] = {0f 1f 44 00 00 33 c0 f3 48 0f bd c1 f7 d8 83 c0 3f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:928
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt rax,rcx                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c1}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 3f}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
