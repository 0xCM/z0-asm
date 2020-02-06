------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> negate<byte>(IUnaryArithmeticOp<byte> a)
; negate_g[47] = {56 48 83 ec 20 e8 66 f2 ff ff 0f b6 48 08 f7 d1 ff c1 40 0f b6 f1 48 b9 48 d1 96 c7 f7 7f 00 00 e8 fb 28 b0 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f2 ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0010h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0012h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0016h mov rcx,7ff7c796d148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d1 96 c7 f7 7f 00 00}
0020h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 28 b0 5e}
0025h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0029h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> negate<sbyte>(IUnaryArithmeticOp<sbyte> a)
; negate_g[46] = {56 48 83 ec 20 e8 66 f2 ff ff 48 0f be 48 08 f7 d9 48 0f be f1 48 b9 b8 d4 96 c7 f7 7f 00 00 e8 ac 28 b0 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f2 ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c796d4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d4 96 c7 f7 7f 00 00}
001fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 28 b0 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> negate<ushort>(IUnaryArithmeticOp<ushort> a)
; negate_g[46] = {56 48 83 ec 20 e8 46 f2 ff ff 0f b7 48 08 f7 d1 ff c1 0f b7 f1 48 b9 c8 d7 96 c7 f7 7f 00 00 e8 5c 28 b0 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f2 ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0010h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0012h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0015h mov rcx,7ff7c796d7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d7 96 c7 f7 7f 00 00}
001fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 28 b0 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> negate<short>(IUnaryArithmeticOp<short> a)
; negate_g[46] = {56 48 83 ec 20 e8 26 f2 ff ff 48 0f bf 48 08 f7 d9 48 0f bf f1 48 b9 d8 da 96 c7 f7 7f 00 00 e8 0c 28 b0 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a36b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 f2 ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c796dad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 da 96 c7 f7 7f 00 00}
001fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 28 b0 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> negate<uint>(IUnaryArithmeticOp<uint> a)
; negate_g[43] = {56 48 83 ec 20 e8 06 f2 ff ff 8b 48 08 8b f1 f7 d6 ff c6 48 b9 e8 dd 96 c7 f7 7f 00 00 e8 be 27 b0 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a36e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f2 ff ff}
000ah mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
000dh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0011h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0013h mov rcx,7ff7c796dde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 dd 96 c7 f7 7f 00 00}
001dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 27 b0 5e}
0022h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0025h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0029h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> negate<int>(IUnaryArithmeticOp<int> a)
; negate_g[41] = {56 48 83 ec 20 e8 f6 f1 ff ff 8b 48 08 8b f1 f7 de 48 b9 f8 e0 96 c7 f7 7f 00 00 e8 80 27 b0 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 f1 ff ff}
000ah mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
000dh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000fh neg esi                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 de}
0011h mov rcx,7ff7c796e0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e0 96 c7 f7 7f 00 00}
001bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 27 b0 5e}
0020h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0023h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0027h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> negate<ulong>(IUnaryArithmeticOp<ulong> a)
; negate_g[48] = {56 48 83 ec 20 e8 e6 f1 ff ff 48 8b 48 08 48 8b f1 48 f7 d6 48 ff c6 48 b9 08 e4 96 c7 f7 7f 00 00 e8 3a 27 b0 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3740h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f1 ff ff}
000ah mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0014h inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0017h mov rcx,7ff7c796e408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e4 96 c7 f7 7f 00 00}
0021h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 27 b0 5e}
0026h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> negate<long>(IUnaryArithmeticOp<long> a)
; negate_g[45] = {56 48 83 ec 20 e8 c6 f1 ff ff 48 8b 48 08 48 8b f1 48 f7 de 48 b9 18 e7 96 c7 f7 7f 00 00 e8 ed 26 b0 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73a3770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f1 ff ff}
000ah mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h neg rsi                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 de}
0014h mov rcx,7ff7c796e718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e7 96 c7 f7 7f 00 00}
001eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 26 b0 5e}
0023h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
