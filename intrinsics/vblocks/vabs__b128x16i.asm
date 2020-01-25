; ref Block128<Int16> vabs<Int16>(in Block128<Int16> a, in Block128<Int16> c)
; vabs__b128x16i[7ff7c6de25a0h, 7ff7c6de25fdh][93] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 07 45 03 c1 41 c1 f8 03 45 33 c9 45 85 c0 7e 36 48 8b 01 48 8b 0a 4c 8b d0 45 8b d9 41 c1 e3 03 4d 63 db 49 d1 e3 4d 03 d3 c4 c1 7b f0 02 c4 e2 79 1d c0 4c 8b d1 4d 03 d3 c4 c1 7a 7f 02 41 ff c1 45 3b c8 7c d0 48 8b c2 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:13:558
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
0021h jle short 0059h                         ; JLE rel8 || 7E cb || encoded[2]{7e 36}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
0029h mov r10,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d0}
002ch mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
002fh shl r11d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 03}
0033h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0036h shl r11,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e3}
0039h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
003ch vlddqu xmm0,xmmword ptr [r10]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7b f0 02}
0041h vpabsw xmm0,xmm0                        ; VPABSW xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 1D /r || encoded[5]{c4 e2 79 1d c0}
0046h mov r10,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d1}
0049h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
004ch vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0051h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0054h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0057h jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0059h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
