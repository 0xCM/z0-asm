------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vincrements<byte>(N128 w)
; vincrements_gn128[27] = {c5 f8 77 66 90 48 b8 7d 57 65 6e a2 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e65577dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7d 57 65 6e a2 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vincrements<sbyte>(N128 w)
; vincrements_gn128[27] = {c5 f8 77 66 90 48 b8 7d 57 65 6e a2 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e65577dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7d 57 65 6e a2 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vincrements<ushort>(N128 w)
; vincrements_gn128[27] = {c5 f8 77 66 90 48 b8 2d 56 65 6e a2 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e65562dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 2d 56 65 6e a2 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vincrements<short>(N128 w)
; vincrements_gn128[27] = {c5 f8 77 66 90 48 b8 2d 56 65 6e a2 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e65562dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 2d 56 65 6e a2 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vincrements<uint>(N128 w)
; vincrements_gn128[27] = {c5 f8 77 66 90 48 b8 4d 57 65 6e a2 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e65574dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 4d 57 65 6e a2 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vincrements<int>(N128 w)
; vincrements_gn128[27] = {c5 f8 77 66 90 48 b8 4d 57 65 6e a2 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e65574dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 4d 57 65 6e a2 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vincrements<ulong>(N128 w)
; vincrements_gn128[27] = {c5 f8 77 66 90 48 b8 dd 56 65 6e a2 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e6556ddh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 dd 56 65 6e a2 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vincrements<long>(N128 w)
; vincrements_gn128[27] = {c5 f8 77 66 90 48 b8 dd 56 65 6e a2 01 00 00 c5 fb f0 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e6556ddh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 dd 56 65 6e a2 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vincrements<byte>(N256 w)
; vincrements_gn256[30] = {c5 f8 77 66 90 48 b8 ad 55 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e6555adh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ad 55 65 6e a2 01 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vincrements<sbyte>(N256 w)
; vincrements_gn256[30] = {c5 f8 77 66 90 48 b8 ad 55 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e6555adh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ad 55 65 6e a2 01 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vincrements<ushort>(N256 w)
; vincrements_gn256[30] = {c5 f8 77 66 90 48 b8 cd 55 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e6555cdh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 cd 55 65 6e a2 01 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vincrements<short>(N256 w)
; vincrements_gn256[30] = {c5 f8 77 66 90 48 b8 cd 55 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e6555cdh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 cd 55 65 6e a2 01 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vincrements<uint>(N256 w)
; vincrements_gn256[30] = {c5 f8 77 66 90 48 b8 bd 58 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e6558bdh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 bd 58 65 6e a2 01 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vincrements<int>(N256 w)
; vincrements_gn256[30] = {c5 f8 77 66 90 48 b8 bd 58 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e6558bdh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 bd 58 65 6e a2 01 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vincrements<ulong>(N256 w)
; vincrements_gn256[30] = {c5 f8 77 66 90 48 b8 ed 56 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e6556edh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ed 56 65 6e a2 01 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vincrements<long>(N256 w)
; vincrements_gn256[30] = {c5 f8 77 66 90 48 b8 ed 56 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1a26e6556edh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ed 56 65 6e a2 01 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<byte> vincrements<byte>(N512 w)
; vincrements_gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 3d 58 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 5d 58 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1a26e65583dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3d 58 65 6e a2 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1a26e65585dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 5d 58 65 6e a2 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<sbyte> vincrements<sbyte>(N512 w)
; vincrements_gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 3d 58 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 5d 58 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1a26e65583dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3d 58 65 6e a2 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1a26e65585dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 5d 58 65 6e a2 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> vincrements<ushort>(N512 w)
; vincrements_gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 7d 56 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 9d 56 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1a26e65567dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7d 56 65 6e a2 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1a26e65569dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 9d 56 65 6e a2 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<short> vincrements<short>(N512 w)
; vincrements_gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 7d 56 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 9d 56 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1a26e65567dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7d 56 65 6e a2 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1a26e65569dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 9d 56 65 6e a2 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vincrements<uint>(N512 w)
; vincrements_gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 4d 55 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 6d 55 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1a26e65554dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 4d 55 65 6e a2 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1a26e65556dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 6d 55 65 6e a2 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vincrements<int>(N512 w)
; vincrements_gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 4d 55 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 6d 55 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1a26e65554dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 4d 55 65 6e a2 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1a26e65556dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 6d 55 65 6e a2 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vincrements<ulong>(N512 w)
; vincrements_gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 7d 58 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 9d 58 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1a26e65587dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7d 58 65 6e a2 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1a26e65589dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 9d 58 65 6e a2 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vincrements<long>(N512 w)
; vincrements_gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 7d 58 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 9d 58 65 6e a2 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1a26e65587dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7d 58 65 6e a2 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1a26e65589dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 9d 58 65 6e a2 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
