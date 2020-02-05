------------------------------------------------------------------------------------------------------------------------
; HashSet<NumericKind:uint> kindsetCreate(NumericKind:uint k)
; kindsetCreate_NumericKind~32u[287] = {57 56 48 83 ec 28 8b f1 48 b9 e0 9c 90 c6 f7 7f 00 00 e8 c9 c2 4f 5f 48 8b f8 48 b9 20 00 35 c6 f7 7f 00 00 ba 4f 00 00 00 e8 a2 71 4c 5f 48 ba e0 2e 5c 37 b3 01 00 00 48 8b 12 48 8b cf e8 9d 6c e1 ff f7 c6 00 00 01 00 74 0d 48 8b cf ba 08 00 01 20 e8 d0 6d e1 ff f7 c6 00 00 02 00 74 0d 48 8b cf ba 08 00 02 80 e8 bb 6d e1 ff f7 c6 00 00 04 00 74 0d 48 8b cf ba 10 00 04 20 e8 a6 6d e1 ff f7 c6 00 00 08 00 74 0d 48 8b cf ba 10 00 08 80 e8 91 6d e1 ff f7 c6 00 00 10 00 74 0d 48 8b cf ba 20 00 10 20 e8 7c 6d e1 ff f7 c6 00 00 20 00 74 0d 48 8b cf ba 20 00 20 80 e8 67 6d e1 ff f7 c6 00 00 40 00 74 0d 48 8b cf ba 40 00 40 20 e8 52 6d e1 ff f7 c6 00 00 80 00 74 0d 48 8b cf ba 40 00 80 80 e8 3d 6d e1 ff f7 c6 00 00 00 02 74 0d 48 8b cf ba 20 00 00 42 e8 28 6d e1 ff f7 c6 00 00 00 04 74 0d 48 8b cf ba 40 00 00 44 e8 13 6d e1 ff 48 8b c7 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h mov rcx,7ff7c6909ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 9c 90 c6 f7 7f 00 00}
0012h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 c2 4f 5f}
0017h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
001ah mov rcx,7ff7c6350020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 35 c6 f7 7f 00 00}
0024h mov edx,4fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 4f 00 00 00}
0029h call 7ff825e71ba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 71 4c 5f}
002eh mov rdx,1b3375c2ee0h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba e0 2e 5c 37 b3 01 00 00}
0038h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
003bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
003eh call 7ff7c67c16b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 6c e1 ff}
0043h test esi,10000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 01 00}
0049h je short 0058h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
004bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
004eh mov edx,20010008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 01 20}
0053h call 7ff7c67c17f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 6d e1 ff}
0058h test esi,20000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 02 00}
005eh je short 006dh                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0060h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0063h mov edx,80020008h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 02 80}
0068h call 7ff7c67c17f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 6d e1 ff}
006dh test esi,40000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 04 00}
0073h je short 0082h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0075h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0078h mov edx,20040010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 04 20}
007dh call 7ff7c67c17f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 6d e1 ff}
0082h test esi,80000h                         ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 08 00}
0088h je short 0097h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
008ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
008dh mov edx,80080010h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 08 80}
0092h call 7ff7c67c17f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 6d e1 ff}
0097h test esi,100000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 10 00}
009dh je short 00ach                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
009fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a2h mov edx,20100020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 10 20}
00a7h call 7ff7c67c17f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 6d e1 ff}
00ach test esi,200000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 20 00}
00b2h je short 00c1h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00b4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b7h mov edx,80200020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 20 80}
00bch call 7ff7c67c17f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 6d e1 ff}
00c1h test esi,400000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 40 00}
00c7h je short 00d6h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00c9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cch mov edx,20400040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 40 20}
00d1h call 7ff7c67c17f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 6d e1 ff}
00d6h test esi,800000h                        ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 80 00}
00dch je short 00ebh                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e1h mov edx,80800040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 80 80}
00e6h call 7ff7c67c17f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 6d e1 ff}
00ebh test esi,2000000h                       ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 00 02}
00f1h je short 0100h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
00f3h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f6h mov edx,42000020h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 42}
00fbh call 7ff7c67c17f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 6d e1 ff}
0100h test esi,4000000h                       ; TEST r/m32, imm32 || o32 F7 /0 id || encoded[6]{f7 c6 00 00 00 04}
0106h je short 0115h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov edx,44000040h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 44}
0110h call 7ff7c67c17f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 6d e1 ff}
0115h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0118h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
011eh ret                                     ; RET || C3 || encoded[1]{c3}
