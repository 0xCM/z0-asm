; ref Block128<long> vselect<long>(in Block128<long> a, in Block128<long> b, in Block128<long> c, in Block128<long> dst)
; vselect__b128x64i[7ff7c72337f0h, 7ff7c7233868h][120] = {56 c5 f8 77 90 45 8b 51 08 45 8b da 41 c1 eb 1f 45 03 d3 41 d1 fa 45 33 db 45 85 d2 7e 55 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 d1 e6 48 63 f6 48 c1 e6 03 48 03 c6 c5 fb f0 00 48 8b 02 48 03 c6 c5 fb f0 08 49 8b 00 48 03 c6 c5 fb f0 10 c5 f8 28 d8 c5 e1 db c9 c5 f9 df c2 c5 f1 eb c0 49 8b 01 48 03 c6 c5 fa 7f 00 41 ff c3 45 3b da 7c b4 49 8b c1 5e c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:15:837
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r10d,[r9+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 51 08}
0009h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
000ch shr r11d,1fh                            ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 eb 1f}
0010h add r10d,r11d                           ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d3}
0013h sar r10d,1                              ; SAR r/m32, 1 || o32 D1 /7 || encoded[3]{41 d1 fa}
0016h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0019h test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
001ch jle short 0073h                         ; JLE rel8 || 7E cb || encoded[2]{7e 55}
001eh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0021h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0024h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0027h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002ah mov esi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f3}
002dh shl esi,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e6}
002fh movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0032h shl rsi,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 03}
0036h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0039h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
003dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0040h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0043h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0047h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
004ah add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
004dh vlddqu xmm2,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 10}
0051h vmovaps xmm3,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d8}
0055h vpand xmm1,xmm3,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e1 db c9}
0059h vpandn xmm0,xmm0,xmm2                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f9 df c2}
005dh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0061h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0064h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0067h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
006bh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
006eh cmp r11d,r10d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b da}
0071h jl short 0027h                          ; JL rel8 || 7C cb || encoded[2]{7c b4}
0073h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
