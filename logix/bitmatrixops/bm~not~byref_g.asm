------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> not<byte>(in BitMatrix<byte> A, ref BitMatrix<byte> Z)
; bm~not~byref_g[24] = {0f 1f 44 00 00 48 8b 01 48 8b 0a 48 8b 00 48 f7 d0 48 89 01 48 8b c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
000bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
000eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0011h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0014h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<sbyte> not<sbyte>(in BitMatrix<sbyte> A, ref BitMatrix<sbyte> Z)
; bm~not~byref_g[28] = {56 48 83 ec 20 48 8b f2 48 8b 09 48 8b 16 e8 6d f9 ec ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
000eh call 7ff7c6a53540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d f9 ec ff}
0013h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0016h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> not<ushort>(in BitMatrix<ushort> A, ref BitMatrix<ushort> Z)
; bm~not~byref_g[59] = {48 83 ec 38 c5 f8 77 48 8b 01 48 8b 0a c5 fc 57 c0 c5 fd 11 04 24 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 04 24 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b c2 c5 f8 77 48 83 c4 38 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
000dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0011h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0016h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
001ah vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
001fh vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0024h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0028h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
002ch vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0030h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<Int16> not<Int16>(in BitMatrix<Int16> A, ref BitMatrix<Int16> Z)
; bm~not~byref_g[28] = {56 48 83 ec 20 48 8b f2 48 8b 09 48 8b 16 e8 25 54 ed ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
000eh call 7ff7c6a59088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 54 ed ff}
0013h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0016h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> not<uint>(in BitMatrix<uint> A, ref BitMatrix<uint> Z)
; bm~not~byref_g[94] = {48 83 ec 38 c5 f8 77 48 8b 01 48 8b 0a 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 c5 fc 57 c0 c5 fd 11 04 24 c4 c1 7f f0 03 c5 fd 11 04 24 c5 fd 10 04 24 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c0 48 8b c2 c5 f8 77 48 83 c4 38 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0013h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0016h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
001ah lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
001eh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0022h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0027h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
002ch vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0031h vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0036h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
003ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
003eh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0041h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0046h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0049h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
004dh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0051h jl short 0013h                          ; JL rel8 || 7C cb || encoded[2]{7c c0}
0053h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0056h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0059h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<int> not<int>(in BitMatrix<int> A, ref BitMatrix<int> Z)
; bm~not~byref_g[28] = {56 48 83 ec 20 48 8b f2 48 8b 09 48 8b 16 e8 f5 62 ed ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
000eh call 7ff7c6a5a008h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 62 ed ff}
0013h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0016h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> not<ulong>(in BitMatrix<ulong> A, ref BitMatrix<ulong> Z)
; bm~not~byref_g[95] = {48 83 ec 38 c5 f8 77 48 8b 01 48 8b 0a 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 c5 fc 57 c0 c5 fd 11 04 24 c4 c1 7f f0 03 c5 fd 11 04 24 c5 fd 10 04 24 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c bf 48 8b c2 c5 f8 77 48 83 c4 38 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0013h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0016h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
001ah lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
001eh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0022h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0027h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
002ch vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0031h vmovupd ymm0,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 04 24}
0036h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
003bh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
003fh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0042h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0047h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
004ah add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
004eh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0052h jl short 0013h                          ; JL rel8 || 7C cb || encoded[2]{7c bf}
0054h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0057h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ah add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<long> not<long>(in BitMatrix<long> A, ref BitMatrix<long> Z)
; bm~not~byref_g[28] = {56 48 83 ec 20 48 8b f2 48 8b 09 48 8b 16 e8 5d 6c ed ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
000eh call 7ff7c6a5aa20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 6c ed ff}
0013h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0016h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
