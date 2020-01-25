; Vector128<float> eval<float>(BinaryArithmeticKind:byte kind, Vector128<float> x, Vector128<float> y)
; ba~eval__128x32f[7ff7c6cb7ff0h, 7ff7c6cb80beh][206] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 31 c4 c1 79 10 00 c4 c1 79 10 09 c5 f8 5c c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f8 58 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 88 2f 88 c6 f7 7f 00 00 e8 64 ec 1e 5f 48 8b f8 40 88 77 08 48 b9 58 af 34 c6 f7 7f 00 00 e8 8e 6f 19 5f 48 8b c8 e8 16 67 d6 ff 8b f0 48 b9 50 58 58 c6 f7 7f 00 00 e8 35 ec 1e 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 1e 85 31 5f 48 8b e8 8b ce e8 f4 3e 6e ff 4c 8b c0 48 8b cd 48 8b d7 e8 8e c0 6b ff 48 8b d0 48 8b cb e8 5b 6d 6d ff 48 8b cb e8 43 38 16 5f cc}
; Capture completion code, INTRx2
; 2020-01-24 02:54:51:869
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 21}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 004dh                         ; JNE rel8 || 75 cb || encoded[2]{75 31}
001ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0021h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0026h vsubps xmm0,xmm0,xmm1                   ; VSUBPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 5C /r || encoded[4]{c5 f8 5c c1}
002ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0032h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0033h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vaddps xmm0,xmm0,xmm0                   ; VADDPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 58 /r || encoded[4]{c5 f8 58 c0}
0040h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0044h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0048h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0049h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
004dh mov rcx,7ff7c6882f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 2f 88 c6 f7 7f 00 00}
0057h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ec 1e 5f}
005ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005fh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0063h mov rcx,7ff7c634af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 34 c6 f7 7f 00 00}
006dh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 6f 19 5f}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 67 d6 ff}
007ah mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007ch mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
0086h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 ec 1e 5f}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0093h mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
009dh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 85 31 5f}
00a2h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00a5h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00a7h call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 3e 6e ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e c0 6b ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c0h call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 6d 6d ff}
00c5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 38 16 5f}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
