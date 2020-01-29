------------------------------------------------------------------------------------------------------------------------
; void part16x2(ushort src, ref byte dst)
; part16x2_16u_8u(ref)[109] = {0f 1f 44 00 00 0f b7 c1 0f b6 c8 44 8b c1 41 83 e0 03 44 88 02 44 8b c1 41 c1 e8 02 41 83 e0 03 44 88 42 01 44 8b c1 41 c1 e8 04 41 83 e0 03 44 88 42 02 c1 e9 06 83 e1 03 88 4a 03 c1 f8 08 0f b6 c0 48 83 c2 04 8b c8 83 e1 03 88 0a 8b c8 c1 e9 02 83 e1 03 88 4a 01 8b c8 c1 e9 04 83 e1 03 88 4a 02 c1 e8 06 83 e0 03 88 42 03 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
000bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
000eh and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0012h mov [rdx],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 02}
0015h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0018h shr r8d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 02}
001ch and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0020h mov [rdx+1],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 42 01}
0024h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0027h shr r8d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 04}
002bh and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
002fh mov [rdx+2],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 42 02}
0033h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
0036h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0039h mov [rdx+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 03}
003ch sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
003fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0042h add rdx,4                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 04}
0046h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0048h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
004bh mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
004dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004fh shr ecx,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 02}
0052h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0055h mov [rdx+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 01}
0058h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005ah shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
005dh and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0060h mov [rdx+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 02}
0063h shr eax,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 06}
0066h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
0069h mov [rdx+3],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 03}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part16x2(ushort src, Block64<byte> dst)
; part16x2_16u_b64x8u[112] = {0f 1f 44 00 00 48 8b 02 0f b7 d1 0f b6 ca 44 8b c1 41 83 e0 03 44 88 00 44 8b c1 41 c1 e8 02 41 83 e0 03 44 88 40 01 44 8b c1 41 c1 e8 04 41 83 e0 03 44 88 40 02 c1 e9 06 83 e1 03 88 48 03 c1 fa 08 0f b6 d2 48 83 c0 04 8b ca 83 e1 03 88 08 8b ca c1 e9 02 83 e1 03 88 48 01 8b ca c1 e9 04 83 e1 03 88 48 02 c1 ea 06 83 e2 03 88 50 03 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000eh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0011h and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0015h mov [rax],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 00}
0018h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001bh shr r8d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 02}
001fh and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0023h mov [rax+1],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 40 01}
0027h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
002ah shr r8d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 04}
002eh and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0032h mov [rax+2],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 40 02}
0036h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
0039h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
003ch mov [rax+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 03}
003fh sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0042h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0045h add rax,4                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 04}
0049h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
004bh and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
004eh mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
0050h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0052h shr ecx,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 02}
0055h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0058h mov [rax+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 01}
005bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
005dh shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
0060h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0063h mov [rax+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 02}
0066h shr edx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 06}
0069h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
006ch mov [rax+3],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 03}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
