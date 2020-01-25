; Vector256<ulong> vrotrv(Vector256<ulong> src, Vector256<ulong> counts)
; vrotrv_256x64u[7ff7c71d9490h, 7ff7c71d94dah][74] = {50 c5 f8 77 90 c5 fd 10 02 c4 c1 7d 10 08 c4 e2 fd 45 c1 48 c7 04 24 40 00 00 00 48 8d 04 24 c4 e2 7d 59 0c 24 c4 c1 7d 10 10 c5 f5 fb ca c5 fd 10 12 c4 e2 ed 47 c9 c5 fd eb c1 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:03:146
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpsrlvq ymm0,ymm0,ymm1                  ; VPSRLVQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W1 45 /r || encoded[5]{c4 e2 fd 45 c1}
0013h mov qword ptr [rsp],40h                 ; MOV r/m64, imm32 || REX.W C7 /0 id || encoded[8]{48 c7 04 24 40 00 00 00}
001bh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001fh vpbroadcastq ymm1,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 0c 24}
0025h vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
002ah vpsubq ymm1,ymm1,ymm2                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 f5 fb ca}
002eh vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
0032h vpsllvq ymm1,ymm2,ymm1                  ; VPSLLVQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W1 47 /r || encoded[5]{c4 e2 ed 47 c9}
0037h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
003bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0045h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
