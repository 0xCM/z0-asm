; uint log2(uint src)
; log2_32u[7ff7c6e85910h, 7ff7c6e85929h][25] = {0f 1f 44 00 00 85 c9 75 04 33 c0 eb 0b 33 c0 f3 0f bd c1 f7 d8 83 c0 1f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:332
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000dh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh lzcnt eax,ecx                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c1}
0013h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0015h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
