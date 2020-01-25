; Span<byte> bitseq<byte>(byte src)
; bitseq_g8u[7ff7c6e97570h, 7ff7c6e975e3h][115] = {57 56 48 83 ec 38 33 c0 48 89 44 24 28 48 89 44 24 30 48 8b f1 8b fa 48 b9 10 ea 36 c6 f7 7f 00 00 ba 08 00 00 00 e8 45 f8 00 5f 48 83 c0 10 ba 08 00 00 00 45 33 c0 44 0f b6 cf 4d 63 d0 4c 03 d0 45 8b d9 41 8b c8 41 d3 eb 41 83 e3 01 45 88 1a 41 ff c0 41 83 f8 08 7c e1 48 89 44 24 28 89 54 24 30 48 89 06 89 56 08 48 8b c6 48 83 c4 38 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:53:760
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0015h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0017h mov rcx,7ff7c636ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 36 c6 f7 7f 00 00}
0021h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 f8 00 5f}
002bh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
002fh mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0034h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0037h movzx r9d,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 cf}
003bh movsxd r10,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d0}
003eh add r10,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d0}
0041h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0044h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0047h shr r11d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 eb}
004ah and r11d,1                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 01}
004eh mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0051h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0054h cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
0058h jl short 003bh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
005ah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
005fh mov [rsp+30h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 30}
0063h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0066h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0069h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006ch add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0070h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0071h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0072h ret                                     ; RET || C3 || encoded[1]{c3}
