------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> inc<byte>(IUnaryArithmeticOp<byte> a)
; inc_g[45] = {56 48 83 ec 20 e8 d6 fa ff ff 0f b6 48 08 ff c1 40 0f b6 f1 48 b9 48 d1 96 c7 f7 7f 00 00 e8 6d 31 b0 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fa ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0010h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0014h mov rcx,7ff7c796d148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d1 96 c7 f7 7f 00 00}
001eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 31 b0 5e}
0023h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> inc<sbyte>(IUnaryArithmeticOp<sbyte> a)
; inc_g[46] = {56 48 83 ec 20 e8 d6 fa ff ff 48 0f be 48 08 ff c1 48 0f be f1 48 b9 b8 d4 96 c7 f7 7f 00 00 e8 1c 31 b0 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fa ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c796d4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d4 96 c7 f7 7f 00 00}
001fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 31 b0 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> inc<ushort>(IUnaryArithmeticOp<ushort> a)
; inc_g[44] = {56 48 83 ec 20 e8 b6 fa ff ff 0f b7 48 08 ff c1 0f b7 f1 48 b9 c8 d7 96 c7 f7 7f 00 00 e8 ce 30 b0 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 fa ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0010h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0013h mov rcx,7ff7c796d7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d7 96 c7 f7 7f 00 00}
001dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 30 b0 5e}
0022h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0026h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> inc<short>(IUnaryArithmeticOp<short> a)
; inc_g[46] = {56 48 83 ec 20 e8 a6 fa ff ff 48 0f bf 48 08 ff c1 48 0f bf f1 48 b9 d8 da 96 c7 f7 7f 00 00 e8 8c 30 b0 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a36b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 fa ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c796dad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 da 96 c7 f7 7f 00 00}
001fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 30 b0 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> inc<uint>(IUnaryArithmeticOp<uint> a)
; inc_g[39] = {56 48 83 ec 20 e8 86 fa ff ff 8b 70 08 ff c6 48 b9 e8 dd 96 c7 f7 7f 00 00 e8 42 30 b0 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a36e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fa ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
000fh mov rcx,7ff7c796dde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 dd 96 c7 f7 7f 00 00}
0019h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 30 b0 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> inc<int>(IUnaryArithmeticOp<int> a)
; inc_g[39] = {56 48 83 ec 20 e8 76 fa ff ff 8b 70 08 ff c6 48 b9 f8 e0 96 c7 f7 7f 00 00 e8 02 30 b0 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fa ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
000fh mov rcx,7ff7c796e0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e0 96 c7 f7 7f 00 00}
0019h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 30 b0 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> inc<ulong>(IUnaryArithmeticOp<ulong> a)
; inc_g[42] = {56 48 83 ec 20 e8 66 fa ff ff 48 8b 70 08 48 ff c6 48 b9 08 e4 96 c7 f7 7f 00 00 e8 c0 2f b0 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3740h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 fa ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0011h mov rcx,7ff7c796e408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e4 96 c7 f7 7f 00 00}
001bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 2f b0 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> inc<long>(IUnaryArithmeticOp<long> a)
; inc_g[42] = {56 48 83 ec 20 e8 56 fa ff ff 48 8b 70 08 48 ff c6 48 b9 18 e7 96 c7 f7 7f 00 00 e8 80 2f b0 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 fa ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0011h mov rcx,7ff7c796e718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e7 96 c7 f7 7f 00 00}
001bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 2f b0 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
