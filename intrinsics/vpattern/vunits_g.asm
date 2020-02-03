------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vunits<byte>(N128 w, byte t)
; vunits_gn128_8u[27] = {c5 f8 77 66 90 48 b8 ad 57 fd f7 95 02 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd57adh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ad 57 fd f7 95 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vunits<sbyte>(N128 w, sbyte t)
; vunits_gn128_8i[27] = {c5 f8 77 66 90 48 b8 ad 57 fd f7 95 02 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd57adh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ad 57 fd f7 95 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vunits<ushort>(N128 w, ushort t)
; vunits_gn128_16u[27] = {c5 f8 77 66 90 48 b8 ad 54 fd f7 95 02 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd54adh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ad 54 fd f7 95 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vunits<short>(N128 w, short t)
; vunits_gn128_16i[27] = {c5 f8 77 66 90 48 b8 ad 54 fd f7 95 02 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd54adh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ad 54 fd f7 95 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vunits<uint>(N128 w, uint t)
; vunits_gn128_32u[27] = {c5 f8 77 66 90 48 b8 7d 54 fd f7 95 02 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd547dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7d 54 fd f7 95 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vunits<int>(N128 w, int t)
; vunits_gn128_32i[27] = {c5 f8 77 66 90 48 b8 7d 54 fd f7 95 02 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd547dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7d 54 fd f7 95 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vunits<ulong>(N128 w, ulong t)
; vunits_gn128_64u[27] = {c5 f8 77 66 90 48 b8 6d 56 fd f7 95 02 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd566dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 6d 56 fd f7 95 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vunits<long>(N128 w, long t)
; vunits_gn128_64i[27] = {c5 f8 77 66 90 48 b8 6d 56 fd f7 95 02 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd566dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 6d 56 fd f7 95 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vunits<byte>(N256 w, byte t)
; vunits_gn256_8u[30] = {c5 f8 77 66 90 48 b8 3d 56 fd f7 95 02 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd563dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3d 56 fd f7 95 02 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vunits<sbyte>(N256 w, sbyte t)
; vunits_gn256_8i[30] = {c5 f8 77 66 90 48 b8 3d 56 fd f7 95 02 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd563dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3d 56 fd f7 95 02 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vunits<ushort>(N256 w, ushort t)
; vunits_gn256_16u[30] = {c5 f8 77 66 90 48 b8 bd 54 fd f7 95 02 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd54bdh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 bd 54 fd f7 95 02 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vunits<short>(N256 w, short t)
; vunits_gn256_16i[30] = {c5 f8 77 66 90 48 b8 bd 54 fd f7 95 02 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd54bdh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 bd 54 fd f7 95 02 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vunits<uint>(N256 w, uint t)
; vunits_gn256_32u[30] = {c5 f8 77 66 90 48 b8 5d 54 fd f7 95 02 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd545dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 5d 54 fd f7 95 02 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vunits<int>(N256 w, int t)
; vunits_gn256_32i[30] = {c5 f8 77 66 90 48 b8 5d 54 fd f7 95 02 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd545dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 5d 54 fd f7 95 02 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vunits<ulong>(N256 w, ulong t)
; vunits_gn256_64u[30] = {c5 f8 77 66 90 48 b8 8d 55 fd f7 95 02 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd558dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 8d 55 fd f7 95 02 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vunits<long>(N256 w, long t)
; vunits_gn256_64i[30] = {c5 f8 77 66 90 48 b8 8d 55 fd f7 95 02 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,295f7fd558dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 8d 55 fd f7 95 02 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
