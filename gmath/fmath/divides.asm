------------------------------------------------------------------------------------------------------------------------
; bit divides(float a, float b)
; divides_(32f,32f)[48] = {48 83 ec 28 c5 f8 77 c5 f8 28 d0 c5 f8 28 c1 c5 f8 28 ca e8 28 68 1d 5f c5 f0 57 c9 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
0013h call 7ff827391660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 68 1d 5f}
0018h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
001ch vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0020h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0023h jp short 0028h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0025h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(double a, double b)
; divides_(64f,64f)[48] = {48 83 ec 28 c5 f8 77 c5 f8 28 d0 c5 f8 28 c1 c5 f8 28 ca e8 48 67 1d 5f c5 f0 57 c9 c5 f9 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
0013h call 7ff8273915d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 67 1d 5f}
0018h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
001ch vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0020h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0023h jp short 0028h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0025h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
