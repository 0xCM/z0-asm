------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vpartsi(N256 w, short x0, short x1, short x2, short x3, short x4, short x5, short x6, short x7, short x8, short x9, short xA, short xB, short xC, short xD, short xE, short xF)
; vpartsi_n256_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i[229] = {c5 f8 77 66 90 49 0f bf c0 c5 f9 6e c0 49 0f bf c1 c5 f9 c4 c0 01 8b 44 24 28 48 0f bf c0 c5 f9 c4 c0 02 8b 44 24 30 48 0f bf c0 c5 f9 c4 c0 03 8b 44 24 38 48 0f bf c0 c5 f9 c4 c0 04 8b 44 24 40 48 0f bf c0 c5 f9 c4 c0 05 8b 44 24 48 48 0f bf c0 c5 f9 c4 c0 06 8b 44 24 50 48 0f bf c0 c5 f9 c4 c0 07 8b 44 24 58 48 0f bf c0 c5 f9 6e c8 8b 44 24 60 48 0f bf c0 c5 f1 c4 c8 01 8b 44 24 68 48 0f bf c0 c5 f1 c4 c8 02 8b 44 24 70 48 0f bf c0 c5 f1 c4 c8 03 8b 44 24 78 48 0f bf c0 c5 f1 c4 c8 04 8b 84 24 80 00 00 00 48 0f bf c0 c5 f1 c4 c8 05 8b 84 24 88 00 00 00 48 0f bf c0 c5 f1 c4 c8 06 8b 84 24 90 00 00 00 48 0f bf c0 c5 f1 c4 c8 07 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh movsx rax,r9w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c1}
0011h vpinsrw xmm0,xmm0,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 01}
0016h mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
001ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001eh vpinsrw xmm0,xmm0,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 02}
0023h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0027h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
002bh vpinsrw xmm0,xmm0,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 03}
0030h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0034h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0038h vpinsrw xmm0,xmm0,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 04}
003dh mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
0041h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0045h vpinsrw xmm0,xmm0,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 05}
004ah mov eax,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 48}
004eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0052h vpinsrw xmm0,xmm0,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 06}
0057h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
005bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
005fh vpinsrw xmm0,xmm0,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 07}
0064h mov eax,[rsp+58h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 58}
0068h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
006ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0070h mov eax,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 60}
0074h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0078h vpinsrw xmm1,xmm1,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 01}
007dh mov eax,[rsp+68h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 68}
0081h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0085h vpinsrw xmm1,xmm1,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 02}
008ah mov eax,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 70}
008eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0092h vpinsrw xmm1,xmm1,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 03}
0097h mov eax,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 78}
009bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
009fh vpinsrw xmm1,xmm1,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 04}
00a4h mov eax,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 80 00 00 00}
00abh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00afh vpinsrw xmm1,xmm1,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 05}
00b4h mov eax,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 88 00 00 00}
00bbh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00bfh vpinsrw xmm1,xmm1,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 06}
00c4h mov eax,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 90 00 00 00}
00cbh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00cfh vpinsrw xmm1,xmm1,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 07}
00d4h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
00dah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00deh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e1h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00e4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vpartsi(N256 w, int x0, int x1, int x2, int x3, int x4, int x5, int x6, int x7)
; vpartsi_n256_32i_32i_32i_32i_32i_32i_32i_32i[79] = {c5 f8 77 66 90 c4 c1 79 6e c0 c4 c3 79 22 c1 01 c4 e3 79 22 44 24 28 02 c4 e3 79 22 44 24 30 03 c5 f9 6e 4c 24 38 c4 e3 71 22 4c 24 40 01 c4 e3 71 22 4c 24 48 02 c4 e3 71 22 4c 24 50 03 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovd xmm0,r8d                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[5]{c4 c1 79 6e c0}
000ah vpinsrd xmm0,xmm0,r9d,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c1 01}
0010h vpinsrd xmm0,xmm0,dword ptr [rsp+28h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 79 22 44 24 28 02}
0018h vpinsrd xmm0,xmm0,dword ptr [rsp+30h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 79 22 44 24 30 03}
0020h vmovd xmm1,dword ptr [rsp+38h]          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[6]{c5 f9 6e 4c 24 38}
0026h vpinsrd xmm1,xmm1,dword ptr [rsp+40h],1 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 40 01}
002eh vpinsrd xmm1,xmm1,dword ptr [rsp+48h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 48 02}
0036h vpinsrd xmm1,xmm1,dword ptr [rsp+50h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 50 03}
003eh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0044h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0048h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vpartsi(N256 w, long x0, long x1, long x2, long x3)
; vpartsi_n256_64i_64i_64i_64i[48] = {c5 f8 77 66 90 c4 c1 f9 6e c0 c4 c3 f9 22 c1 01 c4 e1 f9 6e 4c 24 28 c4 e3 f1 22 4c 24 30 01 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c0}
000ah vpinsrq xmm0,xmm0,r9,1                  ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 c3 f9 22 c1 01}
0010h vmovq xmm1,qword ptr [rsp+28h]          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[7]{c4 e1 f9 6e 4c 24 28}
0017h vpinsrq xmm1,xmm1,qword ptr [rsp+30h],1 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[8]{c4 e3 f1 22 4c 24 30 01}
001fh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0025h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0029h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<short> vpartsi(N512 w, short x0, short x1, short x2, short x3, short x4, short x5, short x6, short x7, short x8, short x9, short x10, short x11, short x12, short x13, short x14, short x15, short x16, short x17, short x18, short x19, short x20, short x21, short x22, short x23, short x24, short x25, short x26, short x27, short x28, short x29, short x30, short x31)
; vpartsi_n512_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i_16i[494] = {c5 f8 77 66 90 49 0f bf c0 c5 f9 6e c0 49 0f bf c1 c5 f9 c4 c0 01 8b 44 24 28 48 0f bf c0 c5 f9 c4 c0 02 8b 44 24 30 48 0f bf c0 c5 f9 c4 c0 03 8b 44 24 38 48 0f bf c0 c5 f9 c4 c0 04 8b 44 24 40 48 0f bf c0 c5 f9 c4 c0 05 8b 44 24 48 48 0f bf c0 c5 f9 c4 c0 06 8b 44 24 50 48 0f bf c0 c5 f9 c4 c0 07 8b 44 24 58 48 0f bf c0 c5 f9 6e c8 8b 44 24 60 48 0f bf c0 c5 f1 c4 c8 01 8b 44 24 68 48 0f bf c0 c5 f1 c4 c8 02 8b 44 24 70 48 0f bf c0 c5 f1 c4 c8 03 8b 44 24 78 48 0f bf c0 c5 f1 c4 c8 04 8b 84 24 80 00 00 00 48 0f bf c0 c5 f1 c4 c8 05 8b 84 24 88 00 00 00 48 0f bf c0 c5 f1 c4 c8 06 8b 84 24 90 00 00 00 48 0f bf c0 c5 f1 c4 c8 07 c4 e3 7d 38 c1 01 8b 84 24 98 00 00 00 48 0f bf c0 c5 f9 6e c8 8b 84 24 a0 00 00 00 48 0f bf c0 c5 f1 c4 c8 01 8b 84 24 a8 00 00 00 48 0f bf c0 c5 f1 c4 c8 02 8b 84 24 b0 00 00 00 48 0f bf c0 c5 f1 c4 c8 03 8b 84 24 b8 00 00 00 48 0f bf c0 c5 f1 c4 c8 04 8b 84 24 c0 00 00 00 48 0f bf c0 c5 f1 c4 c8 05 8b 84 24 c8 00 00 00 48 0f bf c0 c5 f1 c4 c8 06 8b 84 24 d0 00 00 00 48 0f bf c0 c5 f1 c4 c8 07 8b 84 24 d8 00 00 00 48 0f bf c0 c5 f9 6e d0 8b 84 24 e0 00 00 00 48 0f bf c0 c5 e9 c4 d0 01 8b 84 24 e8 00 00 00 48 0f bf c0 c5 e9 c4 d0 02 8b 84 24 f0 00 00 00 48 0f bf c0 c5 e9 c4 d0 03 8b 84 24 f8 00 00 00 48 0f bf c0 c5 e9 c4 d0 04 8b 84 24 00 01 00 00 48 0f bf c0 c5 e9 c4 d0 05 8b 84 24 08 01 00 00 48 0f bf c0 c5 e9 c4 d0 06 8b 84 24 10 01 00 00 48 0f bf c0 c5 e9 c4 d0 07 c4 e3 75 38 ca 01 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh movsx rax,r9w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c1}
0011h vpinsrw xmm0,xmm0,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 01}
0016h mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
001ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001eh vpinsrw xmm0,xmm0,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 02}
0023h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0027h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
002bh vpinsrw xmm0,xmm0,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 03}
0030h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0034h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0038h vpinsrw xmm0,xmm0,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 04}
003dh mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
0041h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0045h vpinsrw xmm0,xmm0,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 05}
004ah mov eax,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 48}
004eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0052h vpinsrw xmm0,xmm0,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 06}
0057h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
005bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
005fh vpinsrw xmm0,xmm0,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 07}
0064h mov eax,[rsp+58h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 58}
0068h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
006ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0070h mov eax,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 60}
0074h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0078h vpinsrw xmm1,xmm1,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 01}
007dh mov eax,[rsp+68h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 68}
0081h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0085h vpinsrw xmm1,xmm1,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 02}
008ah mov eax,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 70}
008eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0092h vpinsrw xmm1,xmm1,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 03}
0097h mov eax,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 78}
009bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
009fh vpinsrw xmm1,xmm1,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 04}
00a4h mov eax,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 80 00 00 00}
00abh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00afh vpinsrw xmm1,xmm1,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 05}
00b4h mov eax,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 88 00 00 00}
00bbh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00bfh vpinsrw xmm1,xmm1,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 06}
00c4h mov eax,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 90 00 00 00}
00cbh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00cfh vpinsrw xmm1,xmm1,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 07}
00d4h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
00dah mov eax,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 98 00 00 00}
00e1h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00e5h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00e9h mov eax,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 a0 00 00 00}
00f0h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00f4h vpinsrw xmm1,xmm1,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 01}
00f9h mov eax,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 a8 00 00 00}
0100h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0104h vpinsrw xmm1,xmm1,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 02}
0109h mov eax,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b0 00 00 00}
0110h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0114h vpinsrw xmm1,xmm1,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 03}
0119h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
0120h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0124h vpinsrw xmm1,xmm1,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 04}
0129h mov eax,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 c0 00 00 00}
0130h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0134h vpinsrw xmm1,xmm1,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 05}
0139h mov eax,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 c8 00 00 00}
0140h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0144h vpinsrw xmm1,xmm1,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 06}
0149h mov eax,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 d0 00 00 00}
0150h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0154h vpinsrw xmm1,xmm1,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 07}
0159h mov eax,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 d8 00 00 00}
0160h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0164h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
0168h mov eax,[rsp+0e0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 e0 00 00 00}
016fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0173h vpinsrw xmm2,xmm2,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 01}
0178h mov eax,[rsp+0e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 e8 00 00 00}
017fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0183h vpinsrw xmm2,xmm2,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 02}
0188h mov eax,[rsp+0f0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f0 00 00 00}
018fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0193h vpinsrw xmm2,xmm2,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 03}
0198h mov eax,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f8 00 00 00}
019fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
01a3h vpinsrw xmm2,xmm2,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 04}
01a8h mov eax,[rsp+100h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 00 01 00 00}
01afh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
01b3h vpinsrw xmm2,xmm2,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 05}
01b8h mov eax,[rsp+108h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 08 01 00 00}
01bfh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
01c3h vpinsrw xmm2,xmm2,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 06}
01c8h mov eax,[rsp+110h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 10 01 00 00}
01cfh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
01d3h vpinsrw xmm2,xmm2,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 07}
01d8h vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
01deh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01e2h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
01e7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01eah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01edh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vpartsi(N512 w, int x0, int x1, int x2, int x3, int x4, int x5, int x6, int x7, int x8, int x9, int x10, int x11, int x12, int x13, int x14, int x15)
; vpartsi_n512_32i_32i_32i_32i_32i_32i_32i_32i_32i_32i_32i_32i_32i_32i_32i_32i[159] = {c5 f8 77 66 90 c4 c1 79 6e c0 c4 c3 79 22 c1 01 c4 e3 79 22 44 24 28 02 c4 e3 79 22 44 24 30 03 c5 f9 6e 4c 24 38 c4 e3 71 22 4c 24 40 01 c4 e3 71 22 4c 24 48 02 c4 e3 71 22 4c 24 50 03 c4 e3 7d 38 c1 01 c5 f9 6e 4c 24 58 c4 e3 71 22 4c 24 60 01 c4 e3 71 22 4c 24 68 02 c4 e3 71 22 4c 24 70 03 c5 f9 6e 54 24 78 c4 e3 69 22 94 24 80 00 00 00 01 c4 e3 69 22 94 24 88 00 00 00 02 c4 e3 69 22 94 24 90 00 00 00 03 c4 e3 75 38 ca 01 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovd xmm0,r8d                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[5]{c4 c1 79 6e c0}
000ah vpinsrd xmm0,xmm0,r9d,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c1 01}
0010h vpinsrd xmm0,xmm0,dword ptr [rsp+28h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 79 22 44 24 28 02}
0018h vpinsrd xmm0,xmm0,dword ptr [rsp+30h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 79 22 44 24 30 03}
0020h vmovd xmm1,dword ptr [rsp+38h]          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[6]{c5 f9 6e 4c 24 38}
0026h vpinsrd xmm1,xmm1,dword ptr [rsp+40h],1 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 40 01}
002eh vpinsrd xmm1,xmm1,dword ptr [rsp+48h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 48 02}
0036h vpinsrd xmm1,xmm1,dword ptr [rsp+50h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 50 03}
003eh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0044h vmovd xmm1,dword ptr [rsp+58h]          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[6]{c5 f9 6e 4c 24 58}
004ah vpinsrd xmm1,xmm1,dword ptr [rsp+60h],1 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 60 01}
0052h vpinsrd xmm1,xmm1,dword ptr [rsp+68h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 68 02}
005ah vpinsrd xmm1,xmm1,dword ptr [rsp+70h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 70 03}
0062h vmovd xmm2,dword ptr [rsp+78h]          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[6]{c5 f9 6e 54 24 78}
0068h vpinsrd xmm2,xmm2,dword ptr [rsp+80h],1 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[11]{c4 e3 69 22 94 24 80 00 00 00 01}
0073h vpinsrd xmm2,xmm2,dword ptr [rsp+88h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[11]{c4 e3 69 22 94 24 88 00 00 00 02}
007eh vpinsrd xmm2,xmm2,dword ptr [rsp+90h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[11]{c4 e3 69 22 94 24 90 00 00 00 03}
0089h vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
008fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0093h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0098h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vpartsi(N512 w, long x0, long x1, long x2, long x3, long x4, long x5, long x6, long x7)
; vpartsi_n512_64i_64i_64i_64i_64i_64i_64i_64i[89] = {c5 f8 77 66 90 c4 c1 f9 6e c0 c4 c3 f9 22 c1 01 c4 e1 f9 6e 4c 24 28 c4 e3 f1 22 4c 24 30 01 c4 e3 7d 38 c1 01 c4 e1 f9 6e 4c 24 38 c4 e3 f1 22 4c 24 40 01 c4 e1 f9 6e 54 24 48 c4 e3 e9 22 54 24 50 01 c4 e3 75 38 ca 01 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c0}
000ah vpinsrq xmm0,xmm0,r9,1                  ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 c3 f9 22 c1 01}
0010h vmovq xmm1,qword ptr [rsp+28h]          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[7]{c4 e1 f9 6e 4c 24 28}
0017h vpinsrq xmm1,xmm1,qword ptr [rsp+30h],1 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[8]{c4 e3 f1 22 4c 24 30 01}
001fh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0025h vmovq xmm1,qword ptr [rsp+38h]          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[7]{c4 e1 f9 6e 4c 24 38}
002ch vpinsrq xmm1,xmm1,qword ptr [rsp+40h],1 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[8]{c4 e3 f1 22 4c 24 40 01}
0034h vmovq xmm2,qword ptr [rsp+48h]          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[7]{c4 e1 f9 6e 54 24 48}
003bh vpinsrq xmm2,xmm2,qword ptr [rsp+50h],1 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[8]{c4 e3 e9 22 54 24 50 01}
0043h vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
0049h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
004dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0058h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vpartsi(N128 w, int x0, int x1, int x2, int x3)
; vpartsi_n128_32i_32i_32i_32i[40] = {c5 f8 77 66 90 c4 c1 79 6e c0 c4 c3 79 22 c1 01 c4 e3 79 22 44 24 28 02 c4 e3 79 22 44 24 30 03 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovd xmm0,r8d                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[5]{c4 c1 79 6e c0}
000ah vpinsrd xmm0,xmm0,r9d,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c1 01}
0010h vpinsrd xmm0,xmm0,dword ptr [rsp+28h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 79 22 44 24 28 02}
0018h vpinsrd xmm0,xmm0,dword ptr [rsp+30h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 79 22 44 24 30 03}
0020h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0024h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vpartsi(N128 w, long x0, long x1)
; vpartsi_n128_64i_64i[24] = {c5 f8 77 66 90 c4 c1 f9 6e c0 c4 c3 f9 22 c1 01 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c0}
000ah vpinsrq xmm0,xmm0,r9,1                  ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 c3 f9 22 c1 01}
0010h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0014h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
