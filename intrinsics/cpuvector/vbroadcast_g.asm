------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vbroadcast<byte>(N128 n, byte src)
; vbroadcast_gn128_8u[37] = {50 c5 f8 77 90 41 0f b6 c0 88 44 24 04 48 8d 44 24 04 c4 e2 79 78 44 24 04 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0012h vpbroadcastb xmm0,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 04}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vbroadcast<sbyte>(N128 n, sbyte src)
; vbroadcast_gn128_8i[37] = {50 c5 f8 77 90 49 0f be c0 88 44 24 04 48 8d 44 24 04 c4 e2 79 78 44 24 04 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0009h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0012h vpbroadcastb xmm0,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 04}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vbroadcast<ushort>(N128 n, ushort src)
; vbroadcast_gn128_16u[38] = {50 c5 f8 77 90 41 0f b7 c0 66 89 44 24 04 48 8d 44 24 04 c4 e2 79 79 44 24 04 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
000eh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0013h vpbroadcastw xmm0,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 04}
001ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0021h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vbroadcast<short>(N128 n, short src)
; vbroadcast_gn128_16i[38] = {50 c5 f8 77 90 49 0f bf c0 66 89 44 24 04 48 8d 44 24 04 c4 e2 79 79 44 24 04 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0009h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
000eh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0013h vpbroadcastw xmm0,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 04}
001ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0021h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vbroadcast<uint>(N128 n, uint src)
; vbroadcast_gn128_32u[34] = {50 c5 f8 77 90 44 89 44 24 04 48 8d 44 24 04 c4 e2 79 58 44 24 04 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 04}
000ah lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
000fh vpbroadcastd xmm0,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 44 24 04}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vbroadcast<int>(N128 n, int src)
; vbroadcast_gn128_32i[34] = {50 c5 f8 77 90 44 89 44 24 04 48 8d 44 24 04 c4 e2 79 58 44 24 04 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 04}
000ah lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
000fh vpbroadcastd xmm0,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 44 24 04}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vbroadcast<ulong>(N128 n, ulong src)
; vbroadcast_gn128_64u[31] = {50 c5 f8 77 90 4c 89 04 24 48 8d 04 24 c4 e2 79 59 04 24 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 04 24}
0009h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
000dh vpbroadcastq xmm0,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 04 24}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vbroadcast<long>(N128 n, long src)
; vbroadcast_gn128_64i[31] = {50 c5 f8 77 90 4c 89 04 24 48 8d 04 24 c4 e2 79 59 04 24 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 04 24}
0009h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
000dh vpbroadcastq xmm0,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 04 24}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vbroadcast<float>(N128 n, float src)
; vbroadcast_gn128_32f[30] = {50 c5 f8 77 90 c5 fa 11 54 24 04 c4 e2 79 18 44 24 04 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm2           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 54 24 04}
000bh vbroadcastss xmm0,dword ptr [rsp+4]     ; VBROADCASTSS xmm1, xmm2/m32 || VEX.128.66.0F38.W0 18 /r || encoded[7]{c4 e2 79 18 44 24 04}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vbroadcast<double>(N128 n, double src)
; vbroadcast_gn128_64f[17] = {c5 f8 77 66 90 c5 fb 12 c2 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovddup xmm0,xmm2                      ; VMOVDDUP xmm1, xmm2/m64 || VEX.128.F2.0F.WIG 12 /r || encoded[4]{c5 fb 12 c2}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vbroadcast<byte>(N256 n, byte src)
; vbroadcast_gn256_8u[40] = {50 c5 f8 77 90 41 0f b6 c0 88 44 24 04 48 8d 44 24 04 c4 e2 7d 78 44 24 04 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0012h vpbroadcastb ymm0,byte ptr [rsp+4]      ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 44 24 04}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vbroadcast<sbyte>(N256 n, sbyte src)
; vbroadcast_gn256_8i[40] = {50 c5 f8 77 90 49 0f be c0 88 44 24 04 48 8d 44 24 04 c4 e2 7d 78 44 24 04 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0009h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0012h vpbroadcastb ymm0,byte ptr [rsp+4]      ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 44 24 04}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vbroadcast<ushort>(N256 n, ushort src)
; vbroadcast_gn256_16u[41] = {50 c5 f8 77 90 41 0f b7 c0 66 89 44 24 04 48 8d 44 24 04 c4 e2 7d 79 44 24 04 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
000eh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0013h vpbroadcastw ymm0,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 44 24 04}
001ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vbroadcast<short>(N256 n, short src)
; vbroadcast_gn256_16i[41] = {50 c5 f8 77 90 49 0f bf c0 66 89 44 24 04 48 8d 44 24 04 c4 e2 7d 79 44 24 04 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0009h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
000eh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0013h vpbroadcastw ymm0,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 44 24 04}
001ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vbroadcast<uint>(N256 n, uint src)
; vbroadcast_gn256_32u[37] = {50 c5 f8 77 90 44 89 44 24 04 48 8d 44 24 04 c4 e2 7d 58 44 24 04 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 04}
000ah lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
000fh vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vbroadcast<int>(N256 n, int src)
; vbroadcast_gn256_32i[37] = {50 c5 f8 77 90 44 89 44 24 04 48 8d 44 24 04 c4 e2 7d 58 44 24 04 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 04}
000ah lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
000fh vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vbroadcast<ulong>(N256 n, ulong src)
; vbroadcast_gn256_64u[34] = {50 c5 f8 77 90 4c 89 04 24 48 8d 04 24 c4 e2 7d 59 04 24 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 04 24}
0009h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
000dh vpbroadcastq ymm0,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 04 24}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vbroadcast<long>(N256 n, long src)
; vbroadcast_gn256_64i[34] = {50 c5 f8 77 90 4c 89 04 24 48 8d 04 24 c4 e2 7d 59 04 24 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 04 24}
0009h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
000dh vpbroadcastq ymm0,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 04 24}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vbroadcast<float>(N256 n, float src)
; vbroadcast_gn256_32f[33] = {50 c5 f8 77 90 c5 fa 11 54 24 04 c4 e2 7d 18 44 24 04 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm2           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 54 24 04}
000bh vbroadcastss ymm0,dword ptr [rsp+4]     ; VBROADCASTSS ymm1, xmm2/m32 || VEX.256.66.0F38.W0 18 /r || encoded[7]{c4 e2 7d 18 44 24 04}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vbroadcast<double>(N256 n, double src)
; vbroadcast_gn256_64f[31] = {50 c5 f8 77 90 c5 fb 11 14 24 c4 e2 7d 19 04 24 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovsd qword ptr [rsp],xmm2             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 14 24}
000ah vbroadcastsd ymm0,qword ptr [rsp]       ; VBROADCASTSD ymm1, xmm2/m64 || VEX.256.66.0F38.W0 19 /r || encoded[6]{c4 e2 7d 19 04 24}
0010h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0014h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0017h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<byte> vbroadcast<byte>(N512 n, byte src)
; vbroadcast_gn512_8u[60] = {50 c5 f8 77 90 41 0f b6 c0 8b d0 88 54 24 04 48 8d 54 24 04 c4 e2 7d 78 44 24 04 88 04 24 48 8d 04 24 c4 e2 7d 78 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh mov [rsp+4],dl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 54 24 04}
000fh lea rdx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 04}
0014h vpbroadcastb ymm0,byte ptr [rsp+4]      ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 44 24 04}
001bh mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
001eh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0022h vpbroadcastb ymm1,byte ptr [rsp]        ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[6]{c4 e2 7d 78 0c 24}
0028h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ch vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0031h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0034h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0037h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<sbyte> vbroadcast<sbyte>(N512 n, sbyte src)
; vbroadcast_gn512_8i[60] = {50 c5 f8 77 90 49 0f be c0 8b d0 88 54 24 04 48 8d 54 24 04 c4 e2 7d 78 44 24 04 88 04 24 48 8d 04 24 c4 e2 7d 78 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh mov [rsp+4],dl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 54 24 04}
000fh lea rdx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 04}
0014h vpbroadcastb ymm0,byte ptr [rsp+4]      ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 44 24 04}
001bh mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
001eh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0022h vpbroadcastb ymm1,byte ptr [rsp]        ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[6]{c4 e2 7d 78 0c 24}
0028h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ch vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0031h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0034h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0037h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> vbroadcast<ushort>(N512 n, ushort src)
; vbroadcast_gn512_16u[62] = {50 c5 f8 77 90 41 0f b7 c0 8b d0 66 89 54 24 04 48 8d 54 24 04 c4 e2 7d 79 44 24 04 66 89 04 24 48 8d 04 24 c4 e2 7d 79 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh mov [rsp+4],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 54 24 04}
0010h lea rdx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 04}
0015h vpbroadcastw ymm0,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 44 24 04}
001ch mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0020h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0024h vpbroadcastw ymm1,word ptr [rsp]        ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[6]{c4 e2 7d 79 0c 24}
002ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002eh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0033h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0036h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0039h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<short> vbroadcast<short>(N512 n, short src)
; vbroadcast_gn512_16i[62] = {50 c5 f8 77 90 49 0f bf c0 8b d0 66 89 54 24 04 48 8d 54 24 04 c4 e2 7d 79 44 24 04 66 89 04 24 48 8d 04 24 c4 e2 7d 79 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh mov [rsp+4],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 54 24 04}
0010h lea rdx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 04}
0015h vpbroadcastw ymm0,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 44 24 04}
001ch mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0020h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0024h vpbroadcastw ymm1,word ptr [rsp]        ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[6]{c4 e2 7d 79 0c 24}
002ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002eh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0033h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0036h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0039h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vbroadcast<uint>(N512 n, uint src)
; vbroadcast_gn512_32u[56] = {50 c5 f8 77 90 44 89 44 24 04 48 8d 44 24 04 c4 e2 7d 58 44 24 04 44 89 04 24 48 8d 04 24 c4 e2 7d 58 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 04}
000ah lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
000fh vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
0016h mov [rsp],r8d                           ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 04 24}
001ah lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001eh vpbroadcastd ymm1,dword ptr [rsp]       ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[6]{c4 e2 7d 58 0c 24}
0024h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0028h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0030h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0033h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vbroadcast<int>(N512 n, int src)
; vbroadcast_gn512_32i[56] = {50 c5 f8 77 90 44 89 44 24 04 48 8d 44 24 04 c4 e2 7d 58 44 24 04 44 89 04 24 48 8d 04 24 c4 e2 7d 58 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 04}
000ah lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
000fh vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
0016h mov [rsp],r8d                           ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 04 24}
001ah lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001eh vpbroadcastd ymm1,dword ptr [rsp]       ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[6]{c4 e2 7d 58 0c 24}
0024h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0028h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0030h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0033h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vbroadcast<ulong>(N512 n, ulong src)
; vbroadcast_gn512_64u[61] = {48 83 ec 18 c5 f8 77 4c 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 44 24 10 4c 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 4c 24 08 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov [rsp+10h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 10}
000ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0011h vpbroadcastq ymm0,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 44 24 10}
0018h mov [rsp+8],r8                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 08}
001dh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0022h vpbroadcastq ymm1,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 4c 24 08}
0029h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0038h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vbroadcast<long>(N512 n, long src)
; vbroadcast_gn512_64i[61] = {48 83 ec 18 c5 f8 77 4c 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 44 24 10 4c 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 4c 24 08 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov [rsp+10h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 10}
000ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0011h vpbroadcastq ymm0,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 44 24 10}
0018h mov [rsp+8],r8                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 08}
001dh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0022h vpbroadcastq ymm1,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 4c 24 08}
0029h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0038h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<float> vbroadcast<float>(N512 n, float src)
; vbroadcast_gn512_32f[49] = {50 c5 f8 77 90 c5 fa 11 54 24 04 c4 e2 7d 18 44 24 04 c5 fa 11 14 24 c4 e2 7d 18 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm2           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 54 24 04}
000bh vbroadcastss ymm0,dword ptr [rsp+4]     ; VBROADCASTSS ymm1, xmm2/m32 || VEX.256.66.0F38.W0 18 /r || encoded[7]{c4 e2 7d 18 44 24 04}
0012h vmovss dword ptr [rsp],xmm2             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 14 24}
0017h vbroadcastss ymm1,dword ptr [rsp]       ; VBROADCASTSS ymm1, xmm2/m32 || VEX.256.66.0F38.W0 18 /r || encoded[6]{c4 e2 7d 18 0c 24}
001dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0021h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<double> vbroadcast<double>(N512 n, double src)
; vbroadcast_gn512_64f[53] = {48 83 ec 18 c5 f8 77 c5 fb 11 54 24 10 c4 e2 7d 19 44 24 10 c5 fb 11 54 24 08 c4 e2 7d 19 4c 24 08 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovsd qword ptr [rsp+10h],xmm2         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 54 24 10}
000dh vbroadcastsd ymm0,qword ptr [rsp+10h]   ; VBROADCASTSD ymm1, xmm2/m64 || VEX.256.66.0F38.W0 19 /r || encoded[7]{c4 e2 7d 19 44 24 10}
0014h vmovsd qword ptr [rsp+8],xmm2           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 54 24 08}
001ah vbroadcastsd ymm1,qword ptr [rsp+8]     ; VBROADCASTSD ymm1, xmm2/m64 || VEX.256.66.0F38.W0 19 /r || encoded[7]{c4 e2 7d 19 4c 24 08}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
