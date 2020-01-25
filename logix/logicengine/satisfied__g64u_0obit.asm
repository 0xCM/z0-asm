; bit satisfied<ulong>(ComparisonExpr<ulong> expr, ulong a, ulong b)
; satisfied__g64u_0obit[7ff7c6d11b10h, 7ff7c6d11b67h][87] = {57 56 53 48 83 ec 20 48 8b f1 48 8b fa 49 8b d8 48 b9 18 d6 75 c6 f7 7f 00 00 ba 02 00 00 00 e8 ac 52 19 5f 48 89 78 10 48 89 58 18 48 8b ce 48 8b d0 39 09 e8 c7 fc ff ff 48 8b ce e8 ff df ff ff 48 8b 40 08 48 83 f8 ff 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:51:433
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000dh mov rbx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d8}
0010h mov rcx,7ff7c675d618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d6 75 c6 f7 7f 00 00}
001ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001fh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 52 19 5f}
0024h mov [rax+10h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 10}
0028h mov [rax+18h],rbx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 58 18}
002ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0032h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0034h call 7ff7c6d11810h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fc ff ff}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch call 7ff7c6d0fb50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff df ff ff}
0041h mov rax,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 40 08}
0045h cmp rax,0ffffffffffffffffh              ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 ff}
0049h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
004ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
