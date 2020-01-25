; Vector128<sbyte> vbitclear<sbyte>(Vector128<sbyte> src, byte start, byte count)
; vbitclear__128x8i[7ff7c71e6780h, 7ff7c71e67d3h][83] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 f0 f3 d1 4c 0f be c9 41 0f b6 c8 41 d3 e1 49 0f be c9 83 f1 7f 48 0f be c9 88 4c 24 04 48 8d 4c 24 04 c4 e2 79 78 44 24 04 c5 f9 10 0a c5 f9 db c1 c5 f9 11 00 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:08:676
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk rcx,r9                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d1}
001ch movsx r9,cl                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c9}
0020h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0024h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0027h movsx rcx,r9b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c9}
002bh xor ecx,7fh                             ; XOR r/m32, imm8 || o32 83 /6 ib || encoded[3]{83 f1 7f}
002eh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0032h mov [rsp+4],cl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 04}
0036h lea rcx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 04}
003bh vpbroadcastb xmm0,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 04}
0042h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0046h vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
004ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
004eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
