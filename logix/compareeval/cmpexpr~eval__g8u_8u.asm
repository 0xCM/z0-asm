; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; cmpexpr~eval__g8u_8u[7ff7c6e74370h, 7ff7c6e743fch][140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb d8 0e 27 c6 f7 7f 00 00 39 09 ff 15 49 cb 3f ff 8b f8 48 8b ce 49 bb e0 0e 27 c6 f7 7f 00 00 39 09 ff 15 3a cb 3f ff 48 8b c8 e8 62 d3 ff ff 0f b6 58 08 48 8b ce 49 bb e8 0e 27 c6 f7 7f 00 00 39 09 ff 15 21 cb 3f ff 48 8b c8 e8 41 d3 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 03 73 d0 ff 40 0f b6 f0 48 b9 e0 f6 e4 c6 f7 7f 00 00 e8 c0 28 03 5f 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:51:588
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6270ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0e 27 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [7ff7c6270ed8h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 cb 3f ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6270ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0e 27 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [7ff7c6270ee0h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a cb 3f ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c6e71710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 d3 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6270ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0e 27 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [7ff7c6270ee8h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 cb 3f ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c6e71710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 d3 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c6b7b6e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 73 d0 ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c6e4f6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f6 e4 c6 f7 7f 00 00}
007bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 28 03 5f}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
