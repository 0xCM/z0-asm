; ushort broadcast(byte src, N16 w)
; broadcast__0o_n16_0o[7ff7c6e84bf0h, 7ff7c6e84c12h][34] = {50 c5 f8 77 90 0f b6 c1 88 44 24 04 48 8d 44 24 04 c4 e2 79 78 44 24 04 c5 f9 c5 c0 00 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:52:234
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
