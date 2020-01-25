; BitMatrix<uint> select<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, in BitMatrix<uint> C)
; bm~select__g32u[7ff7c6b6b380h, 7ff7c6b6b48bh][267] = {57 56 55 53 48 81 ec 98 00 00 00 c5 f8 77 33 c0 48 89 84 24 88 00 00 00 48 8b d9 48 8b f2 49 8b f8 49 8b e9 48 8d 8c 24 88 00 00 00 c5 f8 57 c0 c5 fa 7f 01 48 8d 8c 24 88 00 00 00 e8 a7 66 ec ff 48 8b 06 48 8b 17 48 8b 4d 00 4c 8d 84 24 88 00 00 00 4d 8b 00 45 33 c9 45 33 d2 4d 63 da 49 c1 e3 02 4a 8d 34 18 4a 8d 3c 1a 4a 8d 2c 19 c5 fc 57 c0 c5 fd 11 44 24 60 c5 fc 57 c0 c5 fd 11 44 24 40 c5 fc 57 c0 c5 fd 11 44 24 20 c5 ff f0 06 c5 fd 11 44 24 60 c5 ff f0 07 c5 fd 11 44 24 40 c5 ff f0 45 00 c5 fd 11 44 24 20 c5 fd 10 44 24 60 c5 fd 10 4c 24 40 c5 fd 10 54 24 20 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 4d 03 d8 c4 c1 7e 7f 03 41 ff c1 41 83 c2 08 41 83 f9 04 0f 8c 75 ff ff ff 48 8b fb 48 8d b4 24 88 00 00 00 e8 19 aa 33 5f 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 00 00 00 5b 5d 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:39:008
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
003ch call 7ff7c6a31a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 66 ec ff}
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
00f2h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 aa 33 5f}
00f7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00f9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00fch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ffh add rsp,98h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 00 00 00}
0106h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0107h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0108h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0109h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ah ret                                     ; RET || C3 || encoded[1]{c3}
