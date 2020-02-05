------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vconvert(in Block32<byte> src, N256 w, long t)
; vconvert_b32x8u~in_n256_64i[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 32 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbq ymm0,dword ptr [rax]          ; VPMOVZXBQ ymm1, xmm2/m32 || VEX.256.66.0F38.WIG 32 /r || encoded[5]{c4 e2 7d 32 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vconvert(in Block64<byte> src, N128 w, short t)
; vconvert_b64x8u~in_n128_16i[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 30 00 c5 f9 11 01 48 8b c1 c3}
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
; vconvert_b64x8u~in_n128_16u[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 30 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbw xmm0,qword ptr [rax]          ; VPMOVZXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 30 /r || encoded[5]{c4 e2 79 30 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vconvert(in Block64<byte> src, N256 w, uint t)
; vconvert_b64x8u~in_n256_32u[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 31 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbd ymm0,qword ptr [rax]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vconvert(in Block128<byte> src, N256 w, short t)
; vconvert_b128x8u~in_n256_16i[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 30 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbw ymm0,xmmword ptr [rax]        ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vconvert(in Block128<byte> src, N256 w, ushort t)
; vconvert_b128x8u~in_n256_16u[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 30 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbw ymm0,xmmword ptr [rax]        ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vconvert(in Block32<short> src, N128 w, long t)
; vconvert_b32x16i~in_n128_64i[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 24 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxwq xmm0,dword ptr [rax]          ; VPMOVSXWQ xmm1, xmm2/m32 || VEX.128.66.0F38.WIG 24 /r || encoded[5]{c4 e2 79 24 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vconvert(in Block64<short> src, N128 w, int t)
; vconvert_b64x16i~in_n128_32i[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 23 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxwd xmm0,qword ptr [rax]          ; VPMOVSXWD xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 23 /r || encoded[5]{c4 e2 79 23 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vconvert(in Block32<ushort> src, N128 w, long t)
; vconvert_b32x16u~in_n128_64i[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 34 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxwq xmm0,dword ptr [rax]          ; VPMOVZXWQ xmm1, xmm2/m32 || VEX.128.66.0F38.WIG 34 /r || encoded[5]{c4 e2 79 34 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vconvert(in Block32<ushort> src, N128 w, ulong t)
; vconvert_b32x16u~in_n128_64u[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 34 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxwq xmm0,dword ptr [rax]          ; VPMOVZXWQ xmm1, xmm2/m32 || VEX.128.66.0F38.WIG 34 /r || encoded[5]{c4 e2 79 34 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vconvert(in Block64<ushort> src, N256 w, ulong t)
; vconvert_b64x16u~in_n256_64u[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 34 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxwq ymm0,qword ptr [rax]          ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vconvert(in Block64<ushort> src, N128 w, uint t)
; vconvert_b64x16u~in_n128_32u[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 33 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxwd xmm0,qword ptr [rax]          ; VPMOVZXWD xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 33 /r || encoded[5]{c4 e2 79 33 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vconvert(in Block128<ushort> src, uint t)
; vconvert_b128x16u~in_32u[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 33 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxwd ymm0,xmmword ptr [rax]        ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vconvert(in Block128<ushort> src, int t)
; vconvert_b128x16u~in_32i[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 33 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxwd ymm0,xmmword ptr [rax]        ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vconvert(in Block64<ushort> src, N256 w, long t)
; vconvert_b64x16u~in_n256_64i[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 34 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxwq ymm0,qword ptr [rax]          ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vconvert(in Block128<uint> src, N256 w, long t)
; vconvert_b128x32u~in_n256_64i[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 25 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxdq ymm0,xmmword ptr [rax]        ; VPMOVSXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 25 /r || encoded[5]{c4 e2 7d 25 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vconvert(in Block128<uint> src, ulong t)
; vconvert_b128x32u~in_64u[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 25 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxdq ymm0,xmmword ptr [rax]        ; VPMOVSXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 25 /r || encoded[5]{c4 e2 7d 25 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vconvert(in Block64<uint> src, N128 w, ulong t)
; vconvert_b64x32u~in_n128_64u[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 25 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxdq xmm0,qword ptr [rax]          ; VPMOVSXDQ xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 25 /r || encoded[5]{c4 e2 79 25 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vconvert(in Block64<int> src, N128 w, long t)
; vconvert_b64x32i~in_n128_64i[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 25 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxdq xmm0,qword ptr [rax]          ; VPMOVSXDQ xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 25 /r || encoded[5]{c4 e2 79 25 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vconvert(in Block128<int> src, N256 w, long t)
; vconvert_b128x32i~in_n256_64i[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 25 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxdq ymm0,xmmword ptr [rax]        ; VPMOVSXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 25 /r || encoded[5]{c4 e2 7d 25 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vconvert(in Block256<ushort> src, N512 w, uint t)
; vconvert_b256x16u~in_n512_32u[41] = {c5 f8 77 66 90 48 8b 02 48 8b d0 c4 e2 7d 33 02 48 83 c0 10 c4 e2 7d 33 08 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh vpmovzxwd ymm0,xmmword ptr [rdx]        ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 02}
0010h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0014h vpmovzxwd ymm1,xmmword ptr [rax]        ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 08}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vconvert(in Block128<short> src, N512 w, int t)
; vconvert_b128x16i~in_n512_32i[41] = {c5 f8 77 66 90 48 8b 02 48 8b d0 c4 e2 7d 23 02 48 83 c0 10 c4 e2 7d 23 08 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh vpmovsxwd ymm0,xmmword ptr [rdx]        ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 02}
0010h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0014h vpmovsxwd ymm1,xmmword ptr [rax]        ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 08}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> vconvert(in Block256<byte> src, N512 w, ushort t)
; vconvert_b256x8u~in_n512_16u[41] = {c5 f8 77 66 90 48 8b 02 48 8b d0 c4 e2 7d 30 02 48 83 c0 10 c4 e2 7d 30 08 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh vpmovzxbw ymm0,xmmword ptr [rdx]        ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 02}
0010h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0014h vpmovzxbw ymm1,xmmword ptr [rax]        ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 08}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vconvert(in Block128<ushort> src, N512 w, ulong t)
; vconvert_b128x16u~in_n512_64u[41] = {c5 f8 77 66 90 48 8b 02 48 8b d0 c4 e2 7d 34 02 48 83 c0 08 c4 e2 7d 34 08 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh vpmovzxwq ymm0,qword ptr [rdx]          ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 02}
0010h add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
0014h vpmovzxwq ymm1,qword ptr [rax]          ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 08}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vconvert(in Block256<uint> src, N512 w, ulong t)
; vconvert_b256x32u~in_n512_64u[41] = {c5 f8 77 66 90 48 8b 02 48 8b d0 c4 e2 7d 25 02 48 83 c0 10 c4 e2 7d 25 08 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh vpmovsxdq ymm0,xmmword ptr [rdx]        ; VPMOVSXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 25 /r || encoded[5]{c4 e2 7d 25 02}
0010h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0014h vpmovsxdq ymm1,xmmword ptr [rax]        ; VPMOVSXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 25 /r || encoded[5]{c4 e2 7d 25 08}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vconvert(Vector128<sbyte> src, N256 w, ushort t)
; vconvert_v128x8i_n256_16u[21] = {c5 f8 77 66 90 c4 e2 7d 20 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovsxbw ymm0,xmmword ptr [rdx]        ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vconvert(Vector128<sbyte> src, N256 w, short t)
; vconvert_v128x8i_n256_16i[21] = {c5 f8 77 66 90 c4 e2 7d 20 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovsxbw ymm0,xmmword ptr [rdx]        ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vconvert(Vector128<sbyte> src, N128 w, int t)
; vconvert_v128x8i_n128_32i[18] = {c5 f8 77 66 90 c4 e2 79 21 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovsxbd xmm0,dword ptr [rdx]          ; VPMOVSXBD xmm1, xmm2/m32 || VEX.128.66.0F38.WIG 21 /r || encoded[5]{c4 e2 79 21 02}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vconvert(Vector128<sbyte> src, N512 w, int t)
; vconvert_v128x8i_n512_32i[50] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c4 e2 7d 21 c9 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 7d 21 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vpmovsxbd ymm1,xmm1                     ; VPMOVSXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 21 /r || encoded[5]{c4 e2 7d 21 c9}
0012h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0018h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
001dh vpmovsxbd ymm0,xmm0                     ; VPMOVSXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 21 /r || encoded[5]{c4 e2 7d 21 c0}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vconvert(Vector128<byte> src, N256 w, short t)
; vconvert_v128x8u_n256_16i[21] = {c5 f8 77 66 90 c4 e2 7d 30 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovzxbw ymm0,xmmword ptr [rdx]        ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vconvert(Vector128<byte> src, N256 w, ushort t)
; vconvert_v128x8u_n256_16u[21] = {c5 f8 77 66 90 c4 e2 7d 30 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovzxbw ymm0,xmmword ptr [rdx]        ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vconvert(Vector128<byte> src, N512 w, uint t)
; vconvert_v128x8u_n512_32u[50] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c4 e2 7d 31 c9 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 7d 31 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vpmovzxbd ymm1,xmm1                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c9}
0012h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0018h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
001dh vpmovzxbd ymm0,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c0}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vconvert(Vector128<short> src, N256 w, int t)
; vconvert_v128x16i_n256_32i[21] = {c5 f8 77 66 90 c4 e2 7d 23 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovsxwd ymm0,xmmword ptr [rdx]        ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vconvert(Vector128<short> src, N256 w, uint t)
; vconvert_v128x16i_n256_32u[21] = {c5 f8 77 66 90 c4 e2 7d 23 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovsxwd ymm0,xmmword ptr [rdx]        ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vconvert(Vector128<ushort> src, N256 w, int t)
; vconvert_v128x16u_n256_32i[21] = {c5 f8 77 66 90 c4 e2 7d 33 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovzxwd ymm0,xmmword ptr [rdx]        ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vconvert(Vector128<ushort> src, N256 w, uint t)
; vconvert_v128x16u_n256_32u[21] = {c5 f8 77 66 90 c4 e2 7d 33 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovzxwd ymm0,xmmword ptr [rdx]        ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vconvert(Vector128<int> src, N256 w, long t)
; vconvert_v128x32i_n256_64i[21] = {c5 f8 77 66 90 c4 e2 7d 25 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovsxdq ymm0,xmmword ptr [rdx]        ; VPMOVSXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 25 /r || encoded[5]{c4 e2 7d 25 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vconvert(Vector128<uint> src, N256 w, long t)
; vconvert_v128x32u_n256_64i[21] = {c5 f8 77 66 90 c4 e2 7d 35 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovzxdq ymm0,xmmword ptr [rdx]        ; VPMOVZXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 35 /r || encoded[5]{c4 e2 7d 35 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vconvert(Vector128<uint> src, N256 w, ulong t)
; vconvert_v128x32u_n256_64u[21] = {c5 f8 77 66 90 c4 e2 7d 35 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovzxdq ymm0,xmmword ptr [rdx]        ; VPMOVZXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 35 /r || encoded[5]{c4 e2 7d 35 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<short> vconvert(Vector256<sbyte> src, N512 w, short t)
; vconvert_v256x8i_n512_16i[51] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e2 7d 20 c9 c4 e3 7d 19 c0 01 c4 e2 7d 20 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vpmovsxbw ymm1,xmm1                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c9}
0018h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001eh vpmovsxbw ymm0,xmm0                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c0}
0023h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0027h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector1024<int> vconvert(Vector256<sbyte> src, N1024 w, int t)
; vconvert_v256x8i_n1024_32i[101] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 20 c9 c4 e3 7d 19 c0 01 c4 e2 7d 20 c0 c4 e3 7d 19 ca 00 c4 e2 7d 23 d2 c4 e3 7d 19 c9 01 c4 e2 7d 23 c9 c4 e3 7d 19 c3 00 c4 e2 7d 23 db c4 e3 7d 19 c0 01 c4 e2 7d 23 c0 c5 fd 11 11 c5 fd 11 49 20 c5 fd 11 59 40 c5 fd 11 41 60 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovsxbw ymm1,xmm1                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovsxbw ymm0,xmm0                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c0}
001fh vextractf128 xmm2,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ca 00}
0025h vpmovsxwd ymm2,xmm2                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 d2}
002ah vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0030h vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0035h vextractf128 xmm3,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c3 00}
003bh vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
0040h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0046h vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
004bh vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
004fh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0054h vmovupd [rcx+40h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 59 40}
0059h vmovupd [rcx+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 60}
005eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> vconvert(Vector256<byte> src, N512 w, ushort t)
; vconvert_v256x8u_n512_16u[51] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e2 7d 30 c9 c4 e3 7d 19 c0 01 c4 e2 7d 30 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vpmovzxbw ymm1,xmm1                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c9}
0018h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001eh vpmovzxbw ymm0,xmm0                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c0}
0023h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0027h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<short> vconvert(Vector256<byte> src, N512 w, short t)
; vconvert_v256x8u_n512_16i[51] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e2 7d 30 c9 c4 e3 7d 19 c0 01 c4 e2 7d 30 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vpmovzxbw ymm1,xmm1                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c9}
0018h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001eh vpmovzxbw ymm0,xmm0                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c0}
0023h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0027h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector1024<uint> vconvert(Vector256<byte> src, N1024 w, uint t)
; vconvert_v256x8u_n1024_32u[101] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 30 c9 c4 e3 7d 19 c0 01 c4 e2 7d 30 c0 c4 e3 7d 19 ca 00 c4 e2 7d 33 d2 c4 e3 7d 19 c9 01 c4 e2 7d 33 c9 c4 e3 7d 19 c3 00 c4 e2 7d 33 db c4 e3 7d 19 c0 01 c4 e2 7d 33 c0 c5 fd 11 11 c5 fd 11 49 20 c5 fd 11 59 40 c5 fd 11 41 60 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovzxbw ymm1,xmm1                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovzxbw ymm0,xmm0                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c0}
001fh vextractf128 xmm2,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ca 00}
0025h vpmovzxwd ymm2,xmm2                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 d2}
002ah vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0030h vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
0035h vextractf128 xmm3,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c3 00}
003bh vpmovzxwd ymm3,xmm3                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 db}
0040h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0046h vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
004bh vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
004fh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0054h vmovupd [rcx+40h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 59 40}
0059h vmovupd [rcx+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 60}
005eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vconvert(Vector128<short> src, N512 w, long t)
; vconvert_v128x16i_n512_64i[50] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c4 e2 7d 24 c9 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 7d 24 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vpmovsxwq ymm1,xmm1                     ; VPMOVSXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 24 /r || encoded[5]{c4 e2 7d 24 c9}
0012h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0018h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
001dh vpmovsxwq ymm0,xmm0                     ; VPMOVSXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 24 /r || encoded[5]{c4 e2 7d 24 c0}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vconvert(Vector128<ushort> src, N512 w, ulong t)
; vconvert_v128x16u_n512_64u[50] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c4 e2 7d 34 c9 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 7d 34 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vpmovzxwq ymm1,xmm1                     ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 c9}
0012h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0018h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
001dh vpmovzxwq ymm0,xmm0                     ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 c0}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector1024<ulong> vconvert(Vector256<ushort> src, N1024 w, ulong t)
; vconvert_v256x16u_n1024_64u[269] = {57 56 48 81 ec 08 01 00 00 c5 f8 77 48 8b f1 48 8d bc 24 88 00 00 00 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8b f1 c5 fd 10 02 c4 e3 7d 19 c0 00 c4 e2 7d 34 c8 c4 e3 f9 16 c1 01 c4 e1 f9 6e c1 c4 e2 7d 34 c0 c5 fd 10 12 c4 e3 7d 19 d2 01 c4 e2 7d 34 da c4 e3 f9 16 d2 01 c4 e1 f9 6e d2 c4 e2 7d 34 d2 48 8d 54 24 08 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 54 24 08 c5 fd 11 0a c5 fd 11 42 20 48 8d 54 24 48 c5 fd 11 1a c5 fd 11 52 20 48 8d 8c 24 88 00 00 00 48 8d 54 24 08 41 b8 80 00 00 00 e8 b8 cb 34 5f 48 8d 84 24 88 00 00 00 c5 fd 10 00 c5 fd 10 48 20 48 8d 84 24 c8 00 00 00 c5 fd 10 10 c5 fd 10 58 20 c5 fd 11 06 c5 fd 11 4e 20 c5 fd 11 56 40 c5 fd 11 5e 60 48 8b c6 c5 f8 77 48 81 c4 08 01 00 00 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,108h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 08 01 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d bc 24 88 00 00 00}
0017h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
001ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001eh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0020h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0023h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0026h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
002ah vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0030h vpmovzxwq ymm1,xmm0                     ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 c8}
0035h vpextrq rcx,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c1 01}
003bh vmovq xmm0,rcx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c1}
0040h vpmovzxwq ymm0,xmm0                     ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 c0}
0045h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
0049h vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
004fh vpmovzxwq ymm3,xmm2                     ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 da}
0054h vpextrq rdx,xmm2,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 d2 01}
005ah vmovq xmm2,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e d2}
005fh vpmovzxwq ymm2,xmm2                     ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 d2}
0064h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0069h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
006dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0071h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0076h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
007bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0080h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0085h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
008ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
008fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0094h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0099h vmovupd [rdx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 0a}
009dh vmovupd [rdx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 42 20}
00a2h lea rdx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 48}
00a7h vmovupd [rdx],ymm3                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 1a}
00abh vmovupd [rdx+20h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 52 20}
00b0h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
00b8h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
00bdh mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
00c3h call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 cb 34 5f}
00c8h lea rax,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 88 00 00 00}
00d0h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
00d4h vmovupd ymm1,[rax+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 48 20}
00d9h lea rax,[rsp+0c8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 c8 00 00 00}
00e1h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
00e5h vmovupd ymm3,[rax+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 58 20}
00eah vmovupd [rsi],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 06}
00eeh vmovupd [rsi+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4e 20}
00f3h vmovupd [rsi+40h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 56 40}
00f8h vmovupd [rsi+60h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5e 60}
00fdh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0100h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0103h add rsp,108h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 08 01 00 00}
010ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vconvert(Vector256<short> src, N512 w, int t)
; vconvert_v256x16i_n512_32i[51] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e2 7d 23 c9 c4 e3 7d 19 c0 01 c4 e2 7d 23 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0018h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001eh vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
0023h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0027h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vconvert(Vector256<ushort> src, N512 w, uint t)
; vconvert_v256x16u_n512_32u[51] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e2 7d 33 c9 c4 e3 7d 19 c0 01 c4 e2 7d 33 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
0018h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001eh vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
0023h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0027h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vconvert(Vector256<int> src, N512 w, long t)
; vconvert_v256x32i_n512_64i[51] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e2 7d 25 c9 c4 e3 7d 19 c0 01 c4 e2 7d 25 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vpmovsxdq ymm1,xmm1                     ; VPMOVSXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 25 /r || encoded[5]{c4 e2 7d 25 c9}
0018h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001eh vpmovsxdq ymm0,xmm0                     ; VPMOVSXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 25 /r || encoded[5]{c4 e2 7d 25 c0}
0023h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0027h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vconvert(Vector256<uint> src, N512 w, ulong t)
; vconvert_v256x32u_n512_64u[51] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e2 7d 35 c9 c4 e3 7d 19 c0 01 c4 e2 7d 35 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vpmovzxdq ymm1,xmm1                     ; VPMOVZXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 35 /r || encoded[5]{c4 e2 7d 35 c9}
0018h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001eh vpmovzxdq ymm0,xmm0                     ; VPMOVZXDQ ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 35 /r || encoded[5]{c4 e2 7d 35 c0}
0023h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0027h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vconvert(Vector256<short> src, N512 w, long t)
; vconvert_v256x16i_n512_64i[51] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e3 7d 19 c0 01 c4 e2 7d 24 c9 c4 e2 7d 24 c0 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0019h vpmovsxwq ymm1,xmm1                     ; VPMOVSXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 24 /r || encoded[5]{c4 e2 7d 24 c9}
001eh vpmovsxwq ymm0,xmm0                     ; VPMOVSXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 24 /r || encoded[5]{c4 e2 7d 24 c0}
0023h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0027h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vconvert(N64 srcbits, in byte src, N256 w, N32 n)
; vconvert_n64_8u~in_n256_n32[21] = {c5 f8 77 66 90 c4 c2 7d 31 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovzxbd ymm0,qword ptr [r8]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vconvert(N64 srcbits, in ushort src, N256 w, N32 n)
; vconvert_n64_16u~in_n256_n32[21] = {c5 f8 77 66 90 c4 c2 7d 31 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovzxbd ymm0,qword ptr [r8]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vconvert(N64 srcbits, in uint src, N256 w, N32 n)
; vconvert_n64_32u~in_n256_n32[21] = {c5 f8 77 66 90 c4 c2 7d 31 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovzxbd ymm0,qword ptr [r8]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vconvert(N64 srcbits, in ulong src, N256 w, N32 n)
; vconvert_n64_64u~in_n256_n32[21] = {c5 f8 77 66 90 c4 c2 7d 31 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpmovzxbd ymm0,qword ptr [r8]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vconvert(in Block16<sbyte> src, N128 w, long t)
; vconvert_b16x8i~in_n128_64i[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 22 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxbq xmm0,word ptr [rax]           ; VPMOVSXBQ xmm1, xmm2/m16 || VEX.128.66.0F38.WIG 22 /r || encoded[5]{c4 e2 79 22 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vconvert(in Block32<sbyte> src, N128 w, int t)
; vconvert_b32x8i~in_n128_32i[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 21 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxbd xmm0,dword ptr [rax]          ; VPMOVSXBD xmm1, xmm2/m32 || VEX.128.66.0F38.WIG 21 /r || encoded[5]{c4 e2 79 21 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vconvert(in Block32<sbyte> src, N256 w, long t)
; vconvert_b32x8i~in_n256_64i[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 22 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxbq ymm0,dword ptr [rax]          ; VPMOVSXBQ ymm1, xmm2/m32 || VEX.256.66.0F38.WIG 22 /r || encoded[5]{c4 e2 7d 22 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vconvert(in Block64<sbyte> src, N128 w, short t)
; vconvert_b64x8i~in_n128_16i[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 20 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxbw xmm0,qword ptr [rax]          ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vconvert(in Block64<sbyte> src, N256 w, int t)
; vconvert_b64x8i~in_n256_32i[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 21 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxbd ymm0,qword ptr [rax]          ; VPMOVSXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 21 /r || encoded[5]{c4 e2 7d 21 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vconvert(in Block128<sbyte> src, N256 w, short t)
; vconvert_b128x8i~in_n256_16i[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 20 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovsxbw ymm0,xmmword ptr [rax]        ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vconvert(in Block16<byte> src, N128 w, long t)
; vconvert_b16x8u~in_n128_64i[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 32 00 c5 f9 11 01 48 8b c1 c3}
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
; vconvert_b16x8u~in_32i_n128_64i[30] = {c5 f8 77 66 90 48 8b 02 41 d1 e0 49 63 d0 48 03 c2 c4 e2 79 32 00 c5 f9 11 01 48 8b c1 c3}
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
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vconvert(in Block16<byte> src, N128 w, ulong t)
; vconvert_b16x8u~in_n128_64u[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 32 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbq xmm0,word ptr [rax]           ; VPMOVZXBQ xmm1, xmm2/m16 || VEX.128.66.0F38.WIG 32 /r || encoded[5]{c4 e2 79 32 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vconvert(in Block32<byte> src, N128 w, int t)
; vconvert_b32x8u~in_n128_32i[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 31 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbd xmm0,dword ptr [rax]          ; VPMOVZXBD xmm1, xmm2/m32 || VEX.128.66.0F38.WIG 31 /r || encoded[5]{c4 e2 79 31 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vconvert(in Block32<byte> src, N128 w, uint t)
; vconvert_b32x8u~in_n128_32u[21] = {c5 f8 77 66 90 48 8b 02 c4 e2 79 31 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbd xmm0,dword ptr [rax]          ; VPMOVZXBD xmm1, xmm2/m32 || VEX.128.66.0F38.WIG 31 /r || encoded[5]{c4 e2 79 31 00}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vconvert(in Block32<byte> src, N256 w, ulong t)
; vconvert_b32x8u~in_n256_64u[24] = {c5 f8 77 66 90 48 8b 02 c4 e2 7d 32 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vpmovzxbq ymm0,dword ptr [rax]          ; VPMOVZXBQ ymm1, xmm2/m32 || VEX.256.66.0F38.WIG 32 /r || encoded[5]{c4 e2 7d 32 00}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
