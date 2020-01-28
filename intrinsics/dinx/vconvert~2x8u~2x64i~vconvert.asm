------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vconvert(in Block16<byte> src, N128 w, long t)
; vconvert~2x8u~2x64i~vconvert[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 32 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbq xmm0,word ptr [rax]           ; VPMOVZXBQ xmm1, xmm2/m16 || VEX.128.66.0F38.WIG 32 /r || encoded[5]{c4 e2 79 32 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vconvert(in Block16<byte> src, int block, N128 w, long t)
; vconvert~2x8u~2x64i~vconvert[30] = {c5 f8 77 66 90 48 8b 02 41 d1 e0 49 63 d0 48 03 c2 c4 e2 79 32 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
000bh movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h vpmovzxbq xmm0,word ptr [rax]           ; VPMOVZXBQ xmm1, xmm2/m16 || VEX.128.66.0F38.WIG 32 /r || encoded[5]{c4 e2 79 32 00}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
