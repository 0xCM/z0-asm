; Vector128<long> vconvert(in Block16<sbyte> src, N128 w, long t)
; vconvert~2x8i~2x64i~vconvert[7ff7c6bd8ea0h, 7ff7c6bd8eb5h][21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 22 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:201
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxbq xmm0,word ptr [rax]           ; VPMOVSXBQ xmm1, xmm2/m16 || VEX.128.66.0F38.WIG 22 /r || encoded[5]{c4 e2 79 22 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
