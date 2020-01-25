; BitMatrix<byte> true<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; bm~true__g8u[7ff7c6b606c0h, 7ff7c6b606e7h][39] = {56 48 83 ec 30 48 8b f1 b9 ff 00 00 00 88 4c 24 28 48 8b ce 0f b6 54 24 28 e8 4a 48 ed ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:37:846
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
000dh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0011h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0014h movzx edx,byte ptr [rsp+28h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 28}
0019h call 7ff7c6a34f28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 48 ed ff}
001eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0021h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
