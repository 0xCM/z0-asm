------------------------------------------------------------------------------------------------------------------------
; NumericKind:uint kind(Type t)
; kind_()[155] = {56 48 83 ec 20 48 8b f1 48 8b ce 48 8b 06 48 8b 40 70 ff 50 30 85 c0 74 04 33 c0 eb 78 48 8b ce e8 13 8c ff ff 48 8b c8 e8 93 b5 fd ff 83 c0 fb 83 f8 09 77 5e 8b c0 48 8d 15 62 00 00 00 8b 14 82 48 8d 0d c0 ff ff ff 48 03 d1 ff e2 b8 08 00 01 20 eb 41 b8 08 00 02 80 eb 3a b8 10 00 08 80 eb 33 b8 10 00 04 20 eb 2c b8 20 00 20 80 eb 25 b8 20 00 10 20 eb 1e b8 40 00 80 80 eb 17 b8 40 00 40 20 eb 10 b8 20 00 00 42 eb 09 b8 40 00 00 44 eb 02 33 c0 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
000eh mov rax,[rax+70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 40 70}
0012h call qword ptr [rax+30h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 30}
0015h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0017h je short 001dh                          ; JE rel8 || 74 cb || encoded[2]{74 04}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h call 7ff7c775e5c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 8c ff ff}
0025h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0028h call 7ff7c7740f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 b5 fd ff}
002dh add eax,0fffffffbh                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 fb}
0030h cmp eax,9                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 09}
0033h ja short 0093h                          ; JA rel8 || 77 cb || encoded[2]{77 5e}
0035h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0037h lea rdx,[rip+62h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 62 00 00 00}
003eh mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0041h lea rcx,[rip-40h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d c0 ff ff ff}
0048h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
004bh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
004dh mov eax,20010008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 01 20}
0052h jmp short 0095h                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0054h mov eax,80020008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 02 80}
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
