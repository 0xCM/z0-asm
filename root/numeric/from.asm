------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint from(FixedWidth:uint width, NumericIndicator:ushort ni)
; from_(FixedWidth~32u,NumericIndicator~16u)[187] = {0f 1f 44 00 00 0f b7 c2 83 f8 66 0f 84 89 00 00 00 83 f8 69 74 0a 83 f8 75 74 42 e9 98 00 00 00 83 f9 10 77 0c 83 f9 08 74 13 83 f9 10 74 15 eb 28 83 f9 20 74 15 83 f9 40 74 17 eb 1c b8 08 00 02 80 eb 17 b8 10 00 08 80 eb 10 b8 20 00 20 80 eb 09 b8 40 00 80 80 eb 02 33 c0 eb 5d 83 f9 10 77 0c 83 f9 08 74 13 83 f9 10 74 15 eb 28 83 f9 20 74 15 83 f9 40 74 17 eb 1c b8 08 00 01 20 eb 17 b8 10 00 04 20 eb 10 b8 20 00 10 20 eb 09 b8 40 00 40 20 eb 02 33 c0 eb 20 83 f9 20 74 07 83 f9 40 74 09 eb 0e b8 20 00 00 42 eb 09 b8 40 00 00 44 eb 02 33 c0 eb 02 33 c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h cmp eax,66h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 66}
000bh je near ptr 009ah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 89 00 00 00}
0011h cmp eax,69h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 69}
0014h je short 0020h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
0016h cmp eax,75h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 75}
0019h je short 005dh                          ; JE rel8 || 74 cb || encoded[2]{74 42}
001bh jmp near ptr 00b8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 00 00 00}
0020h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
0023h ja short 0031h                          ; JA rel8 || 77 cb || encoded[2]{77 0c}
0025h cmp ecx,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 08}
0028h je short 003dh                          ; JE rel8 || 74 cb || encoded[2]{74 13}
002ah cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
002dh je short 0044h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
002fh jmp short 0059h                         ; JMP rel8 || EB cb || encoded[2]{eb 28}
0031h cmp ecx,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 20}
0034h je short 004bh                          ; JE rel8 || 74 cb || encoded[2]{74 15}
0036h cmp ecx,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 40}
0039h je short 0052h                          ; JE rel8 || 74 cb || encoded[2]{74 17}
003bh jmp short 0059h                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
003dh mov eax,80020008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 02 80}
0042h jmp short 005bh                         ; JMP rel8 || EB cb || encoded[2]{eb 17}
0044h mov eax,80080010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 08 80}
0049h jmp short 005bh                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
004bh mov eax,80200020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 20 80}
0050h jmp short 005bh                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0052h mov eax,80800040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 80 80}
0057h jmp short 005bh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0059h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
005bh jmp short 00bah                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
005dh cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
0060h ja short 006eh                          ; JA rel8 || 77 cb || encoded[2]{77 0c}
0062h cmp ecx,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 08}
0065h je short 007ah                          ; JE rel8 || 74 cb || encoded[2]{74 13}
0067h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
006ah je short 0081h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
006ch jmp short 0096h                         ; JMP rel8 || EB cb || encoded[2]{eb 28}
006eh cmp ecx,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 20}
0071h je short 0088h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
0073h cmp ecx,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 40}
0076h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 17}
0078h jmp short 0096h                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
007ah mov eax,20010008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 01 20}
007fh jmp short 0098h                         ; JMP rel8 || EB cb || encoded[2]{eb 17}
0081h mov eax,20040010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 04 20}
0086h jmp short 0098h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
0088h mov eax,20100020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 10 20}
008dh jmp short 0098h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
008fh mov eax,20400040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 40 20}
0094h jmp short 0098h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0096h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0098h jmp short 00bah                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
009ah cmp ecx,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 20}
009dh je short 00a6h                          ; JE rel8 || 74 cb || encoded[2]{74 07}
009fh cmp ecx,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 40}
00a2h je short 00adh                          ; JE rel8 || 74 cb || encoded[2]{74 09}
00a4h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 0e}
00a6h mov eax,42000020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 42}
00abh jmp short 00b6h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
00adh mov eax,44000040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 44}
00b2h jmp short 00b6h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b4h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b6h jmp short 00bah                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b8h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
