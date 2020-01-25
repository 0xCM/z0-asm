; Span<byte> bitseq<ulong>(ulong src)
; bitseq_g64u[7ff7c6e97720h, 7ff7c6e97792h][114] = {57 56 48 83 ec 38 33 c0 48 89 44 24 28 48 89 44 24 30 48 8b f1 48 8b fa 48 b9 10 ea 36 c6 f7 7f 00 00 ba 40 00 00 00 e8 94 f6 00 5f 48 83 c0 10 ba 40 00 00 00 45 33 c0 4d 63 c8 4c 03 c8 41 8b c8 4c 8b d7 49 d3 ea 41 8b ca 83 e1 01 41 88 09 41 ff c0 41 83 f8 40 7c df 48 89 44 24 28 89 54 24 30 48 89 06 89 56 08 48 8b c6 48 83 c4 38 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:53:768
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0015h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
0018h mov rcx,7ff7c636ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 36 c6 f7 7f 00 00}
0022h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0027h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 f6 00 5f}
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
