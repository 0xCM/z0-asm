------------------------------------------------------------------------------------------------------------------------
; float max<float>(float a, float b)
; max_g32f_32f[18] = {c5 f8 77 66 90 c5 f8 2e c1 77 06 c5 f8 28 c1 eb 00 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h ja short 0011h                          ; JA rel8 || 77 cb || encoded[2]{77 06}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh jmp short 0011h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double max<double>(double a, double b)
; max_g64f_64f[18] = {c5 f8 77 66 90 c5 f9 2e c1 77 06 c5 f8 28 c1 eb 00 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h ja short 0011h                          ; JA rel8 || 77 cb || encoded[2]{77 06}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh jmp short 0011h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
