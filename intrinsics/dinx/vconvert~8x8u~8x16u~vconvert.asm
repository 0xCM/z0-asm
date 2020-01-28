------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vconvert(in Block64<byte> src, N128 w, short t)
; vconvert~8x8u~8x16u~vconvert[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 30 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbw xmm0,qword ptr [rax]          ; VPMOVZXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 30 /r || encoded[5]{c4 e2 79 30 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vconvert(in Block64<byte> src, N128 w, ushort t)
; vconvert~8x8u~8x16u~vconvert[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 30 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbw xmm0,qword ptr [rax]          ; VPMOVZXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 30 /r || encoded[5]{c4 e2 79 30 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
