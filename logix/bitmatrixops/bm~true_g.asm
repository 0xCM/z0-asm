------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> true<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; bm~true_g8u_8u[39] = {56 48 83 ec 30 48 8b f1 b9 ff 00 00 00 88 4c 24 28 48 8b ce 0f b6 54 24 28 e8 62 ad fe ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
000dh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0011h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0014h movzx edx,byte ptr [rsp+28h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 28}
0019h call 7ff7c6b803f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ad fe ff}
001eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0021h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<sbyte> true<sbyte>(in BitMatrix<sbyte> A, in BitMatrix<sbyte> B)
; bm~true_g8i_8i[30] = {56 48 83 ec 20 48 8b f1 ba ff ff ff ff 48 8b ce e8 8b e1 fe ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
000dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0010h call 7ff7c6b83850h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b e1 fe ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> true<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; bm~true_g16u_16u[40] = {56 48 83 ec 30 48 8b f1 b9 ff ff 00 00 66 89 4c 24 28 48 8b ce 0f b7 54 24 28 e8 31 e5 fe ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code = RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
000dh mov [rsp+28h],cx                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 28}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h movzx edx,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 28}
001ah call 7ff7c6b83c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 e5 fe ff}
001fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0022h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0026h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<short> true<short>(in BitMatrix<short> A, in BitMatrix<short> B)
; bm~true_g16i_16i[30] = {56 48 83 ec 20 48 8b f1 ba ff ff ff ff 48 8b ce e8 0b f6 fe ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
000dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0010h call 7ff7c6b84d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f6 fe ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> true<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; bm~true_g32u_32u[30] = {56 48 83 ec 20 48 8b f1 48 8b ce ba ff ff ff ff e8 c3 04 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0010h call 7ff7c6b85c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 04 ff ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<int> true<int>(in BitMatrix<int> A, in BitMatrix<int> B)
; bm~true_g32i_32i[30] = {56 48 83 ec 20 48 8b f1 48 8b ce ba ff ff ff ff e8 93 20 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0010h call 7ff7c6b87858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 20 ff ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> true<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; bm~true_g64u_64u[35] = {56 48 83 ec 20 48 8b f1 48 8b ce 48 ba ff ff ff ff ff ff ff ff e8 86 25 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
0015h call 7ff7c6b87d90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 25 ff ff}
001ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<long> true<long>(in BitMatrix<long> A, in BitMatrix<long> B)
; bm~true_g64i_64i[35] = {56 48 83 ec 20 48 8b f1 48 8b ce 48 ba ff ff ff ff ff ff ff ff e8 e6 31 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
0015h call 7ff7c6b88a30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 31 ff ff}
001ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
