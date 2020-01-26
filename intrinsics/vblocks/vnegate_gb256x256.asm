------------------------------------------------------------------------------------------------------------------------
; ref Block256<byte> vnegate<byte>(in Block256<byte> a, in Block256<byte> c)
; vnegate_gb256x8u_256x8u[117] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 1f 45 03 c1 41 c1 f8 05 45 33 c9 45 85 c0 7e 4b 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 05 4d 63 d2 49 03 c2 c5 ff f0 00 c5 fd 74 c8 c5 fd ef c1 c5 f4 57 c9 c5 ec 57 d2 c5 f5 74 ca c5 fd f8 c1 48 8b 02 45 8b d1 41 c1 e2 05 4d 63 d2 49 03 c2 c5 fe 7f 00 41 ff c1 45 3b c8 7c b8 48 8b c2 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 05}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 006eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 4b}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,5                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 05}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
0036h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003ah vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
003eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0042h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0046h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
004ah vpcmpeqb ymm1,ymm1,ymm2                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 f5 74 ca}
004eh vpsubb ymm0,ymm0,ymm1                   ; VPSUBB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F8 /r || encoded[4]{c5 fd f8 c1}
0052h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0055h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0058h shl r10d,5                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 05}
005ch movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
005fh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
0062h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0066h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0069h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
006ch jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c b8}
006eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0071h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<sbyte> vnegate<sbyte>(in Block256<sbyte> a, in Block256<sbyte> c)
; vnegate_gb256x8i_256x8i[101] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 1f 45 03 c1 41 c1 f8 05 45 33 c9 45 85 c0 7e 3b 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 05 4d 63 d2 49 03 c2 c5 ff f0 00 c5 f4 57 c9 c5 f5 f8 c0 48 8b 02 45 8b d1 41 c1 e2 05 4d 63 d2 49 03 c2 c5 fe 7f 00 41 ff c1 45 3b c8 7c c8 48 8b c2 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 05}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 005eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 3b}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,5                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 05}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
0036h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003ah vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003eh vpsubb ymm0,ymm1,ymm0                   ; VPSUBB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F8 /r || encoded[4]{c5 f5 f8 c0}
0042h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0045h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0048h shl r10d,5                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 05}
004ch movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
004fh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
0052h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0056h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0059h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
005ch jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
005eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<ushort> vnegate<ushort>(in Block256<ushort> a, in Block256<ushort> c)
; vnegate_gb256x16u_256x16u[119] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 0f 45 03 c1 41 c1 f8 04 45 33 c9 45 85 c0 7e 4d 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 04 4d 63 d2 4a 8d 04 50 c5 ff f0 00 c5 fd 75 c8 c5 fd ef c1 c5 f4 57 c9 c5 ec 57 d2 c5 f5 75 ca c5 fd f9 c1 48 8b 02 45 8b d1 41 c1 e2 04 4d 63 d2 4a 8d 04 50 c5 fe 7f 00 41 ff c1 45 3b c8 7c b6 48 8b c2 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 0f}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 04}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 0070h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4d}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 04}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h lea rax,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 50}
0037h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003bh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
003fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0043h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0047h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
004bh vpcmpeqw ymm1,ymm1,ymm2                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 ca}
004fh vpsubw ymm0,ymm0,ymm1                   ; VPSUBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F9 /r || encoded[4]{c5 fd f9 c1}
0053h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0056h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0059h shl r10d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 04}
005dh movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0060h lea rax,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 50}
0064h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0068h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
006bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
006eh jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0070h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0073h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<Int16> vnegate<Int16>(in Block256<Int16> a, in Block256<Int16> c)
; vnegate_gb256x16i_256x16i[103] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 0f 45 03 c1 41 c1 f8 04 45 33 c9 45 85 c0 7e 3d 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 04 4d 63 d2 4a 8d 04 50 c5 ff f0 00 c5 f4 57 c9 c5 f5 f9 c0 48 8b 02 45 8b d1 41 c1 e2 04 4d 63 d2 4a 8d 04 50 c5 fe 7f 00 41 ff c1 45 3b c8 7c c6 48 8b c2 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 0f}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 04}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 0060h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3d}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 04}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h lea rax,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 50}
0037h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003bh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003fh vpsubw ymm0,ymm1,ymm0                   ; VPSUBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F9 /r || encoded[4]{c5 f5 f9 c0}
0043h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0046h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0049h shl r10d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 04}
004dh movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0050h lea rax,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 50}
0054h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0058h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
005bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
005eh jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0060h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0063h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<uint> vnegate<uint>(in Block256<uint> a, in Block256<uint> c)
; vnegate_gb256x32u_256x32u[119] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 07 45 03 c1 41 c1 f8 03 45 33 c9 45 85 c0 7e 4d 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 03 4d 63 d2 4a 8d 04 90 c5 ff f0 00 c5 fd 76 c8 c5 fd ef c1 c5 f4 57 c9 c5 ec 57 d2 c5 f5 76 ca c5 fd fa c1 48 8b 02 45 8b d1 41 c1 e2 03 4d 63 d2 4a 8d 04 90 c5 fe 7f 00 41 ff c1 45 3b c8 7c b6 48 8b c2 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 07}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 03}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 0070h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4d}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h lea rax,[rax+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 90}
0037h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003bh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
003fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0043h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0047h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
004bh vpcmpeqd ymm1,ymm1,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 ca}
004fh vpsubd ymm0,ymm0,ymm1                   ; VPSUBD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FA /r || encoded[4]{c5 fd fa c1}
0053h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0056h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0059h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
005dh movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0060h lea rax,[rax+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 90}
0064h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0068h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
006bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
006eh jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0070h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0073h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<int> vnegate<int>(in Block256<int> a, in Block256<int> c)
; vnegate_gb256x32i_256x32i[103] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 07 45 03 c1 41 c1 f8 03 45 33 c9 45 85 c0 7e 3d 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 03 4d 63 d2 4a 8d 04 90 c5 ff f0 00 c5 f4 57 c9 c5 f5 fa c0 48 8b 02 45 8b d1 41 c1 e2 03 4d 63 d2 4a 8d 04 90 c5 fe 7f 00 41 ff c1 45 3b c8 7c c6 48 8b c2 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 07}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 03}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 0060h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3d}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h lea rax,[rax+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 90}
0037h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003bh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003fh vpsubd ymm0,ymm1,ymm0                   ; VPSUBD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FA /r || encoded[4]{c5 f5 fa c0}
0043h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0046h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0049h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
004dh movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0050h lea rax,[rax+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 90}
0054h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0058h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
005bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
005eh jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0060h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0063h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<ulong> vnegate<ulong>(in Block256<ulong> a, in Block256<ulong> c)
; vnegate_gb256x64u_256x64u[121] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 03 45 03 c1 41 c1 f8 02 45 33 c9 45 85 c0 7e 4f 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 02 4d 63 d2 4a 8d 04 d0 c5 ff f0 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 f4 57 c9 c5 ec 57 d2 c4 e2 75 29 ca c5 fd fb c1 48 8b 02 45 8b d1 41 c1 e2 02 4d 63 d2 4a 8d 04 d0 c5 fe 7f 00 41 ff c1 45 3b c8 7c b4 48 8b c2 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 02}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 0072h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4f}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 02}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h lea rax,[rax+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 d0}
0037h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003bh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0040h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0044h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0048h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
004ch vpcmpeqq ymm1,ymm1,ymm2                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 ca}
0051h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
0055h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0058h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
005bh shl r10d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 02}
005fh movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0062h lea rax,[rax+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 d0}
0066h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
006ah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
006dh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0070h jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c b4}
0072h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0075h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<long> vnegate<long>(in Block256<long> a, in Block256<long> c)
; vnegate_gb256x64i_256x64i[103] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 03 45 03 c1 41 c1 f8 02 45 33 c9 45 85 c0 7e 3d 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 02 4d 63 d2 4a 8d 04 d0 c5 ff f0 00 c5 f4 57 c9 c5 f5 fb c0 48 8b 02 45 8b d1 41 c1 e2 02 4d 63 d2 4a 8d 04 d0 c5 fe 7f 00 41 ff c1 45 3b c8 7c c6 48 8b c2 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 02}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 0060h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3d}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 02}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h lea rax,[rax+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 d0}
0037h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003bh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003fh vpsubq ymm0,ymm1,ymm0                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 f5 fb c0}
0043h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0046h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0049h shl r10d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 02}
004dh movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0050h lea rax,[rax+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 d0}
0054h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0058h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
005bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
005eh jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0060h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0063h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
