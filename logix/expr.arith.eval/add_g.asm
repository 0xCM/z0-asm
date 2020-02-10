------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr)
; add_g[8u]()[124] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb b0 14 62 c7 f7 7f 00 00 48 b8 b0 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 bc e4 ff ff 40 0f b6 78 08 48 8b ce 49 bb b8 14 62 c7 f7 7f 00 00 48 b8 b8 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 94 e4 ff ff 0f b6 48 08 40 0f b6 c7 03 c8 40 0f b6 f1 48 b9 d8 0e ca c8 f7 7f 00 00 e8 ef c2 b6 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76214b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 14 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c76214b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 14 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f8e38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e4 ff ff}
002ch movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c76214b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 14 62 c7 f7 7f 00 00}
003eh mov rax,7ff7c76214b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 14 62 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c86f8e38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 e4 ff ff}
0054h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
0058h movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
005ch add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005eh movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0062h mov rcx,7ff7c8ca0ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0e ca c8 f7 7f 00 00}
006ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef c2 b6 5e}
0071h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0075h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0079h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr)
; add_g[8i]()[125] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb c0 14 62 c7 f7 7f 00 00 48 b8 c0 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5c e4 ff ff 48 0f be 78 08 48 8b ce 49 bb c8 14 62 c7 f7 7f 00 00 48 b8 c8 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 34 e4 ff ff 48 0f be 48 08 48 0f be c7 03 c8 48 0f be f1 48 b9 48 12 ca c8 f7 7f 00 00 e8 4e c2 b6 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76214c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 14 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c76214c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 14 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f8e78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c e4 ff ff}
002ch movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c76214c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 14 62 c7 f7 7f 00 00}
003eh mov rax,7ff7c76214c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 14 62 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c86f8e78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e4 ff ff}
0054h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
0059h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
005dh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005fh movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0063h mov rcx,7ff7c8ca1248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 12 ca c8 f7 7f 00 00}
006dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e c2 b6 5e}
0072h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0076h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr)
; add_g[16u]()[121] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb d0 14 62 c7 f7 7f 00 00 48 b8 d0 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 dc e3 ff ff 0f b7 78 08 48 8b ce 49 bb d8 14 62 c7 f7 7f 00 00 48 b8 d8 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b5 e3 ff ff 0f b7 48 08 0f b7 c7 03 c8 0f b7 f1 48 b9 58 15 ca c8 f7 7f 00 00 e8 b2 c1 b6 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76214d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 14 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c76214d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 14 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f8e98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc e3 ff ff}
002ch movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c76214d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 14 62 c7 f7 7f 00 00}
003dh mov rax,7ff7c76214d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 14 62 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c86f8e98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 e3 ff ff}
0053h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
0057h movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
005ah add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005ch movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
005fh mov rcx,7ff7c8ca1558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 15 ca c8 f7 7f 00 00}
0069h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c1 b6 5e}
006eh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr)
; add_g[16i]()[125] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb e0 14 62 c7 f7 7f 00 00 48 b8 e0 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5c e3 ff ff 48 0f bf 78 08 48 8b ce 49 bb e8 14 62 c7 f7 7f 00 00 48 b8 e8 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 34 e3 ff ff 48 0f bf 48 08 48 0f bf c7 03 c8 48 0f bf f1 48 b9 68 18 ca c8 f7 7f 00 00 e8 0e c1 b6 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76214e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 14 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c76214e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 14 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f8eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c e3 ff ff}
002ch movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c76214e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 14 62 c7 f7 7f 00 00}
003eh mov rax,7ff7c76214e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 14 62 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c86f8eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e3 ff ff}
0054h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
0059h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
005dh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005fh movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0063h mov rcx,7ff7c8ca1868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 18 ca c8 f7 7f 00 00}
006dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e c1 b6 5e}
0072h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0076h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr)
; add_g[32u]()[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb f0 14 62 c7 f7 7f 00 00 48 b8 f0 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 dc e2 ff ff 8b 78 08 48 8b ce 49 bb f8 14 62 c7 f7 7f 00 00 48 b8 f8 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b6 e2 ff ff 8b 70 08 03 f7 48 b9 78 1b ca c8 f7 7f 00 00 e8 7a c0 b6 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76214f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 14 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c76214f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 14 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f8ed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc e2 ff ff}
002ch mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c76214f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 14 62 c7 f7 7f 00 00}
003ch mov rax,7ff7c76214f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 14 62 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86f8ed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 e2 ff ff}
0052h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0055h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0057h mov rcx,7ff7c8ca1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b ca c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a c0 b6 5e}
0066h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr)
; add_g[32i]()[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 00 15 62 c7 f7 7f 00 00 48 b8 00 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6c e2 ff ff 8b 78 08 48 8b ce 49 bb 08 15 62 c7 f7 7f 00 00 48 b8 08 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 46 e2 ff ff 8b 70 08 03 f7 48 b9 88 1e ca c8 f7 7f 00 00 e8 ea bf b6 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7621500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 15 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c7621500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 15 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f8ef8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c e2 ff ff}
002ch mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7621508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 15 62 c7 f7 7f 00 00}
003ch mov rax,7ff7c7621508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 15 62 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86f8ef8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 e2 ff ff}
0052h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0055h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0057h mov rcx,7ff7c8ca1e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1e ca c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea bf b6 5e}
0066h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr)
; add_g[64u]()[116] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 10 15 62 c7 f7 7f 00 00 48 b8 10 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 fc e1 ff ff 48 8b 78 08 48 8b ce 49 bb 18 15 62 c7 f7 7f 00 00 48 b8 18 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d5 e1 ff ff 48 8b 70 08 48 03 f7 48 b9 98 21 ca c8 f7 7f 00 00 e8 57 bf b6 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7621510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 15 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c7621510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 15 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f8f18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc e1 ff ff}
002ch mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7621518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 15 62 c7 f7 7f 00 00}
003dh mov rax,7ff7c7621518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 15 62 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c86f8f18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 e1 ff ff}
0053h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
0057h add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
005ah mov rcx,7ff7c8ca2198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 21 ca c8 f7 7f 00 00}
0064h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 bf b6 5e}
0069h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr)
; add_g[64i]()[116] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 20 15 62 c7 f7 7f 00 00 48 b8 20 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1c ec ff ff 48 8b 78 08 48 8b ce 49 bb 28 15 62 c7 f7 7f 00 00 48 b8 28 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 eb ff ff 48 8b 70 08 48 03 f7 48 b9 a8 24 ca c8 f7 7f 00 00 e8 c7 be b6 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7621520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 15 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c7621520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 15 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f99c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c ec ff ff}
002ch mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7621528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 15 62 c7 f7 7f 00 00}
003dh mov rax,7ff7c7621528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 15 62 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c86f99c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 eb ff ff}
0053h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
0057h add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
005ah mov rcx,7ff7c8ca24a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 24 ca c8 f7 7f 00 00}
0064h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 be b6 5e}
0069h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
