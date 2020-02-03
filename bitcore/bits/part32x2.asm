------------------------------------------------------------------------------------------------------------------------
; void part32x2(uint src, ref byte dst)
; part32x2_32u_8u~ref[235] = {0f 1f 44 00 00 0f b7 c1 44 0f b6 c0 45 8b c8 41 83 e1 03 44 88 0a 45 8b c8 41 c1 e9 02 41 83 e1 03 44 88 4a 01 45 8b c8 41 c1 e9 04 41 83 e1 03 44 88 4a 02 41 c1 e8 06 41 83 e0 03 44 88 42 03 c1 f8 08 0f b6 c0 4c 8d 42 04 44 8b c8 41 83 e1 03 45 88 08 44 8b c8 41 c1 e9 02 41 83 e1 03 45 88 48 01 44 8b c8 41 c1 e9 04 41 83 e1 03 45 88 48 02 c1 e8 06 83 e0 03 41 88 40 03 c1 e9 10 0f b7 c1 48 83 c2 08 0f b6 c8 44 8b c1 41 83 e0 03 44 88 02 44 8b c1 41 c1 e8 02 41 83 e0 03 44 88 42 01 44 8b c1 41 c1 e8 04 41 83 e0 03 44 88 42 02 c1 e9 06 83 e1 03 88 4a 03 c1 f8 08 0f b6 c0 48 83 c2 04 8b c8 83 e1 03 88 0a 8b c8 c1 e9 02 83 e1 03 88 4a 01 8b c8 c1 e9 04 83 e1 03 88 4a 02 c1 e8 06 83 e0 03 88 42 03 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
000ch mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000fh and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0013h mov [rdx],r9b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 0a}
0016h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
0019h shr r9d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 02}
001dh and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0021h mov [rdx+1],r9b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 4a 01}
0025h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
0028h shr r9d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 04}
002ch and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0030h mov [rdx+2],r9b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 4a 02}
0034h shr r8d,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 06}
0038h and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
003ch mov [rdx+3],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 42 03}
0040h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
0043h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0046h lea r8,[rdx+4]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 42 04}
004ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
004dh and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0051h mov [r8],r9b                            ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 08}
0054h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0057h shr r9d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 02}
005bh and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
005fh mov [r8+1],r9b                          ; MOV r/m8, r8 || 88 /r || encoded[4]{45 88 48 01}
0063h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0066h shr r9d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 04}
006ah and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
006eh mov [r8+2],r9b                          ; MOV r/m8, r8 || 88 /r || encoded[4]{45 88 48 02}
0072h shr eax,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 06}
0075h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
0078h mov [r8+3],al                           ; MOV r/m8, r8 || 88 /r || encoded[4]{41 88 40 03}
007ch shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
007fh movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0082h add rdx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 08}
0086h movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
0089h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
008ch and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0090h mov [rdx],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 02}
0093h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0096h shr r8d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 02}
009ah and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
009eh mov [rdx+1],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 42 01}
00a2h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
00a5h shr r8d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 04}
00a9h and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
00adh mov [rdx+2],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 42 02}
00b1h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
00b4h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
00b7h mov [rdx+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 03}
00bah sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
00bdh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c0h add rdx,4                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 04}
00c4h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00c6h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
00c9h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
00cbh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00cdh shr ecx,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 02}
00d0h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
00d3h mov [rdx+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 01}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
00dbh and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
00deh mov [rdx+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 02}
00e1h shr eax,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 06}
00e4h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
00e7h mov [rdx+3],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 03}
00eah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part32x2(ushort src, Block128<byte> dst)
; part32x2_16u_b128x8u[112] = {0f 1f 44 00 00 48 8b 02 0f b7 d1 0f b6 ca 44 8b c1 41 83 e0 03 44 88 00 44 8b c1 41 c1 e8 02 41 83 e0 03 44 88 40 01 44 8b c1 41 c1 e8 04 41 83 e0 03 44 88 40 02 c1 e9 06 83 e1 03 88 48 03 c1 fa 08 0f b6 d2 48 83 c0 04 8b ca 83 e1 03 88 08 8b ca c1 e9 02 83 e1 03 88 48 01 8b ca c1 e9 04 83 e1 03 88 48 02 c1 ea 06 83 e2 03 88 50 03 c3}
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
