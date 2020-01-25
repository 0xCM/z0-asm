; Vector256<int> vconvert(in Block64<sbyte> src, N256 w, int t)
; vconvert~8x8i~8x32i~vconvert[7ff7c6bd9360h, 7ff7c6bd9378h][24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 21 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:209
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxbd ymm0,qword ptr [rax]          ; VPMOVSXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 21 /r || encoded[5]{c4 e2 7d 21 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
