; void unpack64x1(ulong src, Span<byte> dst)
; unpack64x1__0o8uVoid[7ff7c6e67740h, 7ff7c6e67812h][210] = {48 83 ec 38 90 48 8b 02 8b d1 44 0f b7 c2 45 8b c8 49 ba 01 01 01 01 01 01 01 01 c4 42 b3 f5 ca 4c 89 08 4c 8d 48 08 41 c1 f8 08 44 89 44 24 34 44 0f b7 44 24 34 c4 42 bb f5 c2 4d 89 01 c1 ea 10 0f b7 d2 4c 8d 40 10 44 8b ca c4 42 b3 f5 ca 4d 89 08 49 83 c0 08 c1 fa 08 89 54 24 30 0f b7 54 24 30 c4 c2 eb f5 d2 49 89 10 48 c1 e9 20 8b d1 48 83 c0 20 0f b7 ca 44 8b c1 c4 42 bb f5 c2 4c 89 00 4c 8d 40 08 c1 f9 08 89 4c 24 2c 0f b7 4c 24 2c c4 c2 f3 f5 ca 49 89 08 c1 ea 10 0f b7 d2 48 83 c0 10 8b ca c4 c2 f3 f5 ca 48 89 08 48 83 c0 08 c1 fa 08 89 54 24 28 0f b7 54 24 28 c4 c2 eb f5 d2 48 89 10 48 83 c4 38 c3 e8 0f 84 16 5f cc}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 01:44:31:613
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah movzx r8d,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c2}
000eh mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
0011h mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
001bh pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
0020h mov [rax],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 08}
0023h lea r9,[rax+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 48 08}
0027h sar r8d,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 08}
002bh mov [rsp+34h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 34}
0030h movzx r8d,word ptr [rsp+34h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 44 24 34}
0036h pdep r8,r8,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c2}
003bh mov [r9],r8                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 01}
003eh shr edx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 10}
0041h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0044h lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
0048h mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
004bh pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
0050h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
0053h add r8,8                                ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{49 83 c0 08}
0057h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
005ah mov [rsp+30h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 30}
005eh movzx edx,word ptr [rsp+30h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 30}
0063h pdep rdx,rdx,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d2}
0068h mov [r8],rdx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 10}
006bh shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
006fh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0071h add rax,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 20}
0075h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0078h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
007bh pdep r8,r8,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c2}
0080h mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
0083h lea r8,[rax+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 08}
0087h sar ecx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 08}
008ah mov [rsp+2ch],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 2c}
008eh movzx ecx,word ptr [rsp+2ch]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 4c 24 2c}
0093h pdep rcx,rcx,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 ca}
0098h mov [r8],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 08}
009bh shr edx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 10}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00a5h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
00a7h pdep rcx,rcx,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 ca}
00ach mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
00afh add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
00b3h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
00b6h mov [rsp+28h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 28}
00bah movzx edx,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 28}
00bfh pdep rdx,rdx,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d2}
00c4h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
00c7h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00cbh ret                                     ; RET || C3 || encoded[1]{c3}
00cch call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 84 16 5f}
00d1h int 3                                   ; INT3 || CC || encoded[1]{cc}
