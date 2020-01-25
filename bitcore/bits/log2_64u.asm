; uint log2(ulong src)
; log2_64u[7ff7c6e71150h, 7ff7c6e7116bh][27] = {0f 1f 44 00 00 48 85 c9 75 04 33 c0 eb 0c 33 c0 f3 48 0f bd c1 f7 d8 83 c0 3f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:32:906
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h jne short 000eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb 0c}
000eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0010h lzcnt rax,rcx                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c1}
0015h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0017h add eax,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 3f}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
