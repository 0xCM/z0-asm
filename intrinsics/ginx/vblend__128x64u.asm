; Vector128<ulong> vblend<ulong>(Vector128<ulong> x, Vector128<ulong> y, ushort spec)
; vblend__128x64u[7ff7c6c07a40h, 7ff7c6c07a89h][73] = {c5 f8 77 66 90 41 0f b7 c1 44 0f b6 c8 49 ba 80 80 80 80 80 80 80 80 c4 42 b3 f5 ca c4 c1 f9 6e c1 c1 e8 08 0f b6 c0 c4 c2 fb f5 c2 c4 e3 f9 22 c0 01 c5 f9 10 0a c4 c1 79 10 10 c4 e3 71 4c c2 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:502
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0009h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
000dh mov r10,8080808080808080h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 80 80 80 80 80 80 80 80}
0017h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
001ch vmovq xmm0,r9                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c1}
0021h shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
0024h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0027h pdep rax,rax,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c2}
002ch vpinsrq xmm0,xmm0,rax,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f9 22 c0 01}
0032h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0036h vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
003bh vpblendvb xmm0,xmm1,xmm2,xmm0           ; VPBLENDVB xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 71 4c c2 00}
0041h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0045h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
