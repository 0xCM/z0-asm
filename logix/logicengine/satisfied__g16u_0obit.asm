; bit satisfied<ushort>(ComparisonExpr<ushort> expr, ushort a, ushort b)
; satisfied__g16u_0obit[7ff7c6cf2a40h, 7ff7c6cf2a9dh][93] = {57 56 53 48 83 ec 20 48 8b f1 8b fa 41 8b d8 48 b9 30 70 9b c6 f7 7f 00 00 ba 02 00 00 00 e8 7d 43 1b 5f 66 89 78 10 66 89 58 12 48 8b ce 48 8b d0 39 09 e8 b8 f8 ff ff 48 8b ce e8 68 df ff ff 0f b7 40 08 0f b7 c0 0f b7 c0 3d ff ff 00 00 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:57:162
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c69b7030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 70 9b c6 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 43 1b 5f}
0023h mov [rax+10h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 10}
0027h mov [rax+12h],bx                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 58 12}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0033h call 7ff7c6cf2330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f8 ff ff}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh call 7ff7c6cf09e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 df ff ff}
0040h movzx eax,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 40 08}
0044h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0047h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
004ah cmp eax,0ffffh                          ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d ff ff 00 00}
004fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0052h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0055h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0059h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
