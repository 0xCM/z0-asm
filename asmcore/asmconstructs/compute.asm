------------------------------------------------------------------------------------------------------------------------
; uint compute_32u(BinaryBitLogicKind:byte op, uint a, uint b)
; compute_32u_BinaryBitLogicKind~8u_32u_32u[157] = {0f 1f 44 00 00 0f b6 c9 83 f9 0f 0f 87 89 00 00 00 8b c1 48 8d 0d 86 00 00 00 8b 0c 81 4c 8d 0d e1 ff ff ff 49 03 c9 ff e1 8b c2 41 23 c0 eb 6c 8b c2 41 0b c0 eb 65 8b c2 41 33 c0 eb 5e 8b c2 41 23 c0 f7 d0 eb 55 8b c2 41 0b c0 f7 d0 eb 4c 8b c2 41 33 c0 f7 d0 eb 43 41 8b c0 f7 d0 0b c2 eb 3a c4 c2 68 f2 c0 eb 33 8b c2 f7 d0 41 0b c0 eb 2a c4 e2 38 f2 c2 eb 23 8b c2 f7 d0 eb 1d 41 8b c0 f7 d0 eb 16 8b c2 eb 12 41 8b c0 eb 0d b8 ff ff ff ff eb 06 33 c0 eb 02 33 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
000bh ja near ptr 009ah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 89 00 00 00}
0011h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0013h lea rcx,[rip+86h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 86 00 00 00}
001ah mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
001dh lea r9,[rip-1fh]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e1 ff ff ff}
0024h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0027h jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0029h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002bh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
002eh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 6c}
0030h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0032h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0035h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 65}
0037h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0039h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
003ch jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
003eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0040h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0043h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0045h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0047h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0049h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
004ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
004eh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0050h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0052h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0055h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0057h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
0059h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
005ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
005eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0060h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0062h andn eax,edx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 68 f2 c0}
0067h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 33}
0069h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
006bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
006dh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0070h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0072h andn eax,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 c2}
0077h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 23}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
007dh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1d}
007fh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0082h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0084h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 16}
0086h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0088h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
008ah mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
008dh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 0d}
008fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0094h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
0096h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0098h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
009ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
