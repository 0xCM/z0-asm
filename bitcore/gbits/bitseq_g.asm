------------------------------------------------------------------------------------------------------------------------
; Span<byte> bitseq<byte>(byte src)
; bitseq_g8u[115] = {57 56 48 83 ec 38 33 c0 48 89 44 24 28 48 89 44 24 30 48 8b f1 8b fa 48 b9 10 ea 34 c6 f7 7f 00 00 ba 08 00 00 00 e8 a5 f2 00 5f 48 83 c0 10 ba 08 00 00 00 45 33 c0 44 0f b6 cf 4d 63 d0 4c 03 d0 45 8b d9 41 8b c8 41 d3 eb 41 83 e3 01 45 88 1a 41 ff c0 41 83 f8 08 7c e1 48 89 44 24 28 89 54 24 30 48 89 06 89 56 08 48 8b c6 48 83 c4 38 5e 5f c3}
; Capture completion code = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0015h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0017h mov rcx,7ff7c634ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 34 c6 f7 7f 00 00}
0021h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 f2 00 5f}
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
------------------------------------------------------------------------------------------------------------------------
; Span<byte> bitseq<ushort>(ushort src)
; bitseq_g16u[115] = {57 56 48 83 ec 38 33 c0 48 89 44 24 28 48 89 44 24 30 48 8b f1 8b fa 48 b9 10 ea 34 c6 f7 7f 00 00 ba 10 00 00 00 e8 15 f2 00 5f 48 83 c0 10 ba 10 00 00 00 45 33 c0 44 0f b7 cf 4d 63 d0 4c 03 d0 45 8b d9 41 8b c8 41 d3 eb 41 83 e3 01 45 88 1a 41 ff c0 41 83 f8 10 7c e1 48 89 44 24 28 89 54 24 30 48 89 06 89 56 08 48 8b c6 48 83 c4 38 5e 5f c3}
; Capture completion code = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0015h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0017h mov rcx,7ff7c634ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 34 c6 f7 7f 00 00}
0021h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 f2 00 5f}
002bh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
002fh mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
0034h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0037h movzx r9d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 cf}
003bh movsxd r10,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d0}
003eh add r10,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d0}
0041h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0044h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0047h shr r11d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 eb}
004ah and r11d,1                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 01}
004eh mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0051h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0054h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
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
------------------------------------------------------------------------------------------------------------------------
; Span<byte> bitseq<uint>(uint src)
; bitseq_g32u[111] = {57 56 48 83 ec 38 33 c0 48 89 44 24 28 48 89 44 24 30 48 8b f1 8b fa 48 b9 10 ea 34 c6 f7 7f 00 00 ba 20 00 00 00 e8 85 f1 00 5f 48 83 c0 10 ba 20 00 00 00 45 33 c0 4d 63 c8 4c 03 c8 41 8b c8 44 8b d7 41 d3 ea 41 83 e2 01 45 88 11 41 ff c0 41 83 f8 20 7c e1 48 89 44 24 28 89 54 24 30 48 89 06 89 56 08 48 8b c6 48 83 c4 38 5e 5f c3}
; Capture completion code = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0015h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0017h mov rcx,7ff7c634ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 34 c6 f7 7f 00 00}
0021h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f1 00 5f}
002bh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
002fh mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0034h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0037h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
003ah add r9,rax                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c8}
003dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0040h mov r10d,edi                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d7}
0043h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0046h and r10d,1                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 01}
004ah mov [r9],r10b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 11}
004dh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0050h cmp r8d,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 20}
0054h jl short 0037h                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0056h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
005bh mov [rsp+30h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 30}
005fh mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0062h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0065h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0068h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
006ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> bitseq<ulong>(ulong src)
; bitseq_g64u[114] = {57 56 48 83 ec 38 33 c0 48 89 44 24 28 48 89 44 24 30 48 8b f1 48 8b fa 48 b9 10 ea 34 c6 f7 7f 00 00 ba 40 00 00 00 e8 f4 f0 00 5f 48 83 c0 10 ba 40 00 00 00 45 33 c0 4d 63 c8 4c 03 c8 41 8b c8 4c 8b d7 49 d3 ea 41 8b ca 83 e1 01 41 88 09 41 ff c0 41 83 f8 40 7c df 48 89 44 24 28 89 54 24 30 48 89 06 89 56 08 48 8b c6 48 83 c4 38 5e 5f c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0015h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
0018h mov rcx,7ff7c634ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 34 c6 f7 7f 00 00}
0022h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 f0 00 5f}
002ch add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0030h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0035h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0038h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
003bh add r9,rax                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c8}
003eh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0041h mov r10,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d7}
0044h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0047h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004ah and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
004dh mov [r9],cl                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 09}
0050h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0053h cmp r8d,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 40}
0057h jl short 0038h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
0059h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
005eh mov [rsp+30h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 30}
0062h mov [rsi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 06}
0065h mov [rsi+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 56 08}
0068h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006bh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
