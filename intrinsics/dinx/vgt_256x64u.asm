; Vector256<ulong> vgt(Vector256<ulong> x, Vector256<ulong> y)
; vgt_256x64u[7ff7c6bdbac0h, 7ff7c6bdbac7h][7] = {50 c5 f8 77 90 48 b8}
; Capture completion code, ZEDx6
; 2020-01-24 18:44:59:329
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h (bad)                                   ; <invalid> || <invalid> || encoded[2]{48 b8}
