; ref Block128<byte> vselect<byte>(in Block128<byte> a, in Block128<byte> b, in Block128<byte> c, in Block128<byte> dst)
; vselect__b128x8u[7ff7c7232f60h, 7ff7c7232feah][138] = {57 56 c5 f8 77 45 8b 51 08 45 8b da 41 c1 fb 1f 41 83 e3 0f 45 03 d3 41 c1 fa 04 45 33 db 45 85 d2 7e 61 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 c1 e6 04 8b fe 48 63 ff 48 03 c7 c5 fb f0 00 48 8b 02 8b fe 48 63 ff 48 03 c7 c5 fb f0 08 49 8b 00 8b fe 48 63 ff 48 03 c7 c5 fb f0 10 c5 f8 28 d8 c5 e1 db c9 c5 f9 df c2 c5 f1 eb c0 49 8b 01 48 63 f6 48 03 c6 c5 fa 7f 00 41 ff c3 45 3b da 7c a8 49 8b c1 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:15:802
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov r10d,[r9+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 51 08}
0009h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
000ch sar r11d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fb 1f}
0010h and r11d,0fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 0f}
0014h add r10d,r11d                           ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d3}
0017h sar r10d,4                              ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 04}
001bh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001eh test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0021h jle short 0084h                         ; JLE rel8 || 7E cb || encoded[2]{7e 61}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
002ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002fh mov esi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f3}
0032h shl esi,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 04}
0035h mov edi,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fe}
0037h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
003ah add rax,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c7}
003dh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0041h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0044h mov edi,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fe}
0046h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0049h add rax,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c7}
004ch vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0050h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0053h mov edi,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fe}
0055h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0058h add rax,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c7}
005bh vlddqu xmm2,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 10}
005fh vmovaps xmm3,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d8}
0063h vpand xmm1,xmm3,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e1 db c9}
0067h vpandn xmm0,xmm0,xmm2                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f9 df c2}
006bh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
006fh mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0072h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0075h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0078h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
007ch inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
007fh cmp r11d,r10d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b da}
0082h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c a8}
0084h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0087h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0088h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0089h ret                                     ; RET || C3 || encoded[1]{c3}
