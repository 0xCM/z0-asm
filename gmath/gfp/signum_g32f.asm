; Sign:int signum<float>(float src)
; signum_g32f[7ff7c71ac1f0h, 7ff7c71ac202h][18] = {48 83 ec 28 c5 f8 77 e8 94 87 20 ff 90 48 83 c4 28 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:40:523
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h call 7ff7c63b4990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 87 20 ff}
000ch nop                                     ; NOP || o32 90 || encoded[1]{90}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
