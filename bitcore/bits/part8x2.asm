------------------------------------------------------------------------------------------------------------------------
; void part8x2(uint src, ref byte dst)
; part8x2_32u[44] = {0f 1f 44 00 00 8b c1 83 e0 03 88 02 8b c1 c1 e8 02 83 e0 03 88 42 01 8b c1 c1 e8 04 83 e0 03 88 42 02 c1 e9 06 83 e1 03 88 4a 03 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0011h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
0014h mov [rdx+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 01}
0017h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0019h shr eax,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 04}
001ch and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
001fh mov [rdx+2],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 02}
0022h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
0025h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0028h mov [rdx+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 03}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part8x2(byte src, ref byte dst)
; part8x2_8u[47] = {0f 1f 44 00 00 0f b6 c1 8b c8 83 e1 03 88 0a 8b c8 c1 e9 02 83 e1 03 88 4a 01 8b c8 c1 e9 04 83 e1 03 88 4a 02 c1 e8 06 83 e0 03 88 42 03 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000ah and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
000dh mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
000fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0011h shr ecx,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 02}
0014h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0017h mov [rdx+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 01}
001ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
001ch shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
001fh and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0022h mov [rdx+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 02}
0025h shr eax,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 06}
0028h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
002bh mov [rdx+3],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 03}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
