; Vector128<Int16> vsllr(Vector128<Int16> src, Int16 count)
; vsllr__128x16i[7ff7c6be4780h, 7ff7c6be479dh][29] = {c5 f8 77 66 90 49 0f bf c0 c5 f9 6e c0 c5 f9 10 0a c5 f1 f1 c0 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:00:787
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0011h vpsllw xmm0,xmm1,xmm0                   ; VPSLLW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F1 /r || encoded[4]{c5 f1 f1 c0}
0015h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
