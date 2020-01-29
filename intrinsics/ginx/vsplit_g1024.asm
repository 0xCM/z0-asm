------------------------------------------------------------------------------------------------------------------------
; Pair<Vector512<byte>> vsplit<byte>(Vector1024<byte> src)
; vsplit__g1024x8u[286] = {56 48 81 ec 80 01 00 00 c5 f8 77 48 8b f1 c5 fd 10 02 c5 fd 10 4a 20 c5 fd 10 52 40 c5 fd 10 5a 60 48 8d 94 24 00 01 00 00 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 94 24 00 01 00 00 c5 fd 11 02 c5 fd 11 4a 20 48 8d 94 24 40 01 00 00 c5 fd 11 12 c5 fd 11 5a 20 48 8d 8c 24 80 00 00 00 48 8d 94 24 00 01 00 00 41 b8 80 00 00 00 e8 af d9 0e 5f 48 8d 14 24 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fa 7f 42 40 c5 fa 7f 42 50 c5 fa 7f 42 60 c5 fa 7f 42 70 48 8d 94 24 80 00 00 00 c5 fd 10 02 c5 fd 10 4a 20 48 8d 94 24 c0 00 00 00 c5 fd 10 12 c5 fd 10 5a 20 48 8d 14 24 c5 fd 11 02 c5 fd 11 4a 20 48 8d 54 24 40 c5 fd 11 12 c5 fd 11 5a 20 48 8b ce 48 8d 14 24 41 b8 80 00 00 00 e8 31 d9 0e 5f 48 8b c6 c5 f8 77 48 81 c4 80 01 00 00 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,180h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 01 00 00}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[rdx+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 40}
001ch vmovupd ymm3,[rdx+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 60}
0021h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0029h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
002dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0031h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0036h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
003bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0040h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0045h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
004ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
004fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0054h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
005ch vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
0060h vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
0065h lea rdx,[rsp+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 40 01 00 00}
006dh vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
0071h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
0076h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
007eh lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0086h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
008ch call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af d9 0e 5f}
0091h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0095h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0099h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
009dh vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
00a2h vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
00a7h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
00ach vmovdqu xmmword ptr [rdx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 40}
00b1h vmovdqu xmmword ptr [rdx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 50}
00b6h vmovdqu xmmword ptr [rdx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 60}
00bbh vmovdqu xmmword ptr [rdx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 70}
00c0h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
00c8h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
00cch vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
00d1h lea rdx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 c0 00 00 00}
00d9h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
00ddh vmovupd ymm3,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 20}
00e2h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00e6h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
00eah vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
00efh lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
00f4h vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
00f8h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
00fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0100h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0104h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
010ah call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 d9 0e 5f}
010fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0112h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0115h add rsp,180h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 01 00 00}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Pair<Vector512<sbyte>> vsplit<sbyte>(Vector1024<sbyte> src)
; vsplit__g1024x8i[286] = {56 48 81 ec 80 01 00 00 c5 f8 77 48 8b f1 c5 fd 10 02 c5 fd 10 4a 20 c5 fd 10 52 40 c5 fd 10 5a 60 48 8d 94 24 00 01 00 00 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 94 24 00 01 00 00 c5 fd 11 02 c5 fd 11 4a 20 48 8d 94 24 40 01 00 00 c5 fd 11 12 c5 fd 11 5a 20 48 8d 8c 24 80 00 00 00 48 8d 94 24 00 01 00 00 41 b8 80 00 00 00 e8 4f d4 0e 5f 48 8d 14 24 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fa 7f 42 40 c5 fa 7f 42 50 c5 fa 7f 42 60 c5 fa 7f 42 70 48 8d 94 24 80 00 00 00 c5 fd 10 02 c5 fd 10 4a 20 48 8d 94 24 c0 00 00 00 c5 fd 10 12 c5 fd 10 5a 20 48 8d 14 24 c5 fd 11 02 c5 fd 11 4a 20 48 8d 54 24 40 c5 fd 11 12 c5 fd 11 5a 20 48 8b ce 48 8d 14 24 41 b8 80 00 00 00 e8 d1 d3 0e 5f 48 8b c6 c5 f8 77 48 81 c4 80 01 00 00 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,180h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 01 00 00}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[rdx+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 40}
001ch vmovupd ymm3,[rdx+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 60}
0021h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0029h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
002dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0031h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0036h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
003bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0040h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0045h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
004ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
004fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0054h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
005ch vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
0060h vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
0065h lea rdx,[rsp+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 40 01 00 00}
006dh vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
0071h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
0076h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
007eh lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0086h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
008ch call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f d4 0e 5f}
0091h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0095h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0099h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
009dh vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
00a2h vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
00a7h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
00ach vmovdqu xmmword ptr [rdx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 40}
00b1h vmovdqu xmmword ptr [rdx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 50}
00b6h vmovdqu xmmword ptr [rdx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 60}
00bbh vmovdqu xmmword ptr [rdx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 70}
00c0h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
00c8h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
00cch vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
00d1h lea rdx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 c0 00 00 00}
00d9h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
00ddh vmovupd ymm3,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 20}
00e2h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00e6h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
00eah vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
00efh lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
00f4h vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
00f8h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
00fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0100h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0104h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
010ah call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 d3 0e 5f}
010fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0112h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0115h add rsp,180h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 01 00 00}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Pair<Vector512<ushort>> vsplit<ushort>(Vector1024<ushort> src)
; vsplit__g1024x16u[286] = {56 48 81 ec 80 01 00 00 c5 f8 77 48 8b f1 c5 fd 10 02 c5 fd 10 4a 20 c5 fd 10 52 40 c5 fd 10 5a 60 48 8d 94 24 00 01 00 00 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 94 24 00 01 00 00 c5 fd 11 02 c5 fd 11 4a 20 48 8d 94 24 40 01 00 00 c5 fd 11 12 c5 fd 11 5a 20 48 8d 8c 24 80 00 00 00 48 8d 94 24 00 01 00 00 41 b8 80 00 00 00 e8 ef ce 0e 5f 48 8d 14 24 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fa 7f 42 40 c5 fa 7f 42 50 c5 fa 7f 42 60 c5 fa 7f 42 70 48 8d 94 24 80 00 00 00 c5 fd 10 02 c5 fd 10 4a 20 48 8d 94 24 c0 00 00 00 c5 fd 10 12 c5 fd 10 5a 20 48 8d 14 24 c5 fd 11 02 c5 fd 11 4a 20 48 8d 54 24 40 c5 fd 11 12 c5 fd 11 5a 20 48 8b ce 48 8d 14 24 41 b8 80 00 00 00 e8 71 ce 0e 5f 48 8b c6 c5 f8 77 48 81 c4 80 01 00 00 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,180h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 01 00 00}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[rdx+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 40}
001ch vmovupd ymm3,[rdx+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 60}
0021h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0029h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
002dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0031h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0036h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
003bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0040h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0045h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
004ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
004fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0054h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
005ch vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
0060h vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
0065h lea rdx,[rsp+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 40 01 00 00}
006dh vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
0071h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
0076h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
007eh lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0086h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
008ch call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef ce 0e 5f}
0091h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0095h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0099h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
009dh vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
00a2h vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
00a7h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
00ach vmovdqu xmmword ptr [rdx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 40}
00b1h vmovdqu xmmword ptr [rdx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 50}
00b6h vmovdqu xmmword ptr [rdx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 60}
00bbh vmovdqu xmmword ptr [rdx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 70}
00c0h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
00c8h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
00cch vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
00d1h lea rdx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 c0 00 00 00}
00d9h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
00ddh vmovupd ymm3,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 20}
00e2h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00e6h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
00eah vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
00efh lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
00f4h vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
00f8h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
00fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0100h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0104h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
010ah call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 ce 0e 5f}
010fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0112h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0115h add rsp,180h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 01 00 00}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Pair<Vector512<short>> vsplit<short>(Vector1024<short> src)
; vsplit__g1024x16i[286] = {56 48 81 ec 80 01 00 00 c5 f8 77 48 8b f1 c5 fd 10 02 c5 fd 10 4a 20 c5 fd 10 52 40 c5 fd 10 5a 60 48 8d 94 24 00 01 00 00 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 94 24 00 01 00 00 c5 fd 11 02 c5 fd 11 4a 20 48 8d 94 24 40 01 00 00 c5 fd 11 12 c5 fd 11 5a 20 48 8d 8c 24 80 00 00 00 48 8d 94 24 00 01 00 00 41 b8 80 00 00 00 e8 8f c9 0e 5f 48 8d 14 24 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fa 7f 42 40 c5 fa 7f 42 50 c5 fa 7f 42 60 c5 fa 7f 42 70 48 8d 94 24 80 00 00 00 c5 fd 10 02 c5 fd 10 4a 20 48 8d 94 24 c0 00 00 00 c5 fd 10 12 c5 fd 10 5a 20 48 8d 14 24 c5 fd 11 02 c5 fd 11 4a 20 48 8d 54 24 40 c5 fd 11 12 c5 fd 11 5a 20 48 8b ce 48 8d 14 24 41 b8 80 00 00 00 e8 11 c9 0e 5f 48 8b c6 c5 f8 77 48 81 c4 80 01 00 00 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,180h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 01 00 00}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[rdx+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 40}
001ch vmovupd ymm3,[rdx+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 60}
0021h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0029h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
002dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0031h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0036h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
003bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0040h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0045h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
004ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
004fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0054h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
005ch vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
0060h vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
0065h lea rdx,[rsp+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 40 01 00 00}
006dh vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
0071h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
0076h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
007eh lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0086h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
008ch call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f c9 0e 5f}
0091h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0095h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0099h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
009dh vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
00a2h vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
00a7h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
00ach vmovdqu xmmword ptr [rdx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 40}
00b1h vmovdqu xmmword ptr [rdx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 50}
00b6h vmovdqu xmmword ptr [rdx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 60}
00bbh vmovdqu xmmword ptr [rdx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 70}
00c0h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
00c8h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
00cch vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
00d1h lea rdx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 c0 00 00 00}
00d9h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
00ddh vmovupd ymm3,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 20}
00e2h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00e6h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
00eah vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
00efh lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
00f4h vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
00f8h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
00fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0100h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0104h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
010ah call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 c9 0e 5f}
010fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0112h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0115h add rsp,180h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 01 00 00}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Pair<Vector512<uint>> vsplit<uint>(Vector1024<uint> src)
; vsplit__g1024x32u[286] = {56 48 81 ec 80 01 00 00 c5 f8 77 48 8b f1 c5 fd 10 02 c5 fd 10 4a 20 c5 fd 10 52 40 c5 fd 10 5a 60 48 8d 94 24 00 01 00 00 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 94 24 00 01 00 00 c5 fd 11 02 c5 fd 11 4a 20 48 8d 94 24 40 01 00 00 c5 fd 11 12 c5 fd 11 5a 20 48 8d 8c 24 80 00 00 00 48 8d 94 24 00 01 00 00 41 b8 80 00 00 00 e8 2f c8 0e 5f 48 8d 14 24 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fa 7f 42 40 c5 fa 7f 42 50 c5 fa 7f 42 60 c5 fa 7f 42 70 48 8d 94 24 80 00 00 00 c5 fd 10 02 c5 fd 10 4a 20 48 8d 94 24 c0 00 00 00 c5 fd 10 12 c5 fd 10 5a 20 48 8d 14 24 c5 fd 11 02 c5 fd 11 4a 20 48 8d 54 24 40 c5 fd 11 12 c5 fd 11 5a 20 48 8b ce 48 8d 14 24 41 b8 80 00 00 00 e8 b1 c7 0e 5f 48 8b c6 c5 f8 77 48 81 c4 80 01 00 00 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,180h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 01 00 00}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[rdx+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 40}
001ch vmovupd ymm3,[rdx+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 60}
0021h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0029h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
002dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0031h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0036h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
003bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0040h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0045h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
004ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
004fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0054h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
005ch vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
0060h vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
0065h lea rdx,[rsp+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 40 01 00 00}
006dh vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
0071h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
0076h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
007eh lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0086h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
008ch call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f c8 0e 5f}
0091h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0095h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0099h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
009dh vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
00a2h vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
00a7h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
00ach vmovdqu xmmword ptr [rdx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 40}
00b1h vmovdqu xmmword ptr [rdx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 50}
00b6h vmovdqu xmmword ptr [rdx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 60}
00bbh vmovdqu xmmword ptr [rdx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 70}
00c0h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
00c8h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
00cch vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
00d1h lea rdx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 c0 00 00 00}
00d9h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
00ddh vmovupd ymm3,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 20}
00e2h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00e6h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
00eah vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
00efh lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
00f4h vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
00f8h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
00fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0100h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0104h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
010ah call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c7 0e 5f}
010fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0112h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0115h add rsp,180h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 01 00 00}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Pair<Vector512<int>> vsplit<int>(Vector1024<int> src)
; vsplit__g1024x32i[286] = {56 48 81 ec 80 01 00 00 c5 f8 77 48 8b f1 c5 fd 10 02 c5 fd 10 4a 20 c5 fd 10 52 40 c5 fd 10 5a 60 48 8d 94 24 00 01 00 00 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 94 24 00 01 00 00 c5 fd 11 02 c5 fd 11 4a 20 48 8d 94 24 40 01 00 00 c5 fd 11 12 c5 fd 11 5a 20 48 8d 8c 24 80 00 00 00 48 8d 94 24 00 01 00 00 41 b8 80 00 00 00 e8 cf c2 0e 5f 48 8d 14 24 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fa 7f 42 40 c5 fa 7f 42 50 c5 fa 7f 42 60 c5 fa 7f 42 70 48 8d 94 24 80 00 00 00 c5 fd 10 02 c5 fd 10 4a 20 48 8d 94 24 c0 00 00 00 c5 fd 10 12 c5 fd 10 5a 20 48 8d 14 24 c5 fd 11 02 c5 fd 11 4a 20 48 8d 54 24 40 c5 fd 11 12 c5 fd 11 5a 20 48 8b ce 48 8d 14 24 41 b8 80 00 00 00 e8 51 c2 0e 5f 48 8b c6 c5 f8 77 48 81 c4 80 01 00 00 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,180h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 01 00 00}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[rdx+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 40}
001ch vmovupd ymm3,[rdx+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 60}
0021h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0029h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
002dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0031h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0036h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
003bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0040h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0045h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
004ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
004fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0054h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
005ch vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
0060h vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
0065h lea rdx,[rsp+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 40 01 00 00}
006dh vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
0071h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
0076h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
007eh lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0086h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
008ch call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c2 0e 5f}
0091h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0095h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0099h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
009dh vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
00a2h vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
00a7h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
00ach vmovdqu xmmword ptr [rdx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 40}
00b1h vmovdqu xmmword ptr [rdx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 50}
00b6h vmovdqu xmmword ptr [rdx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 60}
00bbh vmovdqu xmmword ptr [rdx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 70}
00c0h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
00c8h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
00cch vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
00d1h lea rdx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 c0 00 00 00}
00d9h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
00ddh vmovupd ymm3,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 20}
00e2h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00e6h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
00eah vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
00efh lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
00f4h vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
00f8h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
00fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0100h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0104h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
010ah call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 c2 0e 5f}
010fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0112h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0115h add rsp,180h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 01 00 00}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Pair<Vector512<ulong>> vsplit<ulong>(Vector1024<ulong> src)
; vsplit__g1024x64u[286] = {56 48 81 ec 80 01 00 00 c5 f8 77 48 8b f1 c5 fd 10 02 c5 fd 10 4a 20 c5 fd 10 52 40 c5 fd 10 5a 60 48 8d 94 24 00 01 00 00 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 94 24 00 01 00 00 c5 fd 11 02 c5 fd 11 4a 20 48 8d 94 24 40 01 00 00 c5 fd 11 12 c5 fd 11 5a 20 48 8d 8c 24 80 00 00 00 48 8d 94 24 00 01 00 00 41 b8 80 00 00 00 e8 6f c1 0e 5f 48 8d 14 24 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fa 7f 42 40 c5 fa 7f 42 50 c5 fa 7f 42 60 c5 fa 7f 42 70 48 8d 94 24 80 00 00 00 c5 fd 10 02 c5 fd 10 4a 20 48 8d 94 24 c0 00 00 00 c5 fd 10 12 c5 fd 10 5a 20 48 8d 14 24 c5 fd 11 02 c5 fd 11 4a 20 48 8d 54 24 40 c5 fd 11 12 c5 fd 11 5a 20 48 8b ce 48 8d 14 24 41 b8 80 00 00 00 e8 f1 c0 0e 5f 48 8b c6 c5 f8 77 48 81 c4 80 01 00 00 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,180h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 01 00 00}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[rdx+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 40}
001ch vmovupd ymm3,[rdx+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 60}
0021h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0029h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
002dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0031h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0036h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
003bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0040h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0045h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
004ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
004fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0054h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
005ch vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
0060h vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
0065h lea rdx,[rsp+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 40 01 00 00}
006dh vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
0071h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
0076h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
007eh lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0086h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
008ch call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f c1 0e 5f}
0091h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0095h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0099h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
009dh vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
00a2h vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
00a7h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
00ach vmovdqu xmmword ptr [rdx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 40}
00b1h vmovdqu xmmword ptr [rdx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 50}
00b6h vmovdqu xmmword ptr [rdx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 60}
00bbh vmovdqu xmmword ptr [rdx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 70}
00c0h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
00c8h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
00cch vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
00d1h lea rdx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 c0 00 00 00}
00d9h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
00ddh vmovupd ymm3,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 20}
00e2h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00e6h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
00eah vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
00efh lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
00f4h vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
00f8h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
00fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0100h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0104h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
010ah call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 c0 0e 5f}
010fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0112h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0115h add rsp,180h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 01 00 00}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Pair<Vector512<long>> vsplit<long>(Vector1024<long> src)
; vsplit__g1024x64i[286] = {56 48 81 ec 80 01 00 00 c5 f8 77 48 8b f1 c5 fd 10 02 c5 fd 10 4a 20 c5 fd 10 52 40 c5 fd 10 5a 60 48 8d 94 24 00 01 00 00 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 94 24 00 01 00 00 c5 fd 11 02 c5 fd 11 4a 20 48 8d 94 24 40 01 00 00 c5 fd 11 12 c5 fd 11 5a 20 48 8d 8c 24 80 00 00 00 48 8d 94 24 00 01 00 00 41 b8 80 00 00 00 e8 0f bc 0e 5f 48 8d 14 24 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fa 7f 42 40 c5 fa 7f 42 50 c5 fa 7f 42 60 c5 fa 7f 42 70 48 8d 94 24 80 00 00 00 c5 fd 10 02 c5 fd 10 4a 20 48 8d 94 24 c0 00 00 00 c5 fd 10 12 c5 fd 10 5a 20 48 8d 14 24 c5 fd 11 02 c5 fd 11 4a 20 48 8d 54 24 40 c5 fd 11 12 c5 fd 11 5a 20 48 8b ce 48 8d 14 24 41 b8 80 00 00 00 e8 91 bb 0e 5f 48 8b c6 c5 f8 77 48 81 c4 80 01 00 00 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,180h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 01 00 00}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[rdx+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 40}
001ch vmovupd ymm3,[rdx+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 60}
0021h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0029h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
002dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0031h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0036h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
003bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0040h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0045h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
004ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
004fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0054h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
005ch vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
0060h vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
0065h lea rdx,[rsp+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 40 01 00 00}
006dh vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
0071h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
0076h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
007eh lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0086h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
008ch call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f bc 0e 5f}
0091h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0095h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0099h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
009dh vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
00a2h vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
00a7h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
00ach vmovdqu xmmword ptr [rdx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 40}
00b1h vmovdqu xmmword ptr [rdx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 50}
00b6h vmovdqu xmmword ptr [rdx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 60}
00bbh vmovdqu xmmword ptr [rdx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 70}
00c0h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
00c8h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
00cch vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
00d1h lea rdx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 c0 00 00 00}
00d9h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
00ddh vmovupd ymm3,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 20}
00e2h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00e6h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
00eah vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
00efh lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
00f4h vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
00f8h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
00fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0100h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0104h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
010ah call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 bb 0e 5f}
010fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0112h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0115h add rsp,180h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 01 00 00}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Pair<Vector512<float>> vsplit<float>(Vector1024<float> src)
; vsplit__g1024x32f[286] = {56 48 81 ec 80 01 00 00 c5 f8 77 48 8b f1 c5 fd 10 02 c5 fd 10 4a 20 c5 fd 10 52 40 c5 fd 10 5a 60 48 8d 94 24 00 01 00 00 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 94 24 00 01 00 00 c5 fd 11 02 c5 fd 11 4a 20 48 8d 94 24 40 01 00 00 c5 fd 11 12 c5 fd 11 5a 20 48 8d 8c 24 80 00 00 00 48 8d 94 24 00 01 00 00 41 b8 80 00 00 00 e8 af b6 0e 5f 48 8d 14 24 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fa 7f 42 40 c5 fa 7f 42 50 c5 fa 7f 42 60 c5 fa 7f 42 70 48 8d 94 24 80 00 00 00 c5 fd 10 02 c5 fd 10 4a 20 48 8d 94 24 c0 00 00 00 c5 fd 10 12 c5 fd 10 5a 20 48 8d 14 24 c5 fd 11 02 c5 fd 11 4a 20 48 8d 54 24 40 c5 fd 11 12 c5 fd 11 5a 20 48 8b ce 48 8d 14 24 41 b8 80 00 00 00 e8 31 b6 0e 5f 48 8b c6 c5 f8 77 48 81 c4 80 01 00 00 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,180h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 01 00 00}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[rdx+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 40}
001ch vmovupd ymm3,[rdx+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 60}
0021h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0029h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
002dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0031h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0036h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
003bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0040h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0045h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
004ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
004fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0054h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
005ch vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
0060h vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
0065h lea rdx,[rsp+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 40 01 00 00}
006dh vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
0071h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
0076h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
007eh lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0086h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
008ch call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af b6 0e 5f}
0091h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0095h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0099h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
009dh vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
00a2h vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
00a7h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
00ach vmovdqu xmmword ptr [rdx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 40}
00b1h vmovdqu xmmword ptr [rdx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 50}
00b6h vmovdqu xmmword ptr [rdx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 60}
00bbh vmovdqu xmmword ptr [rdx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 70}
00c0h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
00c8h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
00cch vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
00d1h lea rdx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 c0 00 00 00}
00d9h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
00ddh vmovupd ymm3,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 20}
00e2h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00e6h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
00eah vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
00efh lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
00f4h vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
00f8h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
00fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0100h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0104h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
010ah call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 b6 0e 5f}
010fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0112h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0115h add rsp,180h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 01 00 00}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Pair<Vector512<double>> vsplit<double>(Vector1024<double> src)
; vsplit__g1024x64f[286] = {56 48 81 ec 80 01 00 00 c5 f8 77 48 8b f1 c5 fd 10 02 c5 fd 10 4a 20 c5 fd 10 52 40 c5 fd 10 5a 60 48 8d 94 24 00 01 00 00 c5 d8 57 e4 c5 fa 7f 22 c5 fa 7f 62 10 c5 fa 7f 62 20 c5 fa 7f 62 30 c5 fa 7f 62 40 c5 fa 7f 62 50 c5 fa 7f 62 60 c5 fa 7f 62 70 48 8d 94 24 00 01 00 00 c5 fd 11 02 c5 fd 11 4a 20 48 8d 94 24 40 01 00 00 c5 fd 11 12 c5 fd 11 5a 20 48 8d 8c 24 80 00 00 00 48 8d 94 24 00 01 00 00 41 b8 80 00 00 00 e8 4f b5 0e 5f 48 8d 14 24 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fa 7f 42 40 c5 fa 7f 42 50 c5 fa 7f 42 60 c5 fa 7f 42 70 48 8d 94 24 80 00 00 00 c5 fd 10 02 c5 fd 10 4a 20 48 8d 94 24 c0 00 00 00 c5 fd 10 12 c5 fd 10 5a 20 48 8d 14 24 c5 fd 11 02 c5 fd 11 4a 20 48 8d 54 24 40 c5 fd 11 12 c5 fd 11 5a 20 48 8b ce 48 8d 14 24 41 b8 80 00 00 00 e8 d1 b4 0e 5f 48 8b c6 c5 f8 77 48 81 c4 80 01 00 00 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,180h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 01 00 00}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[rdx+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 40}
001ch vmovupd ymm3,[rdx+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 60}
0021h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0029h vxorps xmm4,xmm4,xmm4                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 d8 57 e4}
002dh vmovdqu xmmword ptr [rdx],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 22}
0031h vmovdqu xmmword ptr [rdx+10h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 10}
0036h vmovdqu xmmword ptr [rdx+20h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 20}
003bh vmovdqu xmmword ptr [rdx+30h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 30}
0040h vmovdqu xmmword ptr [rdx+40h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 40}
0045h vmovdqu xmmword ptr [rdx+50h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 50}
004ah vmovdqu xmmword ptr [rdx+60h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 60}
004fh vmovdqu xmmword ptr [rdx+70h],xmm4      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 62 70}
0054h lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
005ch vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
0060h vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
0065h lea rdx,[rsp+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 40 01 00 00}
006dh vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
0071h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
0076h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
007eh lea rdx,[rsp+100h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 00 01 00 00}
0086h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
008ch call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b5 0e 5f}
0091h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0095h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0099h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
009dh vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
00a2h vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
00a7h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
00ach vmovdqu xmmword ptr [rdx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 40}
00b1h vmovdqu xmmword ptr [rdx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 50}
00b6h vmovdqu xmmword ptr [rdx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 60}
00bbh vmovdqu xmmword ptr [rdx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 70}
00c0h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
00c8h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
00cch vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
00d1h lea rdx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 c0 00 00 00}
00d9h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
00ddh vmovupd ymm3,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 5a 20}
00e2h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00e6h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
00eah vmovupd [rdx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 4a 20}
00efh lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
00f4h vmovupd [rdx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 12}
00f8h vmovupd [rdx+20h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 5a 20}
00fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0100h lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0104h mov r8d,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 80 00 00 00}
010ah call 7ff825ea6050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 b4 0e 5f}
010fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0112h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0115h add rsp,180h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 01 00 00}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh ret                                     ; RET || C3 || encoded[1]{c3}
