------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<byte> storeseq<byte>(byte src)
; storeseq_g8u[89] = {57 56 48 83 ec 28 48 8b f1 8b fa 48 b9 10 ea 35 c6 f7 7f 00 00 ba 08 00 00 00 e8 91 f6 fa 5e 48 8d 50 10 40 0f b6 cf c1 e1 03 48 63 c9 49 b8 e9 9c f5 28 da 01 00 00 49 03 c8 48 8b 09 48 89 0a 48 83 c0 10 ba 08 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000bh mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0015h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
001ah call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 f6 fa 5e}
001fh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0023h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0027h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
002ah movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
002dh mov r8,1da28f59ce9h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 e9 9c f5 28 da 01 00 00}
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
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<byte> storeseq<ushort>(ushort src)
; storeseq_g16u[121] = {57 56 48 83 ec 28 48 8b f1 8b fa 48 b9 10 ea 35 c6 f7 7f 00 00 ba 10 00 00 00 e8 11 f6 fa 5e 48 8d 50 10 0f b7 cf 4c 8b c2 44 0f b6 c9 41 c1 e1 03 4d 63 c9 49 ba e9 9c f5 28 da 01 00 00 4d 03 ca 4d 8b 09 4d 89 08 48 83 c2 08 c1 f9 08 0f b6 c9 c1 e1 03 48 63 c9 49 03 ca 48 8b 09 48 89 0a 48 83 c0 10 ba 10 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000bh mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0015h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
001ah call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f6 fa 5e}
001fh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0023h movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0026h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0029h movzx r9d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c9}
002dh shl r9d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 03}
0031h movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
0034h mov r10,1da28f59ce9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba e9 9c f5 28 da 01 00 00}
003eh add r9,r10                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 ca}
0041h mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0044h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
0047h add rdx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 08}
004bh sar ecx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 08}
004eh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0051h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0054h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0057h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
005ah mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
005dh mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
0060h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0064h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
0069h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
006ch mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
006fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<byte> storeseq<uint>(uint src)
; storeseq_g32u[119] = {57 56 48 83 ec 28 48 8b f1 8b fa 48 b9 10 ea 35 c6 f7 7f 00 00 ba 20 00 00 00 e8 71 f5 fa 5e 48 8d 50 10 45 33 c0 41 8b c8 c1 e1 03 4c 63 c9 4c 03 ca 44 8b d7 41 d3 ea 41 0f b6 ca c1 e1 03 48 63 c9 49 ba e9 9c f5 28 da 01 00 00 49 03 ca 48 8b 09 49 89 09 41 ff c0 41 83 f8 04 7c c8 48 83 c0 10 ba 20 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000bh mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0015h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
001ah call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f5 fa 5e}
001fh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0023h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0026h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0029h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
002ch movsxd r9,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c9}
002fh add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
0032h mov r10d,edi                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d7}
0035h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0038h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
003ch shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
003fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0042h mov r10,1da28f59ce9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba e9 9c f5 28 da 01 00 00}
004ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
004fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0052h mov [r9],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 09}
0055h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0058h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
005ch jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
005eh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0062h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0067h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
006ah mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
006dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0070h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ReadOnlySpan<byte> storeseq<ulong>(ulong src)
; storeseq_g64u[120] = {57 56 48 83 ec 28 48 8b f1 48 8b fa 48 b9 10 ea 35 c6 f7 7f 00 00 ba 40 00 00 00 e8 e0 f4 fa 5e 48 8d 50 10 45 33 c0 41 8b c8 c1 e1 03 4c 63 c9 4c 03 ca 4c 8b d7 49 d3 ea 41 0f b6 ca c1 e1 03 48 63 c9 49 ba e9 9c f5 28 da 01 00 00 49 03 ca 48 8b 09 49 89 09 41 ff c0 41 83 f8 08 7c c8 48 83 c0 10 ba 40 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000ch mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0016h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
001bh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 f4 fa 5e}
0020h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0024h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0027h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002ah shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
002dh movsxd r9,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c9}
0030h add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
0033h mov r10,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d7}
0036h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0039h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
003dh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0040h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0043h mov r10,1da28f59ce9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba e9 9c f5 28 da 01 00 00}
004dh add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
0050h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0053h mov [r9],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 09}
0056h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0059h cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
005dh jl short 0027h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
005fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0063h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0068h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
006bh mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
006eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0071h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void storeseq<byte>(byte src, Span<byte> dst, int offset)
; storeseq_g8u_span8u_32i[43] = {0f 1f 44 00 00 48 8b 02 0f b6 d1 49 63 c8 48 03 c1 c1 e2 03 48 63 d2 48 b9 e9 9c f5 28 da 01 00 00 48 03 d1 48 8b 12 48 89 10 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
000eh add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
0011h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0014h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0017h mov rcx,1da28f59ce9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e9 9c f5 28 da 01 00 00}
0021h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0024h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0027h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void storeseq<ushort>(ushort src, Span<byte> dst, int offset)
; storeseq_g16u_span8u_32i[79] = {0f 1f 44 00 00 48 8b 02 0f b7 d1 49 63 c8 48 03 c8 44 0f b6 ca 41 c1 e1 03 4d 63 c9 49 ba e9 9c f5 28 da 01 00 00 4d 03 ca 4d 8b 09 4c 89 09 41 83 c0 08 49 63 c8 48 03 c1 c1 fa 08 0f b6 d2 c1 e2 03 48 63 d2 49 03 d2 48 8b 12 48 89 10 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
000eh add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
0011h movzx r9d,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ca}
0015h shl r9d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 03}
0019h movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001ch mov r10,1da28f59ce9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba e9 9c f5 28 da 01 00 00}
0026h add r9,r10                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 ca}
0029h mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
002ch mov [rcx],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 09}
002fh add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
0033h movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
0036h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
0039h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
003ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003fh shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0042h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0045h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0048h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
004bh mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void storeseq<uint>(uint src, Span<byte> dst, int offset)
; storeseq_g32u_span8u_32i[74] = {0f 1f 44 00 00 48 8b 02 8b d1 45 33 c9 41 8b c9 c1 e1 03 45 8d 14 08 4d 63 d2 4c 03 d0 44 8b da 41 d3 eb 41 0f b6 cb c1 e1 03 48 63 c9 49 bb e9 9c f5 28 da 01 00 00 49 03 cb 48 8b 09 49 89 0a 41 ff c1 41 83 f9 04 7c c4 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000dh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0010h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0013h lea r10d,[r8+rcx]                       ; LEA r32, m || o32 8D /r || encoded[4]{45 8d 14 08}
0017h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
001ah add r10,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d0}
001dh mov r11d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b da}
0020h shr r11d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 eb}
0023h movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0027h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
002ah movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
002dh mov r11,1da28f59ce9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e9 9c f5 28 da 01 00 00}
0037h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
003ah mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003dh mov [r10],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 0a}
0040h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0043h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0047h jl short 000dh                          ; JL rel8 || 7C cb || encoded[2]{7c c4}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void storeseq<ulong>(ulong src, Span<byte> dst, int offset)
; storeseq_g64u_span8u_32i[75] = {0f 1f 44 00 00 48 8b 02 48 8b d1 45 33 c9 41 8b c9 c1 e1 03 45 8d 14 08 4d 63 d2 4c 03 d0 4c 8b da 49 d3 eb 41 0f b6 cb c1 e1 03 48 63 c9 49 bb e9 9c f5 28 da 01 00 00 49 03 cb 48 8b 09 49 89 0a 41 ff c1 41 83 f9 08 7c c4 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000eh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0011h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0014h lea r10d,[r8+rcx]                       ; LEA r32, m || o32 8D /r || encoded[4]{45 8d 14 08}
0018h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
001bh add r10,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d0}
001eh mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0021h shr r11,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 eb}
0024h movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0028h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
002bh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
002eh mov r11,1da28f59ce9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e9 9c f5 28 da 01 00 00}
0038h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
003bh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003eh mov [r10],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 0a}
0041h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0044h cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
0048h jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c c4}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
