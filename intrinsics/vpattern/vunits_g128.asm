------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vunits<byte>(N128 w, byte t)
; vunits~n128_g8x8u[27] = {c5 f8 77 66 90 48 b8 59 57 af dd fa 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1faddaf5759h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 57 af dd fa 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vunits<sbyte>(N128 w, sbyte t)
; vunits~n128_g8x8i[27] = {c5 f8 77 66 90 48 b8 59 57 af dd fa 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1faddaf5759h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 57 af dd fa 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vunits<ushort>(N128 w, ushort t)
; vunits~n128_g16x16u[27] = {c5 f8 77 66 90 48 b8 59 54 af dd fa 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1faddaf5459h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 54 af dd fa 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<Int16> vunits<Int16>(N128 w, Int16 t)
; vunits~n128_g16x16i[27] = {c5 f8 77 66 90 48 b8 59 54 af dd fa 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1faddaf5459h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 54 af dd fa 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vunits<uint>(N128 w, uint t)
; vunits~n128_g32x32u[27] = {c5 f8 77 66 90 48 b8 29 54 af dd fa 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1faddaf5429h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 29 54 af dd fa 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vunits<int>(N128 w, int t)
; vunits~n128_g32x32i[27] = {c5 f8 77 66 90 48 b8 29 54 af dd fa 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1faddaf5429h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 29 54 af dd fa 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vunits<ulong>(N128 w, ulong t)
; vunits~n128_g64x64u[27] = {c5 f8 77 66 90 48 b8 19 56 af dd fa 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1faddaf5619h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 19 56 af dd fa 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vunits<long>(N128 w, long t)
; vunits~n128_g64x64i[27] = {c5 f8 77 66 90 48 b8 19 56 af dd fa 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1faddaf5619h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 19 56 af dd fa 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
