------------------------------------------------------------------------------------------------------------------------
; ref Block256<byte> vnor<byte>(in Block256<byte> a, in Block256<byte> b, in Block256<byte> c)
; vnor_gb256x8u_256x8u_256x8u[120] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 1f 45 03 ca 41 c1 f9 05 45 33 d2 45 85 c9 7e 4e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 ff f0 00 48 8b 02 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 ff f0 08 c5 fd db c1 49 8b 00 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c b8 49 8b c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
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
0051h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
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
; ref Block256<sbyte> vnor<sbyte>(in Block256<sbyte> a, in Block256<sbyte> b, in Block256<sbyte> c)
; vnor_gb256x8i_256x8i_256x8i[120] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 1f 45 03 ca 41 c1 f9 05 45 33 d2 45 85 c9 7e 4e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 ff f0 00 48 8b 02 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 ff f0 08 c5 fd db c1 49 8b 00 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c b8 49 8b c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
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
0051h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
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
; ref Block256<ushort> vnor<ushort>(in Block256<ushort> a, in Block256<ushort> b, in Block256<ushort> c)
; vnor_gb256x16u_256x16u_256x16u[103] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 0f 45 03 ca 41 c1 f9 04 45 33 d2 45 85 c9 7e 3d 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 04 4d 63 db 49 d1 e3 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 fd db c1 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c9 49 8b c0 c5 f8 77 c3}
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
004ah vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
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
; ref Block256<Int16> vnor<Int16>(in Block256<Int16> a, in Block256<Int16> b, in Block256<Int16> c)
; vnor_gb256x16i_256x16i_256x16i[103] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 0f 45 03 ca 41 c1 f9 04 45 33 d2 45 85 c9 7e 3d 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 04 4d 63 db 49 d1 e3 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 fd db c1 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c9 49 8b c0 c5 f8 77 c3}
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
004ah vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
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
; ref Block256<uint> vnor<uint>(in Block256<uint> a, in Block256<uint> b, in Block256<uint> c)
; vnor_gb256x32u_256x32u_256x32u[104] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 07 45 03 ca 41 c1 f9 03 45 33 d2 45 85 c9 7e 3e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 03 4d 63 db 49 c1 e3 02 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 fd db c1 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c8 49 8b c0 c5 f8 77 c3}
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
004bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
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
; ref Block256<int> vnor<int>(in Block256<int> a, in Block256<int> b, in Block256<int> c)
; vnor_gb256x32i_256x32i_256x32i[104] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 07 45 03 ca 41 c1 f9 03 45 33 d2 45 85 c9 7e 3e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 03 4d 63 db 49 c1 e3 02 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 fd db c1 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c8 49 8b c0 c5 f8 77 c3}
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
004bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
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
; ref Block256<ulong> vnor<ulong>(in Block256<ulong> a, in Block256<ulong> b, in Block256<ulong> c)
; vnor_gb256x64u_256x64u_256x64u[104] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 03 45 03 ca 41 c1 f9 02 45 33 d2 45 85 c9 7e 3e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 02 4d 63 db 49 c1 e3 03 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 fd db c1 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c8 49 8b c0 c5 f8 77 c3}
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
0021h jle short 0061h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3e}
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
004bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
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
; ref Block256<long> vnor<long>(in Block256<long> a, in Block256<long> b, in Block256<long> c)
; vnor_gb256x64i_256x64i_256x64i[104] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 03 45 03 ca 41 c1 f9 02 45 33 d2 45 85 c9 7e 3e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 02 4d 63 db 49 c1 e3 03 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 fd db c1 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c8 49 8b c0 c5 f8 77 c3}
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
0021h jle short 0061h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3e}
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
004bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
004fh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0052h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0055h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0059h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005ch cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005fh jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
0061h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0064h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
