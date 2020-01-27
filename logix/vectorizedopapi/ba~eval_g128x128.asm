------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector128<byte> x, Vector128<byte> y)
; ba~eval__g0o_128x8u_128x8u[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f8 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fc c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 6f 76 b6 5e 48 8b f8 40 88 77 08 48 b9 58 77 34 c6 f7 7f 00 00 e8 99 f9 b0 5e 48 8b c8 e8 41 cb 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 40 76 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 29 0f c9 5e 48 8b e8 8b ce e8 7f 26 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 99 4a 03 ff 48 8b d0 48 8b cb e8 f6 a3 05 ff 48 8b cb e8 4e c2 ad 5e cc}
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
0014h je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 21}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0052h                         ; JNE rel8 || 75 cb || encoded[2]{75 36}
001ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0021h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0026h vpsubb xmm0,xmm0,xmm1                   ; VPSUBB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F8 /r || encoded[4]{c5 f9 f8 c1}
002ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0032h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0033h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpaddb xmm0,xmm0,xmm1                   ; VPADDB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FC /r || encoded[4]{c5 f9 fc c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 76 b6 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f9 b0 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 cb 75 ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 76 b6 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 0f c9 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 26 05 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 4a 03 ff}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 a3 05 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e c2 ad 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector128<sbyte> x, Vector128<sbyte> y)
; ba~eval__g0o_128x8i_128x8i[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f8 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fc c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 6f 75 b6 5e 48 8b f8 40 88 77 08 48 b9 68 6f 34 c6 f7 7f 00 00 e8 99 f8 b0 5e 48 8b c8 e8 41 ca 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 40 75 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 29 0e c9 5e 48 8b e8 8b ce e8 7f 25 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 99 49 03 ff 48 8b d0 48 8b cb e8 f6 a2 05 ff 48 8b cb e8 4e c1 ad 5e cc}
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
0014h je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 21}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0052h                         ; JNE rel8 || 75 cb || encoded[2]{75 36}
001ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0021h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0026h vpsubb xmm0,xmm0,xmm1                   ; VPSUBB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F8 /r || encoded[4]{c5 f9 f8 c1}
002ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0032h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0033h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpaddb xmm0,xmm0,xmm1                   ; VPADDB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FC /r || encoded[4]{c5 f9 fc c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 75 b6 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f8 b0 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ca 75 ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 75 b6 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 0e c9 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 25 05 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 49 03 ff}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 a2 05 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e c1 ad 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector128<ushort> x, Vector128<ushort> y)
; ba~eval__g0o_128x16u_128x16u[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f9 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fd c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 6f 74 b6 5e 48 8b f8 40 88 77 08 48 b9 38 87 34 c6 f7 7f 00 00 e8 99 f7 b0 5e 48 8b c8 e8 41 c9 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 40 74 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 29 0d c9 5e 48 8b e8 8b ce e8 7f 24 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 99 48 03 ff 48 8b d0 48 8b cb e8 f6 a1 05 ff 48 8b cb e8 4e c0 ad 5e cc}
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
0014h je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 21}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0052h                         ; JNE rel8 || 75 cb || encoded[2]{75 36}
001ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0021h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0026h vpsubw xmm0,xmm0,xmm1                   ; VPSUBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F9 /r || encoded[4]{c5 f9 f9 c1}
002ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0032h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0033h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpaddw xmm0,xmm0,xmm1                   ; VPADDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FD /r || encoded[4]{c5 f9 fd c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 74 b6 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6348738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f7 b0 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 c9 75 ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 74 b6 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 0d c9 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 24 05 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 48 03 ff}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 a1 05 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e c0 ad 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(BinaryArithmeticKind:byte kind, Vector128<short> x, Vector128<short> y)
; ba~eval__g0o_128x16i_128x16i[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f9 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fd c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 6f 73 b6 5e 48 8b f8 40 88 77 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 99 f6 b0 5e 48 8b c8 e8 41 c8 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 40 73 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 29 0c c9 5e 48 8b e8 8b ce e8 7f 23 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 99 47 03 ff 48 8b d0 48 8b cb e8 f6 a0 05 ff 48 8b cb e8 4e bf ad 5e cc}
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
0014h je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 21}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0052h                         ; JNE rel8 || 75 cb || encoded[2]{75 36}
001ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0021h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0026h vpsubw xmm0,xmm0,xmm1                   ; VPSUBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F9 /r || encoded[4]{c5 f9 f9 c1}
002ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0032h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0033h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpaddw xmm0,xmm0,xmm1                   ; VPADDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FD /r || encoded[4]{c5 f9 fd c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 73 b6 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f6 b0 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 c8 75 ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 73 b6 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 0c c9 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 23 05 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 47 03 ff}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 a0 05 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e bf ad 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector128<uint> x, Vector128<uint> y)
; ba~eval__g0o_128x32u_128x32u[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fa c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fe c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 6f 72 b6 5e 48 8b f8 40 88 77 08 48 b9 d8 96 34 c6 f7 7f 00 00 e8 99 f5 b0 5e 48 8b c8 e8 41 c7 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 40 72 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 29 0b c9 5e 48 8b e8 8b ce e8 7f 22 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 99 46 03 ff 48 8b d0 48 8b cb e8 f6 9f 05 ff 48 8b cb e8 4e be ad 5e cc}
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
0014h je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 21}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0052h                         ; JNE rel8 || 75 cb || encoded[2]{75 36}
001ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0021h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0026h vpsubd xmm0,xmm0,xmm1                   ; VPSUBD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FA /r || encoded[4]{c5 f9 fa c1}
002ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0032h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0033h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpaddd xmm0,xmm0,xmm1                   ; VPADDD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FE /r || encoded[4]{c5 f9 fe c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 72 b6 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c63496d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f5 b0 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 c7 75 ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 72 b6 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 0b c9 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 22 05 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 46 03 ff}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 9f 05 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e be ad 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(BinaryArithmeticKind:byte kind, Vector128<int> x, Vector128<int> y)
; ba~eval__g0o_128x32i_128x32i[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fa c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fe c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 6f 71 b6 5e 48 8b f8 40 88 77 08 48 b9 08 8f 34 c6 f7 7f 00 00 e8 99 f4 b0 5e 48 8b c8 e8 41 c6 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 40 71 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 29 0a c9 5e 48 8b e8 8b ce e8 7f 21 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 99 45 03 ff 48 8b d0 48 8b cb e8 f6 9e 05 ff 48 8b cb e8 4e bd ad 5e cc}
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
0014h je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 21}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0052h                         ; JNE rel8 || 75 cb || encoded[2]{75 36}
001ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0021h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0026h vpsubd xmm0,xmm0,xmm1                   ; VPSUBD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FA /r || encoded[4]{c5 f9 fa c1}
002ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0032h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0033h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpaddd xmm0,xmm0,xmm1                   ; VPADDD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FE /r || encoded[4]{c5 f9 fe c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 71 b6 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f4 b0 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 c6 75 ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 71 b6 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 0a c9 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 21 05 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 45 03 ff}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 9e 05 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e bd ad 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector128<ulong> x, Vector128<ulong> y)
; ba~eval__g0o_128x64u_128x64u[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fb c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 d4 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 6f 70 b6 5e 48 8b f8 40 88 77 08 48 b9 78 a6 34 c6 f7 7f 00 00 e8 99 f3 b0 5e 48 8b c8 e8 41 c5 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 40 70 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 29 09 c9 5e 48 8b e8 8b ce e8 7f 20 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 99 44 03 ff 48 8b d0 48 8b cb e8 f6 9d 05 ff 48 8b cb e8 4e bc ad 5e cc}
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
0014h je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 21}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0052h                         ; JNE rel8 || 75 cb || encoded[2]{75 36}
001ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0021h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0026h vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
002ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0032h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0033h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 70 b6 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c634a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f3 b0 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 c5 75 ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 70 b6 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 09 c9 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 20 05 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 44 03 ff}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 9d 05 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e bc ad 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(BinaryArithmeticKind:byte kind, Vector128<long> x, Vector128<long> y)
; ba~eval__g0o_128x64i_128x64i[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fb c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 d4 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 6f 6b b6 5e 48 8b f8 40 88 77 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 99 ee b0 5e 48 8b c8 e8 41 c0 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 40 6b b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 29 04 c9 5e 48 8b e8 8b ce e8 7f 1b 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 99 3f 03 ff 48 8b d0 48 8b cb e8 f6 98 05 ff 48 8b cb e8 4e b7 ad 5e cc}
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
0014h je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 21}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0052h                         ; JNE rel8 || 75 cb || encoded[2]{75 36}
001ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0021h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0026h vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
002ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0032h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0033h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 6b b6 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 ee b0 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 c0 75 ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 6b b6 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 04 c9 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 1b 05 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 3f 03 ff}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 98 05 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e b7 ad 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> eval<float>(BinaryArithmeticKind:byte kind, Vector128<float> x, Vector128<float> y)
; ba~eval__g0o_128x32f_128x32f[206] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 31 c4 c1 79 10 00 c4 c1 79 10 09 c5 f8 5c c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f8 58 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 74 6a b6 5e 48 8b f8 40 88 77 08 48 b9 58 af 34 c6 f7 7f 00 00 e8 9e ed b0 5e 48 8b c8 e8 46 bf 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 45 6a b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 2e 03 c9 5e 48 8b e8 8b ce e8 84 1a 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 9e 3e 03 ff 48 8b d0 48 8b cb e8 fb 97 05 ff 48 8b cb e8 53 b6 ad 5e cc}
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
004dh mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
0057h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 6a b6 5e}
005ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005fh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0063h mov rcx,7ff7c634af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 34 c6 f7 7f 00 00}
006dh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ed b0 5e}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 bf 75 ff}
007ah mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007ch mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0086h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 6a b6 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0093h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
009dh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 03 c9 5e}
00a2h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00a5h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00a7h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 1a 05 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 3e 03 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c0h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 97 05 ff}
00c5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 b6 ad 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> eval<double>(BinaryArithmeticKind:byte kind, Vector128<double> x, Vector128<double> y)
; ba~eval__g0o_128x64f_128x64f[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 5c c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 58 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 e3 a0 c6 f7 7f 00 00 e8 7f 69 b6 5e 48 8b f8 40 88 77 08 48 b9 38 b8 34 c6 f7 7f 00 00 e8 a9 ec b0 5e 48 8b c8 e8 51 be 75 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 50 69 b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 39 02 c9 5e 48 8b e8 8b ce e8 8f 19 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 a9 3d 03 ff 48 8b d0 48 8b cb e8 06 97 05 ff 48 8b cb e8 5e b5 ad 5e cc}
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
0014h je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 21}
0016h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
001ah jne short 0052h                         ; JNE rel8 || 75 cb || encoded[2]{75 36}
001ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0021h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0026h vsubpd xmm0,xmm0,xmm1                   ; VSUBPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 5C /r || encoded[4]{c5 f9 5c c1}
002ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0032h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0033h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vaddpd xmm0,xmm0,xmm1                   ; VADDPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 58 /r || encoded[4]{c5 f9 58 c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h mov rcx,7ff7c6a0e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 a0 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 69 b6 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c634b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 ec b0 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 be 75 ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 69 b6 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 02 c9 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 19 05 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 3d 03 ff}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 97 05 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e b5 ad 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
