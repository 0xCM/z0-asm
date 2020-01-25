; ReadOnlySpan<byte> storeseq<byte>(byte src)
; storeseq_g8u[7ff7c6e96c50h, 7ff7c6e96ca9h][89] = {57 56 48 83 ec 28 48 8b f1 8b fa 48 b9 10 ea 36 c6 f7 7f 00 00 ba 08 00 00 00 e8 71 01 01 5f 48 8d 50 10 40 0f b6 cf c1 e1 03 48 63 c9 49 b8 49 12 45 ba cf 01 00 00 49 03 c8 48 8b 09 48 89 0a 48 83 c0 10 ba 08 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:53:737
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000bh mov rcx,7ff7c636ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 36 c6 f7 7f 00 00}
0015h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
001ah call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 01 01 5f}
001fh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0023h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0027h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
002ah movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
002dh mov r8,1cfba451249h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 49 12 45 ba cf 01 00 00}
0037h add rcx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c8}
003ah mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003dh mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
0040h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0044h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0049h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
004ch mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
004fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0052h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0056h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0057h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0058h ret                                     ; RET || C3 || encoded[1]{c3}
