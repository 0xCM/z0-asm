; uint log2<ushort>(in ushort src)
; log2_g16u[7ff7c6e98fc0h, 7ff7c6e98fdah][26] = {0f 1f 44 00 00 0f b7 01 85 c0 75 04 33 c0 eb 09 f3 0f bd c0 f7 d8 83 c0 1f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:53:894
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 01}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000eh jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0010h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
0014h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0016h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
