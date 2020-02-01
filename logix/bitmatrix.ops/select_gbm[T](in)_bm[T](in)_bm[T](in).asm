------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> select<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, in BitMatrix<byte> C)
; select_gbm8x8u(in)_bm8x8u(in)_bm8x8u(in)[121] = {57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b d9 48 8b f2 49 8b f8 49 8b e9 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 e8 53 60 fc ff 48 8b 06 48 8b 17 48 8b 4d 00 4c 8d 44 24 28 4d 8b 00 48 8b 00 48 8b 12 48 8b 09 48 23 d0 c4 e2 f8 f2 c1 48 0b c2 49 89 00 48 8b fb 48 8d 74 24 28 e8 65 8a b3 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0012h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0015h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0018h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001bh mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
001eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0023h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0027h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
002bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0030h call 7ff7c7333448h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 60 fc ff}
0035h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0038h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
003bh mov rcx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d 00}
003fh lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0044h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0047h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
004ah mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
004dh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0050h and rdx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d0}
0053h andn rax,rax,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c1}
0058h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
005bh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
005eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0061h lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
0066h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 8a b3 5e}
006bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0070h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> select<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, in BitMatrix<ushort> C)
; select_gbm16x16u(in)_bm16x16u(in)_bm16x16u(in)[221] = {57 56 55 53 48 81 ec 98 00 00 00 c5 f8 77 33 c0 48 89 84 24 88 00 00 00 48 8b d9 48 8b f2 49 8b f8 49 8b e9 48 8d 8c 24 88 00 00 00 c5 f8 57 c0 c5 fa 7f 01 48 8d 8c 24 88 00 00 00 e8 67 60 fc ff 48 8b 06 48 8b 17 48 8b 4d 00 4c 8d 84 24 88 00 00 00 4d 8b 00 c5 fc 57 c0 c5 fd 11 44 24 60 c5 fc 57 c0 c5 fd 11 44 24 40 c5 fc 57 c0 c5 fd 11 44 24 20 c5 ff f0 00 c5 fd 11 44 24 60 c5 ff f0 02 c5 fd 11 44 24 40 c5 ff f0 01 c5 fd 11 44 24 20 c5 fd 10 44 24 60 c5 fd 10 4c 24 40 c5 fd 10 54 24 20 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 c4 c1 7e 7f 00 48 8b fb 48 8d b4 24 88 00 00 00 e8 67 89 b3 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 00 00 00 5b 5d 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,98h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0010h mov [rsp+88h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 84 24 88 00 00 00}
0018h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0021h mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0024h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0034h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
003ch call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 60 fc ff}
0041h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0044h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0047h mov rcx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d 00}
004bh lea r8,[rsp+88h]                        ; LEA r64, m || REX.W 8D /r || encoded[8]{4c 8d 84 24 88 00 00 00}
0053h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0056h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
005ah vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0060h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0064h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
006ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
006eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0074h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0078h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
007eh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0082h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0088h vlddqu ymm0,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 01}
008ch vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0092h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
0098h vmovupd ymm1,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 40}
009eh vmovupd ymm2,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 54 24 20}
00a4h vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
00a8h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
00ach vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
00b0h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
00b4h vmovdqu ymmword ptr [r8],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 00}
00b9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00bch lea rsi,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 88 00 00 00}
00c4h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 89 b3 5e}
00c9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00cbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d1h add rsp,98h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 00 00 00}
00d8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00dah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00dbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00dch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> select<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, in BitMatrix<uint> C)
; select_gbm32x32u(in)_bm32x32u(in)_bm32x32u(in)[267] = {57 56 55 53 48 81 ec 98 00 00 00 c5 f8 77 33 c0 48 89 84 24 88 00 00 00 48 8b d9 48 8b f2 49 8b f8 49 8b e9 48 8d 8c 24 88 00 00 00 c5 f8 57 c0 c5 fa 7f 01 48 8d 8c 24 88 00 00 00 e8 6f 64 fc ff 48 8b 06 48 8b 17 48 8b 4d 00 4c 8d 84 24 88 00 00 00 4d 8b 00 45 33 c9 45 33 d2 4d 63 da 49 c1 e3 02 4a 8d 34 18 4a 8d 3c 1a 4a 8d 2c 19 c5 fc 57 c0 c5 fd 11 44 24 60 c5 fc 57 c0 c5 fd 11 44 24 40 c5 fc 57 c0 c5 fd 11 44 24 20 c5 ff f0 06 c5 fd 11 44 24 60 c5 ff f0 07 c5 fd 11 44 24 40 c5 ff f0 45 00 c5 fd 11 44 24 20 c5 fd 10 44 24 60 c5 fd 10 4c 24 40 c5 fd 10 54 24 20 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 4d 03 d8 c4 c1 7e 7f 03 41 ff c1 41 83 c2 08 41 83 f9 04 0f 8c 75 ff ff ff 48 8b fb 48 8d b4 24 88 00 00 00 e8 29 88 b3 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 00 00 00 5b 5d 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,98h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0010h mov [rsp+88h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 84 24 88 00 00 00}
0018h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0021h mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0024h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0034h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
003ch call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 64 fc ff}
0041h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0044h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0047h mov rcx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d 00}
004bh lea r8,[rsp+88h]                        ; LEA r64, m || REX.W 8D /r || encoded[8]{4c 8d 84 24 88 00 00 00}
0053h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0056h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0059h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
005ch movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
005fh shl r11,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 02}
0063h lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
0067h lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
006bh lea rbp,[rcx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 2c 19}
006fh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0073h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0079h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007dh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0083h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0087h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
008dh vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0091h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0097h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
009bh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
00a1h vlddqu ymm0,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 45 00}
00a6h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00ach vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00b2h vmovupd ymm1,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 40}
00b8h vmovupd ymm2,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 54 24 20}
00beh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
00c2h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
00c6h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
00cah vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
00ceh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
00d1h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
00d6h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00d9h add r10d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 08}
00ddh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00e1h jl near ptr 005ch                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 75 ff ff ff}
00e7h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00eah lea rsi,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 88 00 00 00}
00f2h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 88 b3 5e}
00f7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00f9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00fch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ffh add rsp,98h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 00 00 00}
0106h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0107h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0108h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0109h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> select<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, in BitMatrix<ulong> C)
; select_gbm64x64u(in)_bm64x64u(in)_bm64x64u(in)[267] = {57 56 55 53 48 81 ec 98 00 00 00 c5 f8 77 33 c0 48 89 84 24 88 00 00 00 48 8b d9 48 8b f2 49 8b f8 49 8b e9 48 8d 8c 24 88 00 00 00 c5 f8 57 c0 c5 fa 7f 01 48 8d 8c 24 88 00 00 00 e8 bf 63 fc ff 48 8b 06 48 8b 17 48 8b 4d 00 4c 8d 84 24 88 00 00 00 4d 8b 00 45 33 c9 45 33 d2 4d 63 da 49 c1 e3 03 4a 8d 34 18 4a 8d 3c 1a 4a 8d 2c 19 c5 fc 57 c0 c5 fd 11 44 24 60 c5 fc 57 c0 c5 fd 11 44 24 40 c5 fc 57 c0 c5 fd 11 44 24 20 c5 ff f0 06 c5 fd 11 44 24 60 c5 ff f0 07 c5 fd 11 44 24 40 c5 ff f0 45 00 c5 fd 11 44 24 20 c5 fd 10 44 24 60 c5 fd 10 4c 24 40 c5 fd 10 54 24 20 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 4d 03 d8 c4 c1 7e 7f 03 41 ff c1 41 83 c2 04 41 83 f9 10 0f 8c 75 ff ff ff 48 8b fb 48 8d b4 24 88 00 00 00 e8 e9 86 b3 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 00 00 00 5b 5d 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,98h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0010h mov [rsp+88h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 84 24 88 00 00 00}
0018h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0021h mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0024h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0034h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
003ch call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 63 fc ff}
0041h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0044h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0047h mov rcx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d 00}
004bh lea r8,[rsp+88h]                        ; LEA r64, m || REX.W 8D /r || encoded[8]{4c 8d 84 24 88 00 00 00}
0053h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0056h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0059h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
005ch movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
005fh shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
0063h lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
0067h lea rdi,[rdx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 1a}
006bh lea rbp,[rcx+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 2c 19}
006fh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0073h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0079h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007dh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0083h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0087h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
008dh vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0091h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0097h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
009bh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
00a1h vlddqu ymm0,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 45 00}
00a6h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00ach vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00b2h vmovupd ymm1,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 40}
00b8h vmovupd ymm2,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 54 24 20}
00beh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
00c2h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
00c6h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
00cah vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
00ceh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
00d1h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
00d6h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00d9h add r10d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c2 04}
00ddh cmp r9d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 10}
00e1h jl near ptr 005ch                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 75 ff ff ff}
00e7h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00eah lea rsi,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 88 00 00 00}
00f2h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 86 b3 5e}
00f7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00f9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00fch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ffh add rsp,98h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 00 00 00}
0106h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0107h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0108h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0109h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ah ret                                     ; RET || C3 || encoded[1]{c3}
