; bit testc(ulong a)
; testc_64u[7ff7c6bd8790h, 7ff7c6bd87c0h][48] = {50 c5 f8 77 90 48 89 0c 24 48 8d 04 24 c4 e2 79 59 04 24 c5 f0 57 c9 c5 e8 57 d2 c4 e2 71 29 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:153
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 0c 24}
0009h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
000dh vpbroadcastq xmm0,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 04 24}
0013h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0017h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
001bh vpcmpeqq xmm1,xmm1,xmm2                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 71 29 ca}
0020h vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0025h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
