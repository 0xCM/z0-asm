------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8i_v256x8i_8u-imm5
; vinsert_v128x8i_v256x8i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 ba 4a 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f07c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 4a 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8i_v256x8i_8u-imm9
; vinsert_v128x8i_v256x8i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 3a 4a 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f07c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 4a 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8i_v256x8i_8u-imm13
; vinsert_v128x8i_v256x8i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 ba 49 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f07c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 49 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8u_v256x8u_8u-imm5
; vinsert_v128x8u_v256x8u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 42 49 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f07c58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 49 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8u_v256x8u_8u-imm9
; vinsert_v128x8u_v256x8u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 c2 48 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f07c58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 48 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x8u_v256x8u_8u-imm13
; vinsert_v128x8u_v256x8u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 42 48 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f07c58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 48 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16i_v256x16i_8u-imm5
; vinsert_v128x16i_v256x16i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 ca 47 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f07c60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 47 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16i_v256x16i_8u-imm9
; vinsert_v128x16i_v256x16i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 4a 47 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f07c60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 47 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16i_v256x16i_8u-imm13
; vinsert_v128x16i_v256x16i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 ca 46 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f07c60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 46 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16u_v256x16u_8u-imm5
; vinsert_v128x16u_v256x16u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 52 46 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f07c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 46 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16u_v256x16u_8u-imm9
; vinsert_v128x16u_v256x16u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 d2 45 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f07c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 45 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x16u_v256x16u_8u-imm13
; vinsert_v128x16u_v256x16u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 52 45 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f07c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 45 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32i_v256x32i_8u-imm5
; vinsert_v128x32i_v256x32i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 da 44 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f07c70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 44 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32i_v256x32i_8u-imm9
; vinsert_v128x32i_v256x32i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 5a 44 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f07c70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 44 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32i_v256x32i_8u-imm13
; vinsert_v128x32i_v256x32i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 da 43 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f07c70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 43 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32u_v256x32u_8u-imm5
; vinsert_v128x32u_v256x32u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 62 43 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f07c78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 43 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32u_v256x32u_8u-imm9
; vinsert_v128x32u_v256x32u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 e2 42 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f07c78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 42 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x32u_v256x32u_8u-imm13
; vinsert_v128x32u_v256x32u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 62 42 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f07c78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 42 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64i_v256x64i_8u-imm5
; vinsert_v128x64i_v256x64i_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 ea 41 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f07c80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 41 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64i_v256x64i_8u-imm9
; vinsert_v128x64i_v256x64i_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 6a 41 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f07c80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 41 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64i_v256x64i_8u-imm13
; vinsert_v128x64i_v256x64i_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 ea 40 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f07c80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 40 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64u_v256x64u_8u-imm5
; vinsert_v128x64u_v256x64u_8u-imm5[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 05 00 00 00 e8 72 40 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 05 00 00 00}
0011h call 7ff7c6f07c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 40 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64u_v256x64u_8u-imm9
; vinsert_v128x64u_v256x64u_8u-imm9[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 09 00 00 00 e8 f2 3f 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 09 00 00 00}
0011h call 7ff7c6f07c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 3f 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vinsert_v128x64u_v256x64u_8u-imm13
; vinsert_v128x64u_v256x64u_8u-imm13[31] = {56 48 83 ec 20 48 8b f1 48 8b ce 41 b9 0d 00 00 00 e8 72 3f 83 ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov r9d,0dh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 0d 00 00 00}
0011h call 7ff7c6f07c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 3f 83 ff}
0016h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
