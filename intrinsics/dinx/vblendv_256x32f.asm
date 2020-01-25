; Vector256<float> vblendv(Vector256<float> x, Vector256<float> y, Vector256<float> spec)
; vblendv_256x32f[7ff7c6bdaee0h, 7ff7c6bdaeffh][31] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 09 c4 c3 7d 4a 00 10 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:280
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
000eh vblendvps ymm0,ymm0,[r8],ymm1           ; VBLENDVPS ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4A /r /is4 || encoded[6]{c4 c3 7d 4a 00 10}
0014h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
