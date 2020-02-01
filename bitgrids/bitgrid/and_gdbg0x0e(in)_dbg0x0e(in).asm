------------------------------------------------------------------------------------------------------------------------
; BitGrid<byte> and<byte>(in BitGrid<byte> gx, in BitGrid<byte> gy)
; and_gdbg8x8u(in)_dbg8x8u(in)[200] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 4c 8b f1 48 8b da 49 8b e8 8b 53 10 44 8b 43 14 48 8d 4c 24 20 45 33 c9 e8 0b f9 ff ff 8b 44 24 28 8b d0 c1 fa 1f 83 e2 1f 03 c2 c1 f8 05 45 33 ff 85 c0 7e 4f 48 8b 55 00 48 8b 13 41 8b cf c1 e1 05 48 63 c9 48 03 d1 c5 ff f0 02 48 8b 55 00 41 8b cf c1 e1 05 48 63 c9 48 03 d1 c5 ff f0 0a c5 fd db c1 48 8d 54 24 20 48 8b 12 41 8b cf c1 e1 05 48 63 c9 48 03 d1 c5 fe 7f 02 41 ff c7 44 3b f8 7c b5 49 8b fe 48 8d 74 24 20 e8 cf cb b5 5e 48 a5 48 a5 49 8b c6 c5 f8 77 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0011h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0016h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001bh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0020h mov r14,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f1}
0023h mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
0026h mov rbp,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e8}
0029h mov edx,[rbx+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 53 10}
002ch mov r8d,[rbx+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 43 14}
0030h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0035h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0038h call 7ff7c7348b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f9 ff ff}
003dh mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0041h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0043h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0046h and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0049h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004bh sar eax,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 05}
004eh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0051h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0053h jle short 00a4h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4f}
0055h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0059h mov rdx,[rbx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 13}
005ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
005fh shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
0062h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0065h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0068h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
006ch mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0070h mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
0073h shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
0076h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0079h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
007ch vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0080h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0084h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0089h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
008ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
008fh shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
0092h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0095h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0098h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
009ch inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
009fh cmp r15d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f8}
00a2h jl short 0059h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
00a4h mov rdi,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b fe}
00a7h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
00ach call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf cb b5 5e}
00b1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00b3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00b5h mov rax,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c6}
00b8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bbh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00bfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c3h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00c5h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<ushort> and<ushort>(in BitGrid<ushort> gx, in BitGrid<ushort> gy)
; and_gdbg16x16u(in)_dbg16x16u(in)[185] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 4c 8b f1 48 8b da 49 8b e8 8b 53 10 44 8b 43 14 48 8d 4c 24 20 45 33 c9 e8 5b f8 ff ff 8b 44 24 28 8b d0 c1 fa 1f 83 e2 0f 03 c2 c1 f8 04 45 33 ff 85 c0 7e 40 48 8b 55 00 48 8b 13 41 8b cf c1 e1 04 48 63 c9 48 d1 e1 48 03 d1 c5 ff f0 02 48 8b 55 00 48 03 d1 c5 ff f0 0a c5 fd db c1 48 8d 54 24 20 48 8b 12 48 03 d1 c5 fe 7f 02 41 ff c7 44 3b f8 7c c4 49 8b fe 48 8d 74 24 20 e8 ee ca b5 5e 48 a5 48 a5 49 8b c6 c5 f8 77 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0011h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0016h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001bh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0020h mov r14,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f1}
0023h mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
0026h mov rbp,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e8}
0029h mov edx,[rbx+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 53 10}
002ch mov r8d,[rbx+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 43 14}
0030h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0035h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0038h call 7ff7c7348b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f8 ff ff}
003dh mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0041h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0043h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0046h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0049h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004bh sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
004eh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0051h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0053h jle short 0095h                         ; JLE rel8 || 7E cb || encoded[2]{7e 40}
0055h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0059h mov rdx,[rbx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 13}
005ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
005fh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0062h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0065h shl rcx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e1}
0068h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
006bh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
006fh mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0073h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0076h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
007ah vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
007eh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0083h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0086h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0089h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
008dh inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
0090h cmp r15d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f8}
0093h jl short 0059h                          ; JL rel8 || 7C cb || encoded[2]{7c c4}
0095h mov rdi,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b fe}
0098h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
009dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee ca b5 5e}
00a2h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a4h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a6h mov rax,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c6}
00a9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ach add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00b0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<uint> and<uint>(in BitGrid<uint> gx, in BitGrid<uint> gy)
; and_gdbg32x32u(in)_dbg32x32u(in)[186] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 4c 8b f1 48 8b da 49 8b e8 8b 53 10 44 8b 43 14 48 8d 4c 24 20 45 33 c9 e8 3b fb ff ff 8b 44 24 28 8b d0 c1 fa 1f 83 e2 07 03 c2 c1 f8 03 45 33 ff 85 c0 7e 41 48 8b 55 00 48 8b 13 41 8b cf c1 e1 03 48 63 c9 48 c1 e1 02 48 03 d1 c5 ff f0 02 48 8b 55 00 48 03 d1 c5 ff f0 0a c5 fd db c1 48 8d 54 24 20 48 8b 12 48 03 d1 c5 fe 7f 02 41 ff c7 44 3b f8 7c c3 49 8b fe 48 8d 74 24 20 e8 0d ca b5 5e 48 a5 48 a5 49 8b c6 c5 f8 77 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0011h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0016h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001bh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0020h mov r14,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f1}
0023h mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
0026h mov rbp,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e8}
0029h mov edx,[rbx+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 53 10}
002ch mov r8d,[rbx+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 43 14}
0030h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0035h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0038h call 7ff7c7348f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b fb ff ff}
003dh mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0041h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0043h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0046h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0049h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004bh sar eax,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 03}
004eh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0051h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0053h jle short 0096h                         ; JLE rel8 || 7E cb || encoded[2]{7e 41}
0055h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0059h mov rdx,[rbx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 13}
005ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
005fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0062h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0065h shl rcx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 02}
0069h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
006ch vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0070h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0074h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0077h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
007bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
007fh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0084h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0087h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
008ah vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
008eh inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
0091h cmp r15d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f8}
0094h jl short 0059h                          ; JL rel8 || 7C cb || encoded[2]{7c c3}
0096h mov rdi,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b fe}
0099h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
009eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ca b5 5e}
00a3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a7h mov rax,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c6}
00aah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00adh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00b1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b7h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<ulong> and<ulong>(in BitGrid<ulong> gx, in BitGrid<ulong> gy)
; and_gdbg64x64u(in)_dbg64x64u(in)[186] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 4c 8b f1 48 8b da 49 8b e8 8b 53 10 44 8b 43 14 48 8d 4c 24 20 45 33 c9 e8 7b fa ff ff 8b 44 24 28 8b d0 c1 fa 1f 83 e2 03 03 c2 c1 f8 02 45 33 ff 85 c0 7e 41 48 8b 55 00 48 8b 13 41 8b cf c1 e1 02 48 63 c9 48 c1 e1 03 48 03 d1 c5 ff f0 02 48 8b 55 00 48 03 d1 c5 ff f0 0a c5 fd db c1 48 8d 54 24 20 48 8b 12 48 03 d1 c5 fe 7f 02 41 ff c7 44 3b f8 7c c3 49 8b fe 48 8d 74 24 20 e8 2d c9 b5 5e 48 a5 48 a5 49 8b c6 c5 f8 77 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0011h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0016h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001bh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0020h mov r14,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f1}
0023h mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
0026h mov rbp,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e8}
0029h mov edx,[rbx+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 53 10}
002ch mov r8d,[rbx+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 43 14}
0030h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0035h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0038h call 7ff7c7348f78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b fa ff ff}
003dh mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0041h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0043h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0046h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0049h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004bh sar eax,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 02}
004eh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0051h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0053h jle short 0096h                         ; JLE rel8 || 7E cb || encoded[2]{7e 41}
0055h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0059h mov rdx,[rbx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 13}
005ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
005fh shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
0062h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0065h shl rcx,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 03}
0069h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
006ch vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0070h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0074h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0077h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
007bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
007fh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0084h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0087h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
008ah vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
008eh inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
0091h cmp r15d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f8}
0094h jl short 0059h                          ; JL rel8 || 7C cb || encoded[2]{7c c3}
0096h mov rdi,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b fe}
0099h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
009eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d c9 b5 5e}
00a3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a7h mov rax,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c6}
00aah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00adh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00b1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b7h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b9h ret                                     ; RET || C3 || encoded[1]{c3}
