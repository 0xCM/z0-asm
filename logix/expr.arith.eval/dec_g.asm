------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> dec<byte>(IUnaryArithmeticOp<byte> a)
; dec_g[45] = {56 48 83 ec 20 e8 ee f5 ff ff 0f b6 48 08 ff c9 40 0f b6 f1 48 b9 70 9f 94 c7 f7 7f 00 00 e8 cd 53 ac 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73e0eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f5 ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0014h mov rcx,7ff7c7949f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9f 94 c7 f7 7f 00 00}
001eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 53 ac 5e}
0023h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> dec<sbyte>(IUnaryArithmeticOp<sbyte> a)
; dec_g[46] = {56 48 83 ec 20 e8 ee f5 ff ff 48 0f be 48 08 ff c9 48 0f be f1 48 b9 e0 a2 94 c7 f7 7f 00 00 e8 7c 53 ac 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73e0f08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f5 ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c794a2e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a2 94 c7 f7 7f 00 00}
001fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 53 ac 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> dec<ushort>(IUnaryArithmeticOp<ushort> a)
; dec_g[44] = {56 48 83 ec 20 e8 ce f5 ff ff 0f b7 48 08 ff c9 0f b7 f1 48 b9 f0 a5 94 c7 f7 7f 00 00 e8 2e 53 ac 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73e0f38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f5 ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0013h mov rcx,7ff7c794a5f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a5 94 c7 f7 7f 00 00}
001dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 53 ac 5e}
0022h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0026h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> dec<short>(IUnaryArithmeticOp<short> a)
; dec_g[46] = {56 48 83 ec 20 e8 be f5 ff ff 48 0f bf 48 08 ff c9 48 0f bf f1 48 b9 00 a9 94 c7 f7 7f 00 00 e8 ec 52 ac 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73e0f68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f5 ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c794a900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a9 94 c7 f7 7f 00 00}
001fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 52 ac 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> dec<uint>(IUnaryArithmeticOp<uint> a)
; dec_g[39] = {56 48 83 ec 20 e8 9e f5 ff ff 8b 70 08 ff ce 48 b9 10 ac 94 c7 f7 7f 00 00 e8 a2 52 ac 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73e0f98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f5 ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh dec esi                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ce}
000fh mov rcx,7ff7c794ac10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ac 94 c7 f7 7f 00 00}
0019h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 52 ac 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> dec<int>(IUnaryArithmeticOp<int> a)
; dec_g[39] = {56 48 83 ec 20 e8 7e f1 ff ff 8b 70 08 ff ce 48 b9 20 af 94 c7 f7 7f 00 00 e8 52 4e ac 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73e0fc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f1 ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh dec esi                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ce}
000fh mov rcx,7ff7c794af20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 af 94 c7 f7 7f 00 00}
0019h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 4e ac 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> dec<ulong>(IUnaryArithmeticOp<ulong> a)
; dec_g[42] = {56 48 83 ec 20 e8 6e f1 ff ff 48 8b 70 08 48 ff ce 48 b9 30 b2 94 c7 f7 7f 00 00 e8 10 4e ac 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73e0ff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f1 ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh dec rsi                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ce}
0011h mov rcx,7ff7c794b230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b2 94 c7 f7 7f 00 00}
001bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 4e ac 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> dec<long>(IUnaryArithmeticOp<long> a)
; dec_g[42] = {56 48 83 ec 20 e8 5e f1 ff ff 48 8b 70 08 48 ff ce 48 b9 40 b5 94 c7 f7 7f 00 00 e8 d0 4d ac 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c73e1028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e f1 ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh dec rsi                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ce}
0011h mov rcx,7ff7c794b540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b5 94 c7 f7 7f 00 00}
001bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 4d ac 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
