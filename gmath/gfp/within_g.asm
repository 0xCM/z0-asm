------------------------------------------------------------------------------------------------------------------------
; bit within<float>(float a, float b, float delta)
; within_g[32f](32f,32f,32f)[45] = {c5 f8 77 66 90 c5 f8 2e c1 77 10 c5 f2 5c c8 c5 f8 2e d1 0f 93 c0 0f b6 c0 eb 0e c5 fa 5c c1 c5 f8 2e d0 0f 93 c0 0f b6 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h ja short 001bh                          ; JA rel8 || 77 cb || encoded[2]{77 10}
000bh vsubss xmm1,xmm1,xmm0                   ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[4]{c5 f2 5c c8}
000fh vucomiss xmm2,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e d1}
0013h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h jmp short 0029h                         ; JMP rel8 || EB cb || encoded[2]{eb 0e}
001bh vsubss xmm0,xmm0,xmm1                   ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[4]{c5 fa 5c c1}
001fh vucomiss xmm2,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e d0}
0023h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0026h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within<double>(double a, double b, double delta)
; within_g[64f](64f,64f,64f)[45] = {c5 f8 77 66 90 c5 f9 2e c1 77 10 c5 f3 5c c8 c5 f9 2e d1 0f 93 c0 0f b6 c0 eb 0e c5 fb 5c c1 c5 f9 2e d0 0f 93 c0 0f b6 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h ja short 001bh                          ; JA rel8 || 77 cb || encoded[2]{77 10}
000bh vsubsd xmm1,xmm1,xmm0                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 f3 5c c8}
000fh vucomisd xmm2,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e d1}
0013h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h jmp short 0029h                         ; JMP rel8 || EB cb || encoded[2]{eb 0e}
001bh vsubsd xmm0,xmm0,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c1}
001fh vucomisd xmm2,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e d0}
0023h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0026h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
