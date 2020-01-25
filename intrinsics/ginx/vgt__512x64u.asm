; Vector512<ulong> vgt<ulong>(in Vector512<ulong> x, in Vector512<ulong> y)
; vgt__512x64u[7ff7c71f2cf0h, 7ff7c71f2d02h][18] = {48 83 ec 18 c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 48 b8}
; Capture completion code, ZEDx6
; 2020-01-25 02:11:09:393
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
000bh vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
0010h (bad)                                   ; <invalid> || <invalid> || encoded[2]{48 b8}
