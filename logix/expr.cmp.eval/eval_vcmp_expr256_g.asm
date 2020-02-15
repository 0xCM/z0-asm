------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr)
; eval_vcmp_expr256_g[8u]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb a8 14 63 c7 f7 7f 00 00 39 09 ff 15 22 53 f4 fe 8b f8 48 8b ce 49 bb b0 14 63 c7 f7 7f 00 00 39 09 ff 15 13 53 f4 fe 48 8b c8 e8 93 c5 ff ff c5 fd 10 70 08 48 8b ce 49 bb b8 14 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 f3 52 f4 fe 48 8b c8 e8 6b c5 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 66 91 fc ff 48 b9 f8 62 cd c8 f7 7f 00 00 e8 a7 aa b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76314a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 14 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bacdeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 53 f4 fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c76314b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 14 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10bacedh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 13 53 f4 fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86e8738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c5 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c76314b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 14 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-10bad0dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f3 52 f4 fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86e8738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b c5 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86b5360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 91 fc ff}
00aah mov rcx,7ff7c8cd62f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 62 cd c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 aa b7 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr)
; eval_vcmp_expr256_g[8i]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb c0 14 63 c7 f7 7f 00 00 39 09 ff 15 2a 52 f4 fe 8b f8 48 8b ce 49 bb c8 14 63 c7 f7 7f 00 00 39 09 ff 15 1b 52 f4 fe 48 8b c8 e8 b3 c4 ff ff c5 fd 10 70 08 48 8b ce 49 bb d0 14 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 fb 51 f4 fe 48 8b c8 e8 8b c4 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 e6 91 fc ff 48 b9 c8 67 cd c8 f7 7f 00 00 e8 97 a9 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76314c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 14 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10badd6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a 52 f4 fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c76314c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 14 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10bade5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1b 52 f4 fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86e8768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 c4 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c76314d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 14 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-10bae05h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fb 51 f4 fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86e8768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b c4 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86b54f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 91 fc ff}
00aah mov rcx,7ff7c8cd67c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 67 cd c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 a9 b7 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr)
; eval_vcmp_expr256_g[16u]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb d8 14 63 c7 f7 7f 00 00 39 09 ff 15 32 51 f4 fe 8b f8 48 8b ce 49 bb e0 14 63 c7 f7 7f 00 00 39 09 ff 15 23 51 f4 fe 48 8b c8 e8 c3 c3 ff ff c5 fd 10 70 08 48 8b ce 49 bb e8 14 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 03 51 f4 fe 48 8b c8 e8 9b c3 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 26 92 fc ff 48 b9 38 6c cd c8 f7 7f 00 00 e8 87 a8 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76314d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 14 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10baeceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 51 f4 fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c76314e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 14 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10baeddh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 23 51 f4 fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86e8788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 c3 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c76314e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 14 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-10baefdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 03 51 f4 fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86e8788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b c3 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86b5640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 92 fc ff}
00aah mov rcx,7ff7c8cd6c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6c cd c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 a8 b7 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr)
; eval_vcmp_expr256_g[16i]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb f0 14 63 c7 f7 7f 00 00 39 09 ff 15 3a 50 f4 fe 8b f8 48 8b ce 49 bb f8 14 63 c7 f7 7f 00 00 39 09 ff 15 2b 50 f4 fe 48 8b c8 e8 d3 c2 ff ff c5 fd 10 70 08 48 8b ce 49 bb 00 15 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 0b 50 f4 fe 48 8b c8 e8 ab c2 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 a6 92 fc ff 48 b9 a8 70 cd c8 f7 7f 00 00 e8 77 a7 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76314f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 14 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bafc6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a 50 f4 fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c76314f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 14 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10bafd5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2b 50 f4 fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86e87a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 c2 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7631500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 15 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-10baff5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0b 50 f4 fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86e87a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab c2 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86b57d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 92 fc ff}
00aah mov rcx,7ff7c8cd70a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 70 cd c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a7 b7 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr)
; eval_vcmp_expr256_g[32u]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 08 15 63 c7 f7 7f 00 00 39 09 ff 15 42 4f f4 fe 8b f8 48 8b ce 49 bb 10 15 63 c7 f7 7f 00 00 39 09 ff 15 33 4f f4 fe 48 8b c8 e8 e3 c1 ff ff c5 fd 10 70 08 48 8b ce 49 bb 18 15 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 13 4f f4 fe 48 8b c8 e8 bb c1 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 e6 92 fc ff 48 b9 18 75 cd c8 f7 7f 00 00 e8 67 a6 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 15 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb0beh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 4f f4 fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7631510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 15 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10bb0cdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 33 4f f4 fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86e87c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 c1 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7631518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 15 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-10bb0edh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 13 4f f4 fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86e87c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb c1 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86b5920h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 92 fc ff}
00aah mov rcx,7ff7c8cd7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 cd c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 a6 b7 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr)
; eval_vcmp_expr256_g[32i]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 20 15 63 c7 f7 7f 00 00 39 09 ff 15 4a 4e f4 fe 8b f8 48 8b ce 49 bb 28 15 63 c7 f7 7f 00 00 39 09 ff 15 3b 4e f4 fe 48 8b c8 e8 f3 c0 ff ff c5 fd 10 70 08 48 8b ce 49 bb 30 15 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 1b 4e f4 fe 48 8b c8 e8 cb c0 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 66 93 fc ff 48 b9 88 79 cd c8 f7 7f 00 00 e8 57 a5 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 15 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb1b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 4e f4 fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7631528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 15 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10bb1c5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3b 4e f4 fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86e87e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 c0 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7631530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 15 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-10bb1e5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1b 4e f4 fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86e87e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb c0 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86b5ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 93 fc ff}
00aah mov rcx,7ff7c8cd7988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 79 cd c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 a5 b7 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr)
; eval_vcmp_expr256_g[64i]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 38 15 63 c7 f7 7f 00 00 39 09 ff 15 52 4d f4 fe 8b f8 48 8b ce 49 bb 40 15 63 c7 f7 7f 00 00 39 09 ff 15 43 4d f4 fe 48 8b c8 e8 93 c0 ff ff c5 fd 10 70 08 48 8b ce 49 bb 48 15 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 23 4d f4 fe 48 8b c8 e8 6b c0 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 46 99 fc ff 48 b9 f8 7d cd c8 f7 7f 00 00 e8 47 a4 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 15 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb2aeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 4d f4 fe}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7631540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 15 63 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-10bb2bdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 43 4d f4 fe}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c86e8898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c0 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7631548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 15 63 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-10bb2ddh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 23 4d f4 fe}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c86e8898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b c0 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c86b61a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 99 fc ff}
00aah mov rcx,7ff7c8cd7df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7d cd c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a4 b7 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
