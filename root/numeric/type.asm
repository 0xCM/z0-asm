------------------------------------------------------------------------------------------------------------------------
; Type type(NumericKind:uint k)
; type_NumericKind~32u[71] = {57 56 48 83 ec 28 8b f1 81 fe 20 00 00 42 77 6c 81 fe 10 00 04 20 77 2f 81 fe 08 00 01 20 0f 84 b9 00 00 00 81 fe 10 00 04 20 0f 85 25 01 00 00 48 b9 38 87 72 c7 f7 7f 00 00 e8 01 ed 37 5f 90 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0030h mov rcx,7ff7c7728738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 72 c7 f7 7f 00 00}
003ah call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ed 37 5f}
003fh nop                                     ; NOP || o32 90 || encoded[1]{90}
0040h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
