------------------------------------------------------------------------------------------------------------------------
; void part9x3(uint src, ref byte dst)
; part9x3_32u_8u~ref[33] = {0f 1f 44 00 00 8b c1 83 e0 07 88 02 8b c1 c1 e8 03 83 e0 07 88 42 01 c1 e9 06 83 e1 07 88 4a 02 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0011h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
0014h mov [rdx+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 01}
0017h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
001ah and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
001dh mov [rdx+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 02}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part9x3(uint src, Span<byte> dst)
; part9x3_32u_span8u[36] = {0f 1f 44 00 00 48 8b 02 8b d1 83 e2 07 88 10 8b d1 c1 ea 03 83 e2 07 88 50 01 c1 e9 06 83 e1 07 88 48 02 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
000dh mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
000fh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0011h shr edx,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 03}
0014h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0017h mov [rax+1],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 01}
001ah shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
001dh and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0020h mov [rax+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 02}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
