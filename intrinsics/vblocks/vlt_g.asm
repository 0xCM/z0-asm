------------------------------------------------------------------------------------------------------------------------
; ref Block128<byte> vlt<byte>(in Block128<byte> a, in Block128<byte> b, in Block128<byte> c)
; vlt_gb128x8u~in_b128x8u~in_b128x8u~in[144] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 f9 1f 41 83 e1 0f 41 03 c1 c1 f8 04 45 33 c9 85 c0 7e 67 4c 8b 11 45 8b d9 41 c1 e3 04 4d 63 db 4d 03 d3 c4 c1 7b f0 02 4c 8b 12 45 8b d9 41 c1 e3 04 4d 63 db 4d 03 d3 c4 c1 7b f0 0a c7 44 24 04 80 00 00 00 4c 8d 54 24 04 c4 e2 79 78 54 24 04 c5 f9 ef c2 c5 f1 ef ca c5 f1 64 c0 4d 8b 10 45 8b d9 41 c1 e3 04 4d 63 db 4d 03 d3 c4 c1 7a 7f 02 41 ff c1 44 3b c8 7c 99 49 8b c0 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
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
0067h vpcmpgtb xmm0,xmm1,xmm0                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f1 64 c0}
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
------------------------------------------------------------------------------------------------------------------------
; ref Block128<sbyte> vlt<sbyte>(in Block128<sbyte> a, in Block128<sbyte> b, in Block128<sbyte> c)
; vlt_gb128x8i~in_b128x8i~in_b128x8i~in[117] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 0f 45 03 ca 41 c1 f9 04 45 33 d2 45 85 c9 7e 4e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 04 4d 63 db 49 03 c3 c5 fb f0 00 48 8b 02 45 8b da 41 c1 e3 04 4d 63 db 49 03 c3 c5 fb f0 08 c5 f1 64 c0 49 8b 00 45 8b da 41 c1 e3 04 4d 63 db 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c b8 49 8b c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,0fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 0f}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 04}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0071h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4e}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002ch mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
002fh shl r11d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 04}
0033h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0036h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0039h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
003dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0040h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
0043h shl r11d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 04}
0047h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
004ah add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
004dh vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0051h vpcmpgtb xmm0,xmm1,xmm0                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f1 64 c0}
0055h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0058h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
005bh shl r11d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 04}
005fh movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0062h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0065h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0069h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
006ch cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
006fh jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c b8}
0071h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<ushort> vlt<ushort>(in Block128<ushort> a, in Block128<ushort> b, in Block128<ushort> c)
; vlt_gb128x16u~in_b128x16u~in_b128x16u~in[127] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 f9 1f 41 83 e1 07 41 03 c1 c1 f8 03 45 33 c9 85 c0 7e 56 4c 8b 11 45 8b d9 41 c1 e3 03 4d 63 db 49 d1 e3 4d 03 d3 c4 c1 7b f0 02 4c 8b 12 4d 03 d3 c4 c1 7b f0 0a c7 44 24 04 00 80 00 00 4c 8d 54 24 04 c4 e2 79 79 54 24 04 c5 f9 ef c2 c5 f1 ef ca c5 f1 65 c0 4d 8b 10 4d 03 d3 c4 c1 7a 7f 02 41 ff c1 44 3b c8 7c aa 49 8b c0 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 40 08}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 07}
0014h add eax,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c1}
0017h sar eax,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 03}
001ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001fh jle short 0077h                         ; JLE rel8 || 7E cb || encoded[2]{7e 56}
0021h mov r10,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 11}
0024h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0027h shl r11d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 03}
002bh movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
002eh shl r11,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e3}
0031h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
0034h vlddqu xmm0,xmmword ptr [r10]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7b f0 02}
0039h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
003ch add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
003fh vlddqu xmm1,xmmword ptr [r10]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7b f0 0a}
0044h mov dword ptr [rsp+4],8000h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 00 80 00 00}
004ch lea r10,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 04}
0051h vpbroadcastw xmm2,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 04}
0058h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
005ch vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0060h vpcmpgtw xmm0,xmm1,xmm0                 ; VPCMPGTW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 65 /r || encoded[4]{c5 f1 65 c0}
0064h mov r10,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 10}
0067h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
006ah vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
006fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0072h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0075h jl short 0021h                          ; JL rel8 || 7C cb || encoded[2]{7c aa}
0077h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
007ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
007eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<short> vlt<short>(in Block128<short> a, in Block128<short> b, in Block128<short> c)
; vlt_gb128x16i~in_b128x16i~in_b128x16i~in[100] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 07 45 03 ca 41 c1 f9 03 45 33 d2 45 85 c9 7e 3d 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 03 4d 63 db 49 d1 e3 49 03 c3 c5 fb f0 00 48 8b 02 49 03 c3 c5 fb f0 08 c5 f1 65 c0 49 8b 00 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c c9 49 8b c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,7                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 07}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 03}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0060h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3d}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002ch mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
002fh shl r11d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 03}
0033h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0036h shl r11,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e3}
0039h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
003ch vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0040h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0043h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0046h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
004ah vpcmpgtw xmm0,xmm1,xmm0                 ; VPCMPGTW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 65 /r || encoded[4]{c5 f1 65 c0}
004eh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0051h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0054h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0058h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005eh jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c9}
0060h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<uint> vlt<uint>(in Block128<uint> a, in Block128<uint> b, in Block128<uint> c)
; vlt_gb128x32u~in_b128x32u~in_b128x32u~in[128] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 f9 1f 41 83 e1 03 41 03 c1 c1 f8 02 45 33 c9 85 c0 7e 57 4c 8b 11 45 8b d9 41 c1 e3 02 4d 63 db 49 c1 e3 02 4d 03 d3 c4 c1 7b f0 02 4c 8b 12 4d 03 d3 c4 c1 7b f0 0a c7 44 24 04 00 00 00 80 4c 8d 54 24 04 c4 e2 79 58 54 24 04 c5 f9 ef c2 c5 f1 ef ca c5 f1 66 c0 4d 8b 10 4d 03 d3 c4 c1 7a 7f 02 41 ff c1 44 3b c8 7c a9 49 8b c0 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 40 08}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0014h add eax,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c1}
0017h sar eax,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 02}
001ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001fh jle short 0078h                         ; JLE rel8 || 7E cb || encoded[2]{7e 57}
0021h mov r10,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 11}
0024h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0027h shl r11d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 02}
002bh movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
002eh shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
0032h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
0035h vlddqu xmm0,xmmword ptr [r10]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7b f0 02}
003ah mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
003dh add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
0040h vlddqu xmm1,xmmword ptr [r10]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7b f0 0a}
0045h mov dword ptr [rsp+4],80000000h         ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 00 00 00 80}
004dh lea r10,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 04}
0052h vpbroadcastd xmm2,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 04}
0059h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
005dh vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0061h vpcmpgtd xmm0,xmm1,xmm0                 ; VPCMPGTD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 66 /r || encoded[4]{c5 f1 66 c0}
0065h mov r10,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 10}
0068h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
006bh vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0070h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0073h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0076h jl short 0021h                          ; JL rel8 || 7C cb || encoded[2]{7c a9}
0078h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
007bh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
007fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<int> vlt<int>(in Block128<int> a, in Block128<int> b, in Block128<int> c)
; vlt_gb128x32i~in_b128x32i~in_b128x32i~in[101] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 03 45 03 ca 41 c1 f9 02 45 33 d2 45 85 c9 7e 3e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 02 4d 63 db 49 c1 e3 02 49 03 c3 c5 fb f0 00 48 8b 02 49 03 c3 c5 fb f0 08 c5 f1 66 c0 49 8b 00 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c c8 49 8b c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,3                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 03}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 02}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0061h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3e}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002ch mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
002fh shl r11d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 02}
0033h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0036h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
003ah add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
003dh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0041h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0044h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0047h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
004bh vpcmpgtd xmm0,xmm1,xmm0                 ; VPCMPGTD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 66 /r || encoded[4]{c5 f1 66 c0}
004fh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0052h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0055h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0059h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005ch cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005fh jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
0061h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<long> vlt<long>(in Block128<long> a, in Block128<long> b, in Block128<long> c)
; vlt_gb128x64i~in_b128x64i~in_b128x64i~in[127] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 ea 1f 45 03 ca 41 d1 f9 45 33 d2 45 85 c9 7e 5a 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 d1 e3 4d 63 db 49 c1 e3 03 49 03 c3 c5 fb f0 00 48 8b 02 49 03 c3 c5 fb f0 08 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c4 e3 7d 46 c8 03 c4 e2 75 37 c0 c4 e3 7d 19 c0 00 49 8b 00 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c ac 49 8b c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch shr r10d,1fh                            ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 1f}
0010h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0013h sar r9d,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[3]{41 d1 f9}
0016h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0019h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
001ch jle short 0078h                         ; JLE rel8 || 7E cb || encoded[2]{7e 5a}
001eh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0021h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0024h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0027h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
002ah shl r11d,1                              ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e3}
002dh movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0030h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
0034h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0037h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
003bh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
003eh add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0041h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0045h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0049h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
004fh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0055h vperm2i128 ymm1,ymm0,ymm0,3             ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 7d 46 c8 03}
005bh vpcmpgtq ymm0,ymm1,ymm0                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 75 37 c0}
0060h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0066h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0069h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
006ch vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0070h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0073h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0076h jl short 0024h                          ; JL rel8 || 7C cb || encoded[2]{7c ac}
0078h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
007bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<byte> vlt<byte>(in Block256<byte> a, in Block256<byte> b, in Block256<byte> c)
; vlt_gb256x8u~in_b256x8u~in_b256x8u~in[147] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 f9 1f 41 83 e1 1f 41 03 c1 c1 f8 05 45 33 c9 85 c0 7e 67 4c 8b 11 45 8b d9 41 c1 e3 05 4d 63 db 4d 03 d3 c4 c1 7f f0 02 4c 8b 12 45 8b d9 41 c1 e3 05 4d 63 db 4d 03 d3 c4 c1 7f f0 0a c7 44 24 04 80 00 00 00 4c 8d 54 24 04 c4 e2 7d 78 54 24 04 c5 fd ef c2 c5 f5 ef ca c5 f5 64 c0 4d 8b 10 45 8b d9 41 c1 e3 05 4d 63 db 4d 03 d3 c4 c1 7e 7f 02 41 ff c1 44 3b c8 7c 99 49 8b c0 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 40 08}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
0014h add eax,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c1}
0017h sar eax,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 05}
001ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001fh jle short 0088h                         ; JLE rel8 || 7E cb || encoded[2]{7e 67}
0021h mov r10,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 11}
0024h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0027h shl r11d,5                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 05}
002bh movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
002eh add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
0031h vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
0036h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0039h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
003ch shl r11d,5                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 05}
0040h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0043h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
0046h vlddqu ymm1,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 0a}
004bh mov dword ptr [rsp+4],80h               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 80 00 00 00}
0053h lea r10,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 04}
0058h vpbroadcastb ymm2,byte ptr [rsp+4]      ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 54 24 04}
005fh vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0063h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0067h vpcmpgtb ymm0,ymm1,ymm0                 ; VPCMPGTB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 64 /r || encoded[4]{c5 f5 64 c0}
006bh mov r10,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 10}
006eh mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0071h shl r11d,5                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 05}
0075h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0078h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
007bh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0080h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0083h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0086h jl short 0021h                          ; JL rel8 || 7C cb || encoded[2]{7c 99}
0088h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
008bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<sbyte> vlt<sbyte>(in Block256<sbyte> a, in Block256<sbyte> b, in Block256<sbyte> c)
; vlt_gb256x8i~in_b256x8i~in_b256x8i~in[120] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 1f 45 03 ca 41 c1 f9 05 45 33 d2 45 85 c9 7e 4e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 ff f0 00 48 8b 02 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 ff f0 08 c5 f5 64 c0 49 8b 00 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c b8 49 8b c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 1f}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 05}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0071h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4e}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002ch mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
002fh shl r11d,5                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 05}
0033h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0036h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0039h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0040h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
0043h shl r11d,5                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 05}
0047h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
004ah add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
004dh vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0051h vpcmpgtb ymm0,ymm1,ymm0                 ; VPCMPGTB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 64 /r || encoded[4]{c5 f5 64 c0}
0055h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0058h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
005bh shl r11d,5                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 05}
005fh movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0062h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0065h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0069h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
006ch cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
006fh jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c b8}
0071h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0074h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<ushort> vlt<ushort>(in Block256<ushort> a, in Block256<ushort> b, in Block256<ushort> c)
; vlt_gb256x16u~in_b256x16u~in_b256x16u~in[130] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 f9 1f 41 83 e1 0f 41 03 c1 c1 f8 04 45 33 c9 85 c0 7e 56 4c 8b 11 45 8b d9 41 c1 e3 04 4d 63 db 49 d1 e3 4d 03 d3 c4 c1 7f f0 02 4c 8b 12 4d 03 d3 c4 c1 7f f0 0a c7 44 24 04 00 80 00 00 4c 8d 54 24 04 c4 e2 7d 79 54 24 04 c5 fd ef c2 c5 f5 ef ca c5 f5 65 c0 4d 8b 10 4d 03 d3 c4 c1 7e 7f 02 41 ff c1 44 3b c8 7c aa 49 8b c0 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
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
001fh jle short 0077h                         ; JLE rel8 || 7E cb || encoded[2]{7e 56}
0021h mov r10,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 11}
0024h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0027h shl r11d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 04}
002bh movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
002eh shl r11,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e3}
0031h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
0034h vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
0039h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
003ch add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
003fh vlddqu ymm1,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 0a}
0044h mov dword ptr [rsp+4],8000h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 00 80 00 00}
004ch lea r10,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 04}
0051h vpbroadcastw ymm2,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 04}
0058h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
005ch vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0060h vpcmpgtw ymm0,ymm1,ymm0                 ; VPCMPGTW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 65 /r || encoded[4]{c5 f5 65 c0}
0064h mov r10,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 10}
0067h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
006ah vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
006fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0072h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0075h jl short 0021h                          ; JL rel8 || 7C cb || encoded[2]{7c aa}
0077h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
007ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<short> vlt<short>(in Block256<short> a, in Block256<short> b, in Block256<short> c)
; vlt_gb256x16i~in_b256x16i~in_b256x16i~in[103] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 0f 45 03 ca 41 c1 f9 04 45 33 d2 45 85 c9 7e 3d 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 04 4d 63 db 49 d1 e3 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 f5 65 c0 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c9 49 8b c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,0fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 0f}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 04}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0060h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3d}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002ch mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
002fh shl r11d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 04}
0033h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0036h shl r11,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e3}
0039h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
003ch vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0040h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0043h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0046h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
004ah vpcmpgtw ymm0,ymm1,ymm0                 ; VPCMPGTW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 65 /r || encoded[4]{c5 f5 65 c0}
004eh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0051h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0054h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0058h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005eh jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c9}
0060h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0063h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<uint> vlt<uint>(in Block256<uint> a, in Block256<uint> b, in Block256<uint> c)
; vlt_gb256x32u~in_b256x32u~in_b256x32u~in[131] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 f9 1f 41 83 e1 07 41 03 c1 c1 f8 03 45 33 c9 85 c0 7e 57 4c 8b 11 45 8b d9 41 c1 e3 03 4d 63 db 49 c1 e3 02 4d 03 d3 c4 c1 7f f0 02 4c 8b 12 4d 03 d3 c4 c1 7f f0 0a c7 44 24 04 00 00 00 80 4c 8d 54 24 04 c4 e2 7d 58 54 24 04 c5 fd ef c2 c5 f5 ef ca c5 f5 66 c0 4d 8b 10 4d 03 d3 c4 c1 7e 7f 02 41 ff c1 44 3b c8 7c a9 49 8b c0 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 40 08}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 07}
0014h add eax,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c1}
0017h sar eax,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 03}
001ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001fh jle short 0078h                         ; JLE rel8 || 7E cb || encoded[2]{7e 57}
0021h mov r10,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 11}
0024h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0027h shl r11d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 03}
002bh movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
002eh shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
0032h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
0035h vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
003ah mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
003dh add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
0040h vlddqu ymm1,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 0a}
0045h mov dword ptr [rsp+4],80000000h         ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 00 00 00 80}
004dh lea r10,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 04}
0052h vpbroadcastd ymm2,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 04}
0059h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
005dh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0061h vpcmpgtd ymm0,ymm1,ymm0                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 f5 66 c0}
0065h mov r10,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 10}
0068h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
006bh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0070h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0073h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0076h jl short 0021h                          ; JL rel8 || 7C cb || encoded[2]{7c a9}
0078h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
007bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<int> vlt<int>(in Block256<int> a, in Block256<int> b, in Block256<int> c)
; vlt_gb256x32i~in_b256x32i~in_b256x32i~in[104] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 07 45 03 ca 41 c1 f9 03 45 33 d2 45 85 c9 7e 3e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 03 4d 63 db 49 c1 e3 02 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 f5 66 c0 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c8 49 8b c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,7                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 07}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 03}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0061h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3e}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002ch mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
002fh shl r11d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 03}
0033h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0036h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
003ah add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
003dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0041h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0044h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0047h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
004bh vpcmpgtd ymm0,ymm1,ymm0                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 f5 66 c0}
004fh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0052h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0055h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0059h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005ch cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005fh jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
0061h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0064h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<long> vlt<long>(in Block256<long> a, in Block256<long> b, in Block256<long> c)
; vlt_gb256x64i~in_b256x64i~in_b256x64i~in[105] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 03 45 03 ca 41 c1 f9 02 45 33 d2 45 85 c9 7e 3f 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 02 4d 63 db 49 c1 e3 03 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c4 e2 75 37 c0 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c7 49 8b c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,3                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 03}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 02}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0062h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3f}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002ch mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
002fh shl r11d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 02}
0033h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0036h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
003ah add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
003dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0041h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0044h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0047h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
004bh vpcmpgtq ymm0,ymm1,ymm0                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 75 37 c0}
0050h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0053h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0056h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
005ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0060h jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0062h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0065h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0068h ret                                     ; RET || C3 || encoded[1]{c3}
