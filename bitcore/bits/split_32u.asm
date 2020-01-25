; void split(uint src, out byte x0, out byte x1, out byte x2, out byte x3)
; split_32u[7ff7c6e83f10h, 7ff7c6e83f32h][34] = {0f 1f 44 00 00 88 0a 8b c1 c1 e8 08 41 88 00 8b c1 c1 e8 10 41 88 01 c1 e9 18 48 8b 44 24 28 88 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:140
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
000ch mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
000fh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0011h shr eax,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 10}
0014h mov [r9],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 01}
0017h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
001ah mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
001fh mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
