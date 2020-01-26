------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> xor<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; bm~xor_g8u_8u[101] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 e8 a7 48 ec ff 48 8b 06 48 8b 17 48 8d 4c 24 20 48 8b 09 48 8b 00 48 8b 12 48 33 c2 48 89 01 48 8b fb 48 8d 74 24 20 e8 e8 cf 31 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c6a4d728h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 48 ec ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0042h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0045h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0048h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
004eh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0053h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 cf 31 5f}
0058h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
005dh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0061h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0062h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0063h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<sbyte> xor<sbyte>(in BitMatrix<sbyte> A, in BitMatrix<sbyte> B)
; bm~xor_g8i_8i[94] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 e8 2f a6 ec ff 48 8b 0e 48 8b 17 4c 8d 44 24 20 4d 8b 00 e8 3c ab fe ff 48 8b fb 48 8d 74 24 20 e8 6f cf 31 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c6a53530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f a6 ec ff}
0031h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
003fh call 7ff7c6b73a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c ab fe ff}
0044h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0047h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f cf 31 5f}
0051h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0053h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0056h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> xor<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; bm~xor_g16u_16u[108] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 e8 ef a6 ec ff 48 8b 06 48 8b 17 48 8d 4c 24 20 48 8b 09 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d 74 24 20 e8 e4 ce 31 5f 48 a5 48 8b c3 c5 f8 77 48 83 c4 30 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c6a53670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef a6 ec ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0043h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0047h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
004bh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
004fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0052h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0057h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ce 31 5f}
005ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<Int16> xor<Int16>(in BitMatrix<Int16> A, in BitMatrix<Int16> B)
; bm~xor_g16i_16i[94] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 e8 67 00 ed ff 48 8b 0e 48 8b 17 4c 8d 44 24 20 4d 8b 00 e8 34 ca fe ff 48 8b fb 48 8d 74 24 20 e8 5f ce 31 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c6a59078h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 00 ed ff}
0031h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
003fh call 7ff7c6b75a58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 ca fe ff}
0044h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0047h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f ce 31 5f}
0051h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0053h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0056h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> xor<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; bm~xor_g32u_32u[147] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 e8 f7 01 ed ff 48 8b 06 48 8b 17 48 8d 4c 24 20 48 8b 09 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb 48 8d 74 24 20 e8 ad cd 31 5f 48 a5 48 8b c3 c5 f8 77 48 83 c4 30 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c6a59288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 01 ed ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0070h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0074h jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad cd 31 5f}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<int> xor<int>(in BitMatrix<int> A, in BitMatrix<int> B)
; bm~xor_g32i_32i[94] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 e8 b7 0e ed ff 48 8b 0e 48 8b 17 4c 8d 44 24 20 4d 8b 00 e8 f4 e8 fe ff 48 8b fb 48 8d 74 24 20 e8 2f cd 31 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c6a59ff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 0e ed ff}
0031h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
003fh call 7ff7c6b77a48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 e8 fe ff}
0044h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0047h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f cd 31 5f}
0051h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0053h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0056h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> xor<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; bm~xor_g64u_64u[147] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 e8 47 10 ed ff 48 8b 06 48 8b 17 48 8d 4c 24 20 48 8b 09 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb 48 8d 74 24 20 e8 7d cc 31 5f 48 a5 48 8b c3 c5 f8 77 48 83 c4 30 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c6a5a208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 10 ed ff}
0031h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0048h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
004ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0050h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0054h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0059h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
005dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0061h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0064h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0069h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
006ch add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0070h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0074h jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0076h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0079h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
007eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d cc 31 5f}
0083h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0085h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<long> xor<long>(in BitMatrix<long> A, in BitMatrix<long> B)
; bm~xor_g64i_64i[94] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 48 8b f2 49 8b f8 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 e8 9f 17 ed ff 48 8b 0e 48 8b 17 4c 8d 44 24 20 4d 8b 00 e8 fc 04 ff ff 48 8b fb 48 8d 74 24 20 e8 ff cb 31 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0023h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0027h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
002ch call 7ff7c6a5aa10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 17 ed ff}
0031h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0034h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
0037h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
003fh call 7ff7c6b79780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 04 ff ff}
0044h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0047h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
004ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff cb 31 5f}
0051h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0053h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0056h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
