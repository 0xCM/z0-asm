------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vparts(N128 w, ulong x0, ulong x1)
; vparts_n128_64u_64u[24] = {c5 f8 77 66 90 c4 c1 f9 6e c0 c4 c3 f9 22 c1 01 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c0}
000ah vpinsrq xmm0,xmm0,r9,1                  ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 c3 f9 22 c1 01}
0010h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0014h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vparts(N256 w, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xa, byte xb, byte xc, byte xd, byte xe, byte xf, byte x10, byte x11, byte x12, byte x13, byte x14, byte x15, byte x16, byte x17, byte x18, byte x19, byte x1a, byte x1b, byte x1c, byte x1d, byte x1e, byte x1f)
; vparts_n256_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u[485] = {c5 f8 77 66 90 41 0f b6 c0 c5 f9 6e c0 41 0f b6 c1 c4 e3 79 20 c0 01 8b 44 24 28 0f b6 c0 c4 e3 79 20 c0 02 8b 44 24 30 0f b6 c0 c4 e3 79 20 c0 03 8b 44 24 38 0f b6 c0 c4 e3 79 20 c0 04 8b 44 24 40 0f b6 c0 c4 e3 79 20 c0 05 8b 44 24 48 0f b6 c0 c4 e3 79 20 c0 06 8b 44 24 50 0f b6 c0 c4 e3 79 20 c0 07 8b 44 24 58 0f b6 c0 c4 e3 79 20 c0 08 8b 44 24 60 0f b6 c0 c4 e3 79 20 c0 09 8b 44 24 68 0f b6 c0 c4 e3 79 20 c0 0a 8b 44 24 70 0f b6 c0 c4 e3 79 20 c0 0b 8b 44 24 78 0f b6 c0 c4 e3 79 20 c0 0c 8b 84 24 80 00 00 00 0f b6 c0 c4 e3 79 20 c0 0d 8b 84 24 88 00 00 00 0f b6 c0 c4 e3 79 20 c0 0e 8b 84 24 90 00 00 00 0f b6 c0 c4 e3 79 20 c0 0f 8b 84 24 98 00 00 00 0f b6 c0 c5 f9 6e c8 8b 84 24 a0 00 00 00 0f b6 c0 c4 e3 71 20 c8 01 8b 84 24 a8 00 00 00 0f b6 c0 c4 e3 71 20 c8 02 8b 84 24 b0 00 00 00 0f b6 c0 c4 e3 71 20 c8 03 8b 84 24 b8 00 00 00 0f b6 c0 c4 e3 71 20 c8 04 8b 84 24 c0 00 00 00 0f b6 c0 c4 e3 71 20 c8 05 8b 84 24 c8 00 00 00 0f b6 c0 c4 e3 71 20 c8 06 8b 84 24 d0 00 00 00 0f b6 c0 c4 e3 71 20 c8 07 8b 84 24 d8 00 00 00 0f b6 c0 c4 e3 71 20 c8 08 8b 84 24 e0 00 00 00 0f b6 c0 c4 e3 71 20 c8 09 8b 84 24 e8 00 00 00 0f b6 c0 c4 e3 71 20 c8 0a 8b 84 24 f0 00 00 00 0f b6 c0 c4 e3 71 20 c8 0b 8b 84 24 f8 00 00 00 0f b6 c0 c4 e3 71 20 c8 0c 8b 84 24 00 01 00 00 0f b6 c0 c4 e3 71 20 c8 0d 8b 84 24 08 01 00 00 0f b6 c0 c4 e3 71 20 c8 0e 8b 84 24 10 01 00 00 0f b6 c0 c4 e3 71 20 c8 0f c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh movzx eax,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c1}
0011h vpinsrb xmm0,xmm0,eax,1                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 01}
0017h mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh vpinsrb xmm0,xmm0,eax,2                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 02}
0024h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh vpinsrb xmm0,xmm0,eax,3                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 03}
0031h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vpinsrb xmm0,xmm0,eax,4                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 04}
003eh mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
0042h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0045h vpinsrb xmm0,xmm0,eax,5                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 05}
004bh mov eax,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 48}
004fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0052h vpinsrb xmm0,xmm0,eax,6                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 06}
0058h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
005ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005fh vpinsrb xmm0,xmm0,eax,7                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 07}
0065h mov eax,[rsp+58h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 58}
0069h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ch vpinsrb xmm0,xmm0,eax,8                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 08}
0072h mov eax,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 60}
0076h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0079h vpinsrb xmm0,xmm0,eax,9                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 09}
007fh mov eax,[rsp+68h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 68}
0083h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0086h vpinsrb xmm0,xmm0,eax,0ah               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0a}
008ch mov eax,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 70}
0090h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0093h vpinsrb xmm0,xmm0,eax,0bh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0b}
0099h mov eax,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 78}
009dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a0h vpinsrb xmm0,xmm0,eax,0ch               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0c}
00a6h mov eax,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 80 00 00 00}
00adh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b0h vpinsrb xmm0,xmm0,eax,0dh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0d}
00b6h mov eax,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 88 00 00 00}
00bdh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c0h vpinsrb xmm0,xmm0,eax,0eh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0e}
00c6h mov eax,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 90 00 00 00}
00cdh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00d0h vpinsrb xmm0,xmm0,eax,0fh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0f}
00d6h mov eax,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 98 00 00 00}
00ddh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00e0h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00e4h mov eax,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 a0 00 00 00}
00ebh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00eeh vpinsrb xmm1,xmm1,eax,1                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 01}
00f4h mov eax,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 a8 00 00 00}
00fbh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00feh vpinsrb xmm1,xmm1,eax,2                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 02}
0104h mov eax,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b0 00 00 00}
010bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
010eh vpinsrb xmm1,xmm1,eax,3                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 03}
0114h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
011bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
011eh vpinsrb xmm1,xmm1,eax,4                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 04}
0124h mov eax,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 c0 00 00 00}
012bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
012eh vpinsrb xmm1,xmm1,eax,5                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 05}
0134h mov eax,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 c8 00 00 00}
013bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
013eh vpinsrb xmm1,xmm1,eax,6                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 06}
0144h mov eax,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 d0 00 00 00}
014bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
014eh vpinsrb xmm1,xmm1,eax,7                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 07}
0154h mov eax,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 d8 00 00 00}
015bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
015eh vpinsrb xmm1,xmm1,eax,8                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 08}
0164h mov eax,[rsp+0e0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 e0 00 00 00}
016bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
016eh vpinsrb xmm1,xmm1,eax,9                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 09}
0174h mov eax,[rsp+0e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 e8 00 00 00}
017bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
017eh vpinsrb xmm1,xmm1,eax,0ah               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 0a}
0184h mov eax,[rsp+0f0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f0 00 00 00}
018bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
018eh vpinsrb xmm1,xmm1,eax,0bh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 0b}
0194h mov eax,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f8 00 00 00}
019bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
019eh vpinsrb xmm1,xmm1,eax,0ch               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 0c}
01a4h mov eax,[rsp+100h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 00 01 00 00}
01abh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
01aeh vpinsrb xmm1,xmm1,eax,0dh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 0d}
01b4h mov eax,[rsp+108h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 08 01 00 00}
01bbh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
01beh vpinsrb xmm1,xmm1,eax,0eh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 0e}
01c4h mov eax,[rsp+110h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 10 01 00 00}
01cbh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
01ceh vpinsrb xmm1,xmm1,eax,0fh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 71 20 c8 0f}
01d4h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
01dah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01deh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01e1h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01e4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vparts(N256 w, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort xA, ushort xB, ushort xC, ushort xD, ushort xE, ushort xF)
; vparts_n256_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u[215] = {c5 f8 77 66 90 41 0f b7 c0 c5 f9 6e c0 41 0f b7 c1 c5 f9 c4 c0 01 8b 44 24 28 0f b7 c0 c5 f9 c4 c0 02 8b 44 24 30 0f b7 c0 c5 f9 c4 c0 03 8b 44 24 38 0f b7 c0 c5 f9 c4 c0 04 8b 44 24 40 0f b7 c0 c5 f9 c4 c0 05 8b 44 24 48 0f b7 c0 c5 f9 c4 c0 06 8b 44 24 50 0f b7 c0 c5 f9 c4 c0 07 8b 44 24 58 0f b7 c0 c5 f9 6e c8 8b 44 24 60 0f b7 c0 c5 f1 c4 c8 01 8b 44 24 68 0f b7 c0 c5 f1 c4 c8 02 8b 44 24 70 0f b7 c0 c5 f1 c4 c8 03 8b 44 24 78 0f b7 c0 c5 f1 c4 c8 04 8b 84 24 80 00 00 00 0f b7 c0 c5 f1 c4 c8 05 8b 84 24 88 00 00 00 0f b7 c0 c5 f1 c4 c8 06 8b 84 24 90 00 00 00 0f b7 c0 c5 f1 c4 c8 07 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0011h vpinsrw xmm0,xmm0,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 01}
0016h mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh vpinsrw xmm0,xmm0,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 02}
0022h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0026h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0029h vpinsrw xmm0,xmm0,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 03}
002eh mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0032h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0035h vpinsrw xmm0,xmm0,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 04}
003ah mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
003eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0041h vpinsrw xmm0,xmm0,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 05}
0046h mov eax,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 48}
004ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
004dh vpinsrw xmm0,xmm0,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 06}
0052h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
0056h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0059h vpinsrw xmm0,xmm0,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 07}
005eh mov eax,[rsp+58h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 58}
0062h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0065h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0069h mov eax,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 60}
006dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0070h vpinsrw xmm1,xmm1,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 01}
0075h mov eax,[rsp+68h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 68}
0079h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
007ch vpinsrw xmm1,xmm1,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 02}
0081h mov eax,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 70}
0085h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0088h vpinsrw xmm1,xmm1,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 03}
008dh mov eax,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 78}
0091h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0094h vpinsrw xmm1,xmm1,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 04}
0099h mov eax,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 80 00 00 00}
00a0h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00a3h vpinsrw xmm1,xmm1,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 05}
00a8h mov eax,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 88 00 00 00}
00afh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00b2h vpinsrw xmm1,xmm1,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 06}
00b7h mov eax,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 90 00 00 00}
00beh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00c1h vpinsrw xmm1,xmm1,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 07}
00c6h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
00cch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00d0h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00d3h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vparts(N256 w, uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7)
; vparts_n256_32u_32u_32u_32u_32u_32u_32u_32u[79] = {c5 f8 77 66 90 c4 c1 79 6e c0 c4 c3 79 22 c1 01 c4 e3 79 22 44 24 28 02 c4 e3 79 22 44 24 30 03 c5 f9 6e 4c 24 38 c4 e3 71 22 4c 24 40 01 c4 e3 71 22 4c 24 48 02 c4 e3 71 22 4c 24 50 03 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
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
; Vector256<ulong> vparts(N256 w, ulong x0, ulong x1, ulong x2, ulong x3)
; vparts_n256_64u_64u_64u_64u[48] = {c5 f8 77 66 90 c4 c1 f9 6e c0 c4 c3 f9 22 c1 01 c4 e1 f9 6e 4c 24 28 c4 e3 f1 22 4c 24 30 01 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
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
; Vector512<ushort> vparts(N512 w, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort x10, ushort x11, ushort x12, ushort x13, ushort x14, ushort x15, ushort x16, ushort x17, ushort x18, ushort x19, ushort x20, ushort x21, ushort x22, ushort x23, ushort x24, ushort x25, ushort x26, ushort x27, ushort x28, ushort x29, ushort x30, ushort x31)
; vparts_n512_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u_16u[464] = {c5 f8 77 66 90 41 0f b7 c0 c5 f9 6e c0 41 0f b7 c1 c5 f9 c4 c0 01 8b 44 24 28 0f b7 c0 c5 f9 c4 c0 02 8b 44 24 30 0f b7 c0 c5 f9 c4 c0 03 8b 44 24 38 0f b7 c0 c5 f9 c4 c0 04 8b 44 24 40 0f b7 c0 c5 f9 c4 c0 05 8b 44 24 48 0f b7 c0 c5 f9 c4 c0 06 8b 44 24 50 0f b7 c0 c5 f9 c4 c0 07 8b 44 24 58 0f b7 c0 c5 f9 6e c8 8b 44 24 60 0f b7 c0 c5 f1 c4 c8 01 8b 44 24 68 0f b7 c0 c5 f1 c4 c8 02 8b 44 24 70 0f b7 c0 c5 f1 c4 c8 03 8b 44 24 78 0f b7 c0 c5 f1 c4 c8 04 8b 84 24 80 00 00 00 0f b7 c0 c5 f1 c4 c8 05 8b 84 24 88 00 00 00 0f b7 c0 c5 f1 c4 c8 06 8b 84 24 90 00 00 00 0f b7 c0 c5 f1 c4 c8 07 c4 e3 7d 38 c1 01 8b 84 24 98 00 00 00 0f b7 c0 c5 f9 6e c8 8b 84 24 a0 00 00 00 0f b7 c0 c5 f1 c4 c8 01 8b 84 24 a8 00 00 00 0f b7 c0 c5 f1 c4 c8 02 8b 84 24 b0 00 00 00 0f b7 c0 c5 f1 c4 c8 03 8b 84 24 b8 00 00 00 0f b7 c0 c5 f1 c4 c8 04 8b 84 24 c0 00 00 00 0f b7 c0 c5 f1 c4 c8 05 8b 84 24 c8 00 00 00 0f b7 c0 c5 f1 c4 c8 06 8b 84 24 d0 00 00 00 0f b7 c0 c5 f1 c4 c8 07 8b 84 24 d8 00 00 00 0f b7 c0 c5 f9 6e d0 8b 84 24 e0 00 00 00 0f b7 c0 c5 e9 c4 d0 01 8b 84 24 e8 00 00 00 0f b7 c0 c5 e9 c4 d0 02 8b 84 24 f0 00 00 00 0f b7 c0 c5 e9 c4 d0 03 8b 84 24 f8 00 00 00 0f b7 c0 c5 e9 c4 d0 04 8b 84 24 00 01 00 00 0f b7 c0 c5 e9 c4 d0 05 8b 84 24 08 01 00 00 0f b7 c0 c5 e9 c4 d0 06 8b 84 24 10 01 00 00 0f b7 c0 c5 e9 c4 d0 07 c4 e3 75 38 ca 01 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0011h vpinsrw xmm0,xmm0,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 01}
0016h mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh vpinsrw xmm0,xmm0,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 02}
0022h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0026h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0029h vpinsrw xmm0,xmm0,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 03}
002eh mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0032h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0035h vpinsrw xmm0,xmm0,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 04}
003ah mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
003eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0041h vpinsrw xmm0,xmm0,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 05}
0046h mov eax,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 48}
004ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
004dh vpinsrw xmm0,xmm0,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 06}
0052h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
0056h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0059h vpinsrw xmm0,xmm0,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 07}
005eh mov eax,[rsp+58h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 58}
0062h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0065h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0069h mov eax,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 60}
006dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0070h vpinsrw xmm1,xmm1,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 01}
0075h mov eax,[rsp+68h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 68}
0079h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
007ch vpinsrw xmm1,xmm1,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 02}
0081h mov eax,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 70}
0085h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0088h vpinsrw xmm1,xmm1,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 03}
008dh mov eax,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 78}
0091h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0094h vpinsrw xmm1,xmm1,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 04}
0099h mov eax,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 80 00 00 00}
00a0h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00a3h vpinsrw xmm1,xmm1,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 05}
00a8h mov eax,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 88 00 00 00}
00afh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00b2h vpinsrw xmm1,xmm1,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 06}
00b7h mov eax,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 90 00 00 00}
00beh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00c1h vpinsrw xmm1,xmm1,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 07}
00c6h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
00cch mov eax,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 98 00 00 00}
00d3h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00d6h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00dah mov eax,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 a0 00 00 00}
00e1h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00e4h vpinsrw xmm1,xmm1,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 01}
00e9h mov eax,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 a8 00 00 00}
00f0h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00f3h vpinsrw xmm1,xmm1,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 02}
00f8h mov eax,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b0 00 00 00}
00ffh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0102h vpinsrw xmm1,xmm1,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 03}
0107h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
010eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0111h vpinsrw xmm1,xmm1,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 04}
0116h mov eax,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 c0 00 00 00}
011dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0120h vpinsrw xmm1,xmm1,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 05}
0125h mov eax,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 c8 00 00 00}
012ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
012fh vpinsrw xmm1,xmm1,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 06}
0134h mov eax,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 d0 00 00 00}
013bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
013eh vpinsrw xmm1,xmm1,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 07}
0143h mov eax,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 d8 00 00 00}
014ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
014dh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
0151h mov eax,[rsp+0e0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 e0 00 00 00}
0158h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
015bh vpinsrw xmm2,xmm2,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 01}
0160h mov eax,[rsp+0e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 e8 00 00 00}
0167h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
016ah vpinsrw xmm2,xmm2,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 02}
016fh mov eax,[rsp+0f0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f0 00 00 00}
0176h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0179h vpinsrw xmm2,xmm2,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 03}
017eh mov eax,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f8 00 00 00}
0185h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0188h vpinsrw xmm2,xmm2,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 04}
018dh mov eax,[rsp+100h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 00 01 00 00}
0194h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0197h vpinsrw xmm2,xmm2,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 05}
019ch mov eax,[rsp+108h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 08 01 00 00}
01a3h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01a6h vpinsrw xmm2,xmm2,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 06}
01abh mov eax,[rsp+110h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 10 01 00 00}
01b2h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01b5h vpinsrw xmm2,xmm2,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 07}
01bah vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
01c0h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c4h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
01c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01cch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cfh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vparts(N512 w, uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7, uint x8, uint x9, uint x10, uint x11, uint x12, uint x13, uint x14, uint x15)
; vparts_n512_32u_32u_32u_32u_32u_32u_32u_32u_32u_32u_32u_32u_32u_32u_32u_32u[159] = {c5 f8 77 66 90 c4 c1 79 6e c0 c4 c3 79 22 c1 01 c4 e3 79 22 44 24 28 02 c4 e3 79 22 44 24 30 03 c5 f9 6e 4c 24 38 c4 e3 71 22 4c 24 40 01 c4 e3 71 22 4c 24 48 02 c4 e3 71 22 4c 24 50 03 c4 e3 7d 38 c1 01 c5 f9 6e 4c 24 58 c4 e3 71 22 4c 24 60 01 c4 e3 71 22 4c 24 68 02 c4 e3 71 22 4c 24 70 03 c5 f9 6e 54 24 78 c4 e3 69 22 94 24 80 00 00 00 01 c4 e3 69 22 94 24 88 00 00 00 02 c4 e3 69 22 94 24 90 00 00 00 03 c4 e3 75 38 ca 01 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
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
; Vector512<ulong> vparts(N512 w, ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5, ulong x6, ulong x7)
; vparts_n512_64u_64u_64u_64u_64u_64u_64u_64u[89] = {c5 f8 77 66 90 c4 c1 f9 6e c0 c4 c3 f9 22 c1 01 c4 e1 f9 6e 4c 24 28 c4 e3 f1 22 4c 24 30 01 c4 e3 7d 38 c1 01 c4 e1 f9 6e 4c 24 38 c4 e3 f1 22 4c 24 40 01 c4 e1 f9 6e 54 24 48 c4 e3 e9 22 54 24 50 01 c4 e3 75 38 ca 01 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
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
; Vector128<byte> vparts(N128 w, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xa, byte xb, byte xc, byte xd, byte xe, byte xf)
; vparts_n128_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u_8u[222] = {c5 f8 77 66 90 41 0f b6 c0 c5 f9 6e c0 41 0f b6 c1 c4 e3 79 20 c0 01 8b 44 24 28 0f b6 c0 c4 e3 79 20 c0 02 8b 44 24 30 0f b6 c0 c4 e3 79 20 c0 03 8b 44 24 38 0f b6 c0 c4 e3 79 20 c0 04 8b 44 24 40 0f b6 c0 c4 e3 79 20 c0 05 8b 44 24 48 0f b6 c0 c4 e3 79 20 c0 06 8b 44 24 50 0f b6 c0 c4 e3 79 20 c0 07 8b 44 24 58 0f b6 c0 c4 e3 79 20 c0 08 8b 44 24 60 0f b6 c0 c4 e3 79 20 c0 09 8b 44 24 68 0f b6 c0 c4 e3 79 20 c0 0a 8b 44 24 70 0f b6 c0 c4 e3 79 20 c0 0b 8b 44 24 78 0f b6 c0 c4 e3 79 20 c0 0c 8b 84 24 80 00 00 00 0f b6 c0 c4 e3 79 20 c0 0d 8b 84 24 88 00 00 00 0f b6 c0 c4 e3 79 20 c0 0e 8b 84 24 90 00 00 00 0f b6 c0 c4 e3 79 20 c0 0f c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh movzx eax,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c1}
0011h vpinsrb xmm0,xmm0,eax,1                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 01}
0017h mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh vpinsrb xmm0,xmm0,eax,2                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 02}
0024h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh vpinsrb xmm0,xmm0,eax,3                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 03}
0031h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vpinsrb xmm0,xmm0,eax,4                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 04}
003eh mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
0042h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0045h vpinsrb xmm0,xmm0,eax,5                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 05}
004bh mov eax,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 48}
004fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0052h vpinsrb xmm0,xmm0,eax,6                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 06}
0058h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
005ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005fh vpinsrb xmm0,xmm0,eax,7                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 07}
0065h mov eax,[rsp+58h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 58}
0069h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ch vpinsrb xmm0,xmm0,eax,8                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 08}
0072h mov eax,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 60}
0076h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0079h vpinsrb xmm0,xmm0,eax,9                 ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 09}
007fh mov eax,[rsp+68h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 68}
0083h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0086h vpinsrb xmm0,xmm0,eax,0ah               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0a}
008ch mov eax,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 70}
0090h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0093h vpinsrb xmm0,xmm0,eax,0bh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0b}
0099h mov eax,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 78}
009dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a0h vpinsrb xmm0,xmm0,eax,0ch               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0c}
00a6h mov eax,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 80 00 00 00}
00adh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b0h vpinsrb xmm0,xmm0,eax,0dh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0d}
00b6h mov eax,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 88 00 00 00}
00bdh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c0h vpinsrb xmm0,xmm0,eax,0eh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0e}
00c6h mov eax,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 90 00 00 00}
00cdh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00d0h vpinsrb xmm0,xmm0,eax,0fh               ; VPINSRB xmm1, xmm2, r32/m8, imm8 || VEX.128.66.0F3A.W0 20 /r ib || encoded[6]{c4 e3 79 20 c0 0f}
00d6h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00dah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00ddh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vparts(N128 w, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7)
; vparts_n128_16u_16u_16u_16u_16u_16u_16u_16u[102] = {c5 f8 77 66 90 41 0f b7 c0 c5 f9 6e c0 41 0f b7 c1 c5 f9 c4 c0 01 8b 44 24 28 0f b7 c0 c5 f9 c4 c0 02 8b 44 24 30 0f b7 c0 c5 f9 c4 c0 03 8b 44 24 38 0f b7 c0 c5 f9 c4 c0 04 8b 44 24 40 0f b7 c0 c5 f9 c4 c0 05 8b 44 24 48 0f b7 c0 c5 f9 c4 c0 06 8b 44 24 50 0f b7 c0 c5 f9 c4 c0 07 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0011h vpinsrw xmm0,xmm0,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 01}
0016h mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh vpinsrw xmm0,xmm0,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 02}
0022h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0026h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0029h vpinsrw xmm0,xmm0,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 03}
002eh mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0032h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0035h vpinsrw xmm0,xmm0,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 04}
003ah mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
003eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0041h vpinsrw xmm0,xmm0,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 05}
0046h mov eax,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 48}
004ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
004dh vpinsrw xmm0,xmm0,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 06}
0052h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
0056h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0059h vpinsrw xmm0,xmm0,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 07}
005eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0062h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0065h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vparts(N128 w, uint x0, uint x1, uint x2, uint x3)
; vparts_n128_32u_32u_32u_32u[40] = {c5 f8 77 66 90 c4 c1 79 6e c0 c4 c3 79 22 c1 01 c4 e3 79 22 44 24 28 02 c4 e3 79 22 44 24 30 03 c5 f9 11 01 48 8b c1 c3}
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
; Vector128<uint> vparts(uint x0, uint x1, uint x2, uint x3)
; vparts_32u_32u_32u_32u[37] = {c5 f8 77 66 90 c5 f9 6e c2 c4 c3 79 22 c0 01 c4 c3 79 22 c1 02 c4 e3 79 22 44 24 28 03 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovd xmm0,edx                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c2}
0009h vpinsrd xmm0,xmm0,r8d,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c0 01}
000fh vpinsrd xmm0,xmm0,r9d,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c1 02}
0015h vpinsrd xmm0,xmm0,dword ptr [rsp+28h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 79 22 44 24 28 03}
001dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0021h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
