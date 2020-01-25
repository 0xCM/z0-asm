; ref Block256<Int16> vselect<Int16>(in Block256<Int16> a, in Block256<Int16> b, in Block256<Int16> c, in Block256<Int16> dst)
; vselect__b256x16i[7ff7c6df70a0h, 7ff7c6df7120h][128] = {56 c5 f8 77 90 45 8b 51 08 45 8b da 41 c1 fb 1f 41 83 e3 0f 45 03 d3 41 c1 fa 04 45 33 db 45 85 d2 7e 55 48 8b 01 48 8b 02 49 8b 00 48 8b 01 41 8b f3 c1 e6 04 48 63 f6 48 d1 e6 48 03 c6 c5 ff f0 00 48 8b 02 48 03 c6 c5 ff f0 08 49 8b 00 48 03 c6 c5 ff f0 10 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 8b 01 48 03 c6 c5 fe 7f 00 41 ff c3 45 3b da 7c b4 49 8b c1 c5 f8 77 5e c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:14:541
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
