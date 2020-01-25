; Span<double> pow<double>(ReadOnlySpan<double> src, uint exp, Span<double> dst)
; pow_g64f[7ff7c71bd730h, 7ff7c71bd7a4h][116] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 c5 f8 29 74 24 20 48 8b f1 49 8b 39 41 8b 59 08 48 8b 2a 45 33 f6 85 db 7e 2f 41 8b c0 c5 c8 57 f6 c4 e1 cb 2a f0 49 63 c6 4c 8d 3c c7 c5 fb 10 44 c5 00 c5 f8 28 ce e8 65 b7 f3 5e c4 c1 7b 11 07 41 ff c6 44 3b f3 7c dd 48 89 3e 89 5e 08 48 8b c6 c5 f8 28 74 24 20 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:00:328
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
0027h jle short 0058h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
0029h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
002ch vxorps xmm6,xmm6,xmm6                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 c8 57 f6}
0030h vcvtsi2sd xmm6,xmm6,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 cb 2a f0}
0035h movsxd rax,r14d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c6}
0038h lea r15,[rdi+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 3c c7}
003ch vmovsd xmm0,qword ptr [rbp+rax*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 c5 00}
0042h vmovaps xmm1,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ce}
0046h call 7ff8260f8ee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 b7 f3 5e}
004bh vmovsd qword ptr [r15],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c4 c1 7b 11 07}
0050h inc r14d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c6}
0053h cmp r14d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f3}
0056h jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
0058h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
005bh mov [rsi+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 5e 08}
005eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0061h vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
0067h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
006bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0071h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
