; Vector256<ushort> vduplicate(N1 parity, N32 w, Vector256<ushort> src)
; vduplicate__n1_n32_256x16u[7ff7c6becf90h, 7ff7c6becfa9h][25] = {c5 f8 77 66 90 c4 c1 7d 10 01 c5 fe 16 c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:02:130
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ah vmovshdup ymm0,ymm0                     ; VMOVSHDUP ymm1, ymm2/m256 || VEX.256.F3.0F.WIG 16 /r || encoded[4]{c5 fe 16 c0}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
