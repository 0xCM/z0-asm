------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> cimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; cimpl_g[8u](bm8x8u~in,bm8x8u~in)[93] = {57 56 53 48 83 ec 30 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 e8 22 ef ff ff 48 8b 06 48 8b 17 48 8d 4c 24 20 48 8b 09 48 8b 00 48 8b 12 48 f7 d0 48 0b c2 48 89 01 48 8b fb 48 8d 74 24 20 e8 20 c2 bd 5e 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0019h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0021h call 7ff7c8688b68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 ef ff ff}
0026h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0029h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
002ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0031h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0034h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0037h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
003ah not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
003dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0040h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0043h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0046h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004bh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 c2 bd 5e}
0050h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0052h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0055h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0059h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> cimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; cimpl_g[16u](bm16x16u~in,bm16x16u~in)[108] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 e8 ef ee ff ff 48 8b 06 48 8b 17 48 8d 4c 24 20 48 8b 09 c5 ff f0 00 c5 ff f0 0a c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fe 7f 01 48 8b fb 48 8d 74 24 20 e8 94 c1 bd 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0016h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0019h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ch mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0024h call 7ff7c8688bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef ee ff ff}
0029h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
002ch mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0037h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003bh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
003fh vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
0043h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0047h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
004bh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
004fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0052h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0057h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 c1 bd 5e}
005ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> cimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; cimpl_g[32u](bm32x32u~in,bm32x32u~in)[147] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 e8 7f ee ff ff 48 8b 06 48 8b 17 48 8d 4c 24 20 48 8b 09 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd 76 d0 c5 fd ef c2 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb 48 8d 74 24 20 e8 dd c0 bd 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0016h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0019h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ch mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0024h call 7ff7c8688bd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f ee ff ff}
0029h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
002ch mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0037h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003dh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0040h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0044h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0048h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
004ch vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0051h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0055h vpcmpeqd ymm2,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 d0}
0059h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
005dh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0070h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0074h jl short 003dh                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd c0 bd 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> cimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; cimpl_g[64u](bm64x64u~in,bm64x64u~in)[148] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 e8 ef ed ff ff 48 8b 06 48 8b 17 48 8d 4c 24 20 48 8b 09 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c4 e2 7d 29 d0 c5 fd ef c2 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb 48 8d 74 24 20 e8 2c c0 bd 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0016h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0019h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001ch mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0024h call 7ff7c8688bf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef ed ff ff}
0029h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
002ch mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0037h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003dh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0040h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0044h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0048h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
004ch vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0051h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0055h vpcmpeqq ymm2,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 d0}
005ah vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
005eh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0062h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0065h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
006ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006dh add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0071h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0075h jl short 003dh                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0077h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
007ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c c0 bd 5e}
0084h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0086h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0089h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0090h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0091h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0092h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0093h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> cimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z)
; cimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0f 1f 44 00 00 48 8b 01 48 8b 12 49 8b 08 48 8b 00 48 8b 12 48 f7 d0 48 0b c2 48 89 01 49 8b c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0017h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> cimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
; cimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[45] = {c5 f8 77 66 90 48 8b 01 48 8b 12 49 8b 08 c5 ff f0 00 c5 ff f0 0a c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fe 7f 01 49 8b c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
001ah vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
001eh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0022h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0026h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> cimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z)
; cimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[85] = {57 56 c5 f8 77 48 8b 01 48 8b 12 49 8b 08 45 33 c9 45 33 d2 4d 63 da 49 c1 e3 02 4a 8d 34 18 4a 8d 3c 1a c5 ff f0 06 c5 ff f0 0f c5 fd 76 d0 c5 fd ef c2 c5 fd eb c1 4c 03 d9 c4 c1 7e 7f 03 41 ff c1 41 83 c2 08 41 83 f9 04 7c c8 49 8b c0 c5 f8 77 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpcmpeqd ymm2,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 d0}
002fh vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0033h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0037h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003ah vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
003fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0042h add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
0046h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
004ah jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
004ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> cimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
; cimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[86] = {57 56 c5 f8 77 48 8b 01 48 8b 12 49 8b 08 45 33 c9 45 33 d2 4d 63 da 49 c1 e3 03 4a 8d 34 18 4a 8d 3c 1a c5 ff f0 06 c5 ff f0 0f c4 e2 7d 29 d0 c5 fd ef c2 c5 fd eb c1 4c 03 d9 c4 c1 7e 7f 03 41 ff c1 41 83 c2 04 41 83 f9 10 7c c7 49 8b c0 c5 f8 77 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0011h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0014h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0017h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
001bh lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001fh lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
0023h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0027h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
002bh vpcmpeqq ymm2,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 d0}
0030h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0034h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0038h add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
003bh vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0040h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0043h add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
0047h cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
004bh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
004dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
