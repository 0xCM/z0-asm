; void part4x3(uint src, NatSpan<N3,byte> dst)
; part4x3__0o_ns3x0oVoid[7ff7c6e6cdd0h, 7ff7c6e6cdf4h][36] = {0f 1f 44 00 00 48 8b 02 8b d1 83 e2 0f 88 10 8b d1 c1 ea 04 83 e2 0f 88 50 01 c1 e9 08 83 e1 0f 88 48 02 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:469
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
000dh mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
000fh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0011h shr edx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 04}
0014h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0017h mov [rax+1],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 01}
001ah shr ecx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 08}
001dh and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0020h mov [rax+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 02}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
