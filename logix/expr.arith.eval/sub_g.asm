------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> sub<byte>(IBinaryArithmeticOp<byte> expr)
; sub_g[124] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 50 16 61 c7 f7 7f 00 00 48 b8 50 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 fc de ff ff 40 0f b6 78 08 48 8b ce 49 bb 58 16 61 c7 f7 7f 00 00 48 b8 58 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d4 de ff ff 0f b6 48 08 40 0f b6 c7 2b c1 40 0f b6 f0 48 b9 b8 84 c5 c8 f7 7f 00 00 e8 6f 51 b7 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7611650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 16 61 c7 f7 7f 00 00}
0016h mov rax,7ff7c7611650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 16 61 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86ef9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc de ff ff}
002ch movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c7611658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 16 61 c7 f7 7f 00 00}
003eh mov rax,7ff7c7611658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 16 61 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c86ef9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 de ff ff}
0054h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
0058h movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
005ch sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
005eh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0062h mov rcx,7ff7c8c584b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 84 c5 c8 f7 7f 00 00}
006ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 51 b7 5e}
0071h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0075h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0079h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> sub<sbyte>(IBinaryArithmeticOp<sbyte> expr)
; sub_g[125] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 60 16 61 c7 f7 7f 00 00 48 b8 60 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9c de ff ff 48 0f be 78 08 48 8b ce 49 bb 68 16 61 c7 f7 7f 00 00 48 b8 68 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 74 de ff ff 48 0f be 48 08 48 0f be c7 2b c1 48 0f be f0 48 b9 28 88 c5 c8 f7 7f 00 00 e8 ce 50 b7 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7611660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 16 61 c7 f7 7f 00 00}
0016h mov rax,7ff7c7611660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 16 61 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86efa38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c de ff ff}
002ch movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c7611668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 16 61 c7 f7 7f 00 00}
003eh mov rax,7ff7c7611668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 16 61 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c86efa38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 de ff ff}
0054h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
0059h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
005dh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
005fh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0063h mov rcx,7ff7c8c58828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 88 c5 c8 f7 7f 00 00}
006dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 50 b7 5e}
0072h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0076h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> sub<ushort>(IBinaryArithmeticOp<ushort> expr)
; sub_g[121] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 70 16 61 c7 f7 7f 00 00 48 b8 70 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1c de ff ff 0f b7 78 08 48 8b ce 49 bb 78 16 61 c7 f7 7f 00 00 48 b8 78 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 dd ff ff 0f b7 48 08 0f b7 c7 2b c1 0f b7 f0 48 b9 38 8b c5 c8 f7 7f 00 00 e8 32 50 b7 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7611670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 16 61 c7 f7 7f 00 00}
0016h mov rax,7ff7c7611670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 16 61 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86efa58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c de ff ff}
002ch movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7611678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 16 61 c7 f7 7f 00 00}
003dh mov rax,7ff7c7611678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 16 61 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c86efa58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 dd ff ff}
0053h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
0057h movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
005ah sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
005ch movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
005fh mov rcx,7ff7c8c58b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 8b c5 c8 f7 7f 00 00}
0069h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 50 b7 5e}
006eh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> sub<short>(IBinaryArithmeticOp<short> expr)
; sub_g[125] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 80 16 61 c7 f7 7f 00 00 48 b8 80 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9c d9 ff ff 48 0f bf 78 08 48 8b ce 49 bb 88 16 61 c7 f7 7f 00 00 48 b8 88 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 74 d9 ff ff 48 0f bf 48 08 48 0f bf c7 2b c1 48 0f bf f0 48 b9 48 8e c5 c8 f7 7f 00 00 e8 8e 4b b7 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7611680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 16 61 c7 f7 7f 00 00}
0016h mov rax,7ff7c7611680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 16 61 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86efa78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c d9 ff ff}
002ch movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c7611688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 16 61 c7 f7 7f 00 00}
003eh mov rax,7ff7c7611688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 16 61 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c86efa78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 d9 ff ff}
0054h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
0059h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
005dh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
005fh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0063h mov rcx,7ff7c8c58e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 8e c5 c8 f7 7f 00 00}
006dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 4b b7 5e}
0072h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0076h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> sub<uint>(IBinaryArithmeticOp<uint> expr)
; sub_g[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 90 16 61 c7 f7 7f 00 00 48 b8 90 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1c d9 ff ff 8b 78 08 48 8b ce 49 bb 98 16 61 c7 f7 7f 00 00 48 b8 98 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f6 d8 ff ff 8b 48 08 2b f9 48 b9 58 91 c5 c8 f7 7f 00 00 e8 fa 4a b7 5e 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7611690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 16 61 c7 f7 7f 00 00}
0016h mov rax,7ff7c7611690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 16 61 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86efa98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c d9 ff ff}
002ch mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7611698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 16 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7611698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 16 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86efa98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 d8 ff ff}
0052h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0055h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
0057h mov rcx,7ff7c8c59158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 91 c5 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 4a b7 5e}
0066h mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> sub<int>(IBinaryArithmeticOp<int> expr)
; sub_g[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb a0 16 61 c7 f7 7f 00 00 48 b8 a0 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ac d8 ff ff 8b 78 08 48 8b ce 49 bb a8 16 61 c7 f7 7f 00 00 48 b8 a8 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 86 d8 ff ff 8b 48 08 2b f9 48 b9 68 94 c5 c8 f7 7f 00 00 e8 6a 4a b7 5e 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76116a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 16 61 c7 f7 7f 00 00}
0016h mov rax,7ff7c76116a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 16 61 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86efab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac d8 ff ff}
002ch mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c76116a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 16 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c76116a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 16 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86efab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 d8 ff ff}
0052h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0055h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
0057h mov rcx,7ff7c8c59468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 94 c5 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 4a b7 5e}
0066h mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> sub<ulong>(IBinaryArithmeticOp<ulong> expr)
; sub_g[116] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb b0 16 61 c7 f7 7f 00 00 48 b8 b0 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 2c e3 ff ff 48 8b 78 08 48 8b ce 49 bb b8 16 61 c7 f7 7f 00 00 48 b8 b8 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 05 e3 ff ff 48 8b 48 08 48 2b f9 48 b9 78 97 c5 c8 f7 7f 00 00 e8 d7 49 b7 5e 48 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76116b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 16 61 c7 f7 7f 00 00}
0016h mov rax,7ff7c76116b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 16 61 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f05c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c e3 ff ff}
002ch mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c76116b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 16 61 c7 f7 7f 00 00}
003dh mov rax,7ff7c76116b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 16 61 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c86f05c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 e3 ff ff}
0053h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
0057h sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
005ah mov rcx,7ff7c8c59778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 97 c5 c8 f7 7f 00 00}
0064h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 49 b7 5e}
0069h mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> sub<long>(IBinaryArithmeticOp<long> expr)
; sub_g[116] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb c0 16 61 c7 f7 7f 00 00 48 b8 c0 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 bc e2 ff ff 48 8b 78 08 48 8b ce 49 bb c8 16 61 c7 f7 7f 00 00 48 b8 c8 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 95 e2 ff ff 48 8b 48 08 48 2b f9 48 b9 88 9a c5 c8 f7 7f 00 00 e8 47 49 b7 5e 48 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76116c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 16 61 c7 f7 7f 00 00}
0016h mov rax,7ff7c76116c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 16 61 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f05e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e2 ff ff}
002ch mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c76116c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 16 61 c7 f7 7f 00 00}
003dh mov rax,7ff7c76116c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 16 61 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c86f05e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 e2 ff ff}
0053h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
0057h sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
005ah mov rcx,7ff7c8c59a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9a c5 c8 f7 7f 00 00}
0064h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 49 b7 5e}
0069h mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
