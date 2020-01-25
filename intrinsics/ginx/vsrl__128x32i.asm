; Vector128<int> vsrl<int>(Vector128<int> x, byte count)
; vsrl__128x32i[7ff7c6c13210h, 7ff7c6c1322dh][29] = {c5 f8 77 66 90 c5 f9 10 02 41 0f b6 c0 c5 f9 6e c8 c5 f9 d2 c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:06:177
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
000dh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0011h vpsrld xmm0,xmm0,xmm1                   ; VPSRLD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D2 /r || encoded[4]{c5 f9 d2 c1}
0015h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
