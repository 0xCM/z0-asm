; Vector128<long> vdecrements<long>(N128 w)
; vdecrements~n128_g64x64i[7ff7c6fddc20h, 7ff7c6fddc3bh][27] = {c5 f8 77 66 90 48 b8 b9 54 2c e0 fe 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:16:155
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1fee02c54b9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b9 54 2c e0 fe 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
