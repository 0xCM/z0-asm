; Vector1024<ulong> vconvert(Vector256<ushort> src, N1024 w, ulong t)
; vconvert__256x16u_n1024[7ff7c71d1e50h, 7ff7c71d1f5dh][269] = {57 56 48 81 ec 08 01 00 00 c5 f8 77 48 8b f1 48 8d bc 24 88 00 00 00 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8b f1 c5 fd 10 02 c4 e3 7d 19 c0 00 c4 e2 7d 34 c8 c4 e3 f9 16 c1 01 c4 e1 f9 6e c1 c4 e2 7d 34 c0 c5 fd 10 12 c4 e3 7d 19 d2 01 c4 e2 7d 34 da c4 e3 f9 16 d2 01 c4 e1 f9 6e d2 c4 e2 7d 34 d2 48 8d 54 24 08 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 54 24 08 c5 fd 11 0a c5 fd 11 42 20 48 8d 54 24 48 c5 fd 11 1a c5 fd 11 52 20 48 8d 8c 24 88 00 00 00 48 8d 54 24 08 41 b8 80 00 00 00 e8 38 41 cd 5e 48 8d 84 24 88 00 00 00 c5 fd 10 00 c5 fd 10 48 20 48 8d 84 24 c8 00 00 00 c5 fd 10 10 c5 fd 10 58 20 c5 fd 11 06 c5 fd 11 4e 20 c5 fd 11 56 40 c5 fd 11 5e 60 48 8b c6 c5 f8 77 48 81 c4 08 01 00 00 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:02:132
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,108h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 08 01 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d bc 24 88 00 00 00}
0017h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
001ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001eh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0020h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0023h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0026h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
002ah vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0030h vpmovzxwq ymm1,xmm0                     ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 c8}
0035h vpextrq rcx,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c1 01}
003bh vmovq xmm0,rcx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c1}
0040h vpmovzxwq ymm0,xmm0                     ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 c0}
0045h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
0049h vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
004fh vpmovzxwq ymm3,xmm2                     ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 da}
0054h vpextrq rdx,xmm2,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 d2 01}
005ah vmovq xmm2,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e d2}
005fh vpmovzxwq ymm2,xmm2                     ; VPMOVZXWQ ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 34 /r || encoded[5]{c4 e2 7d 34 d2}
0064h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0069h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
006dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0071h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0076h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
007bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0080h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0085h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
008ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
008fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0094h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0099h vmovupd [rdx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 0a}
009dh vmovupd [rdx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 42 20}
00a2h lea rdx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 48}
00a7h vmovupd [rdx],ymm3                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 1a}
00abh vmovupd [rdx+20h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 52 20}
00b0h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
00b8h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
00bdh mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
00c3h call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 41 cd 5e}
00c8h lea rax,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 88 00 00 00}
00d0h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
00d4h vmovupd ymm1,[rax+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 48 20}
00d9h lea rax,[rsp+0c8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 c8 00 00 00}
00e1h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
00e5h vmovupd ymm3,[rax+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 58 20}
00eah vmovupd [rsi],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 06}
00eeh vmovupd [rsi+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4e 20}
00f3h vmovupd [rsi+40h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 56 40}
00f8h vmovupd [rsi+60h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5e 60}
00fdh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0100h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0103h add rsp,108h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 08 01 00 00}
010ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ch ret                                     ; RET || C3 || encoded[1]{c3}
