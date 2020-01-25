; Vector128<byte> vsrl<byte>(Vector128<byte> x, byte count)
; vsrl__128x8u[7ff7c6c12c30h, 7ff7c6c12c7ch][76] = {50 c5 f8 77 90 48 8b c1 c5 f9 10 02 41 0f b6 c8 c5 f9 6e c9 c5 f9 d3 c1 f7 d9 83 c1 08 0f b6 c9 f7 d9 83 c1 08 ba ff 00 00 00 d3 fa 0f b6 d2 88 54 24 04 48 8d 54 24 04 c4 e2 79 78 4c 24 04 c5 f9 db c1 c5 f9 11 00 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:06:169
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
000ch movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0010h vmovd xmm1,ecx                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c9}
0014h vpsrlq xmm0,xmm0,xmm1                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c1}
0018h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
001ah add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
001dh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0020h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0022h add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
0025h mov edx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff 00 00 00}
002ah sar edx,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 fa}
002ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002fh mov [rsp+4],dl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 54 24 04}
0033h lea rdx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 04}
0038h vpbroadcastb xmm1,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 4c 24 04}
003fh vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0043h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0047h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
