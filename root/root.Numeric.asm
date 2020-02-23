------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind(Type t)
; kind_()[155] = {56 48 83 ec 20 48 8b f1 48 8b ce 48 8b 06 48 8b 40 70 ff 50 30 85 c0 75 12 48 8b ce e8 7f 6f ff ff 48 8b c8 e8 07 e3 fd ff eb 02 33 c0 83 c0 fb 83 f8 09 77 5e 8b c0 48 8d 15 62 00 00 00 8b 14 82 48 8d 0d c0 ff ff ff 48 03 d1 ff e2 b8 08 00 02 80 eb 41 b8 08 00 01 20 eb 3a b8 10 00 08 80 eb 33 b8 10 00 04 20 eb 2c b8 20 00 20 80 eb 25 b8 20 00 10 20 eb 1e b8 40 00 80 80 eb 17 b8 40 00 40 20 eb 10 b8 20 00 00 42 eb 09 b8 40 00 00 44 eb 02 33 c0 48 83 c4 20 5e c3}
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
001ch call 7ff7c63a9bc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 6f ff ff}
0021h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0024h call 7ff7c6390f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 e3 fd ff}
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
; HashSet<NumericKind:uint> kindsetCreate(NumericKind:uint k)
; kindsetCreate_(NumericKind~32u)[267] = {57 56 48 83 ec 28 8b f1 48 b9 38 b7 cf c6 f7 7f 00 00 e8 59 f9 42 5f 48 8b f8 48 ba 98 2e f6 b8 de 01 00 00 48 8b 12 48 8b cf e8 59 ee ff ff f7 c6 00 00 01 00 74 0d 48 8b cf ba 08 00 01 20 e8 8c ef ff ff f7 c6 00 00 02 00 74 0d 48 8b cf ba 08 00 02 80 e8 77 ef ff ff f7 c6 00 00 04 00 74 0d 48 8b cf ba 10 00 04 20 e8 62 ef ff ff f7 c6 00 00 08 00 74 0d 48 8b cf ba 10 00 08 80 e8 4d ef ff ff f7 c6 00 00 10 00 74 0d 48 8b cf ba 20 00 10 20 e8 38 ef ff ff f7 c6 00 00 20 00 74 0d 48 8b cf ba 20 00 20 80 e8 23 ef ff ff f7 c6 00 00 40 00 74 0d 48 8b cf ba 40 00 40 20 e8 0e ef ff ff f7 c6 00 00 80 00 74 0d 48 8b cf ba 40 00 80 80 e8 f9 ee ff ff f7 c6 00 00 00 02 74 0d 48 8b cf ba 20 00 00 42 e8 e4 ee ff ff f7 c6 00 00 00 04 74 0d 48 8b cf ba 40 00 00 44 e8 cf ee ff ff 48 8b c7 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h mov rcx,7ff7c6cfb738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b7 cf c6 f7 7f 00 00}
0012h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f9 42 5f}
0017h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
001ah mov rdx,1deb8f62e98h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 98 2e f6 b8 de 01 00 00}
0024h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0027h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
002ah call 7ff7c6a761c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ee ff ff}
002fh test esi,10000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 01 00}
0035h je short 0044h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0037h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
003ah mov edx,20010008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 01 20}
003fh call 7ff7c6a76310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c ef ff ff}
0044h test esi,20000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 02 00}
004ah je short 0059h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
004ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
004fh mov edx,80020008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 02 80}
0054h call 7ff7c6a76310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ef ff ff}
0059h test esi,40000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 04 00}
005fh je short 006eh                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0061h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0064h mov edx,20040010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 04 20}
0069h call 7ff7c6a76310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ef ff ff}
006eh test esi,80000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 08 00}
0074h je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0076h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0079h mov edx,80080010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 08 80}
007eh call 7ff7c6a76310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d ef ff ff}
0083h test esi,100000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 10 00}
0089h je short 0098h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
008bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
008eh mov edx,20100020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 10 20}
0093h call 7ff7c6a76310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ef ff ff}
0098h test esi,200000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 20 00}
009eh je short 00adh                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00a0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a3h mov edx,80200020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 20 80}
00a8h call 7ff7c6a76310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 ef ff ff}
00adh test esi,400000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 40 00}
00b3h je short 00c2h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00b5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b8h mov edx,20400040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 40 20}
00bdh call 7ff7c6a76310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e ef ff ff}
00c2h test esi,800000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 80 00}
00c8h je short 00d7h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov edx,80800040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 80 80}
00d2h call 7ff7c6a76310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ee ff ff}
00d7h test esi,2000000h                       ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 00 02}
00ddh je short 00ech                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e2h mov edx,42000020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 42}
00e7h call 7ff7c6a76310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ee ff ff}
00ech test esi,4000000h                       ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 00 04}
00f2h je short 0101h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00f4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f7h mov edx,44000040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 44}
00fch call 7ff7c6a76310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf ee ff ff}
0101h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0104h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0108h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0109h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string format(FixedWidth:uint src)
; format_(FixedWidth~32u)[118] = {56 48 83 ec 40 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 8b f1 48 b9 08 8f 36 c6 f7 7f 00 00 e8 b4 b0 42 5f 89 70 08 45 33 c0 48 ba 88 13 f6 b8 de 01 00 00 48 8b 12 48 b9 80 99 f6 b8 de 01 00 00 48 8b 09 4c 8d 4c 24 20 49 89 01 4d 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 20 48 8b d1 33 c9 e8 01 a0 28 50 90 48 83 c4 40 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000ch mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0011h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0016h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
001bh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001dh mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0027h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 b0 42 5f}
002ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
002fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0032h mov rdx,1deb8f61388h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 88 13 f6 b8 de 01 00 00}
003ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
003fh mov rcx,1deb8f69980h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 99 f6 b8 de 01 00 00}
0049h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
004ch lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
0051h mov [r9],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 01}
0054h mov [r9+8],r8                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 08}
0058h mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
005ch mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0060h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0065h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0068h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
006ah call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a0 28 50}
006fh nop                                     ; NOP || o32 90 || encoded[1]{90}
0070h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<byte>()
; kind_g[8u]()[11] = {0f 1f 44 00 00 b8 08 00 01 20 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20010008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 01 20}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<sbyte>()
; kind_g[8i]()[11] = {0f 1f 44 00 00 b8 08 00 02 80 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,80020008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 02 80}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<ushort>()
; kind_g[16u]()[11] = {0f 1f 44 00 00 b8 10 00 04 20 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20040010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 04 20}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<short>()
; kind_g[16i]()[11] = {0f 1f 44 00 00 b8 10 00 08 80 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,80080010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 08 80}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<uint>()
; kind_g[32u]()[11] = {0f 1f 44 00 00 b8 20 00 10 20 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20100020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 10 20}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<int>()
; kind_g[32i]()[11] = {0f 1f 44 00 00 b8 20 00 20 80 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,80200020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 20 80}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<ulong>()
; kind_g[64u]()[11] = {0f 1f 44 00 00 b8 40 00 40 20 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20400040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 40 20}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<long>()
; kind_g[64i]()[11] = {0f 1f 44 00 00 b8 40 00 80 80 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,80800040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 80 80}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<float>()
; kind_g[32f]()[11] = {0f 1f 44 00 00 b8 20 00 00 42 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,42000020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 42}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind<double>()
; kind_g[64f]()[11] = {0f 1f 44 00 00 b8 40 00 00 44 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,44000040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 44}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<byte>()
; signed_g[8u]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<sbyte>()
; signed_g[8i]()[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<ushort>()
; signed_g[16u]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<short>()
; signed_g[16i]()[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<uint>()
; signed_g[32u]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<int>()
; signed_g[32i]()[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<ulong>()
; signed_g[64u]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<long>()
; signed_g[64i]()[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<float>()
; signed_g[32f]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed<double>()
; signed_g[64f]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<byte>()
; unsigned_g[8u]()[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<sbyte>()
; unsigned_g[8i]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<ushort>()
; unsigned_g[16u]()[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<short>()
; unsigned_g[16i]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<uint>()
; unsigned_g[32u]()[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<int>()
; unsigned_g[32i]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<ulong>()
; unsigned_g[64u]()[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<long>()
; unsigned_g[64i]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<float>()
; unsigned_g[32f]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool unsigned<double>()
; unsigned_g[64f]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<byte>()
; floating_g[8u]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<sbyte>()
; floating_g[8i]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<ushort>()
; floating_g[16u]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<short>()
; floating_g[16i]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<uint>()
; floating_g[32u]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<int>()
; floating_g[32i]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<ulong>()
; floating_g[64u]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<long>()
; floating_g[64i]()[8] = {0f 1f 44 00 00 33 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<float>()
; floating_g[32f]()[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool floating<double>()
; floating_g[64f]()[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool test(Type t)
; test_()[23] = {48 83 ec 28 90 e8 86 18 01 ff 85 c0 0f 95 c0 0f b6 c0 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 18 01 ff}
000ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ch setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; FixedWidth:uint width(Type t)
; width_()[29] = {48 83 ec 28 90 e8 56 18 01 ff 85 c0 74 08 0f b7 c0 48 83 c4 28 c3 33 c0 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 18 01 ff}
000ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ch je short 0016h                          ; JE rel8 || 74 cb || encoded[2]{74 08}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool signed(Type t)
; signed_()[109] = {56 48 83 ec 20 48 8b f1 48 b9 68 6f 36 c6 f7 7f 00 00 e8 d9 db aa 5e 48 3b c6 74 46 48 b9 48 7f 36 c6 f7 7f 00 00 e8 c5 db aa 5e 48 3b c6 74 32 48 b9 08 8f 36 c6 f7 7f 00 00 e8 b1 db aa 5e 48 3b c6 74 1e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 9d db aa 5e 48 3b c6 0f 94 c0 0f b6 c0 48 83 c4 20 5e c3 b8 01 00 00 00 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 db aa 5e}
0017h cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
001ah je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 46}
001ch mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0026h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 db aa 5e}
002bh cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
002eh je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 32}
0030h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
003ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 db aa 5e}
003fh cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
0042h je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 1e}
0044h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
004eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d db aa 5e}
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
; bool unsigned(Type t)
; unsigned_()[109] = {56 48 83 ec 20 48 8b f1 48 b9 58 77 36 c6 f7 7f 00 00 e8 49 db aa 5e 48 3b c6 74 46 48 b9 38 87 36 c6 f7 7f 00 00 e8 35 db aa 5e 48 3b c6 74 32 48 b9 d8 96 36 c6 f7 7f 00 00 e8 21 db aa 5e 48 3b c6 74 1e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 0d db aa 5e 48 3b c6 0f 94 c0 0f b6 c0 48 83 c4 20 5e c3 b8 01 00 00 00 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 db aa 5e}
0017h cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
001ah je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 46}
001ch mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0026h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 db aa 5e}
002bh cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
002eh je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 32}
0030h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
003ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 db aa 5e}
003fh cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
0042h je short 0062h                          ; JE rel8 || 74 cb || encoded[2]{74 1e}
0044h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
004eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d db aa 5e}
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
; bool floating(Type t)
; floating_()[69] = {56 48 83 ec 20 48 8b f1 48 b9 58 af 36 c6 f7 7f 00 00 e8 b9 da aa 5e 48 3b c6 74 1e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 a5 da aa 5e 48 3b c6 0f 94 c0 0f b6 c0 48 83 c4 20 5e c3 b8 01 00 00 00 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 da aa 5e}
0017h cmp rax,rsi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c6}
001ah je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 1e}
001ch mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0026h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 da aa 5e}
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
------------------------------------------------------------------------------------------------------------------------
; Type type(NumericKind:uint k)
; type_(NumericKind~32u)[565] = {57 56 48 83 ec 28 8b f1 81 fe 20 00 00 42 77 6c 81 fe 10 00 04 20 77 2f 81 fe 08 00 01 20 0f 84 b9 00 00 00 81 fe 10 00 04 20 0f 85 25 01 00 00 48 b9 38 87 36 c6 f7 7f 00 00 e8 61 d9 aa 5e 90 48 83 c4 28 5e 5f c3 81 fe 20 00 10 20 0f 84 b2 00 00 00 81 fe 40 00 40 20 0f 84 ce 00 00 00 81 fe 20 00 00 42 0f 85 ea 00 00 00 48 b9 58 af 36 c6 f7 7f 00 00 e8 26 d9 aa 5e eb c3 81 fe 08 00 02 80 77 29 81 fe 40 00 00 44 0f 84 b1 00 00 00 81 fe 08 00 02 80 0f 85 b9 00 00 00 48 b9 68 6f 36 c6 f7 7f 00 00 e8 f5 d8 aa 5e eb 92 81 fe 10 00 08 80 74 3c 81 fe 20 00 20 80 74 5c 81 fe 40 00 80 80 0f 85 8c 00 00 00 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 c8 d8 aa 5e e9 62 ff ff ff 48 b9 58 77 36 c6 f7 7f 00 00 e8 b4 d8 aa 5e e9 4e ff ff ff 48 b9 48 7f 36 c6 f7 7f 00 00 e8 a0 d8 aa 5e e9 3a ff ff ff 48 b9 d8 96 36 c6 f7 7f 00 00 e8 8c d8 aa 5e e9 26 ff ff ff 48 b9 08 8f 36 c6 f7 7f 00 00 e8 78 d8 aa 5e e9 12 ff ff ff 48 b9 78 a6 36 c6 f7 7f 00 00 e8 64 d8 aa 5e e9 fe fe ff ff 48 b9 38 b8 36 c6 f7 7f 00 00 e8 50 d8 aa 5e e9 ea fe ff ff 48 b9 28 6f 5b c6 f7 7f 00 00 e8 fc 54 b0 5e 48 8b f8 89 77 08 48 b9 40 08 5e c6 f7 7f 00 00 e8 e7 54 b0 5e 48 8b f0 48 8b cf e8 ac 33 96 4f 48 8b d0 48 8b ce e8 29 85 01 ff 48 8b ce e8 19 a1 a7 5e cc 19 06 03 00 06 42 02 60 01 70 00 00 40 00 00 00 90 c5 80 c7 f7 7f 00 00 0f 1f 44 00 00 48 8b c1 48 85 c0 74 11 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 5c 48 8b c1 48 85 c0 74 11 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 3e 48 8b c1 48 85 c0 74 11 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 20 48 85 c9 74 11 48 b8 a8 9e 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 0f 95 c0 0f b6 c0 c3 b8 01 00 00 00 c3}
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
0030h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
003ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 d9 aa 5e}
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
006bh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0075h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 d9 aa 5e}
007ah jmp short 003fh                         ; JMP rel8 || EB cb || encoded[2]{eb c3}
007ch cmp esi,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 08 00 02 80}
0082h ja short 00adh                          ; JA rel8 || 77 cb || encoded[2]{77 29}
0084h cmp esi,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 40 00 00 44}
008ah je near ptr 0141h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b1 00 00 00}
0090h cmp esi,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 08 00 02 80}
0096h jne near ptr 0155h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b9 00 00 00}
009ch mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
00a6h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 d8 aa 5e}
00abh jmp short 003fh                         ; JMP rel8 || EB cb || encoded[2]{eb 92}
00adh cmp esi,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 10 00 08 80}
00b3h je short 00f1h                          ; JE rel8 || 74 cb || encoded[2]{74 3c}
00b5h cmp esi,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 20 00 20 80}
00bbh je short 0119h                          ; JE rel8 || 74 cb || encoded[2]{74 5c}
00bdh cmp esi,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 fe 40 00 80 80}
00c3h jne near ptr 0155h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
00c9h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
00d3h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 d8 aa 5e}
00d8h jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 62 ff ff ff}
00ddh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00e7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 d8 aa 5e}
00ech jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4e ff ff ff}
00f1h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
00fbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 d8 aa 5e}
0100h jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3a ff ff ff}
0105h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
010fh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c d8 aa 5e}
0114h jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 26 ff ff ff}
0119h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0123h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 d8 aa 5e}
0128h jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 ff ff ff}
012dh mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0137h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 d8 aa 5e}
013ch jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe fe ff ff}
0141h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
014bh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 d8 aa 5e}
0150h jmp near ptr 003fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea fe ff ff}
0155h mov rcx,7ff7c65b6f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6f 5b c6 f7 7f 00 00}
015fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 54 b0 5e}
0164h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0167h mov [rdi+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 77 08}
016ah mov rcx,7ff7c65e0840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 08 5e c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 54 b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
017fh call 7ff816d04b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 33 96 4f}
0184h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0187h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
018ah call 7ff7c63b9d08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 85 01 ff}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a1 a7 5e}
0197h int 3                                   ; INT3 || CC || encoded[1]{cc}
0198h sbb [rsi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 06}
019ah add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
019ch (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 42}
019eh add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
01a1h jo short 01a3h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
01a3h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 40 00}
01a6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01a8h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a9h (bad)                                   ; <invalid> || <invalid> || encoded[4]{c5 80 c7 f7}
01adh jg short 01afh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
01afh add [rdi],cl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 0f}
01b1h (bad)                                   ; <invalid> || <invalid> || encoded[2]{1f 44}
01b3h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01b5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b8h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
01bbh je short 01ceh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
01bdh mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
01c7h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
01cah je short 01ceh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
01cch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
01ceh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
01d1h jne short 022fh                         ; JNE rel8 || 75 cb || encoded[2]{75 5c}
01d3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01d6h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
01d9h je short 01ech                          ; JE rel8 || 74 cb || encoded[2]{74 11}
01dbh mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
01e5h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
01e8h je short 01ech                          ; JE rel8 || 74 cb || encoded[2]{74 02}
01eah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
01ech test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
01efh jne short 022fh                         ; JNE rel8 || 75 cb || encoded[2]{75 3e}
01f1h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01f4h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
01f7h je short 020ah                          ; JE rel8 || 74 cb || encoded[2]{74 11}
01f9h mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
0203h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0206h je short 020ah                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0208h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
020ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
020dh jne short 022fh                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
020fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0212h je short 0225h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0214h mov rax,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9e 36 c6 f7 7f 00 00}
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
; bool signed(object value)
; signed_(object)[133] = {0f 1f 44 00 00 48 8b c1 48 85 c0 74 11 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 5c 48 8b c1 48 85 c0 74 11 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 3e 48 8b c1 48 85 c0 74 11 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 20 48 85 c9 74 11 48 b8 a8 9e 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 0f 95 c0 0f b6 c0 c3 b8 01 00 00 00 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
000bh je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
000dh mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
0017h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
001ah je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
001ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0021h jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 5c}
0023h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0026h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0029h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 11}
002bh mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
0035h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0038h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 02}
003ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
003fh jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 3e}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0047h je short 005ah                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0049h mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
0053h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0056h je short 005ah                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0058h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
005fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0062h je short 0075h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0064h mov rax,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9e 36 c6 f7 7f 00 00}
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
; bool unsigned(object value)
; unsigned_(object)[133] = {0f 1f 44 00 00 48 8b c1 48 85 c0 74 11 48 ba 58 77 36 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 5c 48 8b c1 48 85 c0 74 11 48 ba 38 87 36 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 3e 48 8b c1 48 85 c0 74 11 48 ba d8 96 36 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 20 48 85 c9 74 11 48 b8 78 a6 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 0f 95 c0 0f b6 c0 c3 b8 01 00 00 00 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
000bh je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
000dh mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
0017h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
001ah je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
001ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0021h jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 5c}
0023h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0026h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0029h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 11}
002bh mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
0035h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0038h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 02}
003ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
003fh jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 3e}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0047h je short 005ah                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0049h mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
0053h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0056h je short 005ah                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0058h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
005fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0062h je short 0075h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0064h mov rax,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a6 36 c6 f7 7f 00 00}
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
; bool floating(object value)
; floating_(object)[73] = {0f 1f 44 00 00 48 8b c1 48 85 c0 74 11 48 ba 58 af 36 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 20 48 85 c9 74 11 48 b8 38 b8 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 0f 95 c0 0f b6 c0 c3 b8 01 00 00 00 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
000bh je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
000dh mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
0017h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
001ah je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
001ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0021h jne short 0043h                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
0023h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0026h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0028h mov rax,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 b8 36 c6 f7 7f 00 00}
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
; int int(FixedWidth:uint src)
; int_(FixedWidth~32u)[8] = {0f 1f 44 00 00 8b c1 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ISet<Type> typeset(NumericKind:uint k)
; typeset_(NumericKind~32u)[125] = {57 56 53 48 83 ec 20 8b f1 48 b9 f8 57 81 c7 f7 7f 00 00 e8 d8 52 b0 5e 48 8b f8 48 ba b8 5b f6 b8 de 01 00 00 48 8b 1a 48 8d 4f 08 48 8b d7 e8 fc 43 b0 5e 48 b9 b0 d6 26 c6 f7 7f 00 00 48 89 4f 18 48 b9 40 29 3b c6 f7 7f 00 00 48 89 4f 20 48 8b cb 8b d6 4c 8b c7 48 b8 30 71 a7 c6 f7 7f 00 00 39 09 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h mov rcx,7ff7c78157f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 57 81 c7 f7 7f 00 00}
0013h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 52 b0 5e}
0018h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
001bh mov rdx,1deb8f65bb8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b8 5b f6 b8 de 01 00 00}
0025h mov rbx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 1a}
0028h lea rcx,[rdi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4f 08}
002ch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
002fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 43 b0 5e}
0034h mov rcx,7ff7c626d6b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d6 26 c6 f7 7f 00 00}
003eh mov [rdi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4f 18}
0042h mov rcx,7ff7c63b2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 3b c6 f7 7f 00 00}
004ch mov [rdi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4f 20}
0050h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0053h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0055h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0058h mov rax,7ff7c6a77130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 71 a7 c6 f7 7f 00 00}
0062h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0064h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
006eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0070h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0072h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0074h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0076h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0078h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
007bh jo short 00bdh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; ISet<NumericKind:uint> kindset(NumericKind:uint k)
; kindset_(NumericKind~32u)[125] = {57 56 53 48 83 ec 20 8b f1 48 b9 a8 d4 cf c6 f7 7f 00 00 e8 48 52 b0 5e 48 8b f8 48 ba b0 5b f6 b8 de 01 00 00 48 8b 1a 48 8d 4f 08 48 8b d7 e8 6c 43 b0 5e 48 b9 b0 d6 26 c6 f7 7f 00 00 48 89 4f 18 48 b9 40 73 a7 c6 f7 7f 00 00 48 89 4f 20 48 8b cb 8b d6 4c 8b c7 48 b8 30 71 a7 c6 f7 7f 00 00 39 09 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h mov rcx,7ff7c6cfd4a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d4 cf c6 f7 7f 00 00}
0013h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 52 b0 5e}
0018h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
001bh mov rdx,1deb8f65bb0h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 5b f6 b8 de 01 00 00}
0025h mov rbx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 1a}
0028h lea rcx,[rdi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4f 08}
002ch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
002fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 43 b0 5e}
0034h mov rcx,7ff7c626d6b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d6 26 c6 f7 7f 00 00}
003eh mov [rdi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4f 18}
0042h mov rcx,7ff7c6a77340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 73 a7 c6 f7 7f 00 00}
004ch mov [rdi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4f 20}
0050h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0053h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0055h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0058h mov rax,7ff7c6a77130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 71 a7 c6 f7 7f 00 00}
0062h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0064h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
006eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0070h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0072h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0074h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0076h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0078h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
007bh jo short 00bdh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bool is(NumericKind:uint k, NumericKind:uint match)
; is_(NumericKind~32u,NumericKind~32u)[157] = {57 56 55 53 48 83 ec 28 8b f1 8b fa 48 b9 a8 d4 cf c6 f7 7f 00 00 e8 b5 51 b0 5e 48 8b d8 48 ba b0 5b f6 b8 de 01 00 00 48 8b 2a 48 8d 4b 08 48 8b d3 e8 d9 42 b0 5e 48 b9 b0 d6 26 c6 f7 7f 00 00 48 89 4b 18 48 b9 40 73 a7 c6 f7 7f 00 00 48 89 4b 20 48 8b cd 8b d6 4c 8b c3 39 09 e8 ee 55 6d ff 48 8b c8 8b d7 49 bb 00 0d 27 c6 f7 7f 00 00 48 b8 00 0d 27 c6 f7 7f 00 00 48 8b 00 39 09 48 83 c4 28 5b 5d 5e 5f 48 ff e0 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov rcx,7ff7c6cfd4a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d4 cf c6 f7 7f 00 00}
0016h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 51 b0 5e}
001bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
001eh mov rdx,1deb8f65bb0h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 5b f6 b8 de 01 00 00}
0028h mov rbp,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 2a}
002bh lea rcx,[rbx+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4b 08}
002fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 42 b0 5e}
0037h mov rcx,7ff7c626d6b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d6 26 c6 f7 7f 00 00}
0041h mov [rbx+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4b 18}
0045h mov rcx,7ff7c6a77340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 73 a7 c6 f7 7f 00 00}
004fh mov [rbx+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4b 20}
0053h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0056h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0058h mov r8,rbx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c3}
005bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005dh call 7ff7c6a77130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 55 6d ff}
0062h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0065h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0067h mov r11,7ff7c6270d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0d 27 c6 f7 7f 00 00}
0071h mov rax,7ff7c6270d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0d 27 c6 f7 7f 00 00}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0080h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0084h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0085h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
008bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
008dh or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
0093h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0095h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0096h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0099h jo short 009bh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
009bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; bool is(NumericKind:uint k, NumericId:uint match)
; is_(NumericKind~32u,NumericId~32u)[14] = {0f 1f 44 00 00 85 ca 0f 95 c0 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ca}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object convert(NumericKind:uint dst, object src)
; convert_(NumericKind~32u,object)[322] = {57 56 48 83 ec 28 8b f9 48 8b f2 48 85 f6 75 04 33 c9 eb 0b 48 8b ce e8 04 4c a5 5e 48 8b c8 e8 ac a3 99 4f 83 c0 fb 83 f8 09 0f 87 08 01 00 00 8b c8 48 8d 15 0f 01 00 00 8b 14 8a 48 8d 05 c8 ff ff ff 48 03 d0 ff e2 8b cf 48 8b d6 48 b8 c0 28 3b c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 8b cf 48 8b d6 48 b8 c8 28 3b c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 8b cf 48 8b d6 48 b8 d0 28 3b c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 8b cf 48 8b d6 48 b8 d8 28 3b c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 8b cf 48 8b d6 48 b8 e0 28 3b c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 8b cf 48 8b d6 48 b8 e8 28 3b c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 8b cf 48 8b d6 48 b8 f0 28 3b c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 8b cf 48 8b d6 48 b8 f8 28 3b c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 8b cf 48 8b d6 48 b8 00 29 3b c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 8b cf 48 8b d6 48 b8 08 29 3b c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
000eh jne short 0014h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0010h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0012h jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
0014h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0017h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 4c a5 5e}
001ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001fh call 7ff816d3bf80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac a3 99 4f}
0024h add eax,0fffffffbh                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 fb}
0027h cmp eax,9                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 09}
002ah ja near ptr 0138h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 01 00 00}
0030h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0032h lea rdx,[rip+10fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 0f 01 00 00}
0039h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
003ch lea rax,[rip-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 c8 ff ff ff}
0043h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0046h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0048h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
004ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004dh mov rax,7ff7c63b28c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 28 3b c6 f7 7f 00 00}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0060h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0062h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0065h mov rax,7ff7c63b28c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 28 3b c6 f7 7f 00 00}
006fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0078h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
007ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
007dh mov rax,7ff7c63b28d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 28 3b c6 f7 7f 00 00}
0087h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0090h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0092h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0095h mov rax,7ff7c63b28d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 28 3b c6 f7 7f 00 00}
009fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00a8h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00aah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00adh mov rax,7ff7c63b28e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 28 3b c6 f7 7f 00 00}
00b7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bbh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bdh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00c0h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h mov rax,7ff7c63b28e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 28 3b c6 f7 7f 00 00}
00cfh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00d3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d5h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00d8h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00dah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00ddh mov rax,7ff7c63b28f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 28 3b c6 f7 7f 00 00}
00e7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00ebh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ech pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00edh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00f0h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00f2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f5h mov rax,7ff7c63b28f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 28 3b c6 f7 7f 00 00}
00ffh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0103h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0104h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0105h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0108h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
010ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
010dh mov rax,7ff7c63b2900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 29 3b c6 f7 7f 00 00}
0117h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
011bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
011dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0120h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0122h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0125h mov rax,7ff7c63b2908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 29 3b c6 f7 7f 00 00}
012fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0133h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0134h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0135h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0138h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
013bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0140h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0141h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object FromInt8(NumericKind:uint dst, object src)
; FromInt8_(NumericKind~32u,object)[813] = {56 48 83 ec 20 c5 f8 77 48 8b f2 81 f9 20 00 00 42 77 4e 81 f9 10 00 04 20 77 1d 81 f9 08 00 01 20 0f 84 84 00 00 00 81 f9 10 00 04 20 0f 84 2f 01 00 00 e9 ec 02 00 00 81 f9 20 00 10 20 0f 84 99 01 00 00 81 f9 40 00 40 20 0f 84 0b 02 00 00 81 f9 20 00 00 42 0f 84 40 02 00 00 e9 c3 02 00 00 81 f9 08 00 02 80 77 19 81 f9 40 00 00 44 0f 84 6b 02 00 00 81 f9 08 00 02 80 74 6a e9 a2 02 00 00 81 f9 10 00 08 80 0f 84 96 00 00 00 81 f9 20 00 20 80 0f 84 06 01 00 00 81 f9 40 00 80 80 0f 84 74 01 00 00 e9 79 02 00 00 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 54 15 ad 5e 48 b9 58 77 36 c6 f7 7f 00 00 e8 95 4e b0 5e 0f b6 56 08 88 50 08 e9 40 02 00 00 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 18 15 ad 5e 48 b9 68 6f 36 c6 f7 7f 00 00 e8 59 4e b0 5e 48 0f be 56 08 88 50 08 e9 03 02 00 00 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 db 14 ad 5e 48 b9 48 7f 36 c6 f7 7f 00 00 e8 1c 4e b0 5e 48 0f be 56 08 66 89 50 08 e9 c5 01 00 00 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 9d 14 ad 5e 48 b9 38 87 36 c6 f7 7f 00 00 e8 de 4d b0 5e 48 0f be 56 08 66 89 50 08 e9 87 01 00 00 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 5f 14 ad 5e 48 b9 08 8f 36 c6 f7 7f 00 00 e8 a0 4d b0 5e 48 0f be 56 08 89 50 08 e9 4a 01 00 00 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 22 14 ad 5e 48 b9 d8 96 36 c6 f7 7f 00 00 e8 63 4d b0 5e 48 0f be 56 08 89 50 08 e9 0d 01 00 00 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 e5 13 ad 5e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 26 4d b0 5e 48 0f be 56 08 48 63 d2 48 89 50 08 e9 cc 00 00 00 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 a4 13 ad 5e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 e5 4c b0 5e 48 0f be 56 08 48 63 d2 48 89 50 08 e9 8b 00 00 00 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 63 13 ad 5e 48 b9 58 af 36 c6 f7 7f 00 00 e8 a4 4c b0 5e 48 0f be 56 08 c5 f8 57 c0 c5 fa 2a c2 c5 fa 11 40 08 eb 47 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 1f 13 ad 5e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 60 4c b0 5e 48 0f be 56 08 c5 f8 57 c0 c5 fb 2a c2 c5 fb 11 40 08 eb 03 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0324h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ec 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01ddh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 99 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 025bh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 0b 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 029ch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 40 02 00 00}
005ch jmp near ptr 0324h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c3 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02e0h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6b 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0324h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 01a0h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 06 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 021ah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 74 01 00 00}
00a6h jmp near ptr 0324h                      ; JMP rel32 || E9 cd || encoded[5]{e9 79 02 00 00}
00abh mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
00c7h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 15 ad 5e}
00cch mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00d6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 4e b0 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 40 02 00 00}
00e7h mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0103h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 15 ad 5e}
0108h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 4e b0 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 02 00 00}
0124h mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0140h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 14 ad 5e}
0145h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
014fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 4e b0 5e}
0154h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c5 01 00 00}
0162h mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
017eh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 14 ad 5e}
0183h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
018dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 4d b0 5e}
0192h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
0197h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019bh jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 01 00 00}
01a0h mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
01aah cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01adh je short 01c1h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01afh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b2h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
01bch call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 14 ad 5e}
01c1h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01cbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 4d b0 5e}
01d0h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
01d5h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d8h jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4a 01 00 00}
01ddh mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
01e7h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01eah je short 01feh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01ech mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01efh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
01f9h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 14 ad 5e}
01feh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0208h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 4d b0 5e}
020dh movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
0212h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0215h jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 01 00 00}
021ah mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
0224h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0227h je short 023bh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0229h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
022ch mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0236h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 13 ad 5e}
023bh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0245h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 4d b0 5e}
024ah movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
024fh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0252h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0256h jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 00 00 00}
025bh mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
0265h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0268h je short 027ch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
026ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
026dh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0277h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 13 ad 5e}
027ch mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0286h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 4c b0 5e}
028bh movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
0290h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0293h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0297h jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8b 00 00 00}
029ch mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
02a6h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02a9h je short 02bdh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02abh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02aeh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
02b8h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 13 ad 5e}
02bdh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02c7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 4c b0 5e}
02cch movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
02d1h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02d5h vcvtsi2ss xmm0,xmm0,edx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c2}
02d9h vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02deh jmp short 0327h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
02e0h mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
02eah cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02edh je short 0301h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f2h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
02fch call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 13 ad 5e}
0301h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
030bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 4c b0 5e}
0310h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
0315h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0319h vcvtsi2sd xmm0,xmm0,edx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c2}
031dh vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0322h jmp short 0327h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0324h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0327h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
032bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
032ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object FromUInt8(NumericKind:uint dst, object src)
; FromUInt8_(NumericKind~32u,object)[799] = {56 48 83 ec 20 c5 f8 77 48 8b f2 81 f9 20 00 00 42 77 4e 81 f9 10 00 04 20 77 1d 81 f9 08 00 01 20 0f 84 84 00 00 00 81 f9 10 00 04 20 0f 84 2e 01 00 00 e9 de 02 00 00 81 f9 20 00 10 20 0f 84 96 01 00 00 81 f9 40 00 40 20 0f 84 03 02 00 00 81 f9 20 00 00 42 0f 84 34 02 00 00 e9 b5 02 00 00 81 f9 08 00 02 80 77 19 81 f9 40 00 00 44 0f 84 5e 02 00 00 81 f9 08 00 02 80 74 6a e9 94 02 00 00 81 f9 10 00 08 80 0f 84 96 00 00 00 81 f9 20 00 20 80 0f 84 04 01 00 00 81 f9 40 00 80 80 0f 84 70 01 00 00 e9 6b 02 00 00 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 04 12 ad 5e 48 b9 58 77 36 c6 f7 7f 00 00 e8 45 4b b0 5e 0f b6 56 08 88 50 08 e9 32 02 00 00 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 c8 11 ad 5e 48 b9 68 6f 36 c6 f7 7f 00 00 e8 09 4b b0 5e 48 0f be 56 08 88 50 08 e9 f5 01 00 00 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 8b 11 ad 5e 48 b9 48 7f 36 c6 f7 7f 00 00 e8 cc 4a b0 5e 0f b6 56 08 66 89 50 08 e9 b8 01 00 00 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 4e 11 ad 5e 48 b9 38 87 36 c6 f7 7f 00 00 e8 8f 4a b0 5e 0f b6 56 08 66 89 50 08 e9 7b 01 00 00 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 11 11 ad 5e 48 b9 08 8f 36 c6 f7 7f 00 00 e8 52 4a b0 5e 0f b6 56 08 89 50 08 e9 3f 01 00 00 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 d5 10 ad 5e 48 b9 d8 96 36 c6 f7 7f 00 00 e8 16 4a b0 5e 0f b6 56 08 89 50 08 e9 03 01 00 00 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 99 10 ad 5e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 da 49 b0 5e 0f b6 56 08 48 89 50 08 e9 c6 00 00 00 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 5c 10 ad 5e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 9d 49 b0 5e 0f b6 56 08 48 89 50 08 e9 89 00 00 00 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 1f 10 ad 5e 48 b9 58 af 36 c6 f7 7f 00 00 e8 60 49 b0 5e 0f b6 56 08 c5 f8 57 c0 c5 fa 2a c2 c5 fa 11 40 08 eb 46 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 dc 0f ad 5e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 1d 49 b0 5e 0f b6 56 08 c5 f8 57 c0 c5 fb 2a c2 c5 fb 11 40 08 eb 03 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0161h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2e 01 00 00}
0033h jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 de 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0253h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 03 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 0290h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 34 02 00 00}
005ch jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02d3h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 5e 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 94 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019eh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 04 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0216h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 70 01 00 00}
00a6h jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
00abh mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00c7h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 12 ad 5e}
00cch mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00d6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 4b b0 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 32 02 00 00}
00e7h mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0103h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 11 ad 5e}
0108h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 4b b0 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 01 00 00}
0124h mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0140h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 11 ad 5e}
0145h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
014fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 4a b0 5e}
0154h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
0158h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015ch jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 01 00 00}
0161h mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
016bh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016eh je short 0182h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0170h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0173h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
017dh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 11 ad 5e}
0182h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
018ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 4a b0 5e}
0191h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
0195h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
0199h jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 01 00 00}
019eh mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
01a8h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01abh je short 01bfh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01adh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b0h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
01bah call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 11 ad 5e}
01bfh mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01c9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 4a b0 5e}
01ceh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
01d2h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d5h jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3f 01 00 00}
01dah mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
01e4h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e7h je short 01fbh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ech mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
01f6h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 10 ad 5e}
01fbh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0205h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 4a b0 5e}
020ah movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
020eh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0211h jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 01 00 00}
0216h mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
0220h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0223h je short 0237h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0225h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0228h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0232h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 10 ad 5e}
0237h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0241h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 49 b0 5e}
0246h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
024ah mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024eh jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c6 00 00 00}
0253h mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
025dh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0260h je short 0274h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0262h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0265h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
026fh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 10 ad 5e}
0274h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
027eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 49 b0 5e}
0283h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
0287h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
028bh jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 00 00 00}
0290h mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
029ah cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
029dh je short 02b1h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
029fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a2h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
02ach call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 10 ad 5e}
02b1h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02bbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 49 b0 5e}
02c0h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
02c4h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c8h vcvtsi2ss xmm0,xmm0,edx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c2}
02cch vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02d1h jmp short 0319h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
02d3h mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
02ddh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02e0h je short 02f4h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02e2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e5h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
02efh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 0f ad 5e}
02f4h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
02feh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 49 b0 5e}
0303h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
0307h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
030bh vcvtsi2sd xmm0,xmm0,edx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c2}
030fh vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0314h jmp short 0319h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0316h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0319h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
031dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
031eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object FromInt16(NumericKind:uint dst, object src)
; FromInt16_(NumericKind~32u,object)[812] = {56 48 83 ec 20 c5 f8 77 48 8b f2 81 f9 20 00 00 42 77 4e 81 f9 10 00 04 20 77 1d 81 f9 08 00 01 20 0f 84 84 00 00 00 81 f9 10 00 04 20 0f 84 2f 01 00 00 e9 eb 02 00 00 81 f9 20 00 10 20 0f 84 98 01 00 00 81 f9 40 00 40 20 0f 84 0a 02 00 00 81 f9 20 00 00 42 0f 84 3f 02 00 00 e9 c2 02 00 00 81 f9 08 00 02 80 77 19 81 f9 40 00 00 44 0f 84 6a 02 00 00 81 f9 08 00 02 80 74 6a e9 a1 02 00 00 81 f9 10 00 08 80 0f 84 96 00 00 00 81 f9 20 00 20 80 0f 84 05 01 00 00 81 f9 40 00 80 80 0f 84 73 01 00 00 e9 78 02 00 00 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 c4 0e ad 5e 48 b9 58 77 36 c6 f7 7f 00 00 e8 05 48 b0 5e 0f b6 56 08 88 50 08 e9 3f 02 00 00 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 88 0e ad 5e 48 b9 68 6f 36 c6 f7 7f 00 00 e8 c9 47 b0 5e 48 0f be 56 08 88 50 08 e9 02 02 00 00 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 4b 0e ad 5e 48 b9 48 7f 36 c6 f7 7f 00 00 e8 8c 47 b0 5e 48 0f bf 56 08 66 89 50 08 e9 c4 01 00 00 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 0d 0e ad 5e 48 b9 38 87 36 c6 f7 7f 00 00 e8 4e 47 b0 5e 0f b7 56 08 66 89 50 08 e9 87 01 00 00 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 d0 0d ad 5e 48 b9 08 8f 36 c6 f7 7f 00 00 e8 11 47 b0 5e 48 0f bf 56 08 89 50 08 e9 4a 01 00 00 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 93 0d ad 5e 48 b9 d8 96 36 c6 f7 7f 00 00 e8 d4 46 b0 5e 48 0f bf 56 08 89 50 08 e9 0d 01 00 00 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 56 0d ad 5e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 97 46 b0 5e 48 0f bf 56 08 48 63 d2 48 89 50 08 e9 cc 00 00 00 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 15 0d ad 5e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 56 46 b0 5e 48 0f bf 56 08 48 63 d2 48 89 50 08 e9 8b 00 00 00 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 d4 0c ad 5e 48 b9 58 af 36 c6 f7 7f 00 00 e8 15 46 b0 5e 48 0f bf 56 08 c5 f8 57 c0 c5 fa 2a c2 c5 fa 11 40 08 eb 47 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 90 0c ad 5e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 d1 45 b0 5e 48 0f bf 56 08 c5 f8 57 c0 c5 fb 2a c2 c5 fb 11 40 08 eb 03 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0323h                      ; JMP rel32 || E9 cd || encoded[5]{e9 eb 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 98 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 025ah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 0a 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 029bh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 3f 02 00 00}
005ch jmp near ptr 0323h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02dfh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0323h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a1 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0219h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 73 01 00 00}
00a6h jmp near ptr 0323h                      ; JMP rel32 || E9 cd || encoded[5]{e9 78 02 00 00}
00abh mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
00c7h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 0e ad 5e}
00cch mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00d6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 48 b0 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3f 02 00 00}
00e7h mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0103h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 0e ad 5e}
0108h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 47 b0 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 02 02 00 00}
0124h mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0140h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 0e ad 5e}
0145h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
014fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 47 b0 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c4 01 00 00}
0162h mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
017eh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 0e ad 5e}
0183h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
018dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 47 b0 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 01 00 00}
019fh mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
01bbh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 0d ad 5e}
01c0h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01cah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 47 b0 5e}
01cfh movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
01d4h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d7h jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4a 01 00 00}
01dch mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
01e6h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e9h je short 01fdh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01ebh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01eeh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
01f8h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 0d ad 5e}
01fdh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0207h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 46 b0 5e}
020ch movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0211h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0214h jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 01 00 00}
0219h mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
0223h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0226h je short 023ah                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0228h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
022bh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0235h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 0d ad 5e}
023ah mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0244h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 46 b0 5e}
0249h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
024eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0251h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0255h jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 00 00 00}
025ah mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
0264h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0267h je short 027bh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0269h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
026ch mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0276h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 0d ad 5e}
027bh mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0285h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 46 b0 5e}
028ah movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
028fh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0292h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0296h jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8b 00 00 00}
029bh mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
02a5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02a8h je short 02bch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02aah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02adh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
02b7h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 0c ad 5e}
02bch mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 46 b0 5e}
02cbh movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
02d0h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02d4h vcvtsi2ss xmm0,xmm0,edx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c2}
02d8h vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02ddh jmp short 0326h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
02dfh mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
02e9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02ech je short 0300h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f1h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
02fbh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 0c ad 5e}
0300h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
030ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 45 b0 5e}
030fh movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0314h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0318h vcvtsi2sd xmm0,xmm0,edx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c2}
031ch vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0321h jmp short 0326h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0323h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0326h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
032ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
032bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object FromUInt16(NumericKind:uint dst, object src)
; FromUInt16_(NumericKind~32u,object)[800] = {56 48 83 ec 20 c5 f8 77 48 8b f2 81 f9 20 00 00 42 77 4e 81 f9 10 00 04 20 77 1d 81 f9 08 00 01 20 0f 84 84 00 00 00 81 f9 10 00 04 20 0f 84 2f 01 00 00 e9 df 02 00 00 81 f9 20 00 10 20 0f 84 97 01 00 00 81 f9 40 00 40 20 0f 84 04 02 00 00 81 f9 20 00 00 42 0f 84 35 02 00 00 e9 b6 02 00 00 81 f9 08 00 02 80 77 19 81 f9 40 00 00 44 0f 84 5f 02 00 00 81 f9 08 00 02 80 74 6a e9 95 02 00 00 81 f9 10 00 08 80 0f 84 96 00 00 00 81 f9 20 00 20 80 0f 84 05 01 00 00 81 f9 40 00 80 80 0f 84 71 01 00 00 e9 6c 02 00 00 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 74 0b ad 5e 48 b9 58 77 36 c6 f7 7f 00 00 e8 b5 44 b0 5e 0f b6 56 08 88 50 08 e9 33 02 00 00 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 38 0b ad 5e 48 b9 68 6f 36 c6 f7 7f 00 00 e8 79 44 b0 5e 48 0f be 56 08 88 50 08 e9 f6 01 00 00 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 fb 0a ad 5e 48 b9 48 7f 36 c6 f7 7f 00 00 e8 3c 44 b0 5e 48 0f bf 56 08 66 89 50 08 e9 b8 01 00 00 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 bd 0a ad 5e 48 b9 38 87 36 c6 f7 7f 00 00 e8 fe 43 b0 5e 0f b7 56 08 66 89 50 08 e9 7b 01 00 00 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 80 0a ad 5e 48 b9 08 8f 36 c6 f7 7f 00 00 e8 c1 43 b0 5e 0f b7 56 08 89 50 08 e9 3f 01 00 00 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 44 0a ad 5e 48 b9 d8 96 36 c6 f7 7f 00 00 e8 85 43 b0 5e 0f b7 56 08 89 50 08 e9 03 01 00 00 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 08 0a ad 5e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 49 43 b0 5e 0f b7 56 08 48 89 50 08 e9 c6 00 00 00 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 cb 09 ad 5e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 0c 43 b0 5e 0f b7 56 08 48 89 50 08 e9 89 00 00 00 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 8e 09 ad 5e 48 b9 58 af 36 c6 f7 7f 00 00 e8 cf 42 b0 5e 0f b7 56 08 c5 f8 57 c0 c5 fa 2a c2 c5 fa 11 40 08 eb 46 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 4b 09 ad 5e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 8c 42 b0 5e 0f b7 56 08 c5 f8 57 c0 c5 fb 2a c2 c5 fb 11 40 08 eb 03 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 97 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0254h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 04 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 0291h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 02 00 00}
005ch jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b6 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02d4h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 5f 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0217h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 71 01 00 00}
00a6h jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6c 02 00 00}
00abh mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
00c7h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 0b ad 5e}
00cch mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00d6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 44 b0 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 02 00 00}
00e7h mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0103h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 0b ad 5e}
0108h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 44 b0 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f6 01 00 00}
0124h mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0140h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 0a ad 5e}
0145h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
014fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 44 b0 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 01 00 00}
0162h mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
017eh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 0a ad 5e}
0183h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
018dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 43 b0 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 01 00 00}
019fh mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
01bbh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 0a ad 5e}
01c0h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01cah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 43 b0 5e}
01cfh movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
01d3h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d6h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 3f 01 00 00}
01dbh mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
01e5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e8h je short 01fch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01eah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01edh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
01f7h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 0a ad 5e}
01fch mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0206h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 43 b0 5e}
020bh movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
020fh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0212h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 01 00 00}
0217h mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
0221h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0224h je short 0238h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0226h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0229h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0233h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 0a ad 5e}
0238h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0242h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 43 b0 5e}
0247h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
024bh mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024fh jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c6 00 00 00}
0254h mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
025eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0261h je short 0275h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0263h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0266h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0270h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 09 ad 5e}
0275h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
027fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 43 b0 5e}
0284h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0288h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
028ch jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 00 00 00}
0291h mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
029bh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
029eh je short 02b2h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02a0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a3h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
02adh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 09 ad 5e}
02b2h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02bch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 42 b0 5e}
02c1h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
02c5h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c9h vcvtsi2ss xmm0,xmm0,edx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c2}
02cdh vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02d2h jmp short 031ah                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
02d4h mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
02deh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02e1h je short 02f5h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e6h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
02f0h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 09 ad 5e}
02f5h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
02ffh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 42 b0 5e}
0304h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0308h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
030ch vcvtsi2sd xmm0,xmm0,edx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c2}
0310h vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0315h jmp short 031ah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0317h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
031ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
031eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
031fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object FromInt32(NumericKind:uint dst, object src)
; FromInt32_(NumericKind~32u,object)[796] = {56 48 83 ec 20 c5 f8 77 48 8b f2 81 f9 20 00 00 42 77 4e 81 f9 10 00 04 20 77 1d 81 f9 08 00 01 20 0f 84 84 00 00 00 81 f9 10 00 04 20 0f 84 2f 01 00 00 e9 db 02 00 00 81 f9 20 00 10 20 0f 84 96 01 00 00 81 f9 40 00 40 20 0f 84 04 02 00 00 81 f9 20 00 00 42 0f 84 37 02 00 00 e9 b2 02 00 00 81 f9 08 00 02 80 77 19 81 f9 40 00 00 44 0f 84 5e 02 00 00 81 f9 08 00 02 80 74 6a e9 91 02 00 00 81 f9 10 00 08 80 0f 84 96 00 00 00 81 f9 20 00 20 80 0f 84 05 01 00 00 81 f9 40 00 80 80 0f 84 6f 01 00 00 e9 68 02 00 00 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 34 08 ad 5e 48 b9 58 77 36 c6 f7 7f 00 00 e8 75 41 b0 5e 0f b6 56 08 88 50 08 e9 2f 02 00 00 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 f8 07 ad 5e 48 b9 68 6f 36 c6 f7 7f 00 00 e8 39 41 b0 5e 48 0f be 56 08 88 50 08 e9 f2 01 00 00 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 bb 07 ad 5e 48 b9 48 7f 36 c6 f7 7f 00 00 e8 fc 40 b0 5e 48 0f bf 56 08 66 89 50 08 e9 b4 01 00 00 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 7d 07 ad 5e 48 b9 38 87 36 c6 f7 7f 00 00 e8 be 40 b0 5e 0f b7 56 08 66 89 50 08 e9 77 01 00 00 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 40 07 ad 5e 48 b9 08 8f 36 c6 f7 7f 00 00 e8 81 40 b0 5e 8b 56 08 89 50 08 e9 3c 01 00 00 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 05 07 ad 5e 48 b9 d8 96 36 c6 f7 7f 00 00 e8 46 40 b0 5e 8b 56 08 89 50 08 e9 01 01 00 00 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 ca 06 ad 5e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 0b 40 b0 5e 8b 56 08 48 63 d2 48 89 50 08 e9 c2 00 00 00 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 8b 06 ad 5e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 cc 3f b0 5e 8b 56 08 48 63 d2 48 89 50 08 e9 83 00 00 00 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 4c 06 ad 5e 48 b9 58 af 36 c6 f7 7f 00 00 e8 8d 3f b0 5e c5 f8 57 c0 c5 fa 2a 46 08 c5 fa 11 40 08 eb 43 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 0c 06 ad 5e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 4d 3f b0 5e c5 f8 57 c0 c5 fb 2a 46 08 c5 fb 11 40 08 eb 03 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0313h                      ; JMP rel32 || E9 cd || encoded[5]{e9 db 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0254h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 04 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 0293h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 37 02 00 00}
005ch jmp near ptr 0313h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02d3h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 5e 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0313h                      ; JMP rel32 || E9 cd || encoded[5]{e9 91 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0215h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6f 01 00 00}
00a6h jmp near ptr 0313h                      ; JMP rel32 || E9 cd || encoded[5]{e9 68 02 00 00}
00abh mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
00c7h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 08 ad 5e}
00cch mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00d6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 41 b0 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2f 02 00 00}
00e7h mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0103h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 07 ad 5e}
0108h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 41 b0 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f2 01 00 00}
0124h mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0140h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 07 ad 5e}
0145h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
014fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 40 b0 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b4 01 00 00}
0162h mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
017eh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 07 ad 5e}
0183h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
018dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 40 b0 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 77 01 00 00}
019fh mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01bbh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 07 ad 5e}
01c0h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01cah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 40 b0 5e}
01cfh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
01d2h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d5h jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3c 01 00 00}
01dah mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
01e4h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e7h je short 01fbh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ech mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01f6h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 07 ad 5e}
01fbh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0205h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 40 b0 5e}
020ah mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
020dh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0210h jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 01 01 00 00}
0215h mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
021fh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0222h je short 0236h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0224h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0227h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0231h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 06 ad 5e}
0236h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0240h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 40 b0 5e}
0245h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0248h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
024bh mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024fh jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 00 00 00}
0254h mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
025eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0261h je short 0275h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0263h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0266h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0270h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 06 ad 5e}
0275h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
027fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 3f b0 5e}
0284h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0287h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
028ah mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
028eh jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
0293h mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
029dh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02a0h je short 02b4h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02a2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a5h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
02afh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 06 ad 5e}
02b4h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02beh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 3f b0 5e}
02c3h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c7h vcvtsi2ss xmm0,xmm0,dword ptr [rsi+8]   ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[5]{c5 fa 2a 46 08}
02cch vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02d1h jmp short 0316h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
02d3h mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
02ddh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02e0h je short 02f4h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02e2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e5h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
02efh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 06 ad 5e}
02f4h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
02feh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 3f b0 5e}
0303h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0307h vcvtsi2sd xmm0,xmm0,dword ptr [rsi+8]   ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[5]{c5 fb 2a 46 08}
030ch vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0311h jmp short 0316h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0313h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0316h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
031ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
031bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object FromUInt32(NumericKind:uint dst, object src)
; FromUInt32_(NumericKind~32u,object)[800] = {56 48 83 ec 20 c5 f8 77 48 8b f2 81 f9 20 00 00 42 77 4e 81 f9 10 00 04 20 77 1d 81 f9 08 00 01 20 0f 84 84 00 00 00 81 f9 10 00 04 20 0f 84 2f 01 00 00 e9 df 02 00 00 81 f9 20 00 10 20 0f 84 96 01 00 00 81 f9 40 00 40 20 0f 84 01 02 00 00 81 f9 20 00 00 42 0f 84 31 02 00 00 e9 b6 02 00 00 81 f9 08 00 02 80 77 19 81 f9 40 00 00 44 0f 84 5f 02 00 00 81 f9 08 00 02 80 74 6a e9 95 02 00 00 81 f9 10 00 08 80 0f 84 96 00 00 00 81 f9 20 00 20 80 0f 84 05 01 00 00 81 f9 40 00 80 80 0f 84 6f 01 00 00 e9 6c 02 00 00 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 f4 04 ad 5e 48 b9 58 77 36 c6 f7 7f 00 00 e8 35 3e b0 5e 0f b6 56 08 88 50 08 e9 33 02 00 00 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 b8 04 ad 5e 48 b9 68 6f 36 c6 f7 7f 00 00 e8 f9 3d b0 5e 48 0f be 56 08 88 50 08 e9 f6 01 00 00 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 7b 04 ad 5e 48 b9 48 7f 36 c6 f7 7f 00 00 e8 bc 3d b0 5e 48 0f bf 56 08 66 89 50 08 e9 b8 01 00 00 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 3d 04 ad 5e 48 b9 38 87 36 c6 f7 7f 00 00 e8 7e 3d b0 5e 0f b7 56 08 66 89 50 08 e9 7b 01 00 00 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 00 04 ad 5e 48 b9 08 8f 36 c6 f7 7f 00 00 e8 41 3d b0 5e 8b 56 08 89 50 08 e9 40 01 00 00 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 c5 03 ad 5e 48 b9 d8 96 36 c6 f7 7f 00 00 e8 06 3d b0 5e 8b 56 08 89 50 08 e9 05 01 00 00 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 8a 03 ad 5e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 cb 3c b0 5e 8b 56 08 48 89 50 08 e9 c9 00 00 00 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 4e 03 ad 5e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 8f 3c b0 5e 8b 56 08 48 89 50 08 e9 8d 00 00 00 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 12 03 ad 5e 48 b9 58 af 36 c6 f7 7f 00 00 e8 53 3c b0 5e 8b 56 08 c5 f8 57 c0 c4 e1 fb 2a c2 c5 fb 5a c0 c5 fa 11 40 08 eb 46 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 cb 02 ad 5e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 0c 3c b0 5e 8b 56 08 c5 f8 57 c0 c4 e1 fb 2a c2 c5 fb 11 40 08 eb 03 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0251h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 01 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 028dh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 31 02 00 00}
005ch jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b6 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02d4h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 5f 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0215h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6f 01 00 00}
00a6h jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6c 02 00 00}
00abh mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
00c7h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 04 ad 5e}
00cch mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00d6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 3e b0 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 02 00 00}
00e7h mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0103h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 04 ad 5e}
0108h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 3d b0 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f6 01 00 00}
0124h mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0140h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 04 ad 5e}
0145h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
014fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 3d b0 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 01 00 00}
0162h mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
017eh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 04 ad 5e}
0183h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
018dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 3d b0 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 01 00 00}
019fh mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
01bbh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 04 ad 5e}
01c0h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01cah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 3d b0 5e}
01cfh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
01d2h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d5h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 40 01 00 00}
01dah mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
01e4h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e7h je short 01fbh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ech mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
01f6h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 03 ad 5e}
01fbh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0205h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 3d b0 5e}
020ah mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
020dh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0210h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 01 00 00}
0215h mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
021fh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0222h je short 0236h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0224h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0227h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0231h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 03 ad 5e}
0236h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0240h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 3c b0 5e}
0245h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0248h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024ch jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 00 00 00}
0251h mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
025bh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
025eh je short 0272h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0260h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0263h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
026dh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 03 ad 5e}
0272h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
027ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 3c b0 5e}
0281h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0284h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0288h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 00 00 00}
028dh mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
0297h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
029ah je short 02aeh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
029ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
029fh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
02a9h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 03 ad 5e}
02aeh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 3c b0 5e}
02bdh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
02c0h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c4h vcvtsi2sd xmm0,xmm0,rdx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c2}
02c9h vcvtsd2ss xmm0,xmm0,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 fb 5a c0}
02cdh vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02d2h jmp short 031ah                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
02d4h mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
02deh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02e1h je short 02f5h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e6h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
02f0h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 02 ad 5e}
02f5h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
02ffh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 3c b0 5e}
0304h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0307h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
030bh vcvtsi2sd xmm0,xmm0,rdx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c2}
0310h vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0315h jmp short 031ah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0317h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
031ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
031eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
031fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object FromInt64(NumericKind:uint dst, object src)
; FromInt64_(NumericKind~32u,object)[794] = {56 48 83 ec 20 c5 f8 77 48 8b f2 81 f9 20 00 00 42 77 4e 81 f9 10 00 04 20 77 1d 81 f9 08 00 01 20 0f 84 84 00 00 00 81 f9 10 00 04 20 0f 84 2f 01 00 00 e9 d9 02 00 00 81 f9 20 00 10 20 0f 84 96 01 00 00 81 f9 40 00 40 20 0f 84 02 02 00 00 81 f9 20 00 00 42 0f 84 33 02 00 00 e9 b0 02 00 00 81 f9 08 00 02 80 77 19 81 f9 40 00 00 44 0f 84 5b 02 00 00 81 f9 08 00 02 80 74 6a e9 8f 02 00 00 81 f9 10 00 08 80 0f 84 96 00 00 00 81 f9 20 00 20 80 0f 84 05 01 00 00 81 f9 40 00 80 80 0f 84 6f 01 00 00 e9 66 02 00 00 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 b4 01 ad 5e 48 b9 58 77 36 c6 f7 7f 00 00 e8 f5 3a b0 5e 0f b6 56 08 88 50 08 e9 2d 02 00 00 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 78 01 ad 5e 48 b9 68 6f 36 c6 f7 7f 00 00 e8 b9 3a b0 5e 48 0f be 56 08 88 50 08 e9 f0 01 00 00 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 3b 01 ad 5e 48 b9 48 7f 36 c6 f7 7f 00 00 e8 7c 3a b0 5e 48 0f bf 56 08 66 89 50 08 e9 b2 01 00 00 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 fd 00 ad 5e 48 b9 38 87 36 c6 f7 7f 00 00 e8 3e 3a b0 5e 0f b7 56 08 66 89 50 08 e9 75 01 00 00 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 c0 00 ad 5e 48 b9 08 8f 36 c6 f7 7f 00 00 e8 01 3a b0 5e 8b 56 08 89 50 08 e9 3a 01 00 00 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 85 00 ad 5e 48 b9 d8 96 36 c6 f7 7f 00 00 e8 c6 39 b0 5e 8b 56 08 89 50 08 e9 ff 00 00 00 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 4a 00 ad 5e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 8b 39 b0 5e 48 8b 56 08 48 89 50 08 e9 c2 00 00 00 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 0d 00 ad 5e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 4e 39 b0 5e 48 8b 56 08 48 89 50 08 e9 85 00 00 00 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 d0 ff ac 5e 48 b9 58 af 36 c6 f7 7f 00 00 e8 11 39 b0 5e c5 f8 57 c0 c4 e1 fa 2a 46 08 c5 fa 11 40 08 eb 44 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 8f ff ac 5e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 d0 38 b0 5e c5 f8 57 c0 c4 e1 fb 2a 46 08 c5 fb 11 40 08 eb 03 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0311h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0252h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 02 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 028fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 33 02 00 00}
005ch jmp near ptr 0311h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b0 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02d0h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 5b 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0311h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8f 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0215h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6f 01 00 00}
00a6h jmp near ptr 0311h                      ; JMP rel32 || E9 cd || encoded[5]{e9 66 02 00 00}
00abh mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
00c7h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 01 ad 5e}
00cch mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00d6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 3a b0 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2d 02 00 00}
00e7h mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0103h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 01 ad 5e}
0108h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 3a b0 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f0 01 00 00}
0124h mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0140h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 01 ad 5e}
0145h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
014fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 3a b0 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 01 00 00}
0162h mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
017eh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 00 ad 5e}
0183h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
018dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 3a b0 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
019fh mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
01bbh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 00 ad 5e}
01c0h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01cah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 3a b0 5e}
01cfh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
01d2h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d5h jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3a 01 00 00}
01dah mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
01e4h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e7h je short 01fbh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ech mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
01f6h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 00 ad 5e}
01fbh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0205h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 39 b0 5e}
020ah mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
020dh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0210h jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ff 00 00 00}
0215h mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
021fh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0222h je short 0236h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0224h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0227h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0231h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 00 ad 5e}
0236h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0240h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 39 b0 5e}
0245h mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
0249h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024dh jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 00 00 00}
0252h mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
025ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
025fh je short 0273h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0261h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0264h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
026eh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 00 ad 5e}
0273h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
027dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 39 b0 5e}
0282h mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
0286h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
028ah jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 00 00 00}
028fh mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
0299h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
029ch je short 02b0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
029eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a1h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
02abh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 ff ac 5e}
02b0h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02bah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 39 b0 5e}
02bfh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c3h vcvtsi2ss xmm0,xmm0,qword ptr [rsi+8]   ; VCVTSI2SS xmm1, xmm2, r/m64 || VEX.LIG.F3.0F.W1 2A /r || encoded[6]{c4 e1 fa 2a 46 08}
02c9h vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02ceh jmp short 0314h                         ; JMP rel8 || EB cb || encoded[2]{eb 44}
02d0h mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
02dah cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02ddh je short 02f1h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02dfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e2h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
02ech call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f ff ac 5e}
02f1h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
02fbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 38 b0 5e}
0300h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0304h vcvtsi2sd xmm0,xmm0,qword ptr [rsi+8]   ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[6]{c4 e1 fb 2a 46 08}
030ah vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
030fh jmp short 0314h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0311h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0314h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0318h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0319h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object FromUInt64(NumericKind:uint dst, object src)
; FromUInt64_(NumericKind~32u,object)[830] = {56 48 83 ec 20 c5 f8 77 48 8b f2 81 f9 20 00 00 42 77 4e 81 f9 10 00 04 20 77 1d 81 f9 08 00 01 20 0f 84 84 00 00 00 81 f9 10 00 04 20 0f 84 2f 01 00 00 e9 fd 02 00 00 81 f9 20 00 10 20 0f 84 96 01 00 00 81 f9 40 00 40 20 0f 84 02 02 00 00 81 f9 20 00 00 42 0f 84 33 02 00 00 e9 d4 02 00 00 81 f9 08 00 02 80 77 19 81 f9 40 00 00 44 0f 84 6f 02 00 00 81 f9 08 00 02 80 74 6a e9 b3 02 00 00 81 f9 10 00 08 80 0f 84 96 00 00 00 81 f9 20 00 20 80 0f 84 05 01 00 00 81 f9 40 00 80 80 0f 84 6f 01 00 00 e9 8a 02 00 00 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 74 fe ac 5e 48 b9 58 77 36 c6 f7 7f 00 00 e8 b5 37 b0 5e 0f b6 56 08 88 50 08 e9 51 02 00 00 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 38 fe ac 5e 48 b9 68 6f 36 c6 f7 7f 00 00 e8 79 37 b0 5e 48 0f be 56 08 88 50 08 e9 14 02 00 00 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 fb fd ac 5e 48 b9 48 7f 36 c6 f7 7f 00 00 e8 3c 37 b0 5e 48 0f bf 56 08 66 89 50 08 e9 d6 01 00 00 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 bd fd ac 5e 48 b9 38 87 36 c6 f7 7f 00 00 e8 fe 36 b0 5e 0f b7 56 08 66 89 50 08 e9 99 01 00 00 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 80 fd ac 5e 48 b9 08 8f 36 c6 f7 7f 00 00 e8 c1 36 b0 5e 8b 56 08 89 50 08 e9 5e 01 00 00 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 45 fd ac 5e 48 b9 d8 96 36 c6 f7 7f 00 00 e8 86 36 b0 5e 8b 56 08 89 50 08 e9 23 01 00 00 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 0a fd ac 5e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 4b 36 b0 5e 48 8b 56 08 48 89 50 08 e9 e6 00 00 00 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 cd fc ac 5e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 0e 36 b0 5e 48 8b 56 08 48 89 50 08 e9 a9 00 00 00 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 90 fc ac 5e 48 b9 58 af 36 c6 f7 7f 00 00 e8 d1 35 b0 5e 48 8b 56 08 c5 f8 57 c0 c4 e1 fb 2a c2 48 85 d2 7d 08 c5 fb 58 05 6f 00 00 00 c5 fb 5a c0 c5 fa 11 40 08 eb 54 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 3b fc ac 5e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 7c 35 b0 5e 48 8b 56 08 c5 f8 57 c0 c4 e1 fb 2a c2 48 85 d2 7d 08 c5 fb 58 05 1a 00 00 00 c5 fb 11 40 08 eb 03 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0335h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fd 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0252h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 02 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 028fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 33 02 00 00}
005ch jmp near ptr 0335h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d4 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02e4h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6f 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0335h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b3 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0215h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6f 01 00 00}
00a6h jmp near ptr 0335h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8a 02 00 00}
00abh mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
00c7h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 fe ac 5e}
00cch mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00d6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 37 b0 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 51 02 00 00}
00e7h mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0103h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 fe ac 5e}
0108h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 37 b0 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 14 02 00 00}
0124h mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0140h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb fd ac 5e}
0145h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
014fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 37 b0 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d6 01 00 00}
0162h mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
017eh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd fd ac 5e}
0183h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
018dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 36 b0 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 01 00 00}
019fh mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
01bbh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 fd ac 5e}
01c0h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01cah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 36 b0 5e}
01cfh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
01d2h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d5h jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5e 01 00 00}
01dah mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
01e4h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e7h je short 01fbh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ech mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
01f6h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 fd ac 5e}
01fbh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0205h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 36 b0 5e}
020ah mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
020dh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0210h jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 23 01 00 00}
0215h mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
021fh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0222h je short 0236h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0224h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0227h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0231h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a fd ac 5e}
0236h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0240h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 36 b0 5e}
0245h mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
0249h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024dh jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e6 00 00 00}
0252h mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
025ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
025fh je short 0273h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0261h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0264h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
026eh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd fc ac 5e}
0273h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
027dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 36 b0 5e}
0282h mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
0286h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
028ah jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a9 00 00 00}
028fh mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
0299h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
029ch je short 02b0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
029eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a1h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
02abh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 fc ac 5e}
02b0h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02bah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 35 b0 5e}
02bfh mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
02c3h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c7h vcvtsi2sd xmm0,xmm0,rdx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c2}
02cch test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
02cfh jge short 02d9h                         ; JGE rel8 || 7D cb || encoded[2]{7d 08}
02d1h vaddsd xmm0,xmm0,qword ptr [rip+6fh]    ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 6f 00 00 00}
02d9h vcvtsd2ss xmm0,xmm0,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 fb 5a c0}
02ddh vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02e2h jmp short 0338h                         ; JMP rel8 || EB cb || encoded[2]{eb 54}
02e4h mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
02eeh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02f1h je short 0305h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f6h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0300h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b fc ac 5e}
0305h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
030fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 35 b0 5e}
0314h mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
0318h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
031ch vcvtsi2sd xmm0,xmm0,rdx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c2}
0321h test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0324h jge short 032eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 08}
0326h vaddsd xmm0,xmm0,qword ptr [rip+1ah]    ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 1a 00 00 00}
032eh vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0333h jmp short 0338h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0335h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0338h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
033ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
033dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object FromFloat32(NumericKind:uint dst, object src)
; FromFloat32_(NumericKind~32u,object)[807] = {57 56 48 83 ec 28 c5 f8 77 48 8b f2 81 f9 20 00 00 42 77 4e 81 f9 10 00 04 20 77 1d 81 f9 08 00 01 20 0f 84 84 00 00 00 81 f9 10 00 04 20 0f 84 30 01 00 00 e9 e4 02 00 00 81 f9 20 00 10 20 0f 84 9a 01 00 00 81 f9 40 00 40 20 0f 84 0b 02 00 00 81 f9 20 00 00 42 0f 84 48 02 00 00 e9 bb 02 00 00 81 f9 08 00 02 80 77 19 81 f9 40 00 00 44 0f 84 6b 02 00 00 81 f9 08 00 02 80 74 6b e9 9a 02 00 00 81 f9 10 00 08 80 0f 84 97 00 00 00 81 f9 20 00 20 80 0f 84 07 01 00 00 81 f9 40 00 80 80 0f 84 76 01 00 00 e9 71 02 00 00 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 03 fb ac 5e 48 b9 58 77 36 c6 f7 7f 00 00 e8 44 34 b0 5e c5 fa 2c 56 08 88 50 08 e9 37 02 00 00 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 c6 fa ac 5e 48 b9 68 6f 36 c6 f7 7f 00 00 e8 07 34 b0 5e c5 fa 2c 56 08 88 50 08 e9 fa 01 00 00 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 89 fa ac 5e 48 b9 48 7f 36 c6 f7 7f 00 00 e8 ca 33 b0 5e c5 fa 2c 56 08 66 89 50 08 e9 bc 01 00 00 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 4b fa ac 5e 48 b9 38 87 36 c6 f7 7f 00 00 e8 8c 33 b0 5e c5 fa 2c 56 08 66 89 50 08 e9 7e 01 00 00 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 0d fa ac 5e 48 b9 08 8f 36 c6 f7 7f 00 00 e8 4e 33 b0 5e c5 fa 2c 56 08 89 50 08 e9 41 01 00 00 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 d0 f9 ac 5e 48 b9 d8 96 36 c6 f7 7f 00 00 e8 11 33 b0 5e c4 e1 fa 2c 56 08 89 50 08 e9 03 01 00 00 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 92 f9 ac 5e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 d3 32 b0 5e c4 e1 fa 2c 56 08 48 89 50 08 e9 c4 00 00 00 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 53 f9 ac 5e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 94 32 b0 5e 48 8b f8 c5 fa 5a 46 08 e8 17 9f c2 5e 48 89 47 08 48 8b c7 e9 7b 00 00 00 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 0a f9 ac 5e 48 b9 58 af 36 c6 f7 7f 00 00 e8 4b 32 b0 5e c5 fa 10 46 08 c5 fa 11 40 08 eb 3f 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 ce f8 ac 5e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 0f 32 b0 5e c5 fa 5a 46 08 c5 fb 11 40 08 eb 03 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000ch cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0012h ja short 0062h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0014h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
001ah ja short 0039h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001ch cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0022h je near ptr 00ach                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0028h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002eh je near ptr 0164h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 30 01 00 00}
0034h jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e4 02 00 00}
0039h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003fh je near ptr 01dfh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 9a 01 00 00}
0045h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004bh je near ptr 025ch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 0b 02 00 00}
0051h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0057h je near ptr 02a5h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 48 02 00 00}
005dh jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 02 00 00}
0062h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0068h ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
006ah cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
0070h je near ptr 02e1h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6b 02 00 00}
0076h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007ch je short 00e9h                          ; JE rel8 || 74 cb || encoded[2]{74 6b}
007eh jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9a 02 00 00}
0083h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0089h je near ptr 0126h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 97 00 00 00}
008fh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0095h je near ptr 01a2h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 07 01 00 00}
009bh cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a1h je near ptr 021dh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 76 01 00 00}
00a7h jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 02 00 00}
00ach mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
00b6h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b9h je short 00cdh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00beh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
00c8h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 fb ac 5e}
00cdh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00d7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 34 b0 5e}
00dch vcvttss2si edx,dword ptr [rsi+8]        ; VCVTTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2C /r || encoded[5]{c5 fa 2c 56 08}
00e1h mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e4h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 37 02 00 00}
00e9h mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
00f3h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f6h je short 010ah                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00fbh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0105h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 fa ac 5e}
010ah mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0114h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 34 b0 5e}
0119h vcvttss2si edx,dword ptr [rsi+8]        ; VCVTTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2C /r || encoded[5]{c5 fa 2c 56 08}
011eh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
0121h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fa 01 00 00}
0126h mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
0130h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0133h je short 0147h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0135h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0138h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0142h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 fa ac 5e}
0147h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0151h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 33 b0 5e}
0156h vcvttss2si edx,dword ptr [rsi+8]        ; VCVTTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2C /r || encoded[5]{c5 fa 2c 56 08}
015bh mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015fh jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bc 01 00 00}
0164h mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
016eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0171h je short 0185h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0173h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0176h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0180h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fa ac 5e}
0185h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
018fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 33 b0 5e}
0194h vcvttss2si edx,dword ptr [rsi+8]        ; VCVTTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2C /r || encoded[5]{c5 fa 2c 56 08}
0199h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019dh jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 01 00 00}
01a2h mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
01ach cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01afh je short 01c3h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b4h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
01beh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d fa ac 5e}
01c3h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01cdh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 33 b0 5e}
01d2h vcvttss2si edx,dword ptr [rsi+8]        ; VCVTTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2C /r || encoded[5]{c5 fa 2c 56 08}
01d7h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01dah jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 41 01 00 00}
01dfh mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
01e9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ech je short 0200h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01f1h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
01fbh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 f9 ac 5e}
0200h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
020ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 33 b0 5e}
020fh vcvttss2si rdx,dword ptr [rsi+8]        ; VCVTTSS2SI r64, xmm1/m32 || VEX.LIG.F3.0F.W1 2C /r || encoded[6]{c4 e1 fa 2c 56 08}
0215h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0218h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 01 00 00}
021dh mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
0227h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
022ah je short 023eh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
022ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
022fh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0239h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f9 ac 5e}
023eh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0248h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 32 b0 5e}
024dh vcvttss2si rdx,dword ptr [rsi+8]        ; VCVTTSS2SI r64, xmm1/m32 || VEX.LIG.F3.0F.W1 2C /r || encoded[6]{c4 e1 fa 2c 56 08}
0253h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0257h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c4 00 00 00}
025ch mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
0266h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0269h je short 027dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
026bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
026eh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0278h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f9 ac 5e}
027dh mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0287h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 32 b0 5e}
028ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
028fh vcvtss2sd xmm0,xmm0,dword ptr [rsi+8]   ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[5]{c5 fa 5a 46 08}
0294h call 7ff825fcd940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 9f c2 5e}
0299h mov [rdi+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 08}
029dh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
02a0h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 00 00 00}
02a5h mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
02afh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02b2h je short 02c6h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02b7h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02c1h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a f9 ac 5e}
02c6h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 32 b0 5e}
02d5h vmovss xmm0,dword ptr [rsi+8]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 46 08}
02dah vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02dfh jmp short 0320h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
02e1h mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
02ebh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02eeh je short 0302h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f3h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02fdh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f8 ac 5e}
0302h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
030ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 32 b0 5e}
0311h vcvtss2sd xmm0,xmm0,dword ptr [rsi+8]   ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[5]{c5 fa 5a 46 08}
0316h vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
031bh jmp short 0320h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
031dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0320h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0324h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0325h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0326h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object FromFloat64(NumericKind:uint dst, object src)
; FromFloat64_(NumericKind~32u,object)[807] = {57 56 48 83 ec 28 c5 f8 77 48 8b f2 81 f9 20 00 00 42 77 4e 81 f9 10 00 04 20 77 1d 81 f9 08 00 01 20 0f 84 84 00 00 00 81 f9 10 00 04 20 0f 84 30 01 00 00 e9 e4 02 00 00 81 f9 20 00 10 20 0f 84 9a 01 00 00 81 f9 40 00 40 20 0f 84 0b 02 00 00 81 f9 20 00 00 42 0f 84 48 02 00 00 e9 bb 02 00 00 81 f9 08 00 02 80 77 19 81 f9 40 00 00 44 0f 84 6b 02 00 00 81 f9 08 00 02 80 74 6b e9 9a 02 00 00 81 f9 10 00 08 80 0f 84 97 00 00 00 81 f9 20 00 20 80 0f 84 07 01 00 00 81 f9 40 00 80 80 0f 84 76 01 00 00 e9 71 02 00 00 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 b3 f7 ac 5e 48 b9 58 77 36 c6 f7 7f 00 00 e8 f4 30 b0 5e c5 fb 2c 56 08 88 50 08 e9 37 02 00 00 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 76 f7 ac 5e 48 b9 68 6f 36 c6 f7 7f 00 00 e8 b7 30 b0 5e c5 fb 2c 56 08 88 50 08 e9 fa 01 00 00 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 39 f7 ac 5e 48 b9 48 7f 36 c6 f7 7f 00 00 e8 7a 30 b0 5e c5 fb 2c 56 08 66 89 50 08 e9 bc 01 00 00 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 fb f6 ac 5e 48 b9 38 87 36 c6 f7 7f 00 00 e8 3c 30 b0 5e c5 fb 2c 56 08 66 89 50 08 e9 7e 01 00 00 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 bd f6 ac 5e 48 b9 08 8f 36 c6 f7 7f 00 00 e8 fe 2f b0 5e c5 fb 2c 56 08 89 50 08 e9 41 01 00 00 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 80 f6 ac 5e 48 b9 d8 96 36 c6 f7 7f 00 00 e8 c1 2f b0 5e c4 e1 fb 2c 56 08 89 50 08 e9 03 01 00 00 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 42 f6 ac 5e 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 83 2f b0 5e c4 e1 fb 2c 56 08 48 89 50 08 e9 c4 00 00 00 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 03 f6 ac 5e 48 b9 78 a6 36 c6 f7 7f 00 00 e8 44 2f b0 5e 48 8b f8 c5 fb 10 46 08 e8 c7 9b c2 5e 48 89 47 08 48 8b c7 e9 7b 00 00 00 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 ba f5 ac 5e 48 b9 58 af 36 c6 f7 7f 00 00 e8 fb 2e b0 5e c5 fb 5a 46 08 c5 fa 11 40 08 eb 3f 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 7e f5 ac 5e 48 b9 38 b8 36 c6 f7 7f 00 00 e8 bf 2e b0 5e c5 fb 10 46 08 c5 fb 11 40 08 eb 03 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000ch cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0012h ja short 0062h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0014h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
001ah ja short 0039h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001ch cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0022h je near ptr 00ach                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0028h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002eh je near ptr 0164h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 30 01 00 00}
0034h jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e4 02 00 00}
0039h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003fh je near ptr 01dfh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 9a 01 00 00}
0045h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004bh je near ptr 025ch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 0b 02 00 00}
0051h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0057h je near ptr 02a5h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 48 02 00 00}
005dh jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 02 00 00}
0062h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0068h ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
006ah cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
0070h je near ptr 02e1h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6b 02 00 00}
0076h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007ch je short 00e9h                          ; JE rel8 || 74 cb || encoded[2]{74 6b}
007eh jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9a 02 00 00}
0083h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0089h je near ptr 0126h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 97 00 00 00}
008fh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0095h je near ptr 01a2h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 07 01 00 00}
009bh cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a1h je near ptr 021dh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 76 01 00 00}
00a7h jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 02 00 00}
00ach mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
00b6h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b9h je short 00cdh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00beh mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
00c8h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f7 ac 5e}
00cdh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00d7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 30 b0 5e}
00dch vcvttsd2si edx,qword ptr [rsi+8]        ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[5]{c5 fb 2c 56 08}
00e1h mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e4h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 37 02 00 00}
00e9h mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
00f3h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f6h je short 010ah                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00fbh mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0105h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 f7 ac 5e}
010ah mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0114h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 30 b0 5e}
0119h vcvttsd2si edx,qword ptr [rsi+8]        ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[5]{c5 fb 2c 56 08}
011eh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
0121h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fa 01 00 00}
0126h mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
0130h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0133h je short 0147h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0135h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0138h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0142h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f7 ac 5e}
0147h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0151h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 30 b0 5e}
0156h vcvttsd2si edx,qword ptr [rsi+8]        ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[5]{c5 fb 2c 56 08}
015bh mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015fh jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bc 01 00 00}
0164h mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
016eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0171h je short 0185h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0173h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0176h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0180h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f6 ac 5e}
0185h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
018fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 30 b0 5e}
0194h vcvttsd2si edx,qword ptr [rsi+8]        ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[5]{c5 fb 2c 56 08}
0199h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019dh jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 01 00 00}
01a2h mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
01ach cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01afh je short 01c3h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b4h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
01beh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd f6 ac 5e}
01c3h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01cdh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 2f b0 5e}
01d2h vcvttsd2si edx,qword ptr [rsi+8]        ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[5]{c5 fb 2c 56 08}
01d7h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01dah jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 41 01 00 00}
01dfh mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
01e9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ech je short 0200h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01f1h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
01fbh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 f6 ac 5e}
0200h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
020ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 2f b0 5e}
020fh vcvttsd2si rdx,qword ptr [rsi+8]        ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[6]{c4 e1 fb 2c 56 08}
0215h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0218h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 01 00 00}
021dh mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
0227h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
022ah je short 023eh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
022ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
022fh mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0239h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 f6 ac 5e}
023eh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0248h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 2f b0 5e}
024dh vcvttsd2si rdx,qword ptr [rsi+8]        ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[6]{c4 e1 fb 2c 56 08}
0253h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0257h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c4 00 00 00}
025ch mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
0266h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0269h je short 027dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
026bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
026eh mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0278h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f6 ac 5e}
027dh mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0287h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 2f b0 5e}
028ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
028fh vmovsd xmm0,qword ptr [rsi+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 46 08}
0294h call 7ff825fcd940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 9b c2 5e}
0299h mov [rdi+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 08}
029dh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
02a0h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 00 00 00}
02a5h mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
02afh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02b2h je short 02c6h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02b7h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
02c1h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba f5 ac 5e}
02c6h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
02d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 2e b0 5e}
02d5h vcvtsd2ss xmm0,xmm0,qword ptr [rsi+8]   ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[5]{c5 fb 5a 46 08}
02dah vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02dfh jmp short 0320h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
02e1h mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
02ebh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02eeh je short 0302h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f3h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
02fdh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f5 ac 5e}
0302h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
030ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 2e b0 5e}
0311h vmovsd xmm0,qword ptr [rsi+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 46 08}
0316h vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
031bh jmp short 0320h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
031dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0320h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0324h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0325h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0326h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind(string src)
; kind_(string)[365] = {57 56 53 48 83 ec 40 33 c0 48 89 44 24 38 48 89 44 24 28 48 89 44 24 30 8b 11 ba 02 00 00 00 e8 0c 05 ff fe 48 8b f0 48 8b ce e8 a1 7d 95 4f 85 c0 0f 85 22 01 00 00 48 8b ce e8 11 cf ff ff 8b f8 48 b9 88 9e 60 c6 f7 7f 00 00 e8 30 2e b0 5e 48 8b d8 48 b9 88 9e 60 c6 f7 7f 00 00 e8 5e b1 aa 5e 48 8b c8 66 89 7b 08 48 8b d3 e8 cf c6 fe fe 84 c0 0f 84 e0 00 00 00 85 ff 0f 84 d8 00 00 00 45 33 c0 44 89 44 24 38 44 8b 46 08 41 ff c8 48 8b ce 33 d2 e8 56 48 95 4f 48 85 c0 75 0b 33 c0 89 44 24 38 e9 af 00 00 00 48 8d 50 0c 8b 40 08 48 8d 4c 24 28 48 89 11 89 41 08 e8 ff 77 96 4f 4c 8b c0 48 8d 4c 24 28 4c 8d 4c 24 38 ba 07 00 00 00 e8 70 0f 2b ff 85 c0 0f 94 c1 0f b6 c9 85 c9 74 75 8b 74 24 38 48 b9 58 08 60 c6 f7 7f 00 00 e8 89 2d b0 5e 48 8b d8 48 b9 58 08 60 c6 f7 7f 00 00 e8 b7 b0 aa 5e 48 8b c8 89 73 08 48 8b d3 e8 29 c6 fe fe 84 c0 74 3e 8b ce 8b d7 e8 2c d6 ff ff 8b f0 48 b9 28 6f 5b c6 f7 7f 00 00 e8 4b 2d b0 5e 48 8b f8 48 b9 28 6f 5b c6 f7 7f 00 00 e8 79 b0 aa 5e 48 8b c8 89 77 08 48 8b d7 e8 eb c5 fe fe 84 c0 75 0a 33 c0 48 83 c4 40 5b 5e 5f c3 8b c6 48 83 c4 40 5b 5e 5f c3}
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
001fh call 7ff7c6394360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 05 ff fe}
0024h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah call 7ff816cfbc00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 7d 95 4f}
002fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0031h jne near ptr 0159h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 22 01 00 00}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c73a0d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 cf ff ff}
003fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0041h mov rcx,7ff7c6609e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9e 60 c6 f7 7f 00 00}
004bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 2e b0 5e}
0050h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0053h mov rcx,7ff7c6609e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9e 60 c6 f7 7f 00 00}
005dh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e b1 aa 5e}
0062h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0065h mov [rbx+8],di                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 7b 08}
0069h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
006ch call 7ff7c6390570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c6 fe fe}
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
0095h call 7ff816cf8720h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 48 95 4f}
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
00bch call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 77 96 4f}
00c1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00c4h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
00c9h lea r9,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 38}
00ceh mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
00d3h call 7ff7c6654e78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 0f 2b ff}
00d8h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00dah sete cl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c1}
00ddh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00e0h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
00e2h je short 0159h                          ; JE rel8 || 74 cb || encoded[2]{74 75}
00e4h mov esi,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 38}
00e8h mov rcx,7ff7c6600858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 08 60 c6 f7 7f 00 00}
00f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 2d b0 5e}
00f7h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fah mov rcx,7ff7c6600858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 08 60 c6 f7 7f 00 00}
0104h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 b0 aa 5e}
0109h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010ch mov [rbx+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 73 08}
010fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0112h call 7ff7c6390570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c6 fe fe}
0117h test al,al                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c0}
0119h je short 0159h                          ; JE rel8 || 74 cb || encoded[2]{74 3e}
011bh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
011dh mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
011fh call 7ff7c73a1580h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c d6 ff ff}
0124h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0126h mov rcx,7ff7c65b6f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6f 5b c6 f7 7f 00 00}
0130h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 2d b0 5e}
0135h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0138h mov rcx,7ff7c65b6f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6f 5b c6 f7 7f 00 00}
0142h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 b0 aa 5e}
0147h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
014ah mov [rdi+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 77 08}
014dh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0150h call 7ff7c6390570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb c5 fe fe}
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
