; Vector128<long> vinc<long>(Vector128<long> src)
; vinc_g128x64i[7ff7c6dd74c0h, 7ff7c6dd74e3h][35] = {c5 f8 77 66 90 c5 f9 10 02 48 b8 19 56 2c e0 fe 01 00 00 c5 fb f0 08 c5 f9 d4 c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:12:207
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h mov rax,1fee02c5619h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 19 56 2c e0 fe 01 00 00}
0013h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0017h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
