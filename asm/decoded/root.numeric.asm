------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind(Type t), hex://root/Numeric?kind#kind_()
; kind_()[155] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xce,0x48,0x8b,0x06,0x48,0x8b,0x40,0x70,0xff,0x50,0x30,0x85,0xc0,0x75,0x12,0x48,0x8b,0xce,0xe8,0xcf,0x59,0xff,0xff,0x48,0x8b,0xc8,0xe8,0x67,0xd3,0xfd,0xff,0xeb,0x02,0x33,0xc0,0x83,0xc0,0xfb,0x83,0xf8,0x09,0x77,0x5e,0x8b,0xc0,0x48,0x8d,0x15,0x62,0x00,0x00,0x00,0x8b,0x14,0x82,0x48,0x8d,0x0d,0xc0,0xff,0xff,0xff,0x48,0x03,0xd1,0xff,0xe2,0xb8,0x08,0x00,0x02,0x80,0xeb,0x41,0xb8,0x08,0x00,0x01,0x20,0xeb,0x3a,0xb8,0x10,0x00,0x08,0x80,0xeb,0x33,0xb8,0x10,0x00,0x04,0x20,0xeb,0x2c,0xb8,0x20,0x00,0x20,0x80,0xeb,0x25,0xb8,0x20,0x00,0x10,0x20,0xeb,0x1e,0xb8,0x40,0x00,0x80,0x80,0xeb,0x17,0xb8,0x40,0x00,0x40,0x20,0xeb,0x10,0xb8,0x20,0x00,0x00,0x42,0xeb,0x09,0xb8,0x40,0x00,0x00,0x44,0xeb,0x02,0x33,0xc0,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
000eh mov rax,[rax+70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 40 70}
0012h call qword ptr [rax+30h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 30}
0015h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0017h jne short 002bh                         ; JNE rel8 || 75 cb || encoded[2]{75 12}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch call 7ff7c77495b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 59 ff ff}
0021h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0024h call 7ff7c7730f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 d3 fd ff}
0029h jmp short 002dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
002bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
002dh add eax,0fffffffbh                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 fb}
0030h cmp eax,9                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 09}
0033h ja short 0093h                          ; JA rel8 || 77 cb || encoded[2]{77 5e}
0035h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0037h lea rdx,[rip+62h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 62 00 00 00}
003eh mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0041h lea rcx,[rip-40h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d c0 ff ff ff}
0048h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
004bh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
004dh mov eax,80020008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 02 80}
0052h jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0054h mov eax,20010008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 01 20}
0059h jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
005bh mov eax,80080010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 08 80}
0060h jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 33}
0062h mov eax,20040010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 04 20}
0067h jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 2c}
0069h mov eax,80200020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 20 80}
006eh jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 25}
0070h mov eax,20100020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 10 20}
0075h jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 1e}
0077h mov eax,80800040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 80 80}
007ch jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 17}
007eh mov eax,20400040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 40 20}
0083h jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
0085h mov eax,42000020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 42}
008ah jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
008ch mov eax,44000040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 44}
0091h jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0093h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string format(FixedWidth:uint src), hex://root/Numeric?format#format_(FixedWidth~32u)
; format_(FixedWidth~32u)[118] = {0x56,0x48,0x83,0xec,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x8b,0xf1,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x34,0x7a,0x4a,0x5f,0x89,0x70,0x08,0x45,0x33,0xc0,0x48,0xba,0x88,0x13,0x4f,0x40,0xb6,0x02,0x00,0x00,0x48,0x8b,0x12,0x48,0xb9,0xa8,0x97,0x4f,0x40,0xb6,0x02,0x00,0x00,0x48,0x8b,0x09,0x4c,0x8d,0x4c,0x24,0x20,0x49,0x89,0x01,0x4d,0x89,0x41,0x08,0x4d,0x89,0x41,0x10,0x49,0x89,0x51,0x18,0x4c,0x8d,0x44,0x24,0x20,0x48,0x8b,0xd1,0x33,0xc9,0xe8,0x81,0x69,0x13,0x4e,0x90,0x48,0x83,0xc4,0x40,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000ch mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0011h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0016h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
001bh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001dh mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
0027h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 7a 4a 5f}
002ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
002fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0032h mov rdx,2b6404f1388h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 88 13 4f 40 b6 02 00 00}
003ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
003fh mov rcx,2b6404f97a8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 97 4f 40 b6 02 00 00}
0049h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
004ch lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
0051h mov [r9],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 01}
0054h mov [r9+8],r8                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 08}
0058h mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
005ch mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0060h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0065h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0068h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
006ah call 7ff815ef5c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 69 13 4e}
006fh nop                                     ; NOP || o32 90 || encoded[1]{90}
0070h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; HashSet<NumericKind:uint> kindsetCreate(NumericKind:uint k), hex://root/Numeric?kindsetCreate#kindsetCreate_(NumericKind~32u)
; kindsetCreate_(NumericKind~32u)[267] = {0x57,0x56,0x48,0x83,0xec,0x28,0x8b,0xf1,0x48,0xb9,0xb8,0x39,0x1a,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x19,0x56,0x1d,0x5f,0x48,0x8b,0xf8,0x48,0xba,0x78,0x2f,0x4f,0x40,0xb6,0x02,0x00,0x00,0x48,0x8b,0x12,0x48,0x8b,0xcf,0xe8,0x69,0xec,0xff,0xff,0xf7,0xc6,0x00,0x00,0x01,0x00,0x74,0x0d,0x48,0x8b,0xcf,0xba,0x08,0x00,0x01,0x20,0xe8,0x9c,0xed,0xff,0xff,0xf7,0xc6,0x00,0x00,0x02,0x00,0x74,0x0d,0x48,0x8b,0xcf,0xba,0x08,0x00,0x02,0x80,0xe8,0x87,0xed,0xff,0xff,0xf7,0xc6,0x00,0x00,0x04,0x00,0x74,0x0d,0x48,0x8b,0xcf,0xba,0x10,0x00,0x04,0x20,0xe8,0x72,0xed,0xff,0xff,0xf7,0xc6,0x00,0x00,0x08,0x00,0x74,0x0d,0x48,0x8b,0xcf,0xba,0x10,0x00,0x08,0x80,0xe8,0x5d,0xed,0xff,0xff,0xf7,0xc6,0x00,0x00,0x10,0x00,0x74,0x0d,0x48,0x8b,0xcf,0xba,0x20,0x00,0x10,0x20,0xe8,0x48,0xed,0xff,0xff,0xf7,0xc6,0x00,0x00,0x20,0x00,0x74,0x0d,0x48,0x8b,0xcf,0xba,0x20,0x00,0x20,0x80,0xe8,0x33,0xed,0xff,0xff,0xf7,0xc6,0x00,0x00,0x40,0x00,0x74,0x0d,0x48,0x8b,0xcf,0xba,0x40,0x00,0x40,0x20,0xe8,0x1e,0xed,0xff,0xff,0xf7,0xc6,0x00,0x00,0x80,0x00,0x74,0x0d,0x48,0x8b,0xcf,0xba,0x40,0x00,0x80,0x80,0xe8,0x09,0xed,0xff,0xff,0xf7,0xc6,0x00,0x00,0x00,0x02,0x74,0x0d,0x48,0x8b,0xcf,0xba,0x20,0x00,0x00,0x42,0xe8,0xf4,0xec,0xff,0xff,0xf7,0xc6,0x00,0x00,0x00,0x04,0x74,0x0d,0x48,0x8b,0xcf,0xba,0x40,0x00,0x00,0x44,0xe8,0xdf,0xec,0xff,0xff,0x48,0x8b,0xc7,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h mov rcx,7ff7c81a39b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 39 1a c8 f7 7f 00 00}
0012h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 56 1d 5f}
0017h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
001ah mov rdx,2b6404f2f78h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 2f 4f 40 b6 02 00 00}
0024h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0027h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
002ah call 7ff7c8090318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ec ff ff}
002fh test esi,10000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 01 00}
0035h je short 0044h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0037h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
003ah mov edx,20010008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 01 20}
003fh call 7ff7c8090460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c ed ff ff}
0044h test esi,20000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 02 00}
004ah je short 0059h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
004ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
004fh mov edx,80020008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 02 80}
0054h call 7ff7c8090460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ed ff ff}
0059h test esi,40000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 04 00}
005fh je short 006eh                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0061h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0064h mov edx,20040010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 04 20}
0069h call 7ff7c8090460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 ed ff ff}
006eh test esi,80000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 08 00}
0074h je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0076h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0079h mov edx,80080010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 08 80}
007eh call 7ff7c8090460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d ed ff ff}
0083h test esi,100000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 10 00}
0089h je short 0098h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
008bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
008eh mov edx,20100020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 10 20}
0093h call 7ff7c8090460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ed ff ff}
0098h test esi,200000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 20 00}
009eh je short 00adh                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00a0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a3h mov edx,80200020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 20 80}
00a8h call 7ff7c8090460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ed ff ff}
00adh test esi,400000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 40 00}
00b3h je short 00c2h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00b5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b8h mov edx,20400040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 40 20}
00bdh call 7ff7c8090460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e ed ff ff}
00c2h test esi,800000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 80 00}
00c8h je short 00d7h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov edx,80800040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 80 80}
00d2h call 7ff7c8090460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ed ff ff}
00d7h test esi,2000000h                       ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 00 02}
00ddh je short 00ech                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e2h mov edx,42000020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 42}
00e7h call 7ff7c8090460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 ec ff ff}
00ech test esi,4000000h                       ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 00 04}
00f2h je short 0101h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00f4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f7h mov edx,44000040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 44}
00fch call 7ff7c8090460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df ec ff ff}
0101h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0104h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0108h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0109h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<byte>(), hex://root/Numeric?kind#kind_g[8u]()
; kind_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x01,0x20,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20010008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 01 20}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<sbyte>(), hex://root/Numeric?kind#kind_g[8i]()
; kind_g[8i]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x02,0x80,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,80020008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 02 80}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<ushort>(), hex://root/Numeric?kind#kind_g[16u]()
; kind_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x10,0x00,0x04,0x20,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20040010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 04 20}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<short>(), hex://root/Numeric?kind#kind_g[16i]()
; kind_g[16i]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x10,0x00,0x08,0x80,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,80080010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 08 80}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<uint>(), hex://root/Numeric?kind#kind_g[32u]()
; kind_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x20,0x00,0x10,0x20,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20100020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 10 20}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<int>(), hex://root/Numeric?kind#kind_g[32i]()
; kind_g[32i]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x20,0x00,0x20,0x80,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,80200020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 20 80}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<ulong>(), hex://root/Numeric?kind#kind_g[64u]()
; kind_g[64u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x40,0x00,0x40,0x20,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20400040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 40 20}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<long>(), hex://root/Numeric?kind#kind_g[64i]()
; kind_g[64i]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x40,0x00,0x80,0x80,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,80800040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 80 80}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<float>(), hex://root/Numeric?kind#kind_g[32f]()
; kind_g[32f]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x20,0x00,0x00,0x42,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,42000020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 42}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<double>(), hex://root/Numeric?kind#kind_g[64f]()
; kind_g[64f]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x40,0x00,0x00,0x44,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,44000040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 44}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<byte>(), hex://root/Numeric?signed#signed_g[8u]()
; signed_g[8u]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<sbyte>(), hex://root/Numeric?signed#signed_g[8i]()
; signed_g[8i]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<ushort>(), hex://root/Numeric?signed#signed_g[16u]()
; signed_g[16u]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<short>(), hex://root/Numeric?signed#signed_g[16i]()
; signed_g[16i]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<uint>(), hex://root/Numeric?signed#signed_g[32u]()
; signed_g[32u]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<int>(), hex://root/Numeric?signed#signed_g[32i]()
; signed_g[32i]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<ulong>(), hex://root/Numeric?signed#signed_g[64u]()
; signed_g[64u]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<long>(), hex://root/Numeric?signed#signed_g[64i]()
; signed_g[64i]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<float>(), hex://root/Numeric?signed#signed_g[32f]()
; signed_g[32f]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<double>(), hex://root/Numeric?signed#signed_g[64f]()
; signed_g[64f]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<byte>(), hex://root/Numeric?unsigned#unsigned_g[8u]()
; unsigned_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<sbyte>(), hex://root/Numeric?unsigned#unsigned_g[8i]()
; unsigned_g[8i]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<ushort>(), hex://root/Numeric?unsigned#unsigned_g[16u]()
; unsigned_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<short>(), hex://root/Numeric?unsigned#unsigned_g[16i]()
; unsigned_g[16i]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<uint>(), hex://root/Numeric?unsigned#unsigned_g[32u]()
; unsigned_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<int>(), hex://root/Numeric?unsigned#unsigned_g[32i]()
; unsigned_g[32i]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<ulong>(), hex://root/Numeric?unsigned#unsigned_g[64u]()
; unsigned_g[64u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<long>(), hex://root/Numeric?unsigned#unsigned_g[64i]()
; unsigned_g[64i]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<float>(), hex://root/Numeric?unsigned#unsigned_g[32f]()
; unsigned_g[32f]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<double>(), hex://root/Numeric?unsigned#unsigned_g[64f]()
; unsigned_g[64f]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<byte>(), hex://root/Numeric?floating#floating_g[8u]()
; floating_g[8u]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<sbyte>(), hex://root/Numeric?floating#floating_g[8i]()
; floating_g[8i]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<ushort>(), hex://root/Numeric?floating#floating_g[16u]()
; floating_g[16u]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<short>(), hex://root/Numeric?floating#floating_g[16i]()
; floating_g[16i]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<uint>(), hex://root/Numeric?floating#floating_g[32u]()
; floating_g[32u]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<int>(), hex://root/Numeric?floating#floating_g[32i]()
; floating_g[32i]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<ulong>(), hex://root/Numeric?floating#floating_g[64u]()
; floating_g[64u]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<long>(), hex://root/Numeric?floating#floating_g[64i]()
; floating_g[64i]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<float>(), hex://root/Numeric?floating#floating_g[32f]()
; floating_g[32f]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<double>(), hex://root/Numeric?floating#floating_g[64f]()
; floating_g[64f]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool test(Type t), hex://root/Numeric?test#test_()
; test_()[23] = {0x48,0x83,0xec,0x28,0x90,0xe8,0x46,0x12,0x11,0xff,0x85,0xc0,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff7c7753bc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 12 11 ff}
000ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ch setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; FixedWidth:uint width(Type t), hex://root/Numeric?width#width_()
; width_()[29] = {0x48,0x83,0xec,0x28,0x90,0xe8,0x16,0x12,0x11,0xff,0x85,0xc0,0x74,0x08,0x0f,0xb7,0xc0,0x48,0x83,0xc4,0x28,0xc3,0x33,0xc0,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff7c7753bc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 12 11 ff}
000ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ch je short 0016h                          ; JE rel8 || 74 cb || encoded[2]{74 08}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed(Type t), hex://root/Numeric?signed#signed_()
; signed_()[109] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf9,0xc5,0xbc,0x5e,0x48,0x3b,0xc6,0x74,0x46,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe5,0xc5,0xbc,0x5e,0x48,0x3b,0xc6,0x74,0x32,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd1,0xc5,0xbc,0x5e,0x48,0x3b,0xc6,0x74,0x1e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xbd,0xc5,0xbc,0x5e,0x48,0x3b,0xc6,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5e,0xc3,0xb8,0x01,0x00,0x00,0x00,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0012h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c5 bc 5e}
0017h cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
001ah je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 46}
001ch mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
0026h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 c5 bc 5e}
002bh cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
002eh je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 32}
0030h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
003ah call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 c5 bc 5e}
003fh cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
0042h je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 1e}
0044h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
004eh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd c5 bc 5e}
0053h cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
0056h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0059h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0060h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0061h ret                                     ; RET || C3 || encoded[1]{c3}
0062h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0067h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned(Type t), hex://root/Numeric?unsigned#unsigned_()
; unsigned_()[109] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x69,0xc5,0xbc,0x5e,0x48,0x3b,0xc6,0x74,0x46,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x55,0xc5,0xbc,0x5e,0x48,0x3b,0xc6,0x74,0x32,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x41,0xc5,0xbc,0x5e,0x48,0x3b,0xc6,0x74,0x1e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2d,0xc5,0xbc,0x5e,0x48,0x3b,0xc6,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5e,0xc3,0xb8,0x01,0x00,0x00,0x00,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
0012h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 c5 bc 5e}
0017h cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
001ah je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 46}
001ch mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
0026h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 c5 bc 5e}
002bh cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
002eh je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 32}
0030h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
003ah call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 c5 bc 5e}
003fh cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
0042h je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 1e}
0044h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
004eh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d c5 bc 5e}
0053h cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
0056h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0059h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0060h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0061h ret                                     ; RET || C3 || encoded[1]{c3}
0062h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0067h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating(Type t), hex://root/Numeric?floating#floating_()
; floating_()[69] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd9,0xc4,0xbc,0x5e,0x48,0x3b,0xc6,0x74,0x1e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xc5,0xc4,0xbc,0x5e,0x48,0x3b,0xc6,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5e,0xc3,0xb8,0x01,0x00,0x00,0x00,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
0012h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 c4 bc 5e}
0017h cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
001ah je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 1e}
001ch mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
0026h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 c4 bc 5e}
002bh cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
002eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0031h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0034h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0038h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
003fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint from(FixedWidth:uint width, NumericIndicator:ushort ni), hex://root/Numeric?from#from_(FixedWidth~32u,NumericIndicator~16u)
; from_(FixedWidth~32u,NumericIndicator~16u)[187] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x83,0xf8,0x66,0x0f,0x84,0x89,0x00,0x00,0x00,0x83,0xf8,0x69,0x74,0x0a,0x83,0xf8,0x75,0x74,0x42,0xe9,0x98,0x00,0x00,0x00,0x83,0xf9,0x10,0x77,0x0c,0x83,0xf9,0x08,0x74,0x13,0x83,0xf9,0x10,0x74,0x15,0xeb,0x28,0x83,0xf9,0x20,0x74,0x15,0x83,0xf9,0x40,0x74,0x17,0xeb,0x1c,0xb8,0x08,0x00,0x02,0x80,0xeb,0x17,0xb8,0x10,0x00,0x08,0x80,0xeb,0x10,0xb8,0x20,0x00,0x20,0x80,0xeb,0x09,0xb8,0x40,0x00,0x80,0x80,0xeb,0x02,0x33,0xc0,0xeb,0x5d,0x83,0xf9,0x10,0x77,0x0c,0x83,0xf9,0x08,0x74,0x13,0x83,0xf9,0x10,0x74,0x15,0xeb,0x28,0x83,0xf9,0x20,0x74,0x15,0x83,0xf9,0x40,0x74,0x17,0xeb,0x1c,0xb8,0x08,0x00,0x01,0x20,0xeb,0x17,0xb8,0x10,0x00,0x04,0x20,0xeb,0x10,0xb8,0x20,0x00,0x10,0x20,0xeb,0x09,0xb8,0x40,0x00,0x40,0x20,0xeb,0x02,0x33,0xc0,0xeb,0x20,0x83,0xf9,0x20,0x74,0x07,0x83,0xf9,0x40,0x74,0x09,0xeb,0x0e,0xb8,0x20,0x00,0x00,0x42,0xeb,0x09,0xb8,0x40,0x00,0x00,0x44,0xeb,0x02,0x33,0xc0,0xeb,0x02,0x33,0xc0,0xc3}
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
------------------------------------------------------------------------------------------------------------------------
; Type type(NumericKind:uint k), hex://root/Numeric?type#type_(NumericKind~32u)
; type_(NumericKind~32u)[565] = {0x57,0x56,0x48,0x83,0xec,0x28,0x8b,0xf1,0x81,0xfe,0x20,0x00,0x00,0x42,0x77,0x6c,0x81,0xfe,0x10,0x00,0x04,0x20,0x77,0x2f,0x81,0xfe,0x08,0x00,0x01,0x20,0x0f,0x84,0xb9,0x00,0x00,0x00,0x81,0xfe,0x10,0x00,0x04,0x20,0x0f,0x85,0x25,0x01,0x00,0x00,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x81,0xc3,0xbc,0x5e,0x90,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3,0x81,0xfe,0x20,0x00,0x10,0x20,0x0f,0x84,0xb2,0x00,0x00,0x00,0x81,0xfe,0x40,0x00,0x40,0x20,0x0f,0x84,0xce,0x00,0x00,0x00,0x81,0xfe,0x20,0x00,0x00,0x42,0x0f,0x85,0xea,0x00,0x00,0x00,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x46,0xc3,0xbc,0x5e,0xeb,0xc3,0x81,0xfe,0x08,0x00,0x02,0x80,0x77,0x29,0x81,0xfe,0x40,0x00,0x00,0x44,0x0f,0x84,0xb1,0x00,0x00,0x00,0x81,0xfe,0x08,0x00,0x02,0x80,0x0f,0x85,0xb9,0x00,0x00,0x00,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x15,0xc3,0xbc,0x5e,0xeb,0x92,0x81,0xfe,0x10,0x00,0x08,0x80,0x74,0x3c,0x81,0xfe,0x20,0x00,0x20,0x80,0x74,0x5c,0x81,0xfe,0x40,0x00,0x80,0x80,0x0f,0x85,0x8c,0x00,0x00,0x00,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe8,0xc2,0xbc,0x5e,0xe9,0x62,0xff,0xff,0xff,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd4,0xc2,0xbc,0x5e,0xe9,0x4e,0xff,0xff,0xff,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xc0,0xc2,0xbc,0x5e,0xe9,0x3a,0xff,0xff,0xff,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xac,0xc2,0xbc,0x5e,0xe9,0x26,0xff,0xff,0xff,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x98,0xc2,0xbc,0x5e,0xe9,0x12,0xff,0xff,0xff,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x84,0xc2,0xbc,0x5e,0xe9,0xfe,0xfe,0xff,0xff,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x70,0xc2,0xbc,0x5e,0xe9,0xea,0xfe,0xff,0xff,0x48,0xb9,0x70,0xb0,0x94,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x1c,0x3f,0xc2,0x5e,0x48,0x8b,0xf8,0x89,0x77,0x08,0x48,0xb9,0xe0,0x25,0x97,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x07,0x3f,0xc2,0x5e,0x48,0x8b,0xf0,0x48,0x8b,0xcf,0xe8,0xcc,0x1d,0x8b,0x4d,0x48,0x8b,0xd0,0x48,0x8b,0xce,0xe8,0x69,0x6d,0x11,0xff,0x48,0x8b,0xce,0xe8,0x39,0x8b,0xb9,0x5e,0xcc,0x19,0x06,0x03,0x00,0x06,0x42,0x02,0x60,0x01,0x70,0x00,0x00,0x40,0x00,0x00,0x00,0x90,0xb3,0xbd,0xc8,0xf7,0x7f,0x00,0x00,0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x85,0xc0,0x74,0x11,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x10,0x74,0x02,0x33,0xc0,0x48,0x85,0xc0,0x75,0x5c,0x48,0x8b,0xc1,0x48,0x85,0xc0,0x74,0x11,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x10,0x74,0x02,0x33,0xc0,0x48,0x85,0xc0,0x75,0x3e,0x48,0x8b,0xc1,0x48,0x85,0xc0,0x74,0x11,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x10,0x74,0x02,0x33,0xc0,0x48,0x85,0xc0,0x75,0x20,0x48,0x85,0xc9,0x74,0x11,0x48,0xb8,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x01,0x74,0x02,0x33,0xc9,0x48,0x85,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h cmp esi,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 20 00 00 42}
000eh ja short 007ch                          ; JA rel8 || 77 cb || encoded[2]{77 6c}
0010h cmp esi,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 10 00 04 20}
0016h ja short 0047h                          ; JA rel8 || 77 cb || encoded[2]{77 2f}
0018h cmp esi,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 08 00 01 20}
001eh je near ptr 00ddh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b9 00 00 00}
0024h cmp esi,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 10 00 04 20}
002ah jne near ptr 0155h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 25 01 00 00}
0030h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
003ah call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 c3 bc 5e}
003fh nop                                     ; NOP || o32 90 || encoded[1]{90}
0040h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
0047h cmp esi,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 20 00 10 20}
004dh je near ptr 0105h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 00 00 00}
0053h cmp esi,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 40 00 40 20}
0059h je near ptr 012dh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 ce 00 00 00}
005fh cmp esi,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 20 00 00 42}
0065h jne near ptr 0155h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ea 00 00 00}
006bh mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
0075h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 c3 bc 5e}
007ah jmp short 003fh                         ; JMP rel8 || EB cb || encoded[2]{eb c3}
007ch cmp esi,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 08 00 02 80}
0082h ja short 00adh                          ; JA rel8 || 77 cb || encoded[2]{77 29}
0084h cmp esi,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 40 00 00 44}
008ah je near ptr 0141h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b1 00 00 00}
0090h cmp esi,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 08 00 02 80}
0096h jne near ptr 0155h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b9 00 00 00}
009ch mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
00a6h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c3 bc 5e}
00abh jmp short 003fh                         ; JMP rel8 || EB cb || encoded[2]{eb 92}
00adh cmp esi,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 10 00 08 80}
00b3h je short 00f1h                          ; JE rel8 || 74 cb || encoded[2]{74 3c}
00b5h cmp esi,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 20 00 20 80}
00bbh je short 0119h                          ; JE rel8 || 74 cb || encoded[2]{74 5c}
00bdh cmp esi,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 40 00 80 80}
00c3h jne near ptr 0155h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
00c9h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
00d3h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 c2 bc 5e}
00d8h jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 62 ff ff ff}
00ddh mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00e7h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 c2 bc 5e}
00ech jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4e ff ff ff}
00f1h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
00fbh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 c2 bc 5e}
0100h jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3a ff ff ff}
0105h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
010fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c2 bc 5e}
0114h jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 26 ff ff ff}
0119h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
0123h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 c2 bc 5e}
0128h jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 ff ff ff}
012dh mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
0137h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 c2 bc 5e}
013ch jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe fe ff ff}
0141h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
014bh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 c2 bc 5e}
0150h jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea fe ff ff}
0155h mov rcx,7ff7c794b070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b0 94 c7 f7 7f 00 00}
015fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 3f c2 5e}
0164h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0167h mov [rdi+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 77 08}
016ah mov rcx,7ff7c79725e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 25 97 c7 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 3f c2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
017fh call 7ff815ef4b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 1d 8b 4d}
0184h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0187h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
018ah call 7ff7c7759b28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 6d 11 ff}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 8b b9 5e}
0197h int 3                                   ; INT3 || CC || encoded[1]{cc}
0198h sbb [rsi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 06}
019ah add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
019ch (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 42}
019eh add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
01a1h jo short 01a3h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
01a3h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 40 00}
01a6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01a8h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a9h mov bl,0bdh                             ; MOV r8, imm8 || B0+rb ib || encoded[2]{b3 bd}
01abh enter 7ff7h,0                           ; ENTER imm16, imm8 || C8 iw ib || encoded[4]{c8 f7 7f 00}
01afh add [rdi],cl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 0f}
01b1h (bad)                                   ; <invalid> || <invalid> || encoded[2]{1f 44}
01b3h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01b5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b8h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
01bbh je short 01ceh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
01bdh mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
01c7h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
01cah je short 01ceh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
01cch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
01ceh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
01d1h jne short 022fh                         ; JNE rel8 || 75 cb || encoded[2]{75 5c}
01d3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01d6h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
01d9h je short 01ech                          ; JE rel8 || 74 cb || encoded[2]{74 11}
01dbh mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
01e5h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
01e8h je short 01ech                          ; JE rel8 || 74 cb || encoded[2]{74 02}
01eah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
01ech test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
01efh jne short 022fh                         ; JNE rel8 || 75 cb || encoded[2]{75 3e}
01f1h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01f4h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
01f7h je short 020ah                          ; JE rel8 || 74 cb || encoded[2]{74 11}
01f9h mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
0203h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0206h je short 020ah                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0208h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
020ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
020dh jne short 022fh                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
020fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0212h je short 0225h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0214h mov rax,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9e 70 c7 f7 7f 00 00}
021eh cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
0221h je short 0225h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0223h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0225h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0228h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
022bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
022eh ret                                     ; RET || C3 || encoded[1]{c3}
022fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0234h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed(object value), hex://root/Numeric?signed#signed_(object)
; signed_(object)[133] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x85,0xc0,0x74,0x11,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x10,0x74,0x02,0x33,0xc0,0x48,0x85,0xc0,0x75,0x5c,0x48,0x8b,0xc1,0x48,0x85,0xc0,0x74,0x11,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x10,0x74,0x02,0x33,0xc0,0x48,0x85,0xc0,0x75,0x3e,0x48,0x8b,0xc1,0x48,0x85,0xc0,0x74,0x11,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x10,0x74,0x02,0x33,0xc0,0x48,0x85,0xc0,0x75,0x20,0x48,0x85,0xc9,0x74,0x11,0x48,0xb8,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x01,0x74,0x02,0x33,0xc9,0x48,0x85,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
000bh je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
000dh mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
0017h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
001ah je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
001ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0021h jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 5c}
0023h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0026h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0029h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 11}
002bh mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
0035h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0038h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 02}
003ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
003fh jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 3e}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0047h je short 005ah                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0049h mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
0053h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0056h je short 005ah                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0058h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
005fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0062h je short 0075h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0064h mov rax,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9e 70 c7 f7 7f 00 00}
006eh cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
0071h je short 0075h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0073h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0075h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0078h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
007bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007eh ret                                     ; RET || C3 || encoded[1]{c3}
007fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned(object value), hex://root/Numeric?unsigned#unsigned_(object)
; unsigned_(object)[133] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x85,0xc0,0x74,0x11,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x10,0x74,0x02,0x33,0xc0,0x48,0x85,0xc0,0x75,0x5c,0x48,0x8b,0xc1,0x48,0x85,0xc0,0x74,0x11,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x10,0x74,0x02,0x33,0xc0,0x48,0x85,0xc0,0x75,0x3e,0x48,0x8b,0xc1,0x48,0x85,0xc0,0x74,0x11,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x10,0x74,0x02,0x33,0xc0,0x48,0x85,0xc0,0x75,0x20,0x48,0x85,0xc9,0x74,0x11,0x48,0xb8,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x01,0x74,0x02,0x33,0xc9,0x48,0x85,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
000bh je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
000dh mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
0017h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
001ah je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
001ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0021h jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 5c}
0023h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0026h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0029h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 11}
002bh mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
0035h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0038h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 02}
003ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
003fh jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 3e}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0047h je short 005ah                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0049h mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
0053h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0056h je short 005ah                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0058h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
005fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0062h je short 0075h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0064h mov rax,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a6 70 c7 f7 7f 00 00}
006eh cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
0071h je short 0075h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0073h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0075h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0078h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
007bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007eh ret                                     ; RET || C3 || encoded[1]{c3}
007fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating(object value), hex://root/Numeric?floating#floating_(object)
; floating_(object)[73] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x85,0xc0,0x74,0x11,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x10,0x74,0x02,0x33,0xc0,0x48,0x85,0xc0,0x75,0x20,0x48,0x85,0xc9,0x74,0x11,0x48,0xb8,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x01,0x74,0x02,0x33,0xc9,0x48,0x85,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
000bh je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
000dh mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
0017h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
001ah je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
001ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0021h jne short 0043h                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
0023h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0026h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0028h mov rax,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 b8 70 c7 f7 7f 00 00}
0032h cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
0035h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0037h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0039h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
003ch setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
003fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
0043h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int int(FixedWidth:uint src), hex://root/Numeric?int#int_(FixedWidth~32u)
; int_(FixedWidth~32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool is(NumericKind:uint k, NumericId:uint match), hex://root/Numeric?is#is_(NumericKind~32u,NumericId~32u)
; is_(NumericKind~32u,NumericId~32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xca,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ca}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind(string src), hex://root/Numeric?kind#kind_(string)
; kind_(string)[365] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x30,0x8b,0x11,0xba,0x02,0x00,0x00,0x00,0xe8,0xac,0x11,0x0f,0xff,0x48,0x8b,0xf0,0x48,0x8b,0xce,0xe8,0x41,0x8a,0x8a,0x4d,0x85,0xc0,0x0f,0x85,0x22,0x01,0x00,0x00,0x48,0x8b,0xce,0xe8,0xe1,0xf1,0xff,0xff,0x8b,0xf8,0x48,0xb9,0xf0,0x07,0x9c,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd0,0x3a,0xc2,0x5e,0x48,0x8b,0xd8,0x48,0xb9,0xf0,0x07,0x9c,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xfe,0xbd,0xbc,0x5e,0x48,0x8b,0xc8,0x66,0x89,0x7b,0x08,0x48,0x8b,0xd3,0xe8,0x6f,0xd3,0x0e,0xff,0x84,0xc0,0x0f,0x84,0xe0,0x00,0x00,0x00,0x85,0xff,0x0f,0x84,0xd8,0x00,0x00,0x00,0x45,0x33,0xc0,0x44,0x89,0x44,0x24,0x38,0x44,0x8b,0x46,0x08,0x41,0xff,0xc8,0x48,0x8b,0xce,0x33,0xd2,0xe8,0xf6,0x54,0x8a,0x4d,0x48,0x85,0xc0,0x75,0x0b,0x33,0xc0,0x89,0x44,0x24,0x38,0xe9,0xaf,0x00,0x00,0x00,0x48,0x8d,0x50,0x0c,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x28,0x48,0x89,0x11,0x89,0x41,0x08,0xe8,0x9f,0x84,0x8b,0x4d,0x4c,0x8b,0xc0,0x48,0x8d,0x4c,0x24,0x28,0x4c,0x8d,0x4c,0x24,0x38,0xba,0x07,0x00,0x00,0x00,0xe8,0x00,0x56,0x3c,0xff,0x85,0xc0,0x0f,0x94,0xc1,0x0f,0xb6,0xc9,0x85,0xc9,0x74,0x75,0x8b,0x74,0x24,0x38,0x48,0xb9,0xd8,0x35,0x9b,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x29,0x3a,0xc2,0x5e,0x48,0x8b,0xd8,0x48,0xb9,0xd8,0x35,0x9b,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x57,0xbd,0xbc,0x5e,0x48,0x8b,0xc8,0x89,0x73,0x08,0x48,0x8b,0xd3,0xe8,0xc9,0xd2,0x0e,0xff,0x84,0xc0,0x74,0x3e,0x8b,0xce,0x8b,0xd7,0xe8,0xac,0xf8,0xff,0xff,0x8b,0xf0,0x48,0xb9,0x70,0xb0,0x94,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xeb,0x39,0xc2,0x5e,0x48,0x8b,0xf8,0x48,0xb9,0x70,0xb0,0x94,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x19,0xbd,0xbc,0x5e,0x48,0x8b,0xc8,0x89,0x77,0x08,0x48,0x8b,0xd7,0xe8,0x8b,0xd2,0x0e,0xff,0x84,0xc0,0x75,0x0a,0x33,0xc0,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0018h mov edx,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 11}
001ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001fh call 7ff7c7734360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 11 0f ff}
0024h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah call 7ff815eebc00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 8a 8a 4d}
002fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0031h jne near ptr 0159h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 22 01 00 00}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c86423b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f1 ff ff}
003fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0041h mov rcx,7ff7c79c07f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 07 9c c7 f7 7f 00 00}
004bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 3a c2 5e}
0050h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0053h mov rcx,7ff7c79c07f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 07 9c c7 f7 7f 00 00}
005dh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe bd bc 5e}
0062h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0065h mov [rbx+8],di                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 7b 08}
0069h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
006ch call 7ff7c7730570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f d3 0e ff}
0071h test al,al                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c0}
0073h je near ptr 0159h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 e0 00 00 00}
0079h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
007bh je near ptr 0159h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 d8 00 00 00}
0081h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0084h mov [rsp+38h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 38}
0089h mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
008dh dec r8d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c8}
0090h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0093h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0095h call 7ff815ee8720h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 54 8a 4d}
009ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
009dh jne short 00aah                         ; JNE rel8 || 75 cb || encoded[2]{75 0b}
009fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00a1h mov [rsp+38h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 38}
00a5h jmp near ptr 0159h                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 00 00 00}
00aah lea rdx,[rax+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 0c}
00aeh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
00b1h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
00b6h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
00b9h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
00bch call 7ff815efb6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 84 8b 4d}
00c1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00c4h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
00c9h lea r9,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 38}
00ceh mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
00d3h call 7ff7c7a08868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 56 3c ff}
00d8h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00dah sete cl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c1}
00ddh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00e0h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
00e2h je short 0159h                          ; JE rel8 || 74 cb || encoded[2]{74 75}
00e4h mov esi,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 38}
00e8h mov rcx,7ff7c79b35d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 35 9b c7 f7 7f 00 00}
00f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 3a c2 5e}
00f7h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fah mov rcx,7ff7c79b35d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 35 9b c7 f7 7f 00 00}
0104h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 bd bc 5e}
0109h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010ch mov [rbx+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 73 08}
010fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0112h call 7ff7c7730570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 d2 0e ff}
0117h test al,al                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c0}
0119h je short 0159h                          ; JE rel8 || 74 cb || encoded[2]{74 3e}
011bh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
011dh mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
011fh call 7ff7c8642b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac f8 ff ff}
0124h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0126h mov rcx,7ff7c794b070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b0 94 c7 f7 7f 00 00}
0130h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 39 c2 5e}
0135h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0138h mov rcx,7ff7c794b070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b0 94 c7 f7 7f 00 00}
0142h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 bd bc 5e}
0147h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
014ah mov [rdi+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 77 08}
014dh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0150h call 7ff7c7730570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b d2 0e ff}
0155h test al,al                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c0}
0157h jne short 0163h                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
0159h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
015bh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
015fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0160h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0161h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0162h ret                                     ; RET || C3 || encoded[1]{c3}
0163h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0165h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0169h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
016ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
016bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
016ch ret                                     ; RET || C3 || encoded[1]{c3}
