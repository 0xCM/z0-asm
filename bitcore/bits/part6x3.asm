------------------------------------------------------------------------------------------------------------------------
; void part6x3(uint src, ref byte dst)
; part6x3_32u[22] = {0f 1f 44 00 00 8b c1 83 e0 07 88 02 c1 e9 03 83 e1 07 88 4a 01 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch shr ecx,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 03}
000fh and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0012h mov [rdx+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part6x3(uint src, Span<byte> dst)
; part6x3_0o_span0o[25] = {0f 1f 44 00 00 48 8b 02 8b d1 83 e2 07 88 10 c1 e9 03 83 e1 07 88 48 01 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
000dh mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
000fh shr ecx,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 03}
0012h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0015h mov [rax+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 01}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
