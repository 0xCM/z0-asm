; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; cmpexpr~eval__g64i_64i[7ff7c6e64620h, 7ff7c6e646abh][139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 20 11 25 c6 f7 7f 00 00 39 09 ff 15 e1 ca 3e ff 8b f8 48 8b ce 49 bb 28 11 25 c6 f7 7f 00 00 39 09 ff 15 d2 ca 3e ff 48 8b c8 e8 32 cf ff ff 48 8b 58 08 48 8b ce 49 bb 30 11 25 c6 f7 7f 00 00 39 09 ff 15 b9 ca 3e ff 48 8b c8 e8 11 cf ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 83 8d d0 ff 48 8b f0 48 b9 10 d3 e3 c6 f7 7f 00 00 e8 11 26 04 5f 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:57:371
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 11 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [7ff7c6251120h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 ca 3e ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 11 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [7ff7c6251128h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 ca 3e ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c6e61590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 cf ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6251130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 11 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [7ff7c6251130h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 ca 3e ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c6e61590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 cf ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c6b6d410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 8d d0 ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c6e3d310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d3 e3 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 26 04 5f}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
