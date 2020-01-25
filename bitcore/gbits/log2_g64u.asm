; uint log2<ulong>(in ulong src)
; log2_g64u[7ff7c6e84720h, 7ff7c6e8473ch][28] = {0f 1f 44 00 00 48 8b 01 48 85 c0 75 04 33 c0 eb 0a f3 48 0f bd c0 f7 d8 83 c0 3f c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:34:227
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
000bh jne short 0011h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh jmp short 001bh                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0011h lzcnt rax,rax                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c0}
0016h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0018h add eax,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 3f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
