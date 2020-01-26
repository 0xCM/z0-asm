------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(BinaryBitLogicKind:byte kind, Vector256<byte> a, Vector256<byte> b)
; bbl~eval__g0o_256x8u_256x8u[598] = {57 56 55 53 48 83 ec 28 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 bb 01 00 00 8b c0 48 8d 15 65 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 74 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a0 93 96 c6 f7 7f 00 00 e8 fc c2 19 5f 48 8b f8 40 88 77 08 48 b9 58 77 36 c6 f7 7f 00 00 e8 26 46 14 5f 48 8b c8 e8 7e 6a d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 cd c2 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 b6 5b 2c 5f 48 8b e8 8b ce e8 1c 0b 6b ff 4c 8b c0 48 8b cd 48 8b d7 e8 26 97 68 ff 48 8b d0 48 8b cb e8 db 35 6a ff 48 8b cb e8 db 0e 11 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000dh movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0011h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0014h ja near ptr 01d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bb 01 00 00}
001ah mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ch lea rdx,[rip+265h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 65 02 00 00}
0023h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0026h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0036h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003ah vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
003eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
004ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
005ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0064h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0068h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006fh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0074h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0079h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0082h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0086h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
008ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0091h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0096h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009bh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00a0h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a4h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00abh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00b0h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b5h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00bah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00beh vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00c2h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c6h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00cah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cdh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d2h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d7h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00e0h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e7h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ech vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f1h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f6h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00fah vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0106h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0109h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0113h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0117h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011ah jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011fh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0124h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0128h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012bh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
0130h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0135h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0139h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0141h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0144h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0149h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014eh vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0152h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0156h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
015ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015dh jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0164h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0169h vpcmpeqb ymm2,ymm1,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 f5 74 d1}
016dh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0171h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0175h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0179h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017ch jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0183h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0188h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0190h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0193h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0195h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
019ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019fh vpcmpeqb ymm2,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 d0}
01a3h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a7h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01abh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01afh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b2h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b4h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b9h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01beh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01d0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d4h ret                                     ; RET || C3 || encoded[1]{c3}
01d5h mov rcx,7ff7c69693a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 93 96 c6 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc c2 19 5f}
01e4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01ebh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
01f5h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 46 14 5f}
01fah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01fdh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 6a d4 ff}
0202h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0204h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
020eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd c2 19 5f}
0213h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0216h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
021bh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
0225h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 5b 2c 5f}
022ah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
022dh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
022fh call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 0b 6b ff}
0234h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0237h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
023ah mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
023dh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 97 68 ff}
0242h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0245h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0248h call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 35 6a ff}
024dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0250h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 0e 11 5f}
0255h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, Vector256<sbyte> a, Vector256<sbyte> b)
; bbl~eval__g0o_256x8i_256x8i[598] = {57 56 55 53 48 83 ec 28 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 bb 01 00 00 8b c0 48 8d 15 65 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 74 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a0 93 96 c6 f7 7f 00 00 e8 0c bc 19 5f 48 8b f8 40 88 77 08 48 b9 68 6f 36 c6 f7 7f 00 00 e8 36 3f 14 5f 48 8b c8 e8 8e 63 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 dd bb 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 c6 54 2c 5f 48 8b e8 8b ce e8 2c 04 6b ff 4c 8b c0 48 8b cd 48 8b d7 e8 36 90 68 ff 48 8b d0 48 8b cb e8 eb 2e 6a ff 48 8b cb e8 eb 07 11 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000dh movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0011h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0014h ja near ptr 01d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bb 01 00 00}
001ah mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ch lea rdx,[rip+265h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 65 02 00 00}
0023h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0026h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0036h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003ah vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
003eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
004ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
005ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0064h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0068h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006fh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0074h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0079h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0082h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0086h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
008ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0091h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0096h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009bh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00a0h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a4h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00abh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00b0h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b5h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00bah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00beh vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00c2h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c6h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00cah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cdh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d2h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d7h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00e0h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e7h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ech vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f1h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f6h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00fah vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0106h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0109h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0113h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0117h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011ah jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011fh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0124h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0128h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012bh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
0130h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0135h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0139h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0141h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0144h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0149h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014eh vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0152h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0156h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
015ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015dh jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0164h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0169h vpcmpeqb ymm2,ymm1,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 f5 74 d1}
016dh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0171h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0175h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0179h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017ch jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0183h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0188h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0190h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0193h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0195h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
019ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019fh vpcmpeqb ymm2,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 d0}
01a3h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a7h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01abh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01afh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b2h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b4h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b9h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01beh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01d0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d4h ret                                     ; RET || C3 || encoded[1]{c3}
01d5h mov rcx,7ff7c69693a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 93 96 c6 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c bc 19 5f}
01e4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01ebh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
01f5h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 3f 14 5f}
01fah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01fdh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 63 d4 ff}
0202h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0204h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
020eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd bb 19 5f}
0213h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0216h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
021bh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
0225h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 54 2c 5f}
022ah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
022dh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
022fh call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 04 6b ff}
0234h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0237h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
023ah mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
023dh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 90 68 ff}
0242h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0245h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0248h call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 2e 6a ff}
024dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0250h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 07 11 5f}
0255h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, Vector256<ushort> a, Vector256<ushort> b)
; bbl~eval__g0o_256x16u_256x16u[598] = {57 56 55 53 48 83 ec 28 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 bb 01 00 00 8b c0 48 8d 15 65 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a0 93 96 c6 f7 7f 00 00 e8 1c b5 19 5f 48 8b f8 40 88 77 08 48 b9 38 87 36 c6 f7 7f 00 00 e8 46 38 14 5f 48 8b c8 e8 9e 5c d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 ed b4 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 d6 4d 2c 5f 48 8b e8 8b ce e8 3c fd 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 46 89 68 ff 48 8b d0 48 8b cb e8 fb 27 6a ff 48 8b cb e8 fb 00 11 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000dh movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0011h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0014h ja near ptr 01d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bb 01 00 00}
001ah mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ch lea rdx,[rip+265h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 65 02 00 00}
0023h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0026h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0036h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003ah vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
003eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
004ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
005ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0064h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0068h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006fh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0074h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0079h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0082h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0086h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
008ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0091h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0096h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009bh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00a0h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a4h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00abh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00b0h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b5h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00bah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00beh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00c2h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c6h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00cah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cdh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d2h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d7h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00e0h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e7h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ech vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f1h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f6h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00fah vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0106h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0109h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0113h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0117h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011ah jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011fh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0124h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0128h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012bh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
0130h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0135h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0139h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0141h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0144h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0149h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014eh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0152h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0156h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
015ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015dh jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0164h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0169h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
016dh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0171h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0175h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0179h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017ch jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0183h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0188h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0190h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0193h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0195h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
019ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019fh vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
01a3h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a7h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01abh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01afh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b2h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b4h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b9h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01beh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01d0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d4h ret                                     ; RET || C3 || encoded[1]{c3}
01d5h mov rcx,7ff7c69693a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 93 96 c6 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c b5 19 5f}
01e4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01ebh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
01f5h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 38 14 5f}
01fah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01fdh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 5c d4 ff}
0202h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0204h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
020eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed b4 19 5f}
0213h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0216h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
021bh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
0225h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 4d 2c 5f}
022ah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
022dh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
022fh call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c fd 6a ff}
0234h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0237h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
023ah mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
023dh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 89 68 ff}
0242h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0245h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0248h call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 27 6a ff}
024dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0250h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 00 11 5f}
0255h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(BinaryBitLogicKind:byte kind, Vector256<short> a, Vector256<short> b)
; bbl~eval__g0o_256x16i_256x16i[598] = {57 56 55 53 48 83 ec 28 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 bb 01 00 00 8b c0 48 8d 15 65 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a0 93 96 c6 f7 7f 00 00 e8 2c ae 19 5f 48 8b f8 40 88 77 08 48 b9 48 7f 36 c6 f7 7f 00 00 e8 56 31 14 5f 48 8b c8 e8 ae 55 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 fd ad 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 e6 46 2c 5f 48 8b e8 8b ce e8 4c f6 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 56 82 68 ff 48 8b d0 48 8b cb e8 0b 21 6a ff 48 8b cb e8 0b fa 10 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000dh movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0011h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0014h ja near ptr 01d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bb 01 00 00}
001ah mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ch lea rdx,[rip+265h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 65 02 00 00}
0023h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0026h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0036h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003ah vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
003eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
004ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
005ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0064h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0068h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006fh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0074h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0079h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0082h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0086h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
008ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0091h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0096h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009bh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00a0h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a4h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00abh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00b0h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b5h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00bah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00beh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00c2h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c6h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00cah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cdh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d2h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d7h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00e0h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e7h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ech vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f1h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f6h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00fah vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0106h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0109h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0113h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0117h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011ah jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011fh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0124h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0128h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012bh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
0130h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0135h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0139h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0141h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0144h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0149h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014eh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0152h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0156h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
015ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015dh jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0164h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0169h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
016dh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0171h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0175h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0179h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017ch jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0183h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0188h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0190h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0193h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0195h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
019ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019fh vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
01a3h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a7h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01abh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01afh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b2h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b4h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b9h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01beh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01d0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d4h ret                                     ; RET || C3 || encoded[1]{c3}
01d5h mov rcx,7ff7c69693a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 93 96 c6 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c ae 19 5f}
01e4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01ebh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
01f5h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 31 14 5f}
01fah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01fdh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 55 d4 ff}
0202h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0204h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
020eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ad 19 5f}
0213h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0216h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
021bh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
0225h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 46 2c 5f}
022ah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
022dh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
022fh call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c f6 6a ff}
0234h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0237h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
023ah mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
023dh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 82 68 ff}
0242h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0245h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0248h call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 21 6a ff}
024dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0250h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b fa 10 5f}
0255h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(BinaryBitLogicKind:byte kind, Vector256<uint> a, Vector256<uint> b)
; bbl~eval__g0o_256x32u_256x32u[598] = {57 56 55 53 48 83 ec 28 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 bb 01 00 00 8b c0 48 8d 15 65 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a0 93 96 c6 f7 7f 00 00 e8 3c ab 19 5f 48 8b f8 40 88 77 08 48 b9 d8 96 36 c6 f7 7f 00 00 e8 66 2e 14 5f 48 8b c8 e8 be 52 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 0d ab 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 f6 43 2c 5f 48 8b e8 8b ce e8 5c f3 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 66 7f 68 ff 48 8b d0 48 8b cb e8 1b 1e 6a ff 48 8b cb e8 1b f7 10 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000dh movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0011h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0014h ja near ptr 01d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bb 01 00 00}
001ah mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ch lea rdx,[rip+265h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 65 02 00 00}
0023h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0026h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0036h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003ah vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
003eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
004ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
005ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0064h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0068h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006fh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0074h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0079h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0082h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0086h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
008ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0091h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0096h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009bh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00a0h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a4h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00abh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00b0h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b5h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00bah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00beh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00c2h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c6h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00cah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cdh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d2h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d7h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00e0h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e7h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ech vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f1h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f6h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00fah vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0106h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0109h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0113h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0117h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011ah jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011fh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0124h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0128h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012bh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
0130h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0135h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0139h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0141h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0144h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0149h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014eh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0152h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0156h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
015ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015dh jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0164h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0169h vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
016dh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0171h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0175h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0179h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017ch jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0183h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0188h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0190h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0193h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0195h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
019ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019fh vpcmpeqd ymm2,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 d0}
01a3h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a7h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01abh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01afh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b2h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b4h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b9h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01beh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01d0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d4h ret                                     ; RET || C3 || encoded[1]{c3}
01d5h mov rcx,7ff7c69693a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 93 96 c6 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c ab 19 5f}
01e4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01ebh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
01f5h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 2e 14 5f}
01fah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01fdh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 52 d4 ff}
0202h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0204h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
020eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ab 19 5f}
0213h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0216h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
021bh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
0225h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 43 2c 5f}
022ah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
022dh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
022fh call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c f3 6a ff}
0234h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0237h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
023ah mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
023dh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 7f 68 ff}
0242h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0245h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0248h call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 1e 6a ff}
024dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0250h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b f7 10 5f}
0255h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(BinaryBitLogicKind:byte kind, Vector256<int> a, Vector256<int> b)
; bbl~eval__g0o_256x32i_256x32i[598] = {57 56 55 53 48 83 ec 28 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 bb 01 00 00 8b c0 48 8d 15 65 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a0 93 96 c6 f7 7f 00 00 e8 4c a4 19 5f 48 8b f8 40 88 77 08 48 b9 08 8f 36 c6 f7 7f 00 00 e8 76 27 14 5f 48 8b c8 e8 ce 4b d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 1d a4 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 06 3d 2c 5f 48 8b e8 8b ce e8 6c ec 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 76 78 68 ff 48 8b d0 48 8b cb e8 2b 17 6a ff 48 8b cb e8 2b f0 10 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000dh movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0011h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0014h ja near ptr 01d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bb 01 00 00}
001ah mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ch lea rdx,[rip+265h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 65 02 00 00}
0023h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0026h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0036h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003ah vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
003eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
004ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
005ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0064h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0068h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006fh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0074h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0079h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0082h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0086h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
008ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0091h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0096h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009bh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00a0h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a4h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00abh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00b0h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b5h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00bah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00beh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00c2h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c6h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00cah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cdh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d2h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d7h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00e0h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e7h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ech vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f1h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f6h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00fah vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0106h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0109h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0113h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0117h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011ah jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011fh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0124h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0128h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012bh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
0130h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0135h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0139h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0141h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0144h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0149h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014eh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0152h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0156h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
015ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015dh jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0164h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0169h vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
016dh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0171h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0175h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0179h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017ch jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0183h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0188h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0190h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0193h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0195h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
019ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019fh vpcmpeqd ymm2,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 d0}
01a3h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a7h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01abh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01afh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b2h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b4h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b9h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01beh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01d0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d4h ret                                     ; RET || C3 || encoded[1]{c3}
01d5h mov rcx,7ff7c69693a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 93 96 c6 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c a4 19 5f}
01e4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01ebh mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
01f5h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 27 14 5f}
01fah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01fdh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 4b d4 ff}
0202h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0204h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
020eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d a4 19 5f}
0213h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0216h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
021bh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
0225h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 3d 2c 5f}
022ah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
022dh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
022fh call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c ec 6a ff}
0234h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0237h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
023ah mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
023dh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 78 68 ff}
0242h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0245h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0248h call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 17 6a ff}
024dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0250h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b f0 10 5f}
0255h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, Vector256<ulong> a, Vector256<ulong> b)
; bbl~eval__g0o_256x64u_256x64u[606] = {57 56 55 53 48 83 ec 28 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 c3 01 00 00 8b c0 48 8d 15 65 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 01 48 8b c1 e9 86 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 76 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 5c 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 39 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 1f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 fc 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 e2 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bf 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 ae 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 9d 00 00 00 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 83 00 00 00 c4 c1 7d 10 01 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6c c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 35 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a0 93 96 c6 f7 7f 00 00 e8 54 a1 19 5f 48 8b f8 40 88 77 08 48 b9 78 a6 36 c6 f7 7f 00 00 e8 7e 24 14 5f 48 8b c8 e8 d6 48 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 25 a1 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 0e 3a 2c 5f 48 8b e8 8b ce e8 74 e9 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 7e 75 68 ff 48 8b d0 48 8b cb e8 33 14 6a ff 48 8b cb e8 33 ed 10 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000dh movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0011h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0014h ja near ptr 01ddh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 c3 01 00 00}
001ah mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ch lea rdx,[rip+265h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 65 02 00 00}
0023h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0026h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0036h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003ah vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
003fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 01 00 00}
004bh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0053h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0056h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 01 00 00}
005bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0060h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0065h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0069h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0070h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5c 01 00 00}
0075h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
007ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007fh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0083h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0088h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
008ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0090h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0093h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 39 01 00 00}
0098h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00a2h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a6h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00aah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00adh jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1f 01 00 00}
00b2h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b7h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00bch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00c0h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00c5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c9h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00cdh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00d0h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fc 00 00 00}
00d5h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00dah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dfh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00e3h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00eah jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e2 00 00 00}
00efh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f4h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f9h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00fdh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0102h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0106h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
010ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
010dh jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 00 00 00}
0112h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0117h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
011bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011eh jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 00 00 00}
0123h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0128h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
012ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012fh jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 00 00 00}
0134h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0139h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
013eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0142h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0146h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0149h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
014eh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0153h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0158h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
015ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0160h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0163h jmp short 01d1h                         ; JMP rel8 || EB cb || encoded[2]{eb 6c}
0165h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
016ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
016fh vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0174h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0178h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
017ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0180h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0183h jmp short 01d1h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0185h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
018ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
018fh vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
0193h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0197h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
019ah jmp short 01d1h                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
019ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01a1h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01a6h vpcmpeqq ymm2,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 d0}
01abh vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01afh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01b3h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01b7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01bah jmp short 01d1h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01bch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01c1h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01c6h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01cah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01ceh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01d1h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d4h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01d8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01dah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01dbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dch ret                                     ; RET || C3 || encoded[1]{c3}
01ddh mov rcx,7ff7c69693a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 93 96 c6 f7 7f 00 00}
01e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 a1 19 5f}
01ech mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01efh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01f3h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
01fdh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 24 14 5f}
0202h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0205h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 48 d4 ff}
020ah mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
020ch mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0216h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 a1 19 5f}
021bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
021eh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0223h mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
022dh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 3a 2c 5f}
0232h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0235h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0237h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 e9 6a ff}
023ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
023fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0242h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0245h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 75 68 ff}
024ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
024dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0250h call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 14 6a ff}
0255h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0258h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ed 10 5f}
025dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(BinaryBitLogicKind:byte kind, Vector256<long> a, Vector256<long> b)
; bbl~eval__g0o_256x64i_256x64i[606] = {57 56 55 53 48 83 ec 28 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 c3 01 00 00 8b c0 48 8d 15 65 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 01 48 8b c1 e9 86 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 76 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 5c 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 39 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 1f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 fc 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 e2 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bf 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 ae 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 9d 00 00 00 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 83 00 00 00 c4 c1 7d 10 01 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6c c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 35 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a0 93 96 c6 f7 7f 00 00 e8 64 9a 19 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 8e 1d 14 5f 48 8b c8 e8 e6 41 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 35 9a 19 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 1e 33 2c 5f 48 8b e8 8b ce e8 84 e2 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 8e 6e 68 ff 48 8b d0 48 8b cb e8 43 0d 6a ff 48 8b cb e8 43 e6 10 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000dh movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0011h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0014h ja near ptr 01ddh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 c3 01 00 00}
001ah mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ch lea rdx,[rip+265h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 65 02 00 00}
0023h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0026h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0036h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
003ah vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
003fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 01 00 00}
004bh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0053h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0056h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 01 00 00}
005bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0060h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0065h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0069h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0070h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5c 01 00 00}
0075h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
007ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007fh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0083h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0088h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
008ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0090h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0093h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 39 01 00 00}
0098h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00a2h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a6h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00aah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00adh jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1f 01 00 00}
00b2h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b7h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00bch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00c0h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00c5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c9h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00cdh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00d0h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fc 00 00 00}
00d5h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00dah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dfh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00e3h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00eah jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e2 00 00 00}
00efh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f4h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f9h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00fdh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0102h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0106h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
010ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
010dh jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 00 00 00}
0112h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0117h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
011bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011eh jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 00 00 00}
0123h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0128h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
012ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012fh jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 00 00 00}
0134h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0139h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
013eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0142h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0146h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0149h jmp near ptr 01d1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
014eh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0153h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0158h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
015ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0160h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0163h jmp short 01d1h                         ; JMP rel8 || EB cb || encoded[2]{eb 6c}
0165h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
016ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
016fh vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0174h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0178h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
017ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0180h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0183h jmp short 01d1h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0185h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
018ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
018fh vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
0193h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0197h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
019ah jmp short 01d1h                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
019ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01a1h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01a6h vpcmpeqq ymm2,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 d0}
01abh vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01afh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01b3h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01b7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01bah jmp short 01d1h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01bch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01c1h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01c6h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01cah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01ceh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01d1h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d4h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01d8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01dah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01dbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dch ret                                     ; RET || C3 || encoded[1]{c3}
01ddh mov rcx,7ff7c69693a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 93 96 c6 f7 7f 00 00}
01e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 9a 19 5f}
01ech mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01efh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01f3h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
01fdh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 1d 14 5f}
0202h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0205h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 41 d4 ff}
020ah mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
020ch mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0216h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 9a 19 5f}
021bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
021eh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0223h mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
022dh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 33 2c 5f}
0232h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0235h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0237h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 e2 6a ff}
023ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
023fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0242h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0245h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 6e 68 ff}
024ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
024dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0250h call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 0d 6a ff}
0255h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0258h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 e6 10 5f}
025dh int 3                                   ; INT3 || CC || encoded[1]{cc}
