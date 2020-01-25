; bit testz(ulong a, ulong b)
; testz_64u[7ff7c71d31c0h, 7ff7c71d31f9h][57] = {48 83 ec 18 c5 f8 77 48 89 4c 24 10 48 8d 44 24 10 c4 e2 79 59 44 24 10 48 89 54 24 08 48 8d 44 24 08 c4 e2 79 59 4c 24 08 c4 e2 79 17 c1 0f 94 c0 0f b6 c0 48 83 c4 18 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:02:295
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov [rsp+10h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 10}
000ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0011h vpbroadcastq xmm0,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 44 24 10}
0018h mov [rsp+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 08}
001dh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0022h vpbroadcastq xmm1,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 4c 24 08}
0029h vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
002eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0031h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0034h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
