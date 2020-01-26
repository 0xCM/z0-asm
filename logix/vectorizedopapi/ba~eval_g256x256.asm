------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector256<byte> x, Vector256<byte> y)
; ba~eval__g0o_256x8u_256x8u[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f8 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fc c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 60 8b 96 c6 f7 7f 00 00 e8 09 66 19 5f 48 8b f8 40 88 77 08 48 b9 58 77 36 c6 f7 7f 00 00 e8 33 e9 13 5f 48 8b c8 e8 8b 0d d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 da 65 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 c3 fe 2b 5f 48 8b e8 8b ce e8 29 ae 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 33 3a 68 ff 48 8b d0 48 8b cb e8 e8 d8 69 ff 48 8b cb e8 e8 b1 10 5f cc}
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
0058h mov rcx,7ff7c6968b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 96 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 66 19 5f}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 e9 13 5f}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 0d d4 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 65 19 5f}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 fe 2b 5f}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ae 6a ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 3a 68 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 d8 69 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 b1 10 5f}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector256<sbyte> x, Vector256<sbyte> y)
; ba~eval__g0o_256x8i_256x8i[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f8 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fc c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 60 8b 96 c6 f7 7f 00 00 e8 09 65 19 5f 48 8b f8 40 88 77 08 48 b9 68 6f 36 c6 f7 7f 00 00 e8 33 e8 13 5f 48 8b c8 e8 8b 0c d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 da 64 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 c3 fd 2b 5f 48 8b e8 8b ce e8 29 ad 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 33 39 68 ff 48 8b d0 48 8b cb e8 e8 d7 69 ff 48 8b cb e8 e8 b0 10 5f cc}
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
0058h mov rcx,7ff7c6968b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 96 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 65 19 5f}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 e8 13 5f}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 0c d4 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 64 19 5f}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 fd 2b 5f}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ad 6a ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 39 68 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 d7 69 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 b0 10 5f}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector256<ushort> x, Vector256<ushort> y)
; ba~eval__g0o_256x16u_256x16u[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f9 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fd c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 60 8b 96 c6 f7 7f 00 00 e8 09 64 19 5f 48 8b f8 40 88 77 08 48 b9 38 87 36 c6 f7 7f 00 00 e8 33 e7 13 5f 48 8b c8 e8 8b 0b d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 da 63 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 c3 fc 2b 5f 48 8b e8 8b ce e8 29 ac 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 33 38 68 ff 48 8b d0 48 8b cb e8 e8 d6 69 ff 48 8b cb e8 e8 af 10 5f cc}
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
0058h mov rcx,7ff7c6968b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 96 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 64 19 5f}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 e7 13 5f}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 0b d4 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 63 19 5f}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 fc 2b 5f}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ac 6a ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 38 68 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 d6 69 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 af 10 5f}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(BinaryArithmeticKind:byte kind, Vector256<short> x, Vector256<short> y)
; ba~eval__g0o_256x16i_256x16i[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f9 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fd c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 60 8b 96 c6 f7 7f 00 00 e8 f9 5e 19 5f 48 8b f8 40 88 77 08 48 b9 48 7f 36 c6 f7 7f 00 00 e8 23 e2 13 5f 48 8b c8 e8 7b 06 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 ca 5e 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 b3 f7 2b 5f 48 8b e8 8b ce e8 19 a7 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 23 33 68 ff 48 8b d0 48 8b cb e8 d8 d1 69 ff 48 8b cb e8 d8 aa 10 5f cc}
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
0058h mov rcx,7ff7c6968b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 96 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 5e 19 5f}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 e2 13 5f}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 06 d4 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 5e 19 5f}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f7 2b 5f}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a7 6a ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 33 68 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 d1 69 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 aa 10 5f}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector256<uint> x, Vector256<uint> y)
; ba~eval__g0o_256x32u_256x32u[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fa c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fe c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 60 8b 96 c6 f7 7f 00 00 e8 f9 5d 19 5f 48 8b f8 40 88 77 08 48 b9 d8 96 36 c6 f7 7f 00 00 e8 23 e1 13 5f 48 8b c8 e8 7b 05 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 ca 5d 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 b3 f6 2b 5f 48 8b e8 8b ce e8 19 a6 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 23 32 68 ff 48 8b d0 48 8b cb e8 d8 d0 69 ff 48 8b cb e8 d8 a9 10 5f cc}
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
0058h mov rcx,7ff7c6968b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 96 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 5d 19 5f}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 e1 13 5f}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 05 d4 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 5d 19 5f}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f6 2b 5f}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a6 6a ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 32 68 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 d0 69 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 a9 10 5f}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(BinaryArithmeticKind:byte kind, Vector256<int> x, Vector256<int> y)
; ba~eval__g0o_256x32i_256x32i[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fa c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fe c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 60 8b 96 c6 f7 7f 00 00 e8 f9 5c 19 5f 48 8b f8 40 88 77 08 48 b9 08 8f 36 c6 f7 7f 00 00 e8 23 e0 13 5f 48 8b c8 e8 7b 04 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 ca 5c 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 b3 f5 2b 5f 48 8b e8 8b ce e8 19 a5 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 23 31 68 ff 48 8b d0 48 8b cb e8 d8 cf 69 ff 48 8b cb e8 d8 a8 10 5f cc}
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
0058h mov rcx,7ff7c6968b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 96 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 5c 19 5f}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 e0 13 5f}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 04 d4 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 5c 19 5f}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f5 2b 5f}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a5 6a ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 31 68 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 cf 69 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 a8 10 5f}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector256<ulong> x, Vector256<ulong> y)
; ba~eval__g0o_256x64u_256x64u[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fb c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd d4 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 60 8b 96 c6 f7 7f 00 00 e8 f9 5b 19 5f 48 8b f8 40 88 77 08 48 b9 78 a6 36 c6 f7 7f 00 00 e8 23 df 13 5f 48 8b c8 e8 7b 03 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 ca 5b 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 b3 f4 2b 5f 48 8b e8 8b ce e8 19 a4 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 23 30 68 ff 48 8b d0 48 8b cb e8 d8 ce 69 ff 48 8b cb e8 d8 a7 10 5f cc}
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
0058h mov rcx,7ff7c6968b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 96 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 5b 19 5f}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 df 13 5f}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 03 d4 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 5b 19 5f}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f4 2b 5f}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a4 6a ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 30 68 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 ce 69 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 a7 10 5f}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(BinaryArithmeticKind:byte kind, Vector256<long> x, Vector256<long> y)
; ba~eval__g0o_256x64i_256x64i[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fb c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd d4 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 60 8b 96 c6 f7 7f 00 00 e8 e9 56 19 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 13 da 13 5f 48 8b c8 e8 6b fe d3 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 ba 56 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 a3 ef 2b 5f 48 8b e8 8b ce e8 09 9f 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 13 2b 68 ff 48 8b d0 48 8b cb e8 c8 c9 69 ff 48 8b cb e8 c8 a2 10 5f cc}
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
0058h mov rcx,7ff7c6968b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 96 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 56 19 5f}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 da 13 5f}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b fe d3 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 56 19 5f}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ef 2b 5f}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 9f 6a ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 2b 68 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 c9 69 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 a2 10 5f}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> eval<float>(BinaryArithmeticKind:byte kind, Vector256<float> x, Vector256<float> y)
; ba~eval__g0o_256x32f_256x32f[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fc 5c c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fc 58 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 60 8b 96 c6 f7 7f 00 00 e8 e9 55 19 5f 48 8b f8 40 88 77 08 48 b9 58 af 36 c6 f7 7f 00 00 e8 13 d9 13 5f 48 8b c8 e8 6b fd d3 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 ba 55 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 a3 ee 2b 5f 48 8b e8 8b ce e8 09 9e 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 13 2a 68 ff 48 8b d0 48 8b cb e8 c8 c8 69 ff 48 8b cb e8 c8 a1 10 5f cc}
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
0058h mov rcx,7ff7c6968b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 96 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 55 19 5f}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 d9 13 5f}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b fd d3 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 55 19 5f}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ee 2b 5f}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 9e 6a ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 2a 68 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 c8 69 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 a1 10 5f}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> eval<double>(BinaryArithmeticKind:byte kind, Vector256<double> x, Vector256<double> y)
; ba~eval__g0o_256x64f_256x64f[217] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 24 40 80 fe 02 75 3c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 5c c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 58 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 60 8b 96 c6 f7 7f 00 00 e8 d9 50 19 5f 48 8b f8 40 88 77 08 48 b9 38 b8 36 c6 f7 7f 00 00 e8 03 d4 13 5f 48 8b c8 e8 5b f8 d3 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 aa 50 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 93 e9 2b 5f 48 8b e8 8b ce e8 f9 98 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 03 25 68 ff 48 8b d0 48 8b cb e8 b8 c3 69 ff 48 8b cb e8 b8 9c 10 5f cc}
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
0058h mov rcx,7ff7c6968b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 96 c6 f7 7f 00 00}
0062h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 50 19 5f}
0067h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
006ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006eh mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0078h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 d4 13 5f}
007dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0080h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f8 d3 ff}
0085h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0087h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 50 19 5f}
0096h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0099h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
009eh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00a8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 e9 2b 5f}
00adh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00b2h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 98 6a ff}
00b7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00bah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00bdh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00c0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 25 68 ff}
00c5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cbh call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 c3 69 ff}
00d0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00d3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 9c 10 5f}
00d8h int 3                                   ; INT3 || CC || encoded[1]{cc}
