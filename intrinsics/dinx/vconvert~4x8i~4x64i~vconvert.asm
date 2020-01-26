------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vconvert(in Block32<sbyte> src, N256 w, long t)
; vconvert~4x8i~4x64i~vconvert[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 22 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxbq ymm0,dword ptr [rax]          ; VPMOVSXBQ ymm1, xmm2/m32 || VEX.256.66.0F38.WIG 22 /r || encoded[5]{c4 e2 7d 22 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
