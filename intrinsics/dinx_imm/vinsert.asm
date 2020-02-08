------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x8i,v256x8i,8u)-imm5
; vinsert_(v128x8i,v256x8i,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 7a dd 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c82226d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a dd 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x8i,v256x8i,8u)-imm9
; vinsert_(v128x8i,v256x8i,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 fa dc 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c82226d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa dc 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x8i,v256x8i,8u)-imm13
; vinsert_(v128x8i,v256x8i,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 7a dc 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c82226d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a dc 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x8u,v256x8u,8u)-imm5
; vinsert_(v128x8u,v256x8u,8u)-imm5[278] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 02 dc 82 ff 48 8b c6 48 83 c4 20 5e c3 24 19 05 02 00 05 32 01 60 40 00 00 00 6e d0 c5 fd 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 34 bd 3d 99 01 00 00 90 7e a0 c8 f7 7f 00 00 01 00 00 00 b0 4a 00 00 cf 4a 00 00 d0 4a 00 00 b8 71 9f c8 f7 7f 00 00 48 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 45 bd 3d 99 01 00 00 00 7f a0 c8 f7 7f 00 00 01 00 00 00 b0 4a 00 00 0a 4b 00 00 14 4b 00 00 e8 51 9f c8 f7 7f 00 00 f8 05 00 00 00 00 00 00 60 4b 9f c8 f7 7f 00 00 f0 4b 9f c8 f7 7f 00 00 50 c5 f8 77 c5 fd 10 02 c5 f5 73 d0 09 33 c0 89 44 24 04 48 8d 44 24 04 c4 e2 7d 78 54 24 04 c5 f5 db ca b8 ff 00 00 00 c5 f9 6e d0 c5 fd f3 c2 33 c0 89 04 24 48 8d 04 24 c4 e2 7d 78 14 24 c5 fd db c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c82226d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 dc 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
001fh and al,19h                              ; AND AL, imm8 || 24 ib || encoded[2]{24 19}
0021h add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0026h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
0029h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
002bh add [rsi-30h],ch                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 6e d0}
002eh (bad)                                   ; <invalid> || <invalid> || encoded[4]{c5 fd 00 00}
0032h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0034h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
003ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
003ch add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h xor byte ptr [rdi*4+1993dh],0           ; XOR r/m8, imm8 || 80 /6 ib || encoded[8]{80 34 bd 3d 99 01 00 00}
0048h nop                                     ; NOP || o32 90 || encoded[1]{90}
0049h jle short ffffffffffffffebh             ; JLE rel8 || 7E cb || encoded[2]{7e a0}
004bh enter 7ff7h,0                           ; ENTER imm16, imm8 || C8 iw ib || encoded[4]{c8 f7 7f 00}
004fh add [rcx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 01}
0051h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0053h add [rax-30ffffb6h],dh                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b0 4a 00 00 cf}
0059h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{4a 00 00}
005ch ror byte ptr [rdx],1                    ; ROR r/m8, 1 || D0 /1 || encoded[3]{d0 4a 00}
005fh add [rax-837608fh],bh                   ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b8 71 9f c8 f7}
0065h jg short 0067h                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
0067h add [rax+10h],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 10}
006ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
006ch add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
006eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0070h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0072h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0074h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0076h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0078h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ch add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0080h adc [rbp-43h],al                        ; ADC r/m8, r8 || 10 /r || encoded[3]{10 45 bd}
0083h cmp eax,199h                            ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d 99 01 00 00}
0088h add [rdi-60h],bh                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 7f a0}
008bh enter 7ff7h,0                           ; ENTER imm16, imm8 || C8 iw ib || encoded[4]{c8 f7 7f 00}
008fh add [rcx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 01}
0091h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0093h add [rax+0a00004ah],dh                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b0 4a 00 00 0a}
0099h add [r8],al                             ; ADD r/m8, r8 || 00 /r || encoded[3]{4b 00 00}
009ch adc al,4bh                              ; ADC AL, imm8 || 14 ib || encoded[2]{14 4b}
009eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00a0h call 7ff7c067eab6h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 9f c8 f7}
00a5h jg short 00a7h                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
00a7h add al,bh                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 f8}
00a9h add eax,0                               ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 00 00 00}
00aeh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00b0h (bad)                                   ; <invalid> || <invalid> || encoded[2]{60 4b}
00b2h lahf                                    ; LAHF || 9F || encoded[1]{9f}
00b3h enter 7ff7h,0                           ; ENTER imm16, imm8 || C8 iw ib || encoded[4]{c8 f7 7f 00}
00b7h add al,dh                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 f0}
00b9h lahf                                    ; LAHF || 9F || encoded[2]{4b 9f}
00bbh enter 7ff7h,0                           ; ENTER imm16, imm8 || C8 iw ib || encoded[4]{c8 f7 7f 00}
00bfh add [rax-3bh],dl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 50 c5}
00c2h clc                                     ; CLC || F8 || encoded[1]{f8}
00c3h ja short 008ah                          ; JA rel8 || 77 cb || encoded[2]{77 c5}
00c5h std                                     ; STD || FD || encoded[1]{fd}
00c6h adc [rdx],al                            ; ADC r/m8, r8 || 10 /r || encoded[2]{10 02}
00c8h vpsrlq ymm1,ymm0,9                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 09}
00cdh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00cfh mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
00d3h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
00d8h vpbroadcastb ymm2,byte ptr [rsp+4]      ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 54 24 04}
00dfh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
00e3h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
00e8h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
00ech vpsllq ymm0,ymm0,xmm2                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c2}
00f0h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f2h mov [rsp],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 04 24}
00f5h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
00f9h vpbroadcastb ymm2,byte ptr [rsp]        ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[6]{c4 e2 7d 78 14 24}
00ffh vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0103h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0107h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
010bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
010eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0111h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0115h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x8u,v256x8u,8u)-imm9
; vinsert_(v128x8u,v256x8u,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 82 db 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c82226d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 db 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x8u,v256x8u,8u)-imm13
; vinsert_(v128x8u,v256x8u,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 02 db 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c82226d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 db 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x16i,v256x16i,8u)-imm5
; vinsert_(v128x16i,v256x16i,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 8a da 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c82226e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a da 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x16i,v256x16i,8u)-imm9
; vinsert_(v128x16i,v256x16i,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 0a da 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c82226e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a da 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x16i,v256x16i,8u)-imm13
; vinsert_(v128x16i,v256x16i,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 8a d9 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c82226e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d9 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x16u,v256x16u,8u)-imm5
; vinsert_(v128x16u,v256x16u,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 12 d9 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c82226e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 d9 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x16u,v256x16u,8u)-imm9
; vinsert_(v128x16u,v256x16u,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 92 d8 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c82226e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 d8 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x16u,v256x16u,8u)-imm13
; vinsert_(v128x16u,v256x16u,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 12 d8 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c82226e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 d8 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x32i,v256x32i,8u)-imm5
; vinsert_(v128x32i,v256x32i,8u)-imm5[45] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 9a d7 82 ff 48 8b c6 48 83 c4 20 5e c3 11 19 05 02 00 05 32 01 60 40 00 00 00 cc}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c82226f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a d7 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
001fh adc [rcx],ebx                           ; ADC r/m32, r32 || o32 11 /r || encoded[2]{11 19}
0021h add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0026h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
0029h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
002bh add ah,cl                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 cc}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x32i,v256x32i,8u)-imm9
; vinsert_(v128x32i,v256x32i,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 1a d7 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c82226f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a d7 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x32i,v256x32i,8u)-imm13
; vinsert_(v128x32i,v256x32i,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 9a d6 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c82226f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a d6 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x32u,v256x32u,8u)-imm5
; vinsert_(v128x32u,v256x32u,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 22 d6 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c82226f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 d6 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x32u,v256x32u,8u)-imm9
; vinsert_(v128x32u,v256x32u,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 a2 d5 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c82226f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 d5 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x32u,v256x32u,8u)-imm13
; vinsert_(v128x32u,v256x32u,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 22 d5 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c82226f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 d5 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x64i,v256x64i,8u)-imm5
; vinsert_(v128x64i,v256x64i,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 aa d4 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c8222700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d4 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x64i,v256x64i,8u)-imm9
; vinsert_(v128x64i,v256x64i,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 2a d4 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c8222700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a d4 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x64i,v256x64i,8u)-imm13
; vinsert_(v128x64i,v256x64i,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 aa d3 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c8222700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d3 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x64u,v256x64u,8u)-imm5
; vinsert_(v128x64u,v256x64u,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 32 d3 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c8222708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 d3 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x64u,v256x64u,8u)-imm9
; vinsert_(v128x64u,v256x64u,8u)-imm9[45] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 b2 d2 82 ff 48 8b c6 48 83 c4 20 5e c3 f8 19 05 02 00 05 32 01 60 40 00 00 00 cc}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c8222708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 d2 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
001fh clc                                     ; CLC || F8 || encoded[1]{f8}
0020h sbb [rip+32050002h],eax                 ; SBB r/m32, r32 || o32 19 /r || encoded[6]{19 05 02 00 05 32}
0026h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
0029h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
002bh add ah,cl                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 cc}
------------------------------------------------------------------------------------------------------------------------
; vinsert_(v128x64u,v256x64u,8u)-imm13
; vinsert_(v128x64u,v256x64u,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 32 d2 82 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c8222708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 d2 82 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
