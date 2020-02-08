------------------------------------------------------------------------------------------------------------------------
; HashSet<NumericKind:uint> kindsetCreate(NumericKind:uint k)
; kindsetCreate_NumericKind~32u[267] = {57 56 48 83 ec 28 8b f1 48 b9 68 48 e3 c7 f7 7f 00 00 e8 09 f0 52 5f 48 8b f8 48 ba 68 2f 1f d3 5d 02 00 00 48 8b 12 48 8b cf e8 59 ed ff ff f7 c6 00 00 01 00 74 0d 48 8b cf ba 08 00 01 20 e8 8c ee ff ff f7 c6 00 00 02 00 74 0d 48 8b cf ba 08 00 02 80 e8 77 ee ff ff f7 c6 00 00 04 00 74 0d 48 8b cf ba 10 00 04 20 e8 62 ee ff ff f7 c6 00 00 08 00 74 0d 48 8b cf ba 10 00 08 80 e8 4d ee ff ff f7 c6 00 00 10 00 74 0d 48 8b cf ba 20 00 10 20 e8 38 ee ff ff f7 c6 00 00 20 00 74 0d 48 8b cf ba 20 00 20 80 e8 23 ee ff ff f7 c6 00 00 40 00 74 0d 48 8b cf ba 40 00 40 20 e8 0e ee ff ff f7 c6 00 00 80 00 74 0d 48 8b cf ba 40 00 80 80 e8 f9 ed ff ff f7 c6 00 00 00 02 74 0d 48 8b cf ba 20 00 00 42 e8 e4 ed ff ff f7 c6 00 00 00 04 74 0d 48 8b cf ba 40 00 00 44 e8 cf ed ff ff 48 8b c7 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h mov rcx,7ff7c7e34868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 48 e3 c7 f7 7f 00 00}
0012h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f0 52 5f}
0017h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
001ah mov rdx,25dd31f2f68h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 2f 1f d3 5d 02 00 00}
0024h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0027h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
002ah call 7ff7c7d36a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ed ff ff}
002fh test esi,10000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 01 00}
0035h je short 0044h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0037h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
003ah mov edx,20010008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 01 20}
003fh call 7ff7c7d36b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c ee ff ff}
0044h test esi,20000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 02 00}
004ah je short 0059h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
004ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
004fh mov edx,80020008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 02 80}
0054h call 7ff7c7d36b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ee ff ff}
0059h test esi,40000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 04 00}
005fh je short 006eh                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0061h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0064h mov edx,20040010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 04 20}
0069h call 7ff7c7d36b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ee ff ff}
006eh test esi,80000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 08 00}
0074h je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0076h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0079h mov edx,80080010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 08 80}
007eh call 7ff7c7d36b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d ee ff ff}
0083h test esi,100000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 10 00}
0089h je short 0098h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
008bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
008eh mov edx,20100020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 10 20}
0093h call 7ff7c7d36b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ee ff ff}
0098h test esi,200000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 20 00}
009eh je short 00adh                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00a0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a3h mov edx,80200020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 20 80}
00a8h call 7ff7c7d36b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 ee ff ff}
00adh test esi,400000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 40 00}
00b3h je short 00c2h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00b5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b8h mov edx,20400040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 40 20}
00bdh call 7ff7c7d36b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e ee ff ff}
00c2h test esi,800000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 80 00}
00c8h je short 00d7h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov edx,80800040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 80 80}
00d2h call 7ff7c7d36b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ed ff ff}
00d7h test esi,2000000h                       ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 00 02}
00ddh je short 00ech                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e2h mov edx,42000020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 42}
00e7h call 7ff7c7d36b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ed ff ff}
00ech test esi,4000000h                       ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 00 04}
00f2h je short 0101h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00f4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f7h mov edx,44000040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 44}
00fch call 7ff7c7d36b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf ed ff ff}
0101h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0104h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0108h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0109h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ah ret                                     ; RET || C3 || encoded[1]{c3}
