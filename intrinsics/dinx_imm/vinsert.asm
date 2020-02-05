------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8i_v256x8i_8u-imm5
; vinsert_v128x8i_v256x8i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 22 74 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f0b838h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 74 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8i_v256x8i_8u-imm9
; vinsert_v128x8i_v256x8i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 a2 73 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f0b838h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 73 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8i_v256x8i_8u-imm13
; vinsert_v128x8i_v256x8i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 22 73 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = ZEDx7_RET
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f0b838h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 73 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8u_v256x8u_8u-imm5
; vinsert_v128x8u_v256x8u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 aa 72 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = ZEDx7_RET
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f0b840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 72 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8u_v256x8u_8u-imm9
; vinsert_v128x8u_v256x8u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 2a 72 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f0b840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 72 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8u_v256x8u_8u-imm13
; vinsert_v128x8u_v256x8u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 aa 71 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f0b840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 71 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16i_v256x16i_8u-imm5
; vinsert_v128x16i_v256x16i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 32 71 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = ZEDx7_RET
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f0b848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 71 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16i_v256x16i_8u-imm9
; vinsert_v128x16i_v256x16i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 62 38 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f0b848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 38 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16i_v256x16i_8u-imm13
; vinsert_v128x16i_v256x16i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 42 35 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f0b848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 35 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16u_v256x16u_8u-imm5
; vinsert_v128x16u_v256x16u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 ca 34 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f0b850h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 34 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16u_v256x16u_8u-imm9
; vinsert_v128x16u_v256x16u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 4a 34 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f0b850h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 34 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16u_v256x16u_8u-imm13
; vinsert_v128x16u_v256x16u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 ca 33 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f0b850h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 33 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32i_v256x32i_8u-imm5
; vinsert_v128x32i_v256x32i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 52 33 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f0b858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 33 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32i_v256x32i_8u-imm9
; vinsert_v128x32i_v256x32i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 d2 32 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f0b858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 32 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32i_v256x32i_8u-imm13
; vinsert_v128x32i_v256x32i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 52 32 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f0b858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 32 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32u_v256x32u_8u-imm5
; vinsert_v128x32u_v256x32u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 8a 70 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = ZEDx7_RET
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f0b860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 70 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32u_v256x32u_8u-imm9
; vinsert_v128x32u_v256x32u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 0a 70 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f0b860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 70 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32u_v256x32u_8u-imm13
; vinsert_v128x32u_v256x32u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 8a 6f 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f0b860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 6f 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64i_v256x64i_8u-imm5
; vinsert_v128x64i_v256x64i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 12 6f 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f0b868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 6f 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64i_v256x64i_8u-imm9
; vinsert_v128x64i_v256x64i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 92 6e 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f0b868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 6e 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64i_v256x64i_8u-imm13
; vinsert_v128x64i_v256x64i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 12 6e 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f0b868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 6e 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64u_v256x64u_8u-imm5
; vinsert_v128x64u_v256x64u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 9a 6d 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f0b870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 6d 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64u_v256x64u_8u-imm9
; vinsert_v128x64u_v256x64u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 1a 6d 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = ZEDx7_RET
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f0b870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 6d 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64u_v256x64u_8u-imm13
; vinsert_v128x64u_v256x64u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 9a 6c 84 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f0b870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 6c 84 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
