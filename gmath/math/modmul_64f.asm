; double modmul(double a, double b, double m)
; modmul_64f[7ff7c719a290h, 7ff7c719a2aah][26] = {48 83 ec 28 c5 f8 77 c5 fb 59 c1 c5 f8 28 ca e8 2c 73 e3 5e 90 48 83 c4 28 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:56:387
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmulsd xmm0,xmm0,xmm1                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c1}
000bh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
000fh call 7ff825fd15d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 73 e3 5e}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
