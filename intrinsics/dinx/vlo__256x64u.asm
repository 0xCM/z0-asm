; ref Pair<ulong> vlo(Vector256<ulong> src, ref Pair<ulong> dst)
; vlo__256x64u[7ff7c71dea80h, 7ff7c71deaa6h][38] = {c5 f8 77 66 90 c5 fe 6f 01 c4 e1 f9 7e c0 48 89 02 c5 fe 6f 01 c4 e3 f9 16 c0 01 48 89 42 08 48 8b c2 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:04:261
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovdqu ymm0,ymmword ptr [rcx]          ; VMOVDQU ymm1, ymm2/m256 || VEX.256.F3.0F.WIG 6F /r || encoded[4]{c5 fe 6f 01}
0009h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
000eh mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0011h vmovdqu ymm0,ymmword ptr [rcx]          ; VMOVDQU ymm1, ymm2/m256 || VEX.256.F3.0F.WIG 6F /r || encoded[4]{c5 fe 6f 01}
0015h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001bh mov [rdx+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 42 08}
001fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0022h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
