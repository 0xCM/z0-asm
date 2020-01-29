------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vsad(Vector128<byte> lhs, Vector128<byte> rhs)
; vsad_128x8u_128x8u[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 f6 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpsadbw xmm0,xmm0,[r8]                  ; VPSADBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F6 /r || encoded[5]{c4 c1 79 f6 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vsad(Vector256<byte> lhs, Vector256<byte> rhs)
; vsad_256x8u_256x8u[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d f6 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpsadbw ymm0,ymm0,[r8]                  ; VPSADBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F6 /r || encoded[5]{c4 c1 7d f6 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
