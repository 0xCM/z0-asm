; Vector128<ulong> vrotrv(Vector128<ulong> src, Vector128<ulong> counts)
; vrotrv_128x64u[7ff7c6be3af0h, 7ff7c6be3b37h][71] = {50 c5 f8 77 90 c5 f9 10 02 c4 c1 79 10 08 c4 e2 f9 45 c1 48 c7 04 24 40 00 00 00 48 8d 04 24 c4 e2 79 59 0c 24 c4 c1 79 10 10 c5 f1 fb ca c5 f9 10 12 c4 e2 e9 47 c9 c5 f9 eb c1 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:00:668
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpsrlvq xmm0,xmm0,xmm1                  ; VPSRLVQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 45 /r || encoded[5]{c4 e2 f9 45 c1}
0013h mov qword ptr [rsp],40h                 ; MOV r/m64, imm32 || REX.W C7 /0 id || encoded[8]{48 c7 04 24 40 00 00 00}
001bh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001fh vpbroadcastq xmm1,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 0c 24}
0025h vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
002ah vpsubq xmm1,xmm1,xmm2                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f1 fb ca}
002eh vmovupd xmm2,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 12}
0032h vpsllvq xmm1,xmm2,xmm1                  ; VPSLLVQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 47 /r || encoded[5]{c4 e2 e9 47 c9}
0037h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
003bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
