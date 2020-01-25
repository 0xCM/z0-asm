; Vector128<ulong> vgt(Vector128<ulong> x, Vector128<ulong> y)
; vgt_128x64u[7ff7c71d5bb0h, 7ff7c71d5bd4h][36] = {50 c5 f8 77 90 c5 fc 57 c0 c5 f9 10 0a c4 e3 7d 38 c1 00 c5 f4 57 c9 c4 c1 79 10 10 c4 e3 75 38 ca 00 48 b8}
; Capture completion code, ZEDx6
; 2020-01-25 02:11:02:524
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinserti128 ymm0,ymm0,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 00}
0013h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0017h vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
001ch vinserti128 ymm1,ymm1,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 00}
0022h (bad)                                   ; <invalid> || <invalid> || encoded[2]{48 b8}
