------------------------------------------------------------------------------------------------------------------------
; bool is(NumericKind:uint k, NumericKind:uint match)
; is_NumericKind~32u_NumericKind~32u[91] = {57 56 55 53 48 83 ec 28 8b f1 8b fa 48 b9 d8 65 e3 c7 f7 7f 00 00 e8 05 5d 3d 5f 48 8b d8 48 ba 48 6a 1f d3 5d 02 00 00 48 8b 2a 48 8d 4b 08 48 8b d3 e8 29 4e 3d 5f 48 b9 60 dd 62 c7 f7 7f 00 00 48 89 4b 18 48 b9 90 7c d3 c7 f7 7f 00 00 48 89 4b 20 48 8b cd 8b d6 4c 8b c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov rcx,7ff7c7e365d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 65 e3 c7 f7 7f 00 00}
0016h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 5d 3d 5f}
001bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
001eh mov rdx,25dd31f6a48h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 6a 1f d3 5d 02 00 00}
0028h mov rbp,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 2a}
002bh lea rcx,[rbx+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4b 08}
002fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0032h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 4e 3d 5f}
0037h mov rcx,7ff7c762dd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 dd 62 c7 f7 7f 00 00}
0041h mov [rbx+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4b 18}
0045h mov rcx,7ff7c7d37c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7c d3 c7 f7 7f 00 00}
004fh mov [rbx+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4b 20}
0053h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0056h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0058h mov r8,rbx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c3}
