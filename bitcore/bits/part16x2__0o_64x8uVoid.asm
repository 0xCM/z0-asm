; void part16x2(ushort src, Block64<byte> dst)
; part16x2__0o_64x8uVoid[7ff7c6e7cfa0h, 7ff7c6e7d010h][112] = {0f 1f 44 00 00 48 8b 02 0f b7 d1 0f b6 ca 44 8b c1 41 83 e0 03 44 88 00 44 8b c1 41 c1 e8 02 41 83 e0 03 44 88 40 01 44 8b c1 41 c1 e8 04 41 83 e0 03 44 88 40 02 c1 e9 06 83 e1 03 88 48 03 c1 fa 08 0f b6 d2 48 83 c0 04 8b ca 83 e1 03 88 08 8b ca c1 e9 02 83 e1 03 88 48 01 8b ca c1 e9 04 83 e1 03 88 48 02 c1 ea 06 83 e2 03 88 50 03 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:51:977
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
