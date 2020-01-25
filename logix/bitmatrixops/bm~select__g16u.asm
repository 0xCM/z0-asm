; BitMatrix<ushort> select<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, in BitMatrix<ushort> C)
; bm~select__g16u[7ff7c6b5b5f0h, 7ff7c6b5b6cdh][221] = {57 56 55 53 48 81 ec 98 00 00 00 c5 f8 77 33 c0 48 89 84 24 88 00 00 00 48 8b d9 48 8b f2 49 8b f8 49 8b e9 48 8d 8c 24 88 00 00 00 c5 f8 57 c0 c5 fa 7f 01 48 8d 8c 24 88 00 00 00 e8 1f 1e ed ff 48 8b 06 48 8b 17 48 8b 4d 00 4c 8d 84 24 88 00 00 00 4d 8b 00 c5 fc 57 c0 c5 fd 11 44 24 60 c5 fc 57 c0 c5 fd 11 44 24 40 c5 fc 57 c0 c5 fd 11 44 24 20 c5 ff f0 00 c5 fd 11 44 24 60 c5 ff f0 02 c5 fd 11 44 24 40 c5 ff f0 01 c5 fd 11 44 24 20 c5 fd 10 44 24 60 c5 fd 10 4c 24 40 c5 fd 10 54 24 20 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 c4 c1 7e 7f 00 48 8b fb 48 8d b4 24 88 00 00 00 e8 d7 a7 34 5f 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 00 00 00 5b 5d 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 02:54:45:322
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
003ch call 7ff7c6a2d450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 1e ed ff}
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
00c4h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 a7 34 5f}
00c9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00cbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d1h add rsp,98h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 00 00 00}
00d8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00dah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00dbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00dch ret                                     ; RET || C3 || encoded[1]{c3}
