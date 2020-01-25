; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; cmpexpr~eval__g16u_16u[7ff7c6e64420h, 7ff7c6e644abh][139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb d8 10 25 c6 f7 7f 00 00 39 09 ff 15 99 cc 3e ff 8b f8 48 8b ce 49 bb e0 10 25 c6 f7 7f 00 00 39 09 ff 15 8a cc 3e ff 48 8b c8 e8 02 d1 ff ff 0f b7 58 08 48 8b ce 49 bb e8 10 25 c6 f7 7f 00 00 39 09 ff 15 71 cc 3e ff 48 8b c8 e8 e1 d0 ff ff 44 0f b7 40 08 8b cf 8b d3 e8 23 7f d0 ff 0f b7 f0 48 b9 00 cb e3 c6 f7 7f 00 00 e8 11 28 04 5f 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:57:366
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62510d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 10 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [7ff7c62510d8h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 cc 3e ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62510e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 10 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [7ff7c62510e0h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a cc 3e ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c6e61560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 d1 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62510e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 10 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [7ff7c62510e8h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 cc 3e ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c6e61560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 d0 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c6b6c3b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 7f d0 ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c6e3cb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 cb e3 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 28 04 5f}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
