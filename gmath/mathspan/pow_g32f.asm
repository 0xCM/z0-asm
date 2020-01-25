; Span<float> pow<float>(ReadOnlySpan<float> src, uint exp, Span<float> dst)
; pow_g32f[7ff7c71aa8d0h, 7ff7c71aa948h][120] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 c5 f8 29 74 24 20 48 8b f1 49 8b 39 41 8b 59 08 48 8b 2a 45 33 f6 85 db 7e 33 41 8b c0 c5 f8 57 c0 c4 e1 fb 2a c0 c5 cb 5a f0 49 63 c6 4c 8d 3c 87 c5 fa 10 44 85 00 c5 f8 28 ce e8 01 e4 f4 5e c4 c1 7a 11 07 41 ff c6 44 3b f3 7c dd 48 89 3e 89 5e 08 48 8b c6 c5 f8 28 74 24 20 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:40:121
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh vmovaps [rsp+20h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 20}
0015h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0018h mov rdi,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 39}
001bh mov ebx,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 59 08}
001fh mov rbp,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 2a}
0022h xor r14d,r14d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 f6}
0025h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0027h jle short 005ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 33}
0029h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
0035h vcvtsd2ss xmm6,xmm6,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 cb 5a f0}
0039h movsxd rax,r14d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c6}
003ch lea r15,[rdi+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 3c 87}
0040h vmovss xmm0,dword ptr [rbp+rax*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 85 00}
0046h vmovaps xmm1,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ce}
004ah call 7ff8260f8d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e4 f4 5e}
004fh vmovss dword ptr [r15],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c4 c1 7a 11 07}
0054h inc r14d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c6}
0057h cmp r14d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f3}
005ah jl short 0039h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
005ch mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
005fh mov [rsi+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 5e 08}
0062h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0065h vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
006bh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
006fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0070h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0075h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
