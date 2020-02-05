------------------------------------------------------------------------------------------------------------------------
; Sign:int signum<float>(float src)
; signum_g32f[18] = {48 83 ec 28 c5 f8 77 e8 e4 06 4d ff 90 48 83 c4 28 c3}
; TermCode = RET_ZEDx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h call 7ff7c63d7fa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 06 4d ff}
000ch nop                                     ; NOP || o32 90 || encoded[1]{90}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum<double>(double src)
; signum_g64f[18] = {48 83 ec 28 c5 f8 77 e8 8c 06 4d ff 90 48 83 c4 28 c3}
; TermCode = RET_ZEDx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h call 7ff7c63d7f78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 06 4d ff}
000ch nop                                     ; NOP || o32 90 || encoded[1]{90}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
