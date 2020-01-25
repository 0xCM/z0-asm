; Vector256<ulong> max<ulong>(Vector256<ulong> a, Vector256<ulong> b)
; max_g256x64u[7ff7c6cdea10h, 7ff7c6cdea28h][24] = {50 c5 f8 77 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fc 28 d0 c5 fc 28 d9 48 b8}
; Capture completion code, ZEDx6
; 2020-01-24 02:54:53:986
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0012h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0016h (bad)                                   ; <invalid> || <invalid> || encoded[2]{48 b8}
