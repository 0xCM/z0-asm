------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector256<byte> x, Vector256<byte> y)
; ba~eval__g0o_256x8u_256x8u[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f8 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fc c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 79 68 b6 5e 48 8b f8 40 88 77 08 48 b9 58 77 34 c6 f7 7f 00 00 e8 a3 eb b0 5e 48 8b c8 e8 4b bd 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 4a 68 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 33 01 c9 5e 48 8b e8 8b ce e8 89 18 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a3 3c 03 ff 48 8b d0 48 8b cb e8 00 96 05 ff 48 8b cb e8 58 b4 ad 5e cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0058h                         ; JNE rel8 || 75 cb || encoded[2]{75 3c}
001ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0021h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0026h vpsubb ymm0,ymm0,ymm1                   ; VPSUBB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F8 /r || encoded[4]{c5 fd f8 c1}
002ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0035h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0036h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0044h vpaddb ymm0,ymm0,ymm1                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 fd fc c1}
0048h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
0058h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 68 b6 5e}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 eb b0 5e}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b bd 75 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 68 b6 5e}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 01 c9 5e}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 18 05 ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 3c 03 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 96 05 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b4 ad 5e}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector256<sbyte> x, Vector256<sbyte> y)
; ba~eval__g0o_256x8i_256x8i[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f8 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fc c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 79 67 b6 5e 48 8b f8 40 88 77 08 48 b9 68 6f 34 c6 f7 7f 00 00 e8 a3 ea b0 5e 48 8b c8 e8 4b bc 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 4a 67 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 33 00 c9 5e 48 8b e8 8b ce e8 89 17 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a3 3b 03 ff 48 8b d0 48 8b cb e8 00 95 05 ff 48 8b cb e8 58 b3 ad 5e cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0058h                         ; JNE rel8 || 75 cb || encoded[2]{75 3c}
001ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0021h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0026h vpsubb ymm0,ymm0,ymm1                   ; VPSUBB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F8 /r || encoded[4]{c5 fd f8 c1}
002ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0035h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0036h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0044h vpaddb ymm0,ymm0,ymm1                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 fd fc c1}
0048h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
0058h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 67 b6 5e}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ea b0 5e}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b bc 75 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 67 b6 5e}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 00 c9 5e}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 17 05 ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 3b 03 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 95 05 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b3 ad 5e}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector256<ushort> x, Vector256<ushort> y)
; ba~eval__g0o_256x16u_256x16u[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f9 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fd c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 79 66 b6 5e 48 8b f8 40 88 77 08 48 b9 38 87 34 c6 f7 7f 00 00 e8 a3 e9 b0 5e 48 8b c8 e8 4b bb 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 4a 66 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 33 ff c8 5e 48 8b e8 8b ce e8 89 16 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a3 3a 03 ff 48 8b d0 48 8b cb e8 00 94 05 ff 48 8b cb e8 58 b2 ad 5e cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0058h                         ; JNE rel8 || 75 cb || encoded[2]{75 3c}
001ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0021h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0026h vpsubw ymm0,ymm0,ymm1                   ; VPSUBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F9 /r || encoded[4]{c5 fd f9 c1}
002ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0035h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0036h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0044h vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0048h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
0058h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 66 b6 5e}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6348738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 34 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 e9 b0 5e}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b bb 75 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 66 b6 5e}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ff c8 5e}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 16 05 ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 3a 03 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 94 05 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b2 ad 5e}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(BinaryArithmeticKind:byte kind, Vector256<short> x, Vector256<short> y)
; ba~eval__g0o_256x16i_256x16i[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f9 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fd c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 79 65 b6 5e 48 8b f8 40 88 77 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 a3 e8 b0 5e 48 8b c8 e8 4b ba 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 4a 65 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 33 fe c8 5e 48 8b e8 8b ce e8 89 15 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a3 39 03 ff 48 8b d0 48 8b cb e8 00 93 05 ff 48 8b cb e8 58 b1 ad 5e cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0058h                         ; JNE rel8 || 75 cb || encoded[2]{75 3c}
001ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0021h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0026h vpsubw ymm0,ymm0,ymm1                   ; VPSUBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F9 /r || encoded[4]{c5 fd f9 c1}
002ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0035h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0036h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0044h vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0048h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
0058h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 65 b6 5e}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 e8 b0 5e}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b ba 75 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 65 b6 5e}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 fe c8 5e}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 15 05 ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 39 03 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 93 05 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b1 ad 5e}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector256<uint> x, Vector256<uint> y)
; ba~eval__g0o_256x32u_256x32u[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fa c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fe c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 79 64 b6 5e 48 8b f8 40 88 77 08 48 b9 d8 96 34 c6 f7 7f 00 00 e8 a3 e7 b0 5e 48 8b c8 e8 4b b9 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 4a 64 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 33 fd c8 5e 48 8b e8 8b ce e8 89 14 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a3 38 03 ff 48 8b d0 48 8b cb e8 00 92 05 ff 48 8b cb e8 58 b0 ad 5e cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0058h                         ; JNE rel8 || 75 cb || encoded[2]{75 3c}
001ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0021h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0026h vpsubd ymm0,ymm0,ymm1                   ; VPSUBD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FA /r || encoded[4]{c5 fd fa c1}
002ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0035h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0036h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0044h vpaddd ymm0,ymm0,ymm1                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[4]{c5 fd fe c1}
0048h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
0058h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 64 b6 5e}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c63496d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 34 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 e7 b0 5e}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b b9 75 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 64 b6 5e}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 fd c8 5e}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 14 05 ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 38 03 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 92 05 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b0 ad 5e}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(BinaryArithmeticKind:byte kind, Vector256<int> x, Vector256<int> y)
; ba~eval__g0o_256x32i_256x32i[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fa c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fe c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 79 63 b6 5e 48 8b f8 40 88 77 08 48 b9 08 8f 34 c6 f7 7f 00 00 e8 a3 e6 b0 5e 48 8b c8 e8 4b b8 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 4a 63 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 33 fc c8 5e 48 8b e8 8b ce e8 89 13 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a3 37 03 ff 48 8b d0 48 8b cb e8 00 91 05 ff 48 8b cb e8 58 af ad 5e cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0058h                         ; JNE rel8 || 75 cb || encoded[2]{75 3c}
001ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0021h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0026h vpsubd ymm0,ymm0,ymm1                   ; VPSUBD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FA /r || encoded[4]{c5 fd fa c1}
002ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0035h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0036h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0044h vpaddd ymm0,ymm0,ymm1                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[4]{c5 fd fe c1}
0048h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
0058h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 63 b6 5e}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 34 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 e6 b0 5e}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b b8 75 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 63 b6 5e}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 fc c8 5e}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 13 05 ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 37 03 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 91 05 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 af ad 5e}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector256<ulong> x, Vector256<ulong> y)
; ba~eval__g0o_256x64u_256x64u[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fb c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd d4 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 79 62 b6 5e 48 8b f8 40 88 77 08 48 b9 78 a6 34 c6 f7 7f 00 00 e8 a3 e5 b0 5e 48 8b c8 e8 4b b7 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 4a 62 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 33 fb c8 5e 48 8b e8 8b ce e8 89 12 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a3 36 03 ff 48 8b d0 48 8b cb e8 00 90 05 ff 48 8b cb e8 58 ae ad 5e cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0058h                         ; JNE rel8 || 75 cb || encoded[2]{75 3c}
001ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0021h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0026h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
002ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0035h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0036h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0044h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
0048h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
0058h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 62 b6 5e}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c634a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 34 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 e5 b0 5e}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b b7 75 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 62 b6 5e}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 fb c8 5e}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 12 05 ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 36 03 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 90 05 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ae ad 5e}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(BinaryArithmeticKind:byte kind, Vector256<long> x, Vector256<long> y)
; ba~eval__g0o_256x64i_256x64i[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fb c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd d4 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 79 61 b6 5e 48 8b f8 40 88 77 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 a3 e4 b0 5e 48 8b c8 e8 4b b6 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 4a 61 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 33 fa c8 5e 48 8b e8 8b ce e8 89 11 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a3 35 03 ff 48 8b d0 48 8b cb e8 00 8f 05 ff 48 8b cb e8 58 ad ad 5e cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0058h                         ; JNE rel8 || 75 cb || encoded[2]{75 3c}
001ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0021h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0026h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
002ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0035h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0036h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0044h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
0048h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
0058h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 61 b6 5e}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 e4 b0 5e}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b b6 75 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 61 b6 5e}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 fa c8 5e}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 11 05 ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 35 03 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 8f 05 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ad ad 5e}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> eval<float>(BinaryArithmeticKind:byte kind, Vector256<float> x, Vector256<float> y)
; ba~eval__g0o_256x32f_256x32f[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fc 5c c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fc 58 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 79 60 b6 5e 48 8b f8 40 88 77 08 48 b9 58 af 34 c6 f7 7f 00 00 e8 a3 e3 b0 5e 48 8b c8 e8 4b b5 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 4a 60 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 33 f9 c8 5e 48 8b e8 8b ce e8 89 10 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a3 34 03 ff 48 8b d0 48 8b cb e8 00 8e 05 ff 48 8b cb e8 58 ac ad 5e cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0058h                         ; JNE rel8 || 75 cb || encoded[2]{75 3c}
001ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0021h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0026h vsubps ymm0,ymm0,ymm1                   ; VSUBPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 5C /r || encoded[4]{c5 fc 5c c1}
002ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0035h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0036h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0044h vaddps ymm0,ymm0,ymm1                   ; VADDPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 58 /r || encoded[4]{c5 fc 58 c1}
0048h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
0058h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 60 b6 5e}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c634af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 34 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 e3 b0 5e}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b b5 75 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 60 b6 5e}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f9 c8 5e}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 10 05 ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 34 03 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 8e 05 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ac ad 5e}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> eval<double>(BinaryArithmeticKind:byte kind, Vector256<double> x, Vector256<double> y)
; ba~eval__g0o_256x64f_256x64f[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 5c c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 58 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 79 5f b6 5e 48 8b f8 40 88 77 08 48 b9 38 b8 34 c6 f7 7f 00 00 e8 a3 e2 b0 5e 48 8b c8 e8 4b b4 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 4a 5f b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 33 f8 c8 5e 48 8b e8 8b ce e8 89 0f 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a3 33 03 ff 48 8b d0 48 8b cb e8 00 8d 05 ff 48 8b cb e8 58 ab ad 5e cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0014h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0058h                         ; JNE rel8 || 75 cb || encoded[2]{75 3c}
001ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0021h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0026h vsubpd ymm0,ymm0,ymm1                   ; VSUBPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 5C /r || encoded[4]{c5 fd 5c c1}
002ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0035h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0036h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0044h vaddpd ymm0,ymm0,ymm1                   ; VADDPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 58 /r || encoded[4]{c5 fd 58 c1}
0048h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
0058h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 5f b6 5e}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c634b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 34 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 e2 b0 5e}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b b4 75 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 5f b6 5e}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f8 c8 5e}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 0f 05 ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 33 03 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 8d 05 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ab ad 5e}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
