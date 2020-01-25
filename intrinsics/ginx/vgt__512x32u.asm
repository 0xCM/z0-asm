; Vector512<uint> vgt<uint>(in Vector512<uint> x, in Vector512<uint> y)
; vgt__512x32u[7ff7c6c0c860h, 7ff7c6c0c8cah][106] = {50 c5 f8 77 90 c5 fd 10 02 c4 c1 7d 10 08 c7 44 24 04 00 00 00 80 48 8d 44 24 04 c4 e2 7d 58 54 24 04 c5 fd ef c2 c5 f5 ef ca c5 fd 66 c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c7 04 24 00 00 00 80 48 8d 04 24 c4 e2 7d 58 1c 24 c5 f5 ef cb c5 ed ef d3 c5 f5 66 ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:766
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh mov dword ptr [rsp+4],80000000h         ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 00 00 00 80}
0016h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
001bh vpbroadcastd ymm2,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 04}
0022h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0026h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
002ah vpcmpgtd ymm0,ymm0,ymm1                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 fd 66 c1}
002eh vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0033h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
0039h mov dword ptr [rsp],80000000h           ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 00 00 00 80}
0040h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0044h vpbroadcastd ymm3,dword ptr [rsp]       ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[6]{c4 e2 7d 58 1c 24}
004ah vpxor ymm1,ymm1,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef cb}
004eh vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0052h vpcmpgtd ymm1,ymm1,ymm2                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 f5 66 ca}
0056h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
005ah vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
005fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0062h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0065h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
