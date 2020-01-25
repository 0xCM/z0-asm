; Vector256<ulong> vmul(Vector256<ulong> x, Vector256<ulong> y)
; vmul_256x64u[7ff7c6bf1120h, 7ff7c6bf1188h][104] = {50 c5 f8 77 90 b8 ff ff ff ff 48 89 04 24 48 8d 04 24 c4 e2 7d 59 04 24 c5 fd 10 0a c5 fc 28 d1 c5 ed 73 d2 20 c4 c1 7d 10 18 c5 fc 28 e3 c5 dd db e0 c5 f5 db c0 c5 ed f4 cc c5 f5 73 f1 20 c5 e5 73 d3 20 c5 ed f4 d3 c5 ed 73 f2 20 c5 f5 d4 ca c5 fd f4 c4 c5 fd d4 c1 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:02:351
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000ah mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000eh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0012h vpbroadcastq ymm0,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 04 24}
0018h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
001ch vmovaps ymm2,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d1}
0020h vpsrlq ymm2,ymm2,20h                    ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d2 20}
0025h vmovupd ymm3,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 18}
002ah vmovaps ymm4,ymm3                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e3}
002eh vpand ymm4,ymm4,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db e0}
0032h vpand ymm0,ymm1,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db c0}
0036h vpmuludq ymm1,ymm2,ymm4                 ; VPMULUDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F4 /r || encoded[4]{c5 ed f4 cc}
003ah vpsllq ymm1,ymm1,20h                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f1 20}
003fh vpsrlq ymm3,ymm3,20h                    ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 e5 73 d3 20}
0044h vpmuludq ymm2,ymm2,ymm3                 ; VPMULUDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F4 /r || encoded[4]{c5 ed f4 d3}
0048h vpsllq ymm2,ymm2,20h                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 ed 73 f2 20}
004dh vpaddq ymm1,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 ca}
0051h vpmuludq ymm0,ymm0,ymm4                 ; VPMULUDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F4 /r || encoded[4]{c5 fd f4 c4}
0055h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
0059h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
005dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0060h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0063h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
