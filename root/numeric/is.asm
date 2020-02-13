------------------------------------------------------------------------------------------------------------------------
; bool is(NumericKind:uint k, NumericKind:uint match)
; is_(NumericKind~32u,NumericKind~32u)[111] = {57 56 55 53 48 83 ec 28 8b f1 8b fa 48 b9 d8 c9 de c7 f7 7f 00 00 e8 35 64 55 5f 48 8b d8 48 b9 20 f7 8c c7 f7 7f 00 00 ba 3c 00 00 00 e8 1e 68 55 5f 48 ba c0 69 31 98 37 02 00 00 48 8b 2a 48 8d 4b 08 48 8b d3 e8 45 55 55 5f 48 b9 70 dc 61 c7 f7 7f 00 00 48 89 4b 18 48 b9 10 36 76 c7 f7 7f 00 00 48 89 4b 20 48 8b cd 8b d6 4c 8b c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov rcx,7ff7c7dec9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c9 de c7 f7 7f 00 00}
0016h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 64 55 5f}
001bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
001eh mov rcx,7ff7c78cf720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f7 8c c7 f7 7f 00 00}
0028h mov edx,3ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 3c 00 00 00}
002dh call 7ff8272670b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 68 55 5f}
0032h mov rdx,237983169c0h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c0 69 31 98 37 02 00 00}
003ch mov rbp,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 2a}
003fh lea rcx,[rbx+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4b 08}
0043h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0046h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 55 55 5f}
004bh mov rcx,7ff7c761dc70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 dc 61 c7 f7 7f 00 00}
0055h mov [rbx+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4b 18}
0059h mov rcx,7ff7c7763610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 36 76 c7 f7 7f 00 00}
0063h mov [rbx+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4b 20}
0067h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
006ah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
006ch mov r8,rbx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c3}
