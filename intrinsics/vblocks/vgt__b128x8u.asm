; ref Block128<byte> vgt<byte>(in Block128<byte> a, in Block128<byte> b, in Block128<byte> c)
; vgt__b128x8u[7ff7c6fd6450h, 7ff7c6fd64e0h][144] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 f9 1f 41 83 e1 0f 41 03 c1 c1 f8 04 45 33 c9 85 c0 7e 67 4c 8b 11 45 8b d9 41 c1 e3 04 4d 63 db 4d 03 d3 c4 c1 7b f0 02 4c 8b 12 45 8b d9 41 c1 e3 04 4d 63 db 4d 03 d3 c4 c1 7b f0 0a c7 44 24 04 80 00 00 00 4c 8d 54 24 04 c4 e2 79 78 54 24 04 c5 f9 ef c2 c5 f1 ef ca c5 f9 64 c1 4d 8b 10 45 8b d9 41 c1 e3 04 4d 63 db 4d 03 d3 c4 c1 7a 7f 02 41 ff c1 44 3b c8 7c 99 49 8b c0 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:15:055
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 40 08}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 0f}
0014h add eax,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c1}
0017h sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
001ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001fh jle short 0088h                         ; JLE rel8 || 7E cb || encoded[2]{7e 67}
0021h mov r10,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 11}
0024h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0027h shl r11d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 04}
002bh movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
002eh add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
0031h vlddqu xmm0,xmmword ptr [r10]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7b f0 02}
0036h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0039h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
003ch shl r11d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 04}
0040h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0043h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
0046h vlddqu xmm1,xmmword ptr [r10]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7b f0 0a}
004bh mov dword ptr [rsp+4],80h               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 80 00 00 00}
0053h lea r10,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 04}
0058h vpbroadcastb xmm2,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 54 24 04}
005fh vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0063h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0067h vpcmpgtb xmm0,xmm0,xmm1                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f9 64 c1}
006bh mov r10,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 10}
006eh mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0071h shl r11d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 04}
0075h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0078h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
007bh vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0080h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0083h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0086h jl short 0021h                          ; JL rel8 || 7C cb || encoded[2]{7c 99}
0088h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
008bh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
008fh ret                                     ; RET || C3 || encoded[1]{c3}
