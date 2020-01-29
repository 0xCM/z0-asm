------------------------------------------------------------------------------------------------------------------------
; ref Block256<byte> vselect<byte>(in Block256<byte> a, in Block256<byte> b, in Block256<byte> c, in Block256<byte> dst)
; vselect_gb256x8u(in)_b256x8u(in)_b256x8u(in)_b256x8u(in)[141] = {57 56 c5 f8 77 45 8b 51 08 45 8b da 41 c1 fb 1f 41 83 e3 1f 45 03 d3 41 c1 fa 05 45 33 db 45 85 d2 7e 61 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 c1 e6 05 8b fe 48 63 ff 48 03 c7 c5 ff f0 00 48 8b 02 8b fe 48 63 ff 48 03 c7 c5 ff f0 08 49 8b 00 8b fe 48 63 ff 48 03 c7 c5 ff f0 10 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 8b 01 48 63 f6 48 03 c6 c5 fe 7f 00 41 ff c3 45 3b da 7c a8 49 8b c1 c5 f8 77 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov r10d,[r9+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 51 08}
0009h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
000ch sar r11d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fb 1f}
0010h and r11d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 1f}
0014h add r10d,r11d                           ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d3}
0017h sar r10d,5                              ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 05}
001bh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001eh test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0021h jle short 0084h                         ; JLE rel8 || 7E cb || encoded[2]{7e 61}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
002ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002fh mov esi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f3}
0032h shl esi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 05}
0035h mov edi,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fe}
0037h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
003ah add rax,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c7}
003dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0041h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0044h mov edi,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fe}
0046h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0049h add rax,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c7}
004ch vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0050h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0053h mov edi,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fe}
0055h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0058h add rax,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c7}
005bh vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
005fh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0063h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
0067h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
006bh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
006fh mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0072h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0075h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0078h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
007ch inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
007fh cmp r11d,r10d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b da}
0082h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c a8}
0084h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0087h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<sbyte> vselect<sbyte>(in Block256<sbyte> a, in Block256<sbyte> b, in Block256<sbyte> c, in Block256<sbyte> dst)
; vselect_gb256x8i(in)_b256x8i(in)_b256x8i(in)_b256x8i(in)[141] = {57 56 c5 f8 77 45 8b 51 08 45 8b da 41 c1 fb 1f 41 83 e3 1f 45 03 d3 41 c1 fa 05 45 33 db 45 85 d2 7e 61 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 c1 e6 05 8b fe 48 63 ff 48 03 c7 c5 ff f0 00 48 8b 02 8b fe 48 63 ff 48 03 c7 c5 ff f0 08 49 8b 00 8b fe 48 63 ff 48 03 c7 c5 ff f0 10 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 8b 01 48 63 f6 48 03 c6 c5 fe 7f 00 41 ff c3 45 3b da 7c a8 49 8b c1 c5 f8 77 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov r10d,[r9+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 51 08}
0009h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
000ch sar r11d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fb 1f}
0010h and r11d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 1f}
0014h add r10d,r11d                           ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d3}
0017h sar r10d,5                              ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 05}
001bh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001eh test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0021h jle short 0084h                         ; JLE rel8 || 7E cb || encoded[2]{7e 61}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
002ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002fh mov esi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f3}
0032h shl esi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 05}
0035h mov edi,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fe}
0037h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
003ah add rax,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c7}
003dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0041h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0044h mov edi,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fe}
0046h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0049h add rax,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c7}
004ch vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0050h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0053h mov edi,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fe}
0055h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0058h add rax,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c7}
005bh vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
005fh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0063h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
0067h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
006bh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
006fh mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0072h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0075h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0078h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
007ch inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
007fh cmp r11d,r10d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b da}
0082h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c a8}
0084h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0087h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<ushort> vselect<ushort>(in Block256<ushort> a, in Block256<ushort> b, in Block256<ushort> c, in Block256<ushort> dst)
; vselect_gb256x16u(in)_b256x16u(in)_b256x16u(in)_b256x16u(in)[128] = {56 c5 f8 77 90 45 8b 51 08 45 8b da 41 c1 fb 1f 41 83 e3 0f 45 03 d3 41 c1 fa 04 45 33 db 45 85 d2 7e 55 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 c1 e6 04 48 63 f6 48 d1 e6 48 03 c6 c5 ff f0 00 48 8b 02 48 03 c6 c5 ff f0 08 49 8b 00 48 03 c6 c5 ff f0 10 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 8b 01 48 03 c6 c5 fe 7f 00 41 ff c3 45 3b da 7c b4 49 8b c1 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r10d,[r9+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 51 08}
0009h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
000ch sar r11d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fb 1f}
0010h and r11d,0fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 0f}
0014h add r10d,r11d                           ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d3}
0017h sar r10d,4                              ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 04}
001bh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001eh test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0021h jle short 0078h                         ; JLE rel8 || 7E cb || encoded[2]{7e 55}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
002ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002fh mov esi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f3}
0032h shl esi,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 04}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h shl rsi,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e6}
003bh add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
003eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0042h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0045h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0048h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
004ch mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
004fh add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0052h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
0056h vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
005ah vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
005eh vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
0062h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0066h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0069h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
006ch vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0070h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0073h cmp r11d,r10d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b da}
0076h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c b4}
0078h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
007bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<short> vselect<short>(in Block256<short> a, in Block256<short> b, in Block256<short> c, in Block256<short> dst)
; vselect_gb256x16i(in)_b256x16i(in)_b256x16i(in)_b256x16i(in)[128] = {56 c5 f8 77 90 45 8b 51 08 45 8b da 41 c1 fb 1f 41 83 e3 0f 45 03 d3 41 c1 fa 04 45 33 db 45 85 d2 7e 55 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 c1 e6 04 48 63 f6 48 d1 e6 48 03 c6 c5 ff f0 00 48 8b 02 48 03 c6 c5 ff f0 08 49 8b 00 48 03 c6 c5 ff f0 10 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 8b 01 48 03 c6 c5 fe 7f 00 41 ff c3 45 3b da 7c b4 49 8b c1 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r10d,[r9+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 51 08}
0009h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
000ch sar r11d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fb 1f}
0010h and r11d,0fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 0f}
0014h add r10d,r11d                           ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d3}
0017h sar r10d,4                              ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 04}
001bh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001eh test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0021h jle short 0078h                         ; JLE rel8 || 7E cb || encoded[2]{7e 55}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
002ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002fh mov esi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f3}
0032h shl esi,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 04}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h shl rsi,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e6}
003bh add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
003eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0042h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0045h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0048h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
004ch mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
004fh add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0052h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
0056h vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
005ah vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
005eh vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
0062h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0066h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0069h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
006ch vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0070h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0073h cmp r11d,r10d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b da}
0076h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c b4}
0078h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
007bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<uint> vselect<uint>(in Block256<uint> a, in Block256<uint> b, in Block256<uint> c, in Block256<uint> dst)
; vselect_gb256x32u(in)_b256x32u(in)_b256x32u(in)_b256x32u(in)[129] = {56 c5 f8 77 90 45 8b 51 08 45 8b da 41 c1 fb 1f 41 83 e3 07 45 03 d3 41 c1 fa 03 45 33 db 45 85 d2 7e 56 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 c1 e6 03 48 63 f6 48 c1 e6 02 48 03 c6 c5 ff f0 00 48 8b 02 48 03 c6 c5 ff f0 08 49 8b 00 48 03 c6 c5 ff f0 10 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 8b 01 48 03 c6 c5 fe 7f 00 41 ff c3 45 3b da 7c b3 49 8b c1 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r10d,[r9+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 51 08}
0009h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
000ch sar r11d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fb 1f}
0010h and r11d,7                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 07}
0014h add r10d,r11d                           ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d3}
0017h sar r10d,3                              ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 03}
001bh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001eh test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0021h jle short 0079h                         ; JLE rel8 || 7E cb || encoded[2]{7e 56}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
002ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002fh mov esi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f3}
0032h shl esi,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 03}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h shl rsi,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 02}
003ch add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0046h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0049h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
004dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0050h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0053h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
0057h vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
005bh vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
005fh vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
0063h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0067h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
006ah add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
006dh vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0071h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0074h cmp r11d,r10d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b da}
0077h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c b3}
0079h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
007ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<int> vselect<int>(in Block256<int> a, in Block256<int> b, in Block256<int> c, in Block256<int> dst)
; vselect_gb256x32i(in)_b256x32i(in)_b256x32i(in)_b256x32i(in)[129] = {56 c5 f8 77 90 45 8b 51 08 45 8b da 41 c1 fb 1f 41 83 e3 07 45 03 d3 41 c1 fa 03 45 33 db 45 85 d2 7e 56 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 c1 e6 03 48 63 f6 48 c1 e6 02 48 03 c6 c5 ff f0 00 48 8b 02 48 03 c6 c5 ff f0 08 49 8b 00 48 03 c6 c5 ff f0 10 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 8b 01 48 03 c6 c5 fe 7f 00 41 ff c3 45 3b da 7c b3 49 8b c1 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r10d,[r9+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 51 08}
0009h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
000ch sar r11d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fb 1f}
0010h and r11d,7                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 07}
0014h add r10d,r11d                           ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d3}
0017h sar r10d,3                              ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 03}
001bh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001eh test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0021h jle short 0079h                         ; JLE rel8 || 7E cb || encoded[2]{7e 56}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
002ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002fh mov esi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f3}
0032h shl esi,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 03}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h shl rsi,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 02}
003ch add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0046h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0049h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
004dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0050h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0053h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
0057h vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
005bh vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
005fh vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
0063h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0067h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
006ah add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
006dh vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0071h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0074h cmp r11d,r10d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b da}
0077h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c b3}
0079h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
007ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<ulong> vselect<ulong>(in Block256<ulong> a, in Block256<ulong> b, in Block256<ulong> c, in Block256<ulong> dst)
; vselect_gb256x64u(in)_b256x64u(in)_b256x64u(in)_b256x64u(in)[129] = {56 c5 f8 77 90 45 8b 51 08 45 8b da 41 c1 fb 1f 41 83 e3 03 45 03 d3 41 c1 fa 02 45 33 db 45 85 d2 7e 56 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 c1 e6 02 48 63 f6 48 c1 e6 03 48 03 c6 c5 ff f0 00 48 8b 02 48 03 c6 c5 ff f0 08 49 8b 00 48 03 c6 c5 ff f0 10 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 8b 01 48 03 c6 c5 fe 7f 00 41 ff c3 45 3b da 7c b3 49 8b c1 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r10d,[r9+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 51 08}
0009h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
000ch sar r11d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fb 1f}
0010h and r11d,3                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 03}
0014h add r10d,r11d                           ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d3}
0017h sar r10d,2                              ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 02}
001bh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001eh test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0021h jle short 0079h                         ; JLE rel8 || 7E cb || encoded[2]{7e 56}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
002ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002fh mov esi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f3}
0032h shl esi,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 02}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h shl rsi,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 03}
003ch add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0046h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0049h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
004dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0050h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0053h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
0057h vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
005bh vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
005fh vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
0063h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0067h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
006ah add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
006dh vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0071h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0074h cmp r11d,r10d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b da}
0077h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c b3}
0079h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
007ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<long> vselect<long>(in Block256<long> a, in Block256<long> b, in Block256<long> c, in Block256<long> dst)
; vselect_gb256x64i(in)_b256x64i(in)_b256x64i(in)_b256x64i(in)[129] = {56 c5 f8 77 90 45 8b 51 08 45 8b da 41 c1 fb 1f 41 83 e3 03 45 03 d3 41 c1 fa 02 45 33 db 45 85 d2 7e 56 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 c1 e6 02 48 63 f6 48 c1 e6 03 48 03 c6 c5 ff f0 00 48 8b 02 48 03 c6 c5 ff f0 08 49 8b 00 48 03 c6 c5 ff f0 10 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 8b 01 48 03 c6 c5 fe 7f 00 41 ff c3 45 3b da 7c b3 49 8b c1 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r10d,[r9+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 51 08}
0009h mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
000ch sar r11d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fb 1f}
0010h and r11d,3                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 03}
0014h add r10d,r11d                           ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d3}
0017h sar r10d,2                              ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 02}
001bh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001eh test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0021h jle short 0079h                         ; JLE rel8 || 7E cb || encoded[2]{7e 56}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
002ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002fh mov esi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f3}
0032h shl esi,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 02}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h shl rsi,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 03}
003ch add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0046h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0049h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
004dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0050h add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
0053h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
0057h vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
005bh vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
005fh vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
0063h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0067h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
006ah add rax,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c6}
006dh vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0071h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0074h cmp r11d,r10d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b da}
0077h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c b3}
0079h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
007ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
