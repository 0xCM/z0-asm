; Vector256<uint> vreverse(Vector256<uint> src)
; vreverse_256x32u[7ff7c6be9900h, 7ff7c6be9939h][57] = {57 56 48 83 ec 48 c5 f8 77 48 8b f9 48 8b f2 48 8d 4c 24 20 e8 5f fd bf ff c5 fd 10 06 c5 fd 10 4c 24 20 c4 e2 75 36 c0 c5 fd 11 07 48 8b c7 c5 f8 77 48 83 c4 48 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:01:755
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
000ch mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0014h call 7ff7c67e9678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f fd bf ff}
0019h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
001dh vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
0023h vpermd ymm0,ymm1,ymm0                   ; VPERMD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 36 /r || encoded[5]{c4 e2 75 36 c0}
0028h vmovupd [rdi],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 07}
002ch mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
002fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0032h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0036h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0037h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
