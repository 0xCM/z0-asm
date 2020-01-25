; bit between<float>(float x, float a, float b)
; between_g32f[7ff7c71bf690h, 7ff7c71bf6adh][29] = {c5 f8 77 66 90 c5 f8 2e c1 72 0c c5 f8 2e d0 0f 93 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:00:497
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h jb short 0017h                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
000bh vucomiss xmm2,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e d0}
000fh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
