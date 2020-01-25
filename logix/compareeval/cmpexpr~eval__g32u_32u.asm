; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; cmpexpr~eval__g32u_32u[7ff7c6e744d0h, 7ff7c6e74557h][135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 08 0f 27 c6 f7 7f 00 00 39 09 ff 15 19 ca 3f ff 8b f8 48 8b ce 49 bb 10 0f 27 c6 f7 7f 00 00 39 09 ff 15 0a ca 3f ff 48 8b c8 e8 42 d2 ff ff 8b 58 08 48 8b ce 49 bb 18 0f 27 c6 f7 7f 00 00 39 09 ff 15 f2 c9 3f ff 48 8b c8 e8 22 d2 ff ff 44 8b 40 08 8b cf 8b d3 e8 e5 81 d0 ff 8b f0 48 b9 60 fd e4 c6 f7 7f 00 00 e8 64 27 03 5f 89 70 08 48 83 c4 20 5b 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:51:592
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6270f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0f 27 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [7ff7c6270f08h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 ca 3f ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6270f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0f 27 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [7ff7c6270f10h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a ca 3f ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c6e71750h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 d2 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6270f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0f 27 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [7ff7c6270f18h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 c9 3f ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c6e71750h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 d2 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c6b7c720h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 81 d0 ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c6e4fd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 fd e4 c6 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 27 03 5f}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
