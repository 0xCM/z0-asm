; void part4x2(uint src, NatSpan<N2,byte> dst)
; part4x2__0o_ns2x0oVoid[7ff7c6e81590h, 7ff7c6e815a9h][25] = {0f 1f 44 00 00 48 8b 02 8b d1 83 e2 0f 88 10 c1 e9 04 83 e1 0f 88 48 01 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:032
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
000dh mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
000fh shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
0012h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0015h mov [rax+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 01}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
