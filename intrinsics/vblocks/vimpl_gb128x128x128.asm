------------------------------------------------------------------------------------------------------------------------
; ref Block128<byte> vimpl<byte>(in Block128<byte> a, in Block128<byte> b, in Block128<byte> c)
; vimpl_gb128x8u_128x8u_128x8u[125] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 0f 45 03 ca 41 c1 f9 04 45 33 d2 45 85 c9 7e 56 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 04 4d 63 db 49 03 c3 c5 fb f0 00 48 8b 02 45 8b da 41 c1 e3 04 4d 63 db 49 03 c3 c5 fb f0 08 c5 f1 74 d1 c5 f1 ef ca c5 f9 eb c1 49 8b 00 45 8b da 41 c1 e3 04 4d 63 db 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c b0 49 8b c0 c3}
; Capture completion code = RET_INTRx2
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
0021h jle short 0079h                         ; JLE rel8 || 7E cb || encoded[2]{7e 56}
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
0051h vpcmpeqb xmm2,xmm1,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f1 74 d1}
0055h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0059h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
005dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0060h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
0063h shl r11d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 04}
0067h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
006ah add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
006dh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0071h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0074h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0077h jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c b0}
0079h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<sbyte> vimpl<sbyte>(in Block128<sbyte> a, in Block128<sbyte> b, in Block128<sbyte> c)
; vimpl_gb128x8i_128x8i_128x8i[125] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 0f 45 03 ca 41 c1 f9 04 45 33 d2 45 85 c9 7e 56 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 04 4d 63 db 49 03 c3 c5 fb f0 00 48 8b 02 45 8b da 41 c1 e3 04 4d 63 db 49 03 c3 c5 fb f0 08 c5 f1 74 d1 c5 f1 ef ca c5 f9 eb c1 49 8b 00 45 8b da 41 c1 e3 04 4d 63 db 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c b0 49 8b c0 c3}
; Capture completion code = RET_INTRx2
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
0021h jle short 0079h                         ; JLE rel8 || 7E cb || encoded[2]{7e 56}
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
0051h vpcmpeqb xmm2,xmm1,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f1 74 d1}
0055h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0059h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
005dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0060h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
0063h shl r11d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 04}
0067h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
006ah add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
006dh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0071h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0074h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0077h jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c b0}
0079h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<ushort> vimpl<ushort>(in Block128<ushort> a, in Block128<ushort> b, in Block128<ushort> c)
; vimpl_gb128x16u_128x16u_128x16u[108] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 07 45 03 ca 41 c1 f9 03 45 33 d2 45 85 c9 7e 45 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 03 4d 63 db 49 d1 e3 49 03 c3 c5 fb f0 00 48 8b 02 49 03 c3 c5 fb f0 08 c5 f1 75 d1 c5 f1 ef ca c5 f9 eb c1 49 8b 00 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c c1 49 8b c0 c3}
; Capture completion code = RET_INTRx2
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
0021h jle short 0068h                         ; JLE rel8 || 7E cb || encoded[2]{7e 45}
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
004ah vpcmpeqw xmm2,xmm1,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f1 75 d1}
004eh vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0052h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0056h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0059h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
005ch vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0060h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0063h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0066h jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c1}
0068h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<short> vimpl<short>(in Block128<short> a, in Block128<short> b, in Block128<short> c)
; vimpl_gb128x16i_128x16i_128x16i[108] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 07 45 03 ca 41 c1 f9 03 45 33 d2 45 85 c9 7e 45 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 03 4d 63 db 49 d1 e3 49 03 c3 c5 fb f0 00 48 8b 02 49 03 c3 c5 fb f0 08 c5 f1 75 d1 c5 f1 ef ca c5 f9 eb c1 49 8b 00 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c c1 49 8b c0 c3}
; Capture completion code = RET_INTRx2
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
0021h jle short 0068h                         ; JLE rel8 || 7E cb || encoded[2]{7e 45}
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
004ah vpcmpeqw xmm2,xmm1,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f1 75 d1}
004eh vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0052h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0056h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0059h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
005ch vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0060h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0063h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0066h jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c1}
0068h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<uint> vimpl<uint>(in Block128<uint> a, in Block128<uint> b, in Block128<uint> c)
; vimpl_gb128x32u_128x32u_128x32u[109] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 03 45 03 ca 41 c1 f9 02 45 33 d2 45 85 c9 7e 46 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 02 4d 63 db 49 c1 e3 02 49 03 c3 c5 fb f0 00 48 8b 02 49 03 c3 c5 fb f0 08 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 49 8b 00 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c c0 49 8b c0 c3}
; Capture completion code = RET_INTRx2
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
0021h jle short 0069h                         ; JLE rel8 || 7E cb || encoded[2]{7e 46}
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
004bh vpcmpeqd xmm2,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 d1}
004fh vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0053h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0057h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
005ah add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
005dh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0061h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0064h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0067h jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c0}
0069h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<int> vimpl<int>(in Block128<int> a, in Block128<int> b, in Block128<int> c)
; vimpl_gb128x32i_128x32i_128x32i[109] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 03 45 03 ca 41 c1 f9 02 45 33 d2 45 85 c9 7e 46 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 02 4d 63 db 49 c1 e3 02 49 03 c3 c5 fb f0 00 48 8b 02 49 03 c3 c5 fb f0 08 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 49 8b 00 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c c0 49 8b c0 c3}
; Capture completion code = RET_INTRx2
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
0021h jle short 0069h                         ; JLE rel8 || 7E cb || encoded[2]{7e 46}
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
004bh vpcmpeqd xmm2,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 d1}
004fh vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0053h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0057h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
005ah add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
005dh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0061h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0064h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0067h jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c0}
0069h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<ulong> vimpl<ulong>(in Block128<ulong> a, in Block128<ulong> b, in Block128<ulong> c)
; vimpl_gb128x64u_128x64u_128x64u[103] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 ea 1f 45 03 ca 41 d1 f9 45 33 d2 45 85 c9 7e 45 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 d1 e3 4d 63 db 49 c1 e3 03 49 03 c3 c5 fb f0 00 48 8b 02 49 03 c3 c5 fb f0 08 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 49 8b 00 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c c1 49 8b c0 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch shr r10d,1fh                            ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 1f}
0010h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0013h sar r9d,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[3]{41 d1 f9}
0016h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0019h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
001ch jle short 0063h                         ; JLE rel8 || 7E cb || encoded[2]{7e 45}
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
0045h vpcmpeqd xmm2,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 d1}
0049h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
004dh vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0051h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0054h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0057h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
005bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0061h jl short 0024h                          ; JL rel8 || 7C cb || encoded[2]{7c c1}
0063h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<long> vimpl<long>(in Block128<long> a, in Block128<long> b, in Block128<long> c)
; vimpl_gb128x64i_128x64i_128x64i[103] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 ea 1f 45 03 ca 41 d1 f9 45 33 d2 45 85 c9 7e 45 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 d1 e3 4d 63 db 49 c1 e3 03 49 03 c3 c5 fb f0 00 48 8b 02 49 03 c3 c5 fb f0 08 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 49 8b 00 49 03 c3 c5 fa 7f 00 41 ff c2 45 3b d1 7c c1 49 8b c0 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch shr r10d,1fh                            ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 1f}
0010h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0013h sar r9d,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[3]{41 d1 f9}
0016h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0019h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
001ch jle short 0063h                         ; JLE rel8 || 7E cb || encoded[2]{7e 45}
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
0045h vpcmpeqd xmm2,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 d1}
0049h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
004dh vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0051h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0054h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0057h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
005bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0061h jl short 0024h                          ; JL rel8 || 7C cb || encoded[2]{7c c1}
0063h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
