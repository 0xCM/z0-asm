; bit satisfied<byte>(ComparisonExpr<byte> expr, byte a, byte b)
; satisfied__g8u_0obit[7ff7c6cf29b0h, 7ff7c6cf2a06h][86] = {57 56 53 48 83 ec 20 48 8b f1 8b fa 41 8b d8 48 b9 10 ea 34 c6 f7 7f 00 00 ba 02 00 00 00 e8 0d 44 1b 5f 40 88 78 10 88 58 11 48 8b ce 48 8b d0 39 09 e8 e1 f8 ff ff 48 8b ce e8 d9 df ff ff 0f b6 40 08 0f b6 c0 3c ff 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:57:161
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c634ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 34 c6 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 44 1b 5f}
0023h mov [rax+10h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 10}
0027h mov [rax+11h],bl                        ; MOV r/m8, r8 || 88 /r || encoded[3]{88 58 11}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0030h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0032h call 7ff7c6cf22c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f8 ff ff}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c6cf09c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 df ff ff}
003fh movzx eax,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 40 08}
0043h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0046h cmp al,0ffh                             ; CMP AL, imm8 || 3C ib || encoded[2]{3c ff}
0048h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
004bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004eh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
