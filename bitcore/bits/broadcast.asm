------------------------------------------------------------------------------------------------------------------------
; ushort broadcast(byte src, N16 w)
; broadcast_8u_n16[34] = {50 c5 f8 77 90 0f b6 c1 88 44 24 04 48 8d 44 24 04 c4 e2 79 78 44 24 04 c5 f9 c5 c0 00 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000ch lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0011h vpbroadcastb xmm0,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 04}
0018h vpextrw eax,xmm0,0                      ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 f9 c5 c0 00}
001dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint broadcast(byte src, N32 w)
; broadcast_8u_n32[33] = {50 c5 f8 77 90 0f b6 c1 88 44 24 04 48 8d 44 24 04 c4 e2 79 78 44 24 04 c5 f9 7e c0 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000ch lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0011h vpbroadcastb xmm0,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 04}
0018h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
001ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong broadcast(byte src, N64 w)
; broadcast_8u_n64[34] = {50 c5 f8 77 90 0f b6 c1 88 44 24 04 48 8d 44 24 04 c4 e2 79 78 44 24 04 c4 e1 f9 7e c0 48 83 c4 08 c3}
; TermCode = RET_ZEDx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000ch lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0011h vpbroadcastb xmm0,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 04}
0018h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
001dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint broadcast(ushort src, N32 w)
; broadcast_16u_n32[34] = {50 c5 f8 77 90 0f b7 c1 66 89 44 24 04 48 8d 44 24 04 c4 e2 79 79 44 24 04 c5 f9 7e c0 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
000dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0012h vpbroadcastw xmm0,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 04}
0019h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
001dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong broadcast(ushort src, N64 w)
; broadcast_16u_n64[35] = {50 c5 f8 77 90 0f b7 c1 66 89 44 24 04 48 8d 44 24 04 c4 e2 79 79 44 24 04 c4 e1 f9 7e c0 48 83 c4 08 c3}
; TermCode = RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
000dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0012h vpbroadcastw xmm0,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 04}
0019h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
001eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong broadcast(uint src, N64 w)
; broadcast_32u_n64[31] = {50 c5 f8 77 90 89 4c 24 04 48 8d 44 24 04 c4 e2 79 58 44 24 04 c4 e1 f9 7e c0 48 83 c4 08 c3}
; TermCode = RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
0009h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
000eh vpbroadcastd xmm0,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 44 24 04}
0015h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
001ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
