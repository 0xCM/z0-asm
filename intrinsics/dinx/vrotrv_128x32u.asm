; Vector128<uint> vrotrv(Vector128<uint> src, Vector128<uint> counts)
; vrotrv_128x32u[7ff7c6be3a80h, 7ff7c6be3ac9h][73] = {50 c5 f8 77 90 c5 f9 10 02 c4 c1 79 10 08 c4 e2 79 45 c1 c7 44 24 04 20 00 00 00 48 8d 44 24 04 c4 e2 79 58 4c 24 04 c4 c1 79 10 10 c5 f1 fa ca c5 f9 10 12 c4 e2 69 47 c9 c5 f9 eb c1 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:00:667
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpsrlvd xmm0,xmm0,xmm1                  ; VPSRLVD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 45 /r || encoded[5]{c4 e2 79 45 c1}
0013h mov dword ptr [rsp+4],20h               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 20 00 00 00}
001bh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0020h vpbroadcastd xmm1,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 4c 24 04}
0027h vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
002ch vpsubd xmm1,xmm1,xmm2                   ; VPSUBD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FA /r || encoded[4]{c5 f1 fa ca}
0030h vmovupd xmm2,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 12}
0034h vpsllvd xmm1,xmm2,xmm1                  ; VPSLLVD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 47 /r || encoded[5]{c4 e2 69 47 c9}
0039h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
003dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
