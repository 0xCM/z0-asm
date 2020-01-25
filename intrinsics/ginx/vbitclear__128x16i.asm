; Vector128<Int16> vbitclear<Int16>(Vector128<Int16> src, byte start, byte count)
; vbitclear__128x16i[7ff7c6bfcba0h, 7ff7c6bfcbf7h][87] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 f0 f3 d1 4c 0f bf c9 41 0f b6 c8 41 d3 e1 49 0f bf c9 81 f1 ff 7f 00 00 48 0f bf c9 66 89 4c 24 04 48 8d 4c 24 04 c4 e2 79 79 44 24 04 c5 f9 10 0a c5 f9 db c1 c5 f9 11 00 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:036
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk rcx,r9                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d1}
001ch movsx r9,cx                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c9}
0020h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0024h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0027h movsx rcx,r9w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c9}
002bh xor ecx,7fffh                           ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f1 ff 7f 00 00}
0031h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0035h mov [rsp+4],cx                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 04}
003ah lea rcx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 04}
003fh vpbroadcastw xmm0,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 04}
0046h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
004ah vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
004eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0052h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
