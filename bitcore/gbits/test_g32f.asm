; bit test<float>(float src, byte pos)
; test_g32f[7ff7c6e772b0h, 7ff7c6e772d0h][32] = {50 c5 f8 77 90 c5 fa 11 44 24 04 8b 44 24 04 0f b6 d2 0f a3 d0 0f 92 c0 0f b6 c0 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:33:743
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
000fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0012h bt eax,edx                              ; BT r/m32, r32 || o32 0F A3 /r || encoded[3]{0f a3 d0}
0015h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
