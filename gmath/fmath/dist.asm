------------------------------------------------------------------------------------------------------------------------
; ulong dist(double a, double b)
; dist_64f[47] = {48 83 ec 28 c5 f8 77 c5 f9 2e c1 73 13 c5 f3 5c c8 c5 f8 28 c1 e8 26 0d 28 5f 90 48 83 c4 28 c3 c5 fb 5c c1 e8 17 0d 28 5f 90 48 83 c4 28 c3}
; TermCode = RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
000bh jae short 0020h                         ; JAE rel8 || 73 cb || encoded[2]{73 13}
000dh vsubsd xmm1,xmm1,xmm0                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 f3 5c c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h call 7ff825fcd940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 0d 28 5f}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
0020h vsubsd xmm0,xmm0,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c1}
0024h call 7ff825fcd940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 0d 28 5f}
0029h nop                                     ; NOP || o32 90 || encoded[1]{90}
002ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
