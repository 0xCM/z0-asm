; ReadOnlySpan<byte> storeseq<ulong>(ulong src)
; storeseq_g64u[7ff7c6e82800h, 7ff7c6e82878h][120] = {57 56 48 83 ec 28 48 8b f1 48 8b fa 48 b9 10 ea 35 c6 f7 7f 00 00 ba 40 00 00 00 e8 c0 45 02 5f 48 8d 50 10 45 33 c0 41 8b c8 c1 e1 03 4c 63 c9 4c 03 ca 4c 8b d7 49 d3 ea 41 0f b6 ca c1 e1 03 48 63 c9 49 ba a5 1a dc ed c8 01 00 00 49 03 ca 48 8b 09 49 89 09 41 ff c0 41 83 f8 08 7c c8 48 83 c0 10 ba 40 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:34:115
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000ch mov rcx,7ff7c635ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 35 c6 f7 7f 00 00}
0016h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
001bh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 45 02 5f}
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
0043h mov r10,1c8eddc1aa5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba a5 1a dc ed c8 01 00 00}
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
