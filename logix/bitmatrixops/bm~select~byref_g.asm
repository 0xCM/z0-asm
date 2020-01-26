------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> select<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, in BitMatrix<byte> C, ref BitMatrix<byte> Z)
; bm~select~byref_g[44] = {0f 1f 44 00 00 48 8b 01 48 8b 12 49 8b 08 4d 8b 01 48 8b 00 48 8b 12 48 8b 09 48 23 d0 c4 e2 f8 f2 c1 48 0b c2 49 89 00 49 8b c1 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
000eh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
0011h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0014h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0017h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
001ah and rdx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d0}
001dh andn rax,rax,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c1}
0022h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0025h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0028h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<sbyte> select<sbyte>(in BitMatrix<sbyte> A, in BitMatrix<sbyte> B, in BitMatrix<sbyte> C, ref BitMatrix<sbyte> Z)
; bm~select~byref_g[34] = {56 48 83 ec 20 49 8b f1 48 8b 09 48 8b 12 4d 8b 00 4c 8b 0e e8 bf f1 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0011h mov r9,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0e}
0014h call 7ff7c6b8fd08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf f1 ff ff}
0019h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0020h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> select<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, in BitMatrix<ushort> C, ref BitMatrix<ushort> Z)
; bm~select~byref_g[126] = {48 83 ec 78 c5 f8 77 48 8b 01 48 8b 12 49 8b 08 4d 8b 01 c5 fc 57 c0 c5 fd 11 44 24 40 c5 fc 57 c0 c5 fd 11 44 24 20 c5 fc 57 c0 c5 fd 11 04 24 c5 ff f0 00 c5 fd 11 44 24 40 c5 ff f0 02 c5 fd 11 44 24 20 c5 ff f0 01 c5 fd 11 04 24 c5 fd 10 44 24 40 c5 fd 10 4c 24 20 c5 fd 10 14 24 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 c4 c1 7e 7f 00 49 8b c1 c5 f8 77 48 83 c4 78 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,78h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 78}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000dh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0010h mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
0013h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0017h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
001dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0021h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0027h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
002bh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0030h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0034h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
003ah vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
003eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0044h vlddqu ymm0,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 01}
0048h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
004dh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0053h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
0059h vmovupd ymm2,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 14 24}
005eh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0062h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
0066h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
006ah vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
006eh vmovdqu ymmword ptr [r8],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 00}
0073h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0076h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0079h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
007dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<Int16> select<Int16>(in BitMatrix<Int16> A, in BitMatrix<Int16> B, in BitMatrix<Int16> C, ref BitMatrix<Int16> Z)
; bm~select~byref_g[34] = {56 48 83 ec 20 49 8b f1 48 8b 09 48 8b 12 4d 8b 00 4c 8b 0e e8 df f1 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0011h mov r9,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0e}
0014h call 7ff7c6b8fe18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f1 ff ff}
0019h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0020h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> select<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, in BitMatrix<uint> C, ref BitMatrix<uint> Z)
; bm~select~byref_g[179] = {57 56 55 53 48 83 ec 78 c5 f8 77 48 8b 01 48 8b 12 49 8b 08 4d 8b 01 45 33 d2 45 33 db 49 63 f3 48 c1 e6 02 48 8d 3c 30 48 8d 1c 32 48 8d 2c 31 c5 fc 57 c0 c5 fd 11 44 24 40 c5 fc 57 c0 c5 fd 11 44 24 20 c5 fc 57 c0 c5 fd 11 04 24 c5 ff f0 07 c5 fd 11 44 24 40 c5 ff f0 03 c5 fd 11 44 24 20 c5 ff f0 45 00 c5 fd 11 04 24 c5 fd 10 44 24 40 c5 fd 10 4c 24 20 c5 fd 10 14 24 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 03 f0 c5 fe 7f 06 41 ff c2 41 83 c3 08 41 83 fa 04 0f 8c 79 ff ff ff 49 8b c1 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,78h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 78}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000eh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0011h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0014h mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
0017h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001ah xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001dh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0020h shl rsi,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 02}
0024h lea rdi,[rax+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 30}
0028h lea rbx,[rdx+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 1c 32}
002ch lea rbp,[rcx+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 2c 31}
0030h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0034h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
003ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
003eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0044h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0048h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
004dh vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
0051h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0057h vlddqu ymm0,ymmword ptr [rbx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 03}
005bh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0061h vlddqu ymm0,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 45 00}
0066h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
006bh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0071h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
0077h vmovupd ymm2,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 14 24}
007ch vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0080h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
0084h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
0088h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
008ch add rsi,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f0}
008fh vmovdqu ymmword ptr [rsi],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 06}
0093h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0096h add r11d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c3 08}
009ah cmp r10d,4                              ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 fa 04}
009eh jl near ptr 001dh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 79 ff ff ff}
00a4h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
00a7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00aah add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00aeh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00afh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<int> select<int>(in BitMatrix<int> A, in BitMatrix<int> B, in BitMatrix<int> C, ref BitMatrix<int> Z)
; bm~select~byref_g[34] = {56 48 83 ec 20 49 8b f1 48 8b 09 48 8b 12 4d 8b 00 4c 8b 0e e8 8f f1 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0011h mov r9,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0e}
0014h call 7ff7c6b8fef8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f f1 ff ff}
0019h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0020h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> select<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, in BitMatrix<ulong> C, ref BitMatrix<ulong> Z)
; bm~select~byref_g[179] = {57 56 55 53 48 83 ec 78 c5 f8 77 48 8b 01 48 8b 12 49 8b 08 4d 8b 01 45 33 d2 45 33 db 49 63 f3 48 c1 e6 03 48 8d 3c 30 48 8d 1c 32 48 8d 2c 31 c5 fc 57 c0 c5 fd 11 44 24 40 c5 fc 57 c0 c5 fd 11 44 24 20 c5 fc 57 c0 c5 fd 11 04 24 c5 ff f0 07 c5 fd 11 44 24 40 c5 ff f0 03 c5 fd 11 44 24 20 c5 ff f0 45 00 c5 fd 11 04 24 c5 fd 10 44 24 40 c5 fd 10 4c 24 20 c5 fd 10 14 24 c5 fc 28 d8 c5 e5 db c9 c5 fd df c2 c5 f5 eb c0 49 03 f0 c5 fe 7f 06 41 ff c2 41 83 c3 04 41 83 fa 10 0f 8c 79 ff ff ff 49 8b c1 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,78h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 78}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000eh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0011h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0014h mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
0017h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001ah xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001dh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0020h shl rsi,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 03}
0024h lea rdi,[rax+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 30}
0028h lea rbx,[rdx+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 1c 32}
002ch lea rbp,[rcx+rsi]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 2c 31}
0030h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0034h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
003ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
003eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0044h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0048h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
004dh vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
0051h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0057h vlddqu ymm0,ymmword ptr [rbx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 03}
005bh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0061h vlddqu ymm0,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 45 00}
0066h vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
006bh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0071h vmovupd ymm1,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 4c 24 20}
0077h vmovupd ymm2,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 14 24}
007ch vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0080h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
0084h vpandn ymm0,ymm0,ymm2                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c2}
0088h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
008ch add rsi,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f0}
008fh vmovdqu ymmword ptr [rsi],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 06}
0093h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0096h add r11d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c3 04}
009ah cmp r10d,10h                            ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 fa 10}
009eh jl near ptr 001dh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 79 ff ff ff}
00a4h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
00a7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00aah add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00aeh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00afh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<long> select<long>(in BitMatrix<long> A, in BitMatrix<long> B, in BitMatrix<long> C, ref BitMatrix<long> Z)
; bm~select~byref_g[34] = {56 48 83 ec 20 49 8b f1 48 8b 09 48 8b 12 4d 8b 00 4c 8b 0e e8 ff f0 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0011h mov r9,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0e}
0014h call 7ff7c6b8ff98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f0 ff ff}
0019h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
001ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0020h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
