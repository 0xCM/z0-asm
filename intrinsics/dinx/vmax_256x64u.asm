; Vector256<ulong> vmax(Vector256<ulong> x, Vector256<ulong> y)
; vmax_256x64u[7ff7c71d23f0h, 7ff7c71d2400h][16] = {50 c5 f8 77 90 c5 fd 10 02 c4 c1 7d 10 08 48 b8}
; Capture completion code, ZEDx6
; 2020-01-25 02:11:02:183
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh (bad)                                   ; <invalid> || <invalid> || encoded[2]{48 b8}
