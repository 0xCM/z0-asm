; BitMatrix<ushort> true<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; bm~true__g16u[7ff7c6b60740h, 7ff7c6b60768h][40] = {56 48 83 ec 30 48 8b f1 b9 ff ff 00 00 66 89 4c 24 28 48 8b ce 0f b7 54 24 28 e8 41 82 ed ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:37:850
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
000dh mov [rsp+28h],cx                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 28}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h movzx edx,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 28}
001ah call 7ff7c6a389a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 82 ed ff}
001fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0022h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0026h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
