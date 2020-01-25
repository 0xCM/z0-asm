; ref Block128<ulong> vgt<ulong>(in Block128<ulong> a, in Block128<ulong> b, in Block128<ulong> c)
; vgt__b128x64u[7ff7c6fd6bd0h, 7ff7c6fd6c25h][85] = {50 c5 f8 77 90 41 8b 40 08 44 8b c8 41 c1 e9 1f 41 03 c1 d1 f8 45 33 c9 85 c0 7e 75 4c 8b 11 45 8b d9 41 d1 e3 4d 63 db 49 c1 e3 03 4d 03 d3 c4 c1 7b f0 02 4c 8b 12 4d 03 d3 c4 c1 7b f0 0a c5 ec 57 d2 c4 e3 6d 38 c0 00 c5 ec 57 d2 c4 e3 6d 38 c9 00 49 ba}
; Capture completion code, ZEDx6
; 2020-01-24 18:45:15:076
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 40 08}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch shr r9d,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 1f}
0010h add eax,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c1}
0013h sar eax,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f8}
0015h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah jle short 0091h                         ; JLE rel8 || 7E cb || encoded[2]{7e 75}
001ch mov r10,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 11}
001fh mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0022h shl r11d,1                              ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e3}
0025h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0028h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
002ch add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
002fh vlddqu xmm0,xmmword ptr [r10]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7b f0 02}
0034h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0037h add r10,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d3}
003ah vlddqu xmm1,xmmword ptr [r10]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7b f0 0a}
003fh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0043h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0049h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
004dh vinserti128 ymm1,ymm2,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 00}
0053h (bad)                                   ; <invalid> || <invalid> || encoded[2]{49 ba}
