; Vector256<uint> vreverse<uint>(Vector256<uint> x)
; vreverse_g256x32u[7ff7c6dd4970h, 7ff7c6dd49c8h][88] = {56 48 83 ec 70 c5 f8 77 c5 f8 29 74 24 60 c5 f8 29 7c 24 50 48 8b f1 c5 fd 10 32 48 8d 4c 24 20 c4 e3 7d 19 f7 01 e8 dd 4c a1 ff c5 fd 10 44 24 20 c4 e3 4d 18 f7 01 c4 e2 7d 36 c6 c5 fd 11 06 48 8b c6 c5 f8 28 74 24 60 c5 f8 28 7c 24 50 c5 f8 77 48 83 c4 70 5e c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:12:083
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,70h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 70}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h vmovaps [rsp+60h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 60}
000eh vmovaps [rsp+50h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 50}
0014h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0017h vmovupd ymm6,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 32}
001bh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0020h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0026h call 7ff7c67e9678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 4c a1 ff}
002bh vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0031h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0037h vpermd ymm0,ymm0,ymm6                   ; VPERMD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 36 /r || encoded[5]{c4 e2 7d 36 c6}
003ch vmovupd [rsi],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 06}
0040h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0043h vmovaps xmm6,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 60}
0049h vmovaps xmm7,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 50}
004fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0052h add rsp,70h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 70}
0056h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
