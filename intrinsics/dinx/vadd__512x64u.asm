; Vector512<ulong> vadd(in Vector512<ulong> x, in Vector512<ulong> y)
; vadd__512x64u[7ff7c71e28e0h, 7ff7c71e2909h][41] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d d4 00 c5 fd 10 4a 20 c4 c1 75 d4 48 20 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:04:597
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddq ymm0,ymm0,[r8]                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[5]{c4 c1 7d d4 00}
000eh vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0013h vpaddq ymm1,ymm1,[r8+20h]               ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[6]{c4 c1 75 d4 48 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
