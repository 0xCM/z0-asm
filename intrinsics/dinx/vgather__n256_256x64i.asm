; Vector256<ulong> vgather(N256 w, in ulong src, Vector256<long> vidx, byte scale)
; vgather__n256_256x64i[7ff7c71cf6b0h, 7ff7c71cf6dbh][43] = {56 48 83 ec 20 48 8b f1 49 8b c1 48 8b ce 49 8b d0 44 8b 4c 24 50 45 0f b6 c9 4c 8b c0 e8 e6 ae 1c ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:11:01:879
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
000bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000eh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0011h mov r9d,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 50}
0016h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
001ah mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
001dh call 7ff7c639a5b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 ae 1c ff}
0022h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0025h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0029h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
