; Vector128<ulong> vxorslv(Vector128<ulong> x, Vector128<ulong> counts)
; vxorslv_128x64u[7ff7c6be2830h, 7ff7c6be2853h][35] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c4 c1 79 10 10 c4 e2 f1 47 ca c5 f9 ef c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:626
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
0012h vpsllvq xmm1,xmm1,xmm2                  ; VPSLLVQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 47 /r || encoded[5]{c4 e2 f1 47 ca}
0017h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
