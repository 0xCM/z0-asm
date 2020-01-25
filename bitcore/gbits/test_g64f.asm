; bit test<double>(double src, byte pos)
; test_g64f[7ff7c6e8bd90h, 7ff7c6e8bdb0h][32] = {50 c5 f8 77 90 c5 fb 11 04 24 48 8b 04 24 0f b6 d2 48 0f a3 d0 0f 92 c0 0f b6 c0 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:53:256
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
000ah mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
000eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0011h bt rax,rdx                              ; BT r/m64, r64 || REX.W 0F A3 /r || encoded[4]{48 0f a3 d0}
0015h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
