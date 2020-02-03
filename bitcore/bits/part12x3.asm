------------------------------------------------------------------------------------------------------------------------
; void part12x3(uint src, ref byte dst)
; part12x3_32u_8u~ref[44] = {0f 1f 44 00 00 8b c1 83 e0 07 88 02 8b c1 c1 e8 03 83 e0 07 88 42 01 8b c1 c1 e8 06 83 e0 07 88 42 02 c1 e9 09 83 e1 07 88 4a 03 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0011h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
0014h mov [rdx+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 01}
0017h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0019h shr eax,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 06}
001ch and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
001fh mov [rdx+2],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 02}
0022h shr ecx,9                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 09}
0025h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0028h mov [rdx+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 03}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
