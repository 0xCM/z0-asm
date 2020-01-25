; bit neq<float>(float a, float b)
; neq_g32f[7ff7c71ac9a0h, 7ff7c71ac9b5h][21] = {c5 f8 77 66 90 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:40:594
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
000ch jp short 0011h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
000eh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
