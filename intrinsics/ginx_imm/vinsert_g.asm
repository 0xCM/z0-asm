------------------------------------------------------------------------------------------------------------------------
; vinsert_g[8u](v128x8u,v256x8u,8u)-imm5
; vinsert_g[8u](v128x8u,v256x8u,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 f2 90 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c848ec68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 90 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[8u](v128x8u,v256x8u,8u)-imm9
; vinsert_g[8u](v128x8u,v256x8u,8u)-imm9[255] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 72 90 a9 ff 48 8b c6 48 83 c4 20 5e c3 05 19 05 02 00 05 32 01 60 40 00 00 00 6e d8 c5 f1 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 a0 7d ac 3d 99 01 00 00 e8 b8 a0 c8 f7 7f 00 00 01 00 00 00 d0 5b 00 00 ef 5b 00 00 f0 5b 00 00 b8 c9 9f c8 f7 7f 00 00 28 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 70 80 ac 3d 99 01 00 00 00 32 a0 c8 f7 7f 00 00 01 00 00 00 e0 5b 00 00 1f 5c 00 00 2c 5c 00 00 b8 c9 9f c8 f7 7f 00 00 f0 06 00 00 00 00 00 00 08 5f 9f c8 f7 7f 00 00 78 5c 9f c8 f7 7f 00 00 f8 5c 9f c8 f7 7f 00 00 c5 f8 77 c5 f9 10 02 c5 f8 28 c8 c5 e9 73 f1 09 c5 f1 73 f9 08 b8 37 00 00 00 c5 f9 6e d8 c5 f1 d3 cb c5 e9 eb c9 c5 f9 73 d8 08 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c848ec68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 90 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
001fh add eax,20519h                          ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 19 05 02 00}
0024h add eax,40600132h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 32 01 60 40}
0029h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
002bh add [rsi-28h],ch                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 6e d8}
002eh (bad)                                   ; <invalid> || <invalid> || encoded[4]{c5 f1 00 00}
0032h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0034h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
003ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
003ch add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h mov al,[0e8000001993dac7dh]             ; MOV AL, moffs8 || A0 mo || encoded[9]{a0 7d ac 3d 99 01 00 00 e8}
0049h mov eax,7ff7c8a0h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 a0 c8 f7 7f}
004eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0050h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
0052h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0054h rcr byte ptr [rbx],1                    ; RCR r/m8, 1 || D0 /3 || encoded[3]{d0 5b 00}
0057h add bh,ch                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 ef}
0059h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
005ch (bad)                                   ; <invalid> || <invalid> || encoded[2]{f0 5b}
005eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0060h mov eax,0f7c89fc9h                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 c9 9f c8 f7}
0065h jg short 0067h                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
0067h add [rax],ch                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 28}
0069h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 00}
006bh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
006dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
006fh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0071h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0073h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0075h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0077h add [rax-80h],dh                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 70 80}
007ah lodsb                                   ; LODSB || AC || encoded[1]{ac}
007bh cmp eax,199h                            ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d 99 01 00 00}
0080h add [rdx],dh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 32}
0082h mov al,[100007ff7c8h]                   ; MOV AL, moffs8 || A0 mo || encoded[9]{a0 c8 f7 7f 00 00 01 00 00}
008bh add al,ah                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 e0}
008dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0090h (bad)                                   ; <invalid> || <invalid> || encoded[2]{1f 5c}
0092h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0094h sub al,5ch                              ; SUB AL, imm8 || 2C ib || encoded[2]{2c 5c}
0096h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0098h mov eax,0f7c89fc9h                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 c9 9f c8 f7}
009dh jg short 009fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
009fh add al,dh                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 f0}
00a1h (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 00}
00a3h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00a5h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00a7h add [rax],cl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 08}
00a9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00aah lahf                                    ; LAHF || 9F || encoded[1]{9f}
00abh enter 7ff7h,0                           ; ENTER imm16, imm8 || C8 iw ib || encoded[4]{c8 f7 7f 00}
00afh add [rax+5ch],bh                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 78 5c}
00b2h lahf                                    ; LAHF || 9F || encoded[1]{9f}
00b3h enter 7ff7h,0                           ; ENTER imm16, imm8 || C8 iw ib || encoded[4]{c8 f7 7f 00}
00b7h add al,bh                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 f8}
00b9h pop rsp                                 ; POP r64 || 58+ro || encoded[1]{5c}
00bah lahf                                    ; LAHF || 9F || encoded[1]{9f}
00bbh enter 7ff7h,0                           ; ENTER imm16, imm8 || C8 iw ib || encoded[4]{c8 f7 7f 00}
00bfh add ch,al                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 c5}
00c1h clc                                     ; CLC || F8 || encoded[1]{f8}
00c2h ja short 0089h                          ; JA rel8 || 77 cb || encoded[2]{77 c5}
00c4h stc                                     ; STC || F9 || encoded[1]{f9}
00c5h adc [rdx],al                            ; ADC r/m8, r8 || 10 /r || encoded[2]{10 02}
00c7h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
00cbh vpsllq xmm2,xmm1,9                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 e9 73 f1 09}
00d0h vpslldq xmm1,xmm1,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f1 73 f9 08}
00d5h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
00dah vmovd xmm3,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d8}
00deh vpsrlq xmm1,xmm1,xmm3                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f1 d3 cb}
00e2h vpor xmm1,xmm2,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 e9 eb c9}
00e6h vpsrldq xmm0,xmm0,8                     ; VPSRLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /3 ib || encoded[5]{c5 f9 73 d8 08}
00ebh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
00efh vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
00f3h vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
00f7h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00fbh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00feh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[8u](v128x8u,v256x8u,8u)-imm13
; vinsert_g[8u](v128x8u,v256x8u,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 f2 8f a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c848ec68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 8f a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[8i](v128x8i,v256x8i,8u)-imm5
; vinsert_g[8i](v128x8i,v256x8i,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 e2 8f a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c848ecd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 8f a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[8i](v128x8i,v256x8i,8u)-imm9
; vinsert_g[8i](v128x8i,v256x8i,8u)-imm9[47] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 62 8f a9 ff 48 8b c6 48 83 c4 20 5e c3 c5 19 05 02 00 05 32 01 60 40 00 00 00 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c848ecd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 8f a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
001fh (bad)                                   ; <invalid> || <invalid> || encoded[4]{c5 19 05 02}
0023h add [rip+40600132h],al                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 05 32 01 60 40}
0029h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
002bh (bad)                                   ; <invalid> || <invalid> || encoded[4]{00 8b c1 c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[8i](v128x8i,v256x8i,8u)-imm13
; vinsert_g[8i](v128x8i,v256x8i,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 e2 8e a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c848ecd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 8e a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[16u](v128x16u,v256x16u,8u)-imm5
; vinsert_g[16u](v128x16u,v256x16u,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 d2 8e a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c848ed48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 8e a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[16u](v128x16u,v256x16u,8u)-imm9
; vinsert_g[16u](v128x16u,v256x16u,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 52 8e a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c848ed48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 8e a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[16u](v128x16u,v256x16u,8u)-imm13
; vinsert_g[16u](v128x16u,v256x16u,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 d2 8d a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c848ed48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 8d a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[16i](v128x16i,v256x16i,8u)-imm5
; vinsert_g[16i](v128x16i,v256x16i,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 52 90 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c848f048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 90 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[16i](v128x16i,v256x16i,8u)-imm9
; vinsert_g[16i](v128x16i,v256x16i,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 d2 8f a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c848f048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 8f a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[16i](v128x16i,v256x16i,8u)-imm13
; vinsert_g[16i](v128x16i,v256x16i,8u)-imm13[45] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 52 8f a9 ff 48 8b c6 48 83 c4 20 5e c3 f8 19 05 02 00 05 32 01 60 40 00 00 00 cc}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c848f048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 8f a9 ff}
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
; vinsert_g[32u](v128x32u,v256x32u,8u)-imm5
; vinsert_g[32u](v128x32u,v256x32u,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 42 8f a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c848f0b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 8f a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[32u](v128x32u,v256x32u,8u)-imm9
; vinsert_g[32u](v128x32u,v256x32u,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 c2 8e a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c848f0b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 8e a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[32u](v128x32u,v256x32u,8u)-imm13
; vinsert_g[32u](v128x32u,v256x32u,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 42 8e a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c848f0b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 8e a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[32i](v128x32i,v256x32i,8u)-imm5
; vinsert_g[32i](v128x32i,v256x32i,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 32 8e a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c848f128h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 8e a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[32i](v128x32i,v256x32i,8u)-imm9
; vinsert_g[32i](v128x32i,v256x32i,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 32 27 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c848f128h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 27 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[32i](v128x32i,v256x32i,8u)-imm13
; vinsert_g[32i](v128x32i,v256x32i,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 b2 26 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c848f128h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 26 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[64u](v128x64u,v256x64u,8u)-imm5
; vinsert_g[64u](v128x64u,v256x64u,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 a2 26 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c848f198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 26 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[64u](v128x64u,v256x64u,8u)-imm9
; vinsert_g[64u](v128x64u,v256x64u,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 22 26 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c848f198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 26 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[64u](v128x64u,v256x64u,8u)-imm13
; vinsert_g[64u](v128x64u,v256x64u,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 a2 25 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c848f198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 25 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[64i](v128x64i,v256x64i,8u)-imm5
; vinsert_g[64i](v128x64i,v256x64i,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 82 f4 a5 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c845c0f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f4 a5 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[64i](v128x64i,v256x64i,8u)-imm9
; vinsert_g[64i](v128x64i,v256x64i,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 02 f4 a5 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c845c0f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f4 a5 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[64i](v128x64i,v256x64i,8u)-imm13
; vinsert_g[64i](v128x64i,v256x64i,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 82 f3 a5 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c845c0f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f3 a5 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[32f](v128x32f,v256x32f,8u)-imm5
; vinsert_g[32f](v128x32f,v256x32f,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 22 24 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c848f218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 24 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[32f](v128x32f,v256x32f,8u)-imm9
; vinsert_g[32f](v128x32f,v256x32f,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 a2 23 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c848f218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 23 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[32f](v128x32f,v256x32f,8u)-imm13
; vinsert_g[32f](v128x32f,v256x32f,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 22 23 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c848f218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 23 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[64f](v128x64f,v256x64f,8u)-imm5
; vinsert_g[64f](v128x64f,v256x64f,8u)-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 02 90 a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c848f3a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 90 a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[64f](v128x64f,v256x64f,8u)-imm9
; vinsert_g[64f](v128x64f,v256x64f,8u)-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 82 8f a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c848f3a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 8f a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_g[64f](v128x64f,v256x64f,8u)-imm13
; vinsert_g[64f](v128x64f,v256x64f,8u)-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 02 8f a9 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c848f3a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 8f a9 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
