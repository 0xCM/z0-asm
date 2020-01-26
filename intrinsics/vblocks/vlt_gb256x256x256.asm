------------------------------------------------------------------------------------------------------------------------
; ref Block256<byte> vlt<byte>(in Block256<byte> a, in Block256<byte> b, in Block256<byte> c)
; vlt_gb256x8u_256x8u_256x8u[147] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 f9 1f 41 83 e1 1f 41 03 c1 c1 f8 05 45 33 c9 85 c0 7e 67 4c 8b 11 45 8b d9 41 c1 e3 05 4d 63 db 4d 03 d3 c4 c1 7f f0 02 4c 8b 12 45 8b d9 41 c1 e3 05 4d 63 db 4d 03 d3 c4 c1 7f f0 0a c7 44 24 04 80 00 00 00 4c 8d 54 24 04 c4 e2 7d 78 54 24 04 c5 fd ef c2 c5 f5 ef ca c5 f5 64 c0 4d 8b 10 45 8b d9 41 c1 e3 05 4d 63 db 4d 03 d3 c4 c1 7e 7f 02 41 ff c1 44 3b c8 7c 99 49 8b c0 c5 f8 77 48 83 c4 08 c3}
; Capture completion code = RET_INTRx2
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
; vlt_gb256x8i_256x8i_256x8i[120] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 1f 45 03 ca 41 c1 f9 05 45 33 d2 45 85 c9 7e 4e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 ff f0 00 48 8b 02 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 ff f0 08 c5 f5 64 c0 49 8b 00 45 8b da 41 c1 e3 05 4d 63 db 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c b8 49 8b c0 c5 f8 77 c3}
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
; vlt_gb256x16u_256x16u_256x16u[130] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 f9 1f 41 83 e1 0f 41 03 c1 c1 f8 04 45 33 c9 85 c0 7e 56 4c 8b 11 45 8b d9 41 c1 e3 04 4d 63 db 49 d1 e3 4d 03 d3 c4 c1 7f f0 02 4c 8b 12 4d 03 d3 c4 c1 7f f0 0a c7 44 24 04 00 80 00 00 4c 8d 54 24 04 c4 e2 7d 79 54 24 04 c5 fd ef c2 c5 f5 ef ca c5 f5 65 c0 4d 8b 10 4d 03 d3 c4 c1 7e 7f 02 41 ff c1 44 3b c8 7c aa 49 8b c0 c5 f8 77 48 83 c4 08 c3}
; Capture completion code = RET_INTRx2
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
; ref Block256<Int16> vlt<Int16>(in Block256<Int16> a, in Block256<Int16> b, in Block256<Int16> c)
; vlt_gb256x16i_256x16i_256x16i[103] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 0f 45 03 ca 41 c1 f9 04 45 33 d2 45 85 c9 7e 3d 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 04 4d 63 db 49 d1 e3 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 f5 65 c0 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c9 49 8b c0 c5 f8 77 c3}
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
; vlt_gb256x32u_256x32u_256x32u[131] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 f9 1f 41 83 e1 07 41 03 c1 c1 f8 03 45 33 c9 85 c0 7e 57 4c 8b 11 45 8b d9 41 c1 e3 03 4d 63 db 49 c1 e3 02 4d 03 d3 c4 c1 7f f0 02 4c 8b 12 4d 03 d3 c4 c1 7f f0 0a c7 44 24 04 00 00 00 80 4c 8d 54 24 04 c4 e2 7d 58 54 24 04 c5 fd ef c2 c5 f5 ef ca c5 f5 66 c0 4d 8b 10 4d 03 d3 c4 c1 7e 7f 02 41 ff c1 44 3b c8 7c a9 49 8b c0 c5 f8 77 48 83 c4 08 c3}
; Capture completion code = RET_INTRx2
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
; vlt_gb256x32i_256x32i_256x32i[104] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 07 45 03 ca 41 c1 f9 03 45 33 d2 45 85 c9 7e 3e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 03 4d 63 db 49 c1 e3 02 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 f5 66 c0 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c8 49 8b c0 c5 f8 77 c3}
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
; vlt_gb256x64i_256x64i_256x64i[105] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 03 45 03 ca 41 c1 f9 02 45 33 d2 45 85 c9 7e 3f 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 02 4d 63 db 49 c1 e3 03 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c4 e2 75 37 c0 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c7 49 8b c0 c5 f8 77 c3}
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
