------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector128<byte> x, Vector128<byte> y)
; ba~eval__g0o_128x8u_128x8u[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f8 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fc c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 58 f1 94 c6 f7 7f 00 00 e8 cf d9 b2 5e 48 8b f8 40 88 77 08 48 b9 58 77 34 c6 f7 7f 00 00 e8 f9 5c ad 5e 48 8b c8 e8 51 98 3d ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 a0 d9 b2 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 89 72 c5 5e 48 8b e8 8b ce e8 df 92 01 ff 4c 8b c0 48 8b cd 48 8b d7 e8 f9 ad ff fe 48 8b d0 48 8b cb e8 7e 09 02 ff 48 8b cb e8 ae 25 aa 5e cc}
; TermCode = INTRx2
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
0052h mov rcx,7ff7c694f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 94 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf d9 b2 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 5c ad 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 98 3d ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 d9 b2 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 72 c5 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 92 01 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ad ff fe}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 09 02 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 25 aa 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector128<sbyte> x, Vector128<sbyte> y)
; ba~eval__g0o_128x8i_128x8i[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f8 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fc c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 58 f1 94 c6 f7 7f 00 00 e8 cf d8 b2 5e 48 8b f8 40 88 77 08 48 b9 68 6f 34 c6 f7 7f 00 00 e8 f9 5b ad 5e 48 8b c8 e8 51 97 3d ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 a0 d8 b2 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 89 71 c5 5e 48 8b e8 8b ce e8 df 91 01 ff 4c 8b c0 48 8b cd 48 8b d7 e8 f9 ac ff fe 48 8b d0 48 8b cb e8 7e 08 02 ff 48 8b cb e8 ae 24 aa 5e cc}
; TermCode = INTRx2
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
0052h mov rcx,7ff7c694f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 94 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf d8 b2 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 5b ad 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 97 3d ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 d8 b2 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 71 c5 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 91 01 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ac ff fe}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 08 02 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 24 aa 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector128<ushort> x, Vector128<ushort> y)
; ba~eval__g0o_128x16u_128x16u[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f9 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fd c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 58 f1 94 c6 f7 7f 00 00 e8 cf d7 b2 5e 48 8b f8 40 88 77 08 48 b9 38 87 34 c6 f7 7f 00 00 e8 f9 5a ad 5e 48 8b c8 e8 51 96 3d ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 a0 d7 b2 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 89 70 c5 5e 48 8b e8 8b ce e8 df 90 01 ff 4c 8b c0 48 8b cd 48 8b d7 e8 f9 ab ff fe 48 8b d0 48 8b cb e8 7e 07 02 ff 48 8b cb e8 ae 23 aa 5e cc}
; TermCode = INTRx2
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
0052h mov rcx,7ff7c694f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 94 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf d7 b2 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6348738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 5a ad 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 96 3d ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 d7 b2 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 70 c5 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 90 01 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ab ff fe}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 07 02 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 23 aa 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(BinaryArithmeticKind:byte kind, Vector128<short> x, Vector128<short> y)
; ba~eval__g0o_128x16i_128x16i[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f9 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fd c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 58 f1 94 c6 f7 7f 00 00 e8 cf d6 b2 5e 48 8b f8 40 88 77 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 f9 59 ad 5e 48 8b c8 e8 51 95 3d ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 a0 d6 b2 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 89 6f c5 5e 48 8b e8 8b ce e8 df 8f 01 ff 4c 8b c0 48 8b cd 48 8b d7 e8 f9 aa ff fe 48 8b d0 48 8b cb e8 7e 06 02 ff 48 8b cb e8 ae 22 aa 5e cc}
; TermCode = INTRx2
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
0052h mov rcx,7ff7c694f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 94 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf d6 b2 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 59 ad 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 95 3d ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 d6 b2 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 6f c5 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 8f 01 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 aa ff fe}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 06 02 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 22 aa 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector128<uint> x, Vector128<uint> y)
; ba~eval__g0o_128x32u_128x32u[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fa c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fe c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 58 f1 94 c6 f7 7f 00 00 e8 cf d5 b2 5e 48 8b f8 40 88 77 08 48 b9 d8 96 34 c6 f7 7f 00 00 e8 f9 58 ad 5e 48 8b c8 e8 51 94 3d ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 a0 d5 b2 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 89 6e c5 5e 48 8b e8 8b ce e8 df 8e 01 ff 4c 8b c0 48 8b cd 48 8b d7 e8 f9 a9 ff fe 48 8b d0 48 8b cb e8 7e 05 02 ff 48 8b cb e8 ae 21 aa 5e cc}
; TermCode = INTRx2
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
0052h mov rcx,7ff7c694f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 94 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf d5 b2 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c63496d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 58 ad 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 94 3d ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 d5 b2 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 6e c5 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 8e 01 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a9 ff fe}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 05 02 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 21 aa 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(BinaryArithmeticKind:byte kind, Vector128<int> x, Vector128<int> y)
; ba~eval__g0o_128x32i_128x32i[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fa c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fe c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 58 f1 94 c6 f7 7f 00 00 e8 cf d4 b2 5e 48 8b f8 40 88 77 08 48 b9 08 8f 34 c6 f7 7f 00 00 e8 f9 57 ad 5e 48 8b c8 e8 51 93 3d ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 a0 d4 b2 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 89 6d c5 5e 48 8b e8 8b ce e8 df 8d 01 ff 4c 8b c0 48 8b cd 48 8b d7 e8 f9 a8 ff fe 48 8b d0 48 8b cb e8 7e 04 02 ff 48 8b cb e8 ae 20 aa 5e cc}
; TermCode = INTRx2
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
0052h mov rcx,7ff7c694f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 94 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf d4 b2 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 57 ad 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 93 3d ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 d4 b2 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 6d c5 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 8d 01 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a8 ff fe}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 04 02 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 20 aa 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector128<ulong> x, Vector128<ulong> y)
; ba~eval__g0o_128x64u_128x64u[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fb c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 d4 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 58 f1 94 c6 f7 7f 00 00 e8 cf d3 b2 5e 48 8b f8 40 88 77 08 48 b9 78 a6 34 c6 f7 7f 00 00 e8 f9 56 ad 5e 48 8b c8 e8 51 92 3d ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 a0 d3 b2 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 89 6c c5 5e 48 8b e8 8b ce e8 df 8c 01 ff 4c 8b c0 48 8b cd 48 8b d7 e8 f9 a7 ff fe 48 8b d0 48 8b cb e8 7e 03 02 ff 48 8b cb e8 ae 1f aa 5e cc}
; TermCode = INTRx2
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
0052h mov rcx,7ff7c694f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 94 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf d3 b2 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c634a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 56 ad 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 92 3d ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 d3 b2 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 6c c5 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 8c 01 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a7 ff fe}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 03 02 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 1f aa 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(BinaryArithmeticKind:byte kind, Vector128<long> x, Vector128<long> y)
; ba~eval__g0o_128x64i_128x64i[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fb c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 d4 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 58 f1 94 c6 f7 7f 00 00 e8 cf d2 b2 5e 48 8b f8 40 88 77 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 f9 55 ad 5e 48 8b c8 e8 51 91 3d ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 a0 d2 b2 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 89 6b c5 5e 48 8b e8 8b ce e8 df 8b 01 ff 4c 8b c0 48 8b cd 48 8b d7 e8 f9 a6 ff fe 48 8b d0 48 8b cb e8 7e 02 02 ff 48 8b cb e8 ae 1e aa 5e cc}
; TermCode = INTRx2
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
0052h mov rcx,7ff7c694f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 94 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf d2 b2 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 55 ad 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 91 3d ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 d2 b2 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 6b c5 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 8b 01 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a6 ff fe}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 02 02 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 1e aa 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> eval<float>(BinaryArithmeticKind:byte kind, Vector128<float> x, Vector128<float> y)
; ba~eval__g0o_128x32f_128x32f[206] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 31 c4 c1 79 10 00 c4 c1 79 10 09 c5 f8 5c c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f8 58 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 58 f1 94 c6 f7 7f 00 00 e8 d4 d1 b2 5e 48 8b f8 40 88 77 08 48 b9 58 af 34 c6 f7 7f 00 00 e8 fe 54 ad 5e 48 8b c8 e8 56 90 3d ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 a5 d1 b2 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 8e 6a c5 5e 48 8b e8 8b ce e8 e4 8a 01 ff 4c 8b c0 48 8b cd 48 8b d7 e8 fe a5 ff fe 48 8b d0 48 8b cb e8 83 01 02 ff 48 8b cb e8 b3 1d aa 5e cc}
; TermCode = INTRx2
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
004dh mov rcx,7ff7c694f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 94 c6 f7 7f 00 00}
0057h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 d1 b2 5e}
005ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005fh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0063h mov rcx,7ff7c634af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 34 c6 f7 7f 00 00}
006dh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 54 ad 5e}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 90 3d ff}
007ah mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007ch mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
0086h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 d1 b2 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0093h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
009dh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 6a c5 5e}
00a2h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00a5h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00a7h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 8a 01 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe a5 ff fe}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c0h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 01 02 ff}
00c5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 1d aa 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> eval<double>(BinaryArithmeticKind:byte kind, Vector128<double> x, Vector128<double> y)
; ba~eval__g0o_128x64f_128x64f[211] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 21 40 80 fe 02 75 36 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 5c c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 58 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 58 f1 94 c6 f7 7f 00 00 e8 df d0 b2 5e 48 8b f8 40 88 77 08 48 b9 38 b8 34 c6 f7 7f 00 00 e8 09 54 ad 5e 48 8b c8 e8 61 8f 3d ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 b0 d0 b2 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 99 69 c5 5e 48 8b e8 8b ce e8 ef 89 01 ff 4c 8b c0 48 8b cd 48 8b d7 e8 09 a5 ff fe 48 8b d0 48 8b cb e8 8e 00 02 ff 48 8b cb e8 be 1c aa 5e cc}
; TermCode = INTRx2
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
0052h mov rcx,7ff7c694f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 94 c6 f7 7f 00 00}
005ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df d0 b2 5e}
0061h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0064h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0068h mov rcx,7ff7c634b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 34 c6 f7 7f 00 00}
0072h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 54 ad 5e}
0077h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
007ah call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 8f 3d ff}
007fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0081h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
008bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 d0 b2 5e}
0090h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0093h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0098h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00a2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 69 c5 5e}
00a7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00aah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00ach call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 89 01 ff}
00b1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00b7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a5 ff fe}
00bfh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00c5h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 00 02 ff}
00cah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00cdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 1c aa 5e}
00d2h int 3                                   ; INT3 || CC || encoded[1]{cc}
