; ReadOnlySpan<Char> bitchars<int>(in int src)
; bitchars_g32i[7ff7c6e7a690h, 7ff7c6e7a718h][136] = {57 56 48 83 ec 28 c5 f8 77 48 8b f1 48 8b fa 48 b9 60 e0 4d c6 f7 7f 00 00 ba 20 00 00 00 e8 2d c7 02 5f 8b 17 4c 8d 40 10 45 33 c9 41 8b c9 c1 e1 03 44 8b d2 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba ad 24 dc ed c8 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 ba 20 00 00 00 48 89 06 89 56 08 48 8b c6 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:33:908
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000fh mov rcx,7ff7c64de060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e0 4d c6 f7 7f 00 00}
0019h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
001eh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d c7 02 5f}
0023h mov edx,[rdi]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 17}
0025h lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
0029h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
002ch mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
002fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0032h mov r10d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d2}
0035h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0038h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
003ch shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
003fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0042h mov r10,1c8eddc24adh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba ad 24 dc ed c8 01 00 00}
004ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
004fh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0052h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0056h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0059h lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
005dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0061h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0066h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0069h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
006dh jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
006fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0073h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0078h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
007bh mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
007eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0081h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0085h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0086h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0087h ret                                     ; RET || C3 || encoded[1]{c3}
