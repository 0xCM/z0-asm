------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> and<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://bitgrids/bitmatrix?and#and_g[8u](bm8x8u~in,bm8x8u~in)
; and_g[8u](bm8x8u~in,bm8x8u~in)[90] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xd2,0xf7,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x23,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x63,0x4b,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0021h call 7ff7c8280ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f7 ff ff}
0026h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0029h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
002ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0031h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0034h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0037h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
003ah and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
003dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0040h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0043h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0048h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 4b fe 5e}
004dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0052h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0058h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> and<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://bitgrids/bitmatrix?and#and_g[16u](bm16x16u~in,bm16x16u~in)
; and_g[16u](bm16x16u~in,bm16x16u~in)[100] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x77,0xf9,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xdb,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x6c,0x47,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c8281070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 f9 ff ff}
0029h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
002ch mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0037h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003bh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
003fh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0043h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0047h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
004ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 47 fe 5e}
0054h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0056h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0059h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> and<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://bitgrids/bitmatrix?and#and_g[32u](bm32x32u~in,bm32x32u~in)
; and_g[32u](bm32x32u~in,bm32x32u~in)[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x67,0xf6,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xb5,0x42,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c82811f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f6 ff ff}
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
0055h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0059h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
005ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0061h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0064h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0068h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
006ch jl short 003dh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
006eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0071h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0076h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 42 fe 5e}
007bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0080h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0083h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> and<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://bitgrids/bitmatrix?and#and_g[64u](bm64x64u~in,bm64x64u~in)
; and_g[64u](bm64x64u~in,bm64x64u~in)[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xa7,0xfb,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x05,0x42,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c82817e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 fb ff ff}
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
0055h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0059h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
005ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0061h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0064h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0068h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
006ch jl short 003dh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
006eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0071h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0076h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 42 fe 5e}
007bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0080h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0083h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> and<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> dst), hex://bitgrids/bitmatrix?and#and_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; and_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x23,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0017h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ah mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> and<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> dst), hex://bitgrids/bitmatrix?and#and_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; and_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[37] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xdb,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
001ah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
001eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> and<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> dst), hex://bitgrids/bitmatrix?and#and_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; and_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
003eh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> and<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> dst), hex://bitgrids/bitmatrix?and#and_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; and_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
003eh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> cimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://bitgrids/bitmatrix?cimpl#cimpl_g[8u](bm8x8u~in,bm8x8u~in)
; cimpl_g[8u](bm8x8u~in,bm8x8u~in)[93] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xa2,0xe8,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd0,0x48,0x0b,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x30,0x3c,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0021h call 7ff7c8280ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 e8 ff ff}
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
004bh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 3c fe 5e}
0050h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0052h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0055h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0059h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> cimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://bitgrids/bitmatrix?cimpl#cimpl_g[16u](bm16x16u~in,bm16x16u~in)
; cimpl_g[16u](bm16x16u~in,bm16x16u~in)[108] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xb7,0xed,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0x75,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xa4,0x3b,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c8281070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ed ff ff}
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
0057h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 3b fe 5e}
005ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> cimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://bitgrids/bitmatrix?cimpl#cimpl_g[32u](bm32x32u~in,bm32x32u~in)
; cimpl_g[32u](bm32x32u~in,bm32x32u~in)[147] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xa7,0xee,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0x76,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xc7,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xed,0x3a,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c82811f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 ee ff ff}
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
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 3a fe 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> cimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://bitgrids/bitmatrix?cimpl#cimpl_g[64u](bm64x64u~in,bm64x64u~in)
; cimpl_g[64u](bm64x64u~in,bm64x64u~in)[148] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xe7,0xf3,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc4,0xe2,0x7d,0x29,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xc6,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x3c,0x3a,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c82817e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f3 ff ff}
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
007fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 3a fe 5e}
0084h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0086h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0089h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0090h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0091h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0092h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0093h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> cimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://bitgrids/bitmatrix?cimpl#cimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; cimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd0,0x48,0x0b,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
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
; ref BitMatrix<ushort> cimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://bitgrids/bitmatrix?cimpl#cimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; cimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[45] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0x75,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
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
; ref BitMatrix<uint> cimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://bitgrids/bitmatrix?cimpl#cimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; cimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[85] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0x76,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xc8,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
; ref BitMatrix<ulong> cimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://bitgrids/bitmatrix?cimpl#cimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; cimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[86] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc4,0xe2,0x7d,0x29,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xc7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> cnonimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_g[8u](bm8x8u~in,bm8x8u~in)
; cnonimpl_g[8u](bm8x8u~in,bm8x8u~in)[92] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xb2,0xe0,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0xc4,0xe2,0xe8,0xf2,0xc0,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x41,0x34,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
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
0021h call 7ff7c8280ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 e0 ff ff}
0026h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0029h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
002ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0031h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0034h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0037h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
003ah andn rax,rdx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c0}
003fh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0042h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0045h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004ah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 34 fe 5e}
004fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0051h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0054h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0058h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> cnonimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_g[16u](bm16x16u~in,bm16x16u~in)
; cnonimpl_g[16u](bm16x16u~in,bm16x16u~in)[100] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0xe1,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0xdf,0xc0,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xbc,0x2f,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c8281070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 e1 ff ff}
0029h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
002ch mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0037h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003bh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
003fh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0043h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0047h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
004ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 2f fe 5e}
0054h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0056h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0059h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> cnonimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_g[32u](bm32x32u~in,bm32x32u~in)
; cnonimpl_g[32u](bm32x32u~in,bm32x32u~in)[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xc7,0xe2,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x15,0x2f,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c82811f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 e2 ff ff}
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
0055h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0059h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
005ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0061h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0064h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0068h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
006ch jl short 003dh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
006eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0071h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0076h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 2f fe 5e}
007bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0080h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0083h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> cnonimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_g[64u](bm64x64u~in,bm64x64u~in)
; cnonimpl_g[64u](bm64x64u~in,bm64x64u~in)[139] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x07,0xe8,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x65,0x2e,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c82817e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 e8 ff ff}
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
0055h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0059h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
005ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0061h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0064h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0068h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
006ch jl short 003dh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
006eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0071h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0076h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 2e fe 5e}
007bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0080h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0083h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> cnonimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; cnonimpl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0xc4,0xe2,0xe8,0xf2,0xc0,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h andn rax,rdx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c0}
0019h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> cnonimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; cnonimpl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[37] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0xdf,0xc0,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
001ah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
001eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> cnonimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; cnonimpl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
003eh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> cnonimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; cnonimpl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
003eh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> impl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B), hex://bitgrids/bitmatrix?impl#impl_g[8u](bm8x8u~in,bm8x8u~in)
; impl_g[8u](bm8x8u~in,bm8x8u~in)[93] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x02,0xd5,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd2,0x48,0x0b,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x90,0x28,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0021h call 7ff7c8280ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 d5 ff ff}
0026h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0029h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
002ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0031h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0034h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0037h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
003ah not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
003dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0040h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0043h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0046h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004bh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 28 fe 5e}
0050h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0052h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0055h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0059h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> impl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B), hex://bitgrids/bitmatrix?impl#impl_g[16u](bm16x16u~in,bm16x16u~in)
; impl_g[16u](bm16x16u~in,bm16x16u~in)[108] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x17,0xda,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0x75,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x04,0x28,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c8281070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 da ff ff}
0029h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
002ch mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0037h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003bh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
003fh vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
0043h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0047h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
004bh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
004fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0052h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0057h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 28 fe 5e}
005ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> impl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B), hex://bitgrids/bitmatrix?impl#impl_g[32u](bm32x32u~in,bm32x32u~in)
; impl_g[32u](bm32x32u~in,bm32x32u~in)[147] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x07,0xdb,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xf5,0x76,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xc7,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x4d,0x27,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c82811f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 db ff ff}
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
0055h vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
0059h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
005dh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0070h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0074h jl short 003dh                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 27 fe 5e}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> impl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B), hex://bitgrids/bitmatrix?impl#impl_g[64u](bm64x64u~in,bm64x64u~in)
; impl_g[64u](bm64x64u~in,bm64x64u~in)[148] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x47,0xe0,0xff,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x20,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc4,0xe2,0x75,0x29,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xc6,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x9c,0x26,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
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
0024h call 7ff7c82817e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 e0 ff ff}
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
0055h vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
005ah vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
005eh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0062h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0065h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
006ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006dh add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0071h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0075h jl short 003dh                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0077h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
007ah lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 26 fe 5e}
0084h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0086h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0089h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0090h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0091h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0092h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0093h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> impl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z), hex://bitgrids/bitmatrix?impl#impl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; impl_g[8u](bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd2,0x48,0x0b,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0017h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> impl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z), hex://bitgrids/bitmatrix?impl#impl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; impl_g[16u](bm16x16u~in,bm16x16u~in,bm16x16u~ref)[45] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0x75,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
001ah vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
001eh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0022h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0026h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> impl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z), hex://bitgrids/bitmatrix?impl#impl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; impl_g[32u](bm32x32u~in,bm32x32u~in,bm32x32u~ref)[85] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xf5,0x76,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xc8,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
002fh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
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
; ref BitMatrix<ulong> impl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z), hex://bitgrids/bitmatrix?impl#impl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; impl_g[64u](bm64x64u~in,bm64x64u~in,bm64x64u~ref)[86] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc4,0xe2,0x75,0x29,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xc7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0030h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
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
------------------------------------------------------------------------------------------------------------------------
; BitMatrix4 and(in BitMatrix4 A, in BitMatrix4 B), hex://bitgrids/bitmatrix?and#and_(bm4x8u~in,bm4x8u~in)
; and_(bm4x8u~in,bm4x8u~in)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0x01,0x0f,0xb7,0x12,0x0f,0xb7,0xc0,0x23,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 01}
0008h movzx edx,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 12}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix8 and(in BitMatrix8 A, in BitMatrix8 B), hex://bitgrids/bitmatrix?and#and_(bm8x8u~in,bm8x8u~in)
; and_(bm8x8u~in,bm8x8u~in)[119] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0x75,0xf1,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x23,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x56,0x20,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000eh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0013h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0018h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0021h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0026h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002ch mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0030h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0035h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003eh call 7ff7c7a52f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f1 7c ff}
0043h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0046h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0049h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
004eh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0051h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0054h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0057h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
005ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
005dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0060h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0065h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 20 fe 5e}
006ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006fh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0073h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix8 and(in BitMatrix8 A, in BitMatrix8 B, in BitMatrix8 dst), hex://bitgrids/bitmatrix?and#and_(bm8x8u~in,bm8x8u~in,bm8x8u~in)
; and_(bm8x8u~in,bm8x8u~in,bm8x8u~in)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0x23,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0017h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ah mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix16 and(in BitMatrix16 A, in BitMatrix16 B), hex://bitgrids/bitmatrix?and#and_(bm16x16u~in,bm16x16u~in)
; and_(bm16x16u~in,bm16x16u~in)[129] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0xc2,0xf0,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xdb,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x8f,0x1f,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52f98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f0 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0058h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
005ch vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0060h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0064h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0067h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
006ch call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 1f fe 5e}
0071h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0073h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0076h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0079h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix16 and(in BitMatrix16 A, in BitMatrix16 B, in BitMatrix16 dst), hex://bitgrids/bitmatrix?and#and_(bm16x16u~in,bm16x16u~in,bm16x16u~in)
; and_(bm16x16u~in,bm16x16u~in,bm16x16u~in)[37] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0xdb,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
001ah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
001eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix32 and(in BitMatrix32 A, in BitMatrix32 B), hex://bitgrids/bitmatrix?and#and_(bm32x32u~in,bm32x32u~in)
; and_(bm32x32u~in,bm32x32u~in)[168] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0xf2,0xef,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x88,0x1e,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 ef 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0057h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
005ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
005dh shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0061h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0065h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0069h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
006eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0072h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0076h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0079h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
007eh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0081h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0085h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0089h jl short 005ah                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
008bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
008eh lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0093h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 1e fe 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a0h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00a4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix32 and(in BitMatrix32 A, in BitMatrix32 B, in BitMatrix32 Z), hex://bitgrids/bitmatrix?and#and_(bm32x32u~in,bm32x32u~in,bm32x32u~in)
; and_(bm32x32u~in,bm32x32u~in,bm32x32u~in)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
003eh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix64 and(in BitMatrix64 A, in BitMatrix64 B), hex://bitgrids/bitmatrix?and#and_(bm64x64u~in,bm64x64u~in)
; and_(bm64x64u~in,bm64x64u~in)[168] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0xc2,0xee,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x48,0x1d,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52fb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 ee 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0057h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
005ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
005dh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0061h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0065h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0069h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
006eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0072h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0076h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0079h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
007eh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0081h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0085h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0089h jl short 005ah                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
008bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
008eh lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0093h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 1d fe 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a0h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00a4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix64 and(in BitMatrix64 A, in BitMatrix64 B, in BitMatrix64 dst), hex://bitgrids/bitmatrix?and#and_(bm64x64u~in,bm64x64u~in,bm64x64u~in)
; and_(bm64x64u~in,bm64x64u~in,bm64x64u~in)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0xdb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
003eh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix8 cimpl(in BitMatrix8 A, in BitMatrix8 B, ref BitMatrix8 Z), hex://bitgrids/bitmatrix?cimpl#cimpl_(bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; cimpl_(bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd0,0x48,0x0b,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
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
; BitMatrix8 cimpl(in BitMatrix8 A, in BitMatrix8 B), hex://bitgrids/bitmatrix?cimpl#cimpl_(bm8x8u~in,bm8x8u~in)
; cimpl_(bm8x8u~in,bm8x8u~in)[122] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0x15,0xed,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd0,0x48,0x0b,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xf3,0x1b,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000eh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0013h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0018h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0021h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0026h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002ch mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0030h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0035h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003eh call 7ff7c7a52f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 ed 7c ff}
0043h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0046h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0049h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
004eh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0051h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0054h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0057h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
005ah or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
005dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0060h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0063h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0068h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 1b fe 5e}
006dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0072h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0079h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix16 cimpl(in BitMatrix16 A, in BitMatrix16 B, ref BitMatrix16 Z), hex://bitgrids/bitmatrix?cimpl#cimpl_(bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; cimpl_(bm16x16u~in,bm16x16u~in,bm16x16u~ref)[45] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0x75,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
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
; BitMatrix16 cimpl(in BitMatrix16 A, in BitMatrix16 B), hex://bitgrids/bitmatrix?cimpl#cimpl_(bm16x16u~in,bm16x16u~in)
; cimpl_(bm16x16u~in,bm16x16u~in)[137] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0x32,0xec,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xfd,0x75,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xf7,0x1a,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52f98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ec 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0058h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
005ch vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
0060h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0064h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0068h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
006ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006fh lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0074h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 1a fe 5e}
0079h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0081h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0085h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix32 cimpl(in BitMatrix32 A, in BitMatrix32 B, ref BitMatrix32 Z), hex://bitgrids/bitmatrix?cimpl#cimpl_(bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; cimpl_(bm32x32u~in,bm32x32u~in,bm32x32u~ref)[85] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xfd,0x76,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xc8,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
; BitMatrix32 cimpl(in BitMatrix32 A, in BitMatrix32 B), hex://bitgrids/bitmatrix?cimpl#cimpl_(bm32x32u~in,bm32x32u~in)
; cimpl_(bm32x32u~in,bm32x32u~in)[176] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0x22,0xeb,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xfd,0x76,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xc7,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xb0,0x19,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 eb 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0057h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
005ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
005dh shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0061h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0065h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0069h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
006eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0072h vpcmpeqd ymm2,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 d0}
0076h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
007ah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
007eh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0081h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0086h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0089h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
008dh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0091h jl short 005ah                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0093h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0096h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
009bh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 19 fe 5e}
00a0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a5h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a8h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00ach pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00adh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00aeh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00afh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix64 cimpl(in BitMatrix64 A, in BitMatrix64 B, ref BitMatrix64 Z), hex://bitgrids/bitmatrix?cimpl#cimpl_(bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; cimpl_(bm64x64u~in,bm64x64u~in,bm64x64u~ref)[86] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc4,0xe2,0x7d,0x29,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xc7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
------------------------------------------------------------------------------------------------------------------------
; BitMatrix64 cimpl(in BitMatrix64 A, in BitMatrix64 B), hex://bitgrids/bitmatrix?cimpl#cimpl_(bm64x64u~in,bm64x64u~in)
; cimpl_(bm64x64u~in,bm64x64u~in)[177] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0xf2,0xe9,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc4,0xe2,0x7d,0x29,0xd0,0xc5,0xfd,0xef,0xc2,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xc6,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x6f,0x18,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52fb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 e9 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0057h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
005ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
005dh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0061h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0065h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0069h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
006eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0072h vpcmpeqq ymm2,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 d0}
0077h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
007bh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
007fh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0082h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0087h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
008ah add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
008eh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0092h jl short 005ah                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0094h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0097h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
009ch call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 18 fe 5e}
00a1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a9h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00adh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00aeh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00afh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b0h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix8 cnonimpl(in BitMatrix8 A, in BitMatrix8 B, ref BitMatrix8 Z), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_(bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; cnonimpl_(bm8x8u~in,bm8x8u~in,bm8x8u~ref)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0xc4,0xe2,0xe8,0xf2,0xc0,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h andn rax,rdx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c0}
0019h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix8 cnonimpl(in BitMatrix8 A, in BitMatrix8 B), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_(bm8x8u~in,bm8x8u~in)
; cnonimpl_(bm8x8u~in,bm8x8u~in)[121] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0xc5,0xe8,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0xc4,0xe2,0xe8,0xf2,0xc0,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xa4,0x17,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000eh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0013h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0018h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0021h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0026h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002ch mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0030h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0035h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003eh call 7ff7c7a52f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 e8 7c ff}
0043h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0046h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0049h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
004eh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0051h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0054h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0057h andn rax,rdx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c0}
005ch mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
005fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0062h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0067h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 17 fe 5e}
006ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0075h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix16 cnonimpl(in BitMatrix16 A, in BitMatrix16 B, ref BitMatrix16 Z), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_(bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; cnonimpl_(bm16x16u~in,bm16x16u~in,bm16x16u~ref)[37] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0xdf,0xc0,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
001ah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
001eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix16 cnonimpl(in BitMatrix16 A, in BitMatrix16 B), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_(bm16x16u~in,bm16x16u~in)
; cnonimpl_(bm16x16u~in,bm16x16u~in)[129] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0xf2,0xe7,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0xdf,0xc0,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xbf,0x16,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52f98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 e7 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0058h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
005ch vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0060h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0064h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0067h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
006ch call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 16 fe 5e}
0071h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0073h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0076h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0079h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix32 cnonimpl(in BitMatrix32 A, in BitMatrix32 B, ref BitMatrix32 Z), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_(bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; cnonimpl_(bm32x32u~in,bm32x32u~in,bm32x32u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
003eh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix32 cnonimpl(in BitMatrix32 A, in BitMatrix32 B), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_(bm32x32u~in,bm32x32u~in)
; cnonimpl_(bm32x32u~in,bm32x32u~in)[168] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0xf2,0xe6,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x88,0x15,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 e6 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0057h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
005ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
005dh shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0061h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0065h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0069h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
006eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0072h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0076h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0079h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
007eh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0081h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0085h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0089h jl short 005ah                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
008bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
008eh lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0093h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 15 fe 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a0h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00a4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix64 cnonimpl(in BitMatrix64 A, in BitMatrix64 B, ref BitMatrix64 Z), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_(bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; cnonimpl_(bm64x64u~in,bm64x64u~in,bm64x64u~ref)[77] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xd0,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
002fh add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
0032h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
003eh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
0042h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0044h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix64 cnonimpl(in BitMatrix64 A, in BitMatrix64 B), hex://bitgrids/bitmatrix?cnonimpl#cnonimpl_(bm64x64u~in,bm64x64u~in)
; cnonimpl_(bm64x64u~in,bm64x64u~in)[168] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0xc2,0xe5,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xf5,0xdf,0xc0,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xcf,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x48,0x14,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52fb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 e5 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0057h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
005ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
005dh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0061h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0065h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0069h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
006eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0072h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0076h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0079h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
007eh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0081h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0085h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0089h jl short 005ah                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
008bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
008eh lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0093h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 14 fe 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a0h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00a4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix8 impl(in BitMatrix8 A, in BitMatrix8 B, ref BitMatrix8 Z), hex://bitgrids/bitmatrix?impl#impl_(bm8x8u~in,bm8x8u~in,bm8x8u~ref)
; impl_(bm8x8u~in,bm8x8u~in,bm8x8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd2,0x48,0x0b,0xc2,0x48,0x89,0x01,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0011h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0014h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0017h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix8 impl(in BitMatrix8 A, in BitMatrix8 B), hex://bitgrids/bitmatrix?impl#impl_(bm8x8u~in,bm8x8u~in)
; impl_(bm8x8u~in,bm8x8u~in)[122] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0x85,0xe4,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x48,0x8b,0x00,0x48,0x8b,0x12,0x48,0xf7,0xd2,0x48,0x0b,0xc2,0x48,0x89,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x63,0x13,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000eh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0013h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0018h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0021h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0026h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002ch mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0030h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0035h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003eh call 7ff7c7a52f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 e4 7c ff}
0043h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0046h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0049h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
004eh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0051h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0054h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0057h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
005ah or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
005dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0060h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0063h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0068h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 13 fe 5e}
006dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0072h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0079h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix16 impl(in BitMatrix16 A, in BitMatrix16 B, ref BitMatrix16 Z), hex://bitgrids/bitmatrix?impl#impl_(bm16x16u~in,bm16x16u~in,bm16x16u~ref)
; impl_(bm16x16u~in,bm16x16u~in,bm16x16u~ref)[45] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0x75,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0016h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
001ah vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
001eh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0022h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0026h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix16 impl(in BitMatrix16 A, in BitMatrix16 B), hex://bitgrids/bitmatrix?impl#impl_(bm16x16u~in,bm16x16u~in)
; impl_(bm16x16u~in,bm16x16u~in)[137] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0xa2,0xe3,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0xc5,0xff,0xf0,0x00,0xc5,0xff,0xf0,0x0a,0xc5,0xf5,0x75,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x67,0x12,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52f98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 e3 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0058h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
005ch vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
0060h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0064h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0068h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
006ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006fh lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0074h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 12 fe 5e}
0079h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0081h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0085h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix32 impl(in BitMatrix32 A, in BitMatrix32 B, ref BitMatrix32 Z), hex://bitgrids/bitmatrix?impl#impl_(bm32x32u~in,bm32x32u~in,bm32x32u~ref)
; impl_(bm32x32u~in,bm32x32u~in,bm32x32u~ref)[85] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x02,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc5,0xf5,0x76,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x08,0x41,0x83,0xf9,0x04,0x7c,0xc8,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
002fh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
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
; BitMatrix32 impl(in BitMatrix32 A, in BitMatrix32 B), hex://bitgrids/bitmatrix?impl#impl_(bm32x32u~in,bm32x32u~in)
; impl_(bm32x32u~in,bm32x32u~in)[176] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0x92,0xe2,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x02,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc5,0xf5,0x76,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x08,0x41,0x83,0xf8,0x04,0x7c,0xc7,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x20,0x11,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e2 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0057h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
005ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
005dh shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0061h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0065h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0069h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
006eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0072h vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
0076h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
007ah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
007eh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0081h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0086h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0089h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
008dh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0091h jl short 005ah                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0093h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0096h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
009bh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 11 fe 5e}
00a0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a5h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a8h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00ach pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00adh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00aeh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00afh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix64 impl(in BitMatrix64 A, in BitMatrix64 B, ref BitMatrix64 Z), hex://bitgrids/bitmatrix?impl#impl_(bm64x64u~in,bm64x64u~in,bm64x64u~ref)
; impl_(bm64x64u~in,bm64x64u~in,bm64x64u~ref)[86] = {0x57,0x56,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x48,0x8b,0x12,0x49,0x8b,0x08,0x45,0x33,0xc9,0x45,0x33,0xd2,0x4d,0x63,0xda,0x49,0xc1,0xe3,0x03,0x4a,0x8d,0x34,0x18,0x4a,0x8d,0x3c,0x1a,0xc5,0xff,0xf0,0x06,0xc5,0xff,0xf0,0x0f,0xc4,0xe2,0x75,0x29,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd9,0xc4,0xc1,0x7e,0x7f,0x03,0x41,0xff,0xc1,0x41,0x83,0xc2,0x04,0x41,0x83,0xf9,0x10,0x7c,0xc7,0x49,0x8b,0xc0,0xc5,0xf8,0x77,0x5e,0x5f,0xc3}
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
002bh vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0030h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
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
------------------------------------------------------------------------------------------------------------------------
; BitMatrix64 impl(in BitMatrix64 A, in BitMatrix64 B), hex://bitgrids/bitmatrix?impl#impl_(bm64x64u~in,bm64x64u~in)
; impl_(bm64x64u~in,bm64x64u~in)[177] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0xc6,0x44,0x24,0x20,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x20,0x88,0x4c,0x24,0x28,0x48,0x8d,0x4c,0x24,0x30,0x48,0x0f,0xbe,0x54,0x24,0x28,0x45,0x33,0xc0,0xe8,0x62,0xe1,0x7c,0xff,0x48,0x8b,0x06,0x48,0x8b,0x17,0x48,0x8d,0x4c,0x24,0x30,0x48,0x8b,0x09,0x45,0x33,0xc0,0x45,0x33,0xc9,0x4d,0x63,0xd1,0x49,0xc1,0xe2,0x03,0x4e,0x8d,0x1c,0x10,0x4a,0x8d,0x34,0x12,0xc4,0xc1,0x7f,0xf0,0x03,0xc5,0xff,0xf0,0x0e,0xc4,0xe2,0x75,0x29,0xd1,0xc5,0xf5,0xef,0xca,0xc5,0xfd,0xeb,0xc1,0x4c,0x03,0xd1,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc0,0x41,0x83,0xc1,0x04,0x41,0x83,0xf8,0x10,0x7c,0xc6,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xdf,0x0f,0xfe,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
001bh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0021h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0024h mov byte ptr [rsp+20h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 20 00}
0029h movsx rcx,byte ptr [rsp+20h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 20}
002fh mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
0033h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0038h movsx rdx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 28}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h call 7ff7c7a52fb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 e1 7c ff}
0046h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0049h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0054h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0057h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
005ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
005dh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0061h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0065h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0069h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
006eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0072h vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0077h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
007bh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
007fh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0082h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0087h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
008ah add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
008eh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0092h jl short 005ah                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0094h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0097h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
009ch call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 0f fe 5e}
00a1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a9h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00adh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00aeh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00afh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b0h ret                                     ; RET || C3 || encoded[1]{c3}
