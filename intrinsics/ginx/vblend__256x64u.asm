; Vector256<ulong> vblend<ulong>(Vector256<ulong> x, Vector256<ulong> y, uint spec)
; vblend__256x64u[7ff7c6c07ec0h, 7ff7c6c07f43h][131] = {c5 f8 77 66 90 41 0f b7 c1 44 0f b6 d0 49 bb 80 80 80 80 80 80 80 80 c4 42 ab f5 d3 c4 c1 f9 6e c2 c1 e8 08 0f b6 c0 c4 c2 fb f5 c3 c4 e3 f9 22 c0 01 41 c1 e9 10 41 0f b7 c1 44 0f b6 c8 c4 42 b3 f5 cb c4 c1 f9 6e c9 c1 e8 08 0f b6 c0 c4 c2 fb f5 c3 c4 e3 f1 22 c8 01 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 10 0a c4 c1 7d 10 10 c4 e3 75 4c c2 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:520
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0009h movzx r10d,al                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 d0}
000dh mov r11,8080808080808080h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 80 80 80 80 80 80 80}
0017h pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
001ch vmovq xmm0,r10                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c2}
0021h shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
0024h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0027h pdep rax,rax,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c3}
002ch vpinsrq xmm0,xmm0,rax,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f9 22 c0 01}
0032h shr r9d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 10}
0036h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
003ah movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
003eh pdep r9,r9,r11                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 cb}
0043h vmovq xmm1,r9                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c9}
0048h shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
004bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004eh pdep rax,rax,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c3}
0053h vpinsrq xmm1,xmm1,rax,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f1 22 c8 01}
0059h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
005dh vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0063h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0069h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
006dh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0072h vpblendvb ymm0,ymm1,ymm2,ymm0           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 75 4c c2 00}
0078h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
007ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
007fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
