------------------------------------------------------------------------------------------------------------------------
; ref BitGrid<byte> and<byte>(in BitGrid<byte> gx, in BitGrid<byte> gy, in BitGrid<byte> gz)
; and_gdbg8x8u(in)_dbg8x8u(in)_dbg8x8u(in)[124] = {56 c5 f8 77 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 1f 45 03 ca 41 c1 f9 05 45 33 d2 45 85 c9 7e 51 48 8b 01 48 8b 12 49 8b 08 4c 8b d8 41 8b f2 c1 e6 05 48 63 f6 4c 03 de c4 c1 7f f0 03 4c 8b da 41 8b f2 c1 e6 05 48 63 f6 4c 03 de c4 c1 7f f0 0b c5 fd db c1 4c 8b d9 41 8b f2 c1 e6 05 48 63 f6 4c 03 de c4 c1 7e 7f 03 41 ff c2 45 3b d1 7c b8 49 8b c0 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 1f}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 05}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0074h                         ; JLE rel8 || 7E cb || encoded[2]{7e 51}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0029h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
002ch mov r11,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d8}
002fh mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0032h shl esi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 05}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
003bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0040h mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0043h mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0046h shl esi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 05}
0049h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
004ch add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
004fh vlddqu ymm1,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 0b}
0054h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0058h mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
005bh mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
005eh shl esi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 05}
0061h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0064h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
0067h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
006ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
006fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0072h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c b8}
0074h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0077h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitGrid<ushort> and<ushort>(in BitGrid<ushort> gx, in BitGrid<ushort> gy, in BitGrid<ushort> gz)
; and_gdbg16x16u(in)_dbg16x16u(in)_dbg16x16u(in)[109] = {56 c5 f8 77 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 0f 45 03 ca 41 c1 f9 04 45 33 d2 45 85 c9 7e 42 48 8b 01 48 8b 12 49 8b 08 4c 8b d8 41 8b f2 c1 e6 04 48 63 f6 48 d1 e6 4c 03 de c4 c1 7f f0 03 4c 8b da 4c 03 de c4 c1 7f f0 0b c5 fd db c1 4c 8b d9 4c 03 de c4 c1 7e 7f 03 41 ff c2 45 3b d1 7c c7 49 8b c0 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,0fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 0f}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 04}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0065h                         ; JLE rel8 || 7E cb || encoded[2]{7e 42}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0029h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
002ch mov r11,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d8}
002fh mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0032h shl esi,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 04}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h shl rsi,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e6}
003bh add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
003eh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0043h mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0046h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
0049h vlddqu ymm1,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 0b}
004eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0052h mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
0055h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
0058h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
005dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0060h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0063h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0065h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0068h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitGrid<uint> and<uint>(in BitGrid<uint> gx, in BitGrid<uint> gy, in BitGrid<uint> gz)
; and_gdbg32x32u(in)_dbg32x32u(in)_dbg32x32u(in)[110] = {56 c5 f8 77 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 07 45 03 ca 41 c1 f9 03 45 33 d2 45 85 c9 7e 43 48 8b 01 48 8b 12 49 8b 08 4c 8b d8 41 8b f2 c1 e6 03 48 63 f6 48 c1 e6 02 4c 03 de c4 c1 7f f0 03 4c 8b da 4c 03 de c4 c1 7f f0 0b c5 fd db c1 4c 8b d9 4c 03 de c4 c1 7e 7f 03 41 ff c2 45 3b d1 7c c6 49 8b c0 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,7                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 07}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 03}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0066h                         ; JLE rel8 || 7E cb || encoded[2]{7e 43}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0029h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
002ch mov r11,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d8}
002fh mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0032h shl esi,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 03}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h shl rsi,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 02}
003ch add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
003fh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0044h mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0047h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
004ah vlddqu ymm1,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 0b}
004fh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0053h mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
0056h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
0059h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
005eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0061h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0064h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0066h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0069h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitGrid<ulong> and<ulong>(in BitGrid<ulong> gx, in BitGrid<ulong> gy, in BitGrid<ulong> gz)
; and_gdbg64x64u(in)_dbg64x64u(in)_dbg64x64u(in)[104] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 03 45 03 ca 41 c1 f9 02 45 33 d2 45 85 c9 7e 3e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 02 4d 63 db 49 c1 e3 03 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 fd db c1 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c8 49 8b c0 c5 f8 77 c3}
; TermCode = RET_INTR
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
