; BitMatrix<ulong> nor<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; bm~nor__g64u[7ff7c6b539f0h, 7ff7c6b53abeh][206] = {57 56 53 48 81 ec 80 00 00 00 c5 f8 77 33 c0 48 89 44 24 70 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 70 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 70 e8 dc 07 ee ff 48 8b 06 48 8b 17 48 8d 4c 24 70 48 8b 09 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 44 24 40 c5 fc 57 c0 c5 fd 11 44 24 20 c4 c1 7f f0 03 c5 fd 11 44 24 40 c5 ff f0 06 c5 fd 11 44 24 20 c5 fd 10 44 24 40 c5 fd 10 4c 24 20 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 9a 48 8b fb 48 8d 74 24 70 e8 e5 23 35 5f 48 a5 48 8b c3 c5 f8 77 48 81 c4 80 00 00 00 5b 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 02:54:44:880
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,80h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 00 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh mov [rsp+70h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 70}
0014h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0017h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ah mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001dh lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0022h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0026h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
002ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
002fh call 7ff7c6a34200h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 07 ee ff}
0034h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0037h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
003ah lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
003fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0042h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0045h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0048h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
004bh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004fh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0053h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0057h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
005bh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0061h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0065h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
006bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0070h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0076h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
007ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0080h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0086h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
008ch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0090h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0095h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0099h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
009ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
00a1h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
00a4h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
00a8h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
00ach jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c 9a}
00aeh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00b1h lea rsi,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 70}
00b6h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 23 35 5f}
00bbh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bdh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00c0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c3h add rsp,80h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 00 00 00}
00cah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cbh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00cch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00cdh ret                                     ; RET || C3 || encoded[1]{c3}
