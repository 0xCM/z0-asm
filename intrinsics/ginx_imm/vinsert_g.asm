------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x8u_v256x8u_8u-imm5
; vinsert_gv128x8u_v256x8u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 52 fb a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c7104238h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fb a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x8u_v256x8u_8u-imm9
; vinsert_gv128x8u_v256x8u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 d2 fa a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c7104238h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fa a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x8u_v256x8u_8u-imm13
; vinsert_gv128x8u_v256x8u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 52 fa a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c7104238h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fa a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x8i_v256x8i_8u-imm5
; vinsert_gv128x8i_v256x8i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 42 fa a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = ZEDx7_RET
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c71042a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 fa a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x8i_v256x8i_8u-imm9
; vinsert_gv128x8i_v256x8i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 c2 f9 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c71042a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f9 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x8i_v256x8i_8u-imm13
; vinsert_gv128x8i_v256x8i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 42 f9 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c71042a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 f9 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x16u_v256x16u_8u-imm5
; vinsert_gv128x16u_v256x16u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 32 f9 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c7104318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f9 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x16u_v256x16u_8u-imm9
; vinsert_gv128x16u_v256x16u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 b2 f8 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c7104318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 f8 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x16u_v256x16u_8u-imm13
; vinsert_gv128x16u_v256x16u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 32 f8 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c7104318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f8 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x16i_v256x16i_8u-imm5
; vinsert_gv128x16i_v256x16i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 12 f8 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = ZEDx7_RET
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c7104378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f8 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x16i_v256x16i_8u-imm9
; vinsert_gv128x16i_v256x16i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 92 f7 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = ZEDx7_RET
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c7104378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f7 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x16i_v256x16i_8u-imm13
; vinsert_gv128x16i_v256x16i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 12 f7 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c7104378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f7 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x32u_v256x32u_8u-imm5
; vinsert_gv128x32u_v256x32u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 02 f7 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c71043e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f7 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x32u_v256x32u_8u-imm9
; vinsert_gv128x32u_v256x32u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 82 f6 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c71043e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f6 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x32u_v256x32u_8u-imm13
; vinsert_gv128x32u_v256x32u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 02 f6 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c71043e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f6 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x32i_v256x32i_8u-imm5
; vinsert_gv128x32i_v256x32i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 12 f6 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c7104478h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f6 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x32i_v256x32i_8u-imm9
; vinsert_gv128x32i_v256x32i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 92 f5 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c7104478h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f5 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x32i_v256x32i_8u-imm13
; vinsert_gv128x32i_v256x32i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 12 f5 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c7104478h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f5 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x64u_v256x64u_8u-imm5
; vinsert_gv128x64u_v256x64u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 02 f5 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c71044e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f5 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x64u_v256x64u_8u-imm9
; vinsert_gv128x64u_v256x64u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 82 f4 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c71044e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f4 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x64u_v256x64u_8u-imm13
; vinsert_gv128x64u_v256x64u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 02 f4 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c71044e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f4 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x64i_v256x64i_8u-imm5
; vinsert_gv128x64i_v256x64i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 b2 c4 a0 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c70d1618h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c4 a0 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x64i_v256x64i_8u-imm9
; vinsert_gv128x64i_v256x64i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 32 c4 a0 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c70d1618h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 c4 a0 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x64i_v256x64i_8u-imm13
; vinsert_gv128x64i_v256x64i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 b2 c3 a0 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c70d1618h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c3 a0 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x32f_v256x32f_8u-imm5
; vinsert_gv128x32f_v256x32f_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 82 f2 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c7104568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f2 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x32f_v256x32f_8u-imm9
; vinsert_gv128x32f_v256x32f_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 02 f2 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c7104568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f2 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x32f_v256x32f_8u-imm13
; vinsert_gv128x32f_v256x32f_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 82 f1 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c7104568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f1 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x64f_v256x64f_8u-imm5
; vinsert_gv128x64f_v256x64f_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 92 f4 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c71048f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f4 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x64f_v256x64f_8u-imm9
; vinsert_gv128x64f_v256x64f_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 12 f4 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c71048f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f4 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_gv128x64f_v256x64f_8u-imm13
; vinsert_gv128x64f_v256x64f_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 92 f3 a3 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c71048f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f3 a3 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
