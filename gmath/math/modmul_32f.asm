; float modmul(float a, float b, float m)
; modmul_32f[7ff7c7187440h, 7ff7c718745ah][26] = {48 83 ec 28 c5 f8 77 c5 fa 59 c1 c5 f8 28 ca e8 0c a2 e4 5e 90 48 83 c4 28 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:37:186
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmulss xmm0,xmm0,xmm1                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c1}
000bh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
000fh call 7ff825fd1660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c a2 e4 5e}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
