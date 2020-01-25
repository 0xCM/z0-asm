; rotr__128x8u-imm5
; rotr__128x8u-imm5[7ff7c6e21330h, 7ff7c6e2138bh][91] = {50 c5 f8 77 c5 f9 10 02 c5 f8 28 c8 c5 f9 73 d0 05 c7 44 24 04 07 00 00 00 48 8d 44 24 04 c4 e2 79 78 54 24 04 c5 f9 db c2 b8 03 00 00 00 c5 f9 6e d0 c5 f1 f3 ca c7 04 24 f8 00 00 00 48 8d 04 24 c4 e2 79 78 14 24 c5 f1 db ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 02:54:56:327
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch vpsrlq xmm0,xmm0,5                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d0 05}
0011h mov dword ptr [rsp+4],7                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 07 00 00 00}
0019h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
001eh vpbroadcastb xmm2,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 54 24 04}
0025h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0029h mov eax,3                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 03 00 00 00}
002eh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
0032h vpsllq xmm1,xmm1,xmm2                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f1 f3 ca}
0036h mov dword ptr [rsp],0f8h                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 f8 00 00 00}
003dh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0041h vpbroadcastb xmm2,byte ptr [rsp]        ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[6]{c4 e2 79 78 14 24}
0047h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
004bh vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
004fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0053h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0056h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
