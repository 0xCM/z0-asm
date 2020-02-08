------------------------------------------------------------------------------------------------------------------------
; byte bitseg<byte>(Span<byte> src, BitPos<byte> firstpos, BitPos<byte> lastpos)
; bitseg_g[8u](span8u)[583] = {57 56 48 81 ec 18 01 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 10 00 00 00 33 c0 f3 ab 48 8b ce c4 c1 7a 6f 00 c5 fa 7f 44 24 20 c4 c1 7a 6f 40 10 c5 fa 7f 44 24 30 c5 fa 6f 02 c5 fa 7f 44 24 40 c5 fa 6f 42 10 c5 fa 7f 44 24 50 c5 fa 6f 44 24 20 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 44 24 30 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 44 24 40 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 44 24 50 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 c8 00 00 00 8b 84 24 f8 00 00 00 0f b7 d0 c7 84 24 b4 00 00 00 08 00 00 00 44 0f b6 84 24 b4 00 00 00 41 0f af d0 8b 84 24 fa 00 00 00 44 0f b7 c0 41 03 d0 8b 84 24 b8 00 00 00 0f b7 c0 c7 84 24 b0 00 00 00 08 00 00 00 44 0f b6 84 24 b0 00 00 00 41 0f af c0 44 8b 84 24 ba 00 00 00 45 0f b7 c0 41 03 c0 2b d0 85 d2 7d 0a f7 da 85 d2 0f 8c 24 01 00 00 ff c2 83 fa 08 7e 0f b8 ff 00 00 00 48 81 c4 18 01 00 00 5e 5f c3 8b 44 24 40 0f b7 c0 44 8b 44 24 20 45 0f b7 c0 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 12 44 8b 44 24 42 45 0f b7 c0 41 f7 d8 41 83 c0 08 eb 03 44 8b c2 44 89 84 24 ac 00 00 00 44 0f b6 84 24 ac 00 00 00 4c 8b 09 c5 fa 6f 44 24 40 c5 fa 7f 84 24 88 00 00 00 c5 fa 6f 44 24 50 c5 fa 7f 84 24 98 00 00 00 44 8b 94 24 88 00 00 00 45 0f b7 d2 4d 63 d2 47 0f b6 0c 11 44 8b 54 24 42 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 45 0f b6 c9 85 c0 74 0d 41 8b c1 48 81 c4 18 01 00 00 5e 5f c3 41 2b d0 89 94 24 84 00 00 00 0f b6 84 24 84 00 00 00 48 8b 09 c5 fa 6f 44 24 20 c5 fa 7f 44 24 60 c5 fa 6f 44 24 30 c5 fa 7f 44 24 70 8b 54 24 60 0f b7 d2 48 63 d2 0f b6 0c 11 c1 e0 08 0f b7 c0 c4 e2 78 f7 c9 0f b6 c1 41 8b c8 d3 e0 0f b6 c0 41 0b c1 0f b6 c0 48 81 c4 18 01 00 00 5e 5f c3 e8 f2 a0 11 ff cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,118h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 18 01 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0014h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0025h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
002bh vmovdqu xmm0,xmmword ptr [r8+10h]       ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c4 c1 7a 6f 40 10}
0031h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0037h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
003bh vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
0041h vmovdqu xmm0,xmmword ptr [rdx+10h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 42 10}
0046h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
004ch vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
0052h vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
005bh vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0061h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
006ah vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
0070h vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0079h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
007fh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0088h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0091h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
009ah vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
00a3h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
00ach mov eax,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f8 00 00 00}
00b3h movzx edx,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d0}
00b6h mov dword ptr [rsp+0b4h],8              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 b4 00 00 00 08 00 00 00}
00c1h movzx r8d,byte ptr [rsp+0b4h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 b4 00 00 00}
00cah imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
00ceh mov eax,[rsp+0fah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 fa 00 00 00}
00d5h movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
00d9h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
00dch mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
00e3h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00e6h mov dword ptr [rsp+0b0h],8              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 b0 00 00 00 08 00 00 00}
00f1h movzx r8d,byte ptr [rsp+0b0h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 b0 00 00 00}
00fah imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
00feh mov r8d,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 ba 00 00 00}
0106h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
010ah add eax,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c0}
010dh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
010fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0111h jge short 011dh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0113h neg edx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 da}
0115h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0117h jl near ptr 0241h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 24 01 00 00}
011dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
011fh cmp edx,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 08}
0122h jle short 0133h                         ; JLE rel8 || 7E cb || encoded[2]{7e 0f}
0124h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0129h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
0130h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0131h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0132h ret                                     ; RET || C3 || encoded[1]{c3}
0133h mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
0137h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
013ah mov r8d,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 20}
013fh movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0143h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0146h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0149h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
014ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
014eh jne short 0162h                         ; JNE rel8 || 75 cb || encoded[2]{75 12}
0150h mov r8d,[rsp+42h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 42}
0155h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0159h neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
015ch add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
0160h jmp short 0165h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0162h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0165h mov [rsp+0ach],r8d                      ; MOV r/m32, r32 || o32 89 /r || encoded[8]{44 89 84 24 ac 00 00 00}
016dh movzx r8d,byte ptr [rsp+0ach]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 ac 00 00 00}
0176h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0179h vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
017fh vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
018eh vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
0197h mov r10d,[rsp+88h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 88 00 00 00}
019fh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01a3h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
01a6h movzx r9d,byte ptr [r9+r10]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{47 0f b6 0c 11}
01abh mov r10d,[rsp+42h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 54 24 42}
01b0h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01b4h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
01b8h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
01bbh shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
01bfh or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
01c2h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01c6h bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
01cbh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
01cfh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
01d1h je short 01e0h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
01d3h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
01d6h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
01ddh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01deh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dfh ret                                     ; RET || C3 || encoded[1]{c3}
01e0h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
01e3h mov [rsp+84h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 84 00 00 00}
01eah movzx eax,byte ptr [rsp+84h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 84 00 00 00}
01f2h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
01f5h vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
01fbh vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
0201h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0207h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
020dh mov edx,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 60}
0211h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0214h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0217h movzx ecx,byte ptr [rcx+rdx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 0c 11}
021bh shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
021eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0221h bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0226h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0229h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
022ch shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
022eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0231h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0234h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0237h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
023eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
023fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0240h ret                                     ; RET || C3 || encoded[1]{c3}
0241h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 a0 11 ff}
0246h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ushort bitseg<ushort>(Span<ushort> src, BitPos<ushort> firstpos, BitPos<ushort> lastpos)
; bitseg_g[16u](span16u)[583] = {57 56 48 81 ec 18 01 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 10 00 00 00 33 c0 f3 ab 48 8b ce c4 c1 7a 6f 00 c5 fa 7f 44 24 20 c4 c1 7a 6f 40 10 c5 fa 7f 44 24 30 c5 fa 6f 02 c5 fa 7f 44 24 40 c5 fa 6f 42 10 c5 fa 7f 44 24 50 c5 fa 6f 44 24 20 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 44 24 30 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 44 24 40 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 44 24 50 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 c8 00 00 00 8b 84 24 f8 00 00 00 0f b7 d0 c7 84 24 b4 00 00 00 10 00 00 00 44 0f b6 84 24 b4 00 00 00 41 0f af d0 8b 84 24 fa 00 00 00 44 0f b7 c0 41 03 d0 8b 84 24 b8 00 00 00 0f b7 c0 c7 84 24 b0 00 00 00 10 00 00 00 44 0f b6 84 24 b0 00 00 00 41 0f af c0 44 8b 84 24 ba 00 00 00 45 0f b7 c0 41 03 c0 2b d0 85 d2 7d 0a f7 da 85 d2 0f 8c 24 01 00 00 ff c2 83 fa 10 7e 0f b8 ff ff 00 00 48 81 c4 18 01 00 00 5e 5f c3 8b 44 24 40 0f b7 c0 44 8b 44 24 20 45 0f b7 c0 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 12 44 8b 44 24 42 45 0f b7 c0 41 f7 d8 41 83 c0 10 eb 03 44 8b c2 44 89 84 24 ac 00 00 00 44 0f b6 84 24 ac 00 00 00 4c 8b 09 c5 fa 6f 44 24 40 c5 fa 7f 84 24 88 00 00 00 c5 fa 6f 44 24 50 c5 fa 7f 84 24 98 00 00 00 44 8b 94 24 88 00 00 00 45 0f b7 d2 4d 63 d2 47 0f b7 0c 51 44 8b 54 24 42 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 45 0f b7 c9 85 c0 74 0d 41 8b c1 48 81 c4 18 01 00 00 5e 5f c3 41 2b d0 89 94 24 84 00 00 00 0f b6 84 24 84 00 00 00 48 8b 09 c5 fa 6f 44 24 20 c5 fa 7f 44 24 60 c5 fa 6f 44 24 30 c5 fa 7f 44 24 70 8b 54 24 60 0f b7 d2 48 63 d2 0f b7 0c 51 c1 e0 08 0f b7 c0 c4 e2 78 f7 c9 0f b7 c1 41 8b c8 d3 e0 0f b7 c0 41 0b c1 0f b7 c0 48 81 c4 18 01 00 00 5e 5f c3 e8 62 9a 11 ff cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,118h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 18 01 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0014h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0025h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
002bh vmovdqu xmm0,xmmword ptr [r8+10h]       ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c4 c1 7a 6f 40 10}
0031h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0037h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
003bh vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
0041h vmovdqu xmm0,xmmword ptr [rdx+10h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 42 10}
0046h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
004ch vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
0052h vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
005bh vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0061h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
006ah vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
0070h vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0079h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
007fh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0088h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0091h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
009ah vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
00a3h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
00ach mov eax,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f8 00 00 00}
00b3h movzx edx,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d0}
00b6h mov dword ptr [rsp+0b4h],10h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 b4 00 00 00 10 00 00 00}
00c1h movzx r8d,byte ptr [rsp+0b4h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 b4 00 00 00}
00cah imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
00ceh mov eax,[rsp+0fah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 fa 00 00 00}
00d5h movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
00d9h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
00dch mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
00e3h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00e6h mov dword ptr [rsp+0b0h],10h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 b0 00 00 00 10 00 00 00}
00f1h movzx r8d,byte ptr [rsp+0b0h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 b0 00 00 00}
00fah imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
00feh mov r8d,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 ba 00 00 00}
0106h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
010ah add eax,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c0}
010dh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
010fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0111h jge short 011dh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0113h neg edx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 da}
0115h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0117h jl near ptr 0241h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 24 01 00 00}
011dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
011fh cmp edx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 10}
0122h jle short 0133h                         ; JLE rel8 || 7E cb || encoded[2]{7e 0f}
0124h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0129h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
0130h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0131h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0132h ret                                     ; RET || C3 || encoded[1]{c3}
0133h mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
0137h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
013ah mov r8d,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 20}
013fh movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0143h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0146h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0149h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
014ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
014eh jne short 0162h                         ; JNE rel8 || 75 cb || encoded[2]{75 12}
0150h mov r8d,[rsp+42h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 42}
0155h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0159h neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
015ch add r8d,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 10}
0160h jmp short 0165h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0162h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0165h mov [rsp+0ach],r8d                      ; MOV r/m32, r32 || o32 89 /r || encoded[8]{44 89 84 24 ac 00 00 00}
016dh movzx r8d,byte ptr [rsp+0ach]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 ac 00 00 00}
0176h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0179h vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
017fh vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
018eh vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
0197h mov r10d,[rsp+88h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 88 00 00 00}
019fh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01a3h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
01a6h movzx r9d,word ptr [r9+r10*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{47 0f b7 0c 51}
01abh mov r10d,[rsp+42h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 54 24 42}
01b0h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01b4h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
01b8h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
01bbh shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
01bfh or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
01c2h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01c6h bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
01cbh movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
01cfh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
01d1h je short 01e0h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
01d3h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
01d6h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
01ddh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01deh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dfh ret                                     ; RET || C3 || encoded[1]{c3}
01e0h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
01e3h mov [rsp+84h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 84 00 00 00}
01eah movzx eax,byte ptr [rsp+84h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 84 00 00 00}
01f2h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
01f5h vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
01fbh vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
0201h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0207h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
020dh mov edx,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 60}
0211h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0214h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0217h movzx ecx,word ptr [rcx+rdx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 0c 51}
021bh shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
021eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0221h bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0226h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0229h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
022ch shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
022eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0231h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0234h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0237h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
023eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
023fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0240h ret                                     ; RET || C3 || encoded[1]{c3}
0241h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 9a 11 ff}
0246h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; uint bitseg<uint>(Span<uint> src, BitPos<uint> firstpos, BitPos<uint> lastpos)
; bitseg_g[32u](span32u)[568] = {57 56 48 81 ec 18 01 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 10 00 00 00 33 c0 f3 ab 48 8b ce c4 c1 7a 6f 00 c5 fa 7f 44 24 20 c4 c1 7a 6f 40 10 c5 fa 7f 44 24 30 c5 fa 6f 02 c5 fa 7f 44 24 40 c5 fa 6f 42 10 c5 fa 7f 44 24 50 c5 fa 6f 44 24 20 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 44 24 30 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 44 24 40 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 44 24 50 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 c8 00 00 00 8b 84 24 f8 00 00 00 0f b7 d0 c7 84 24 b4 00 00 00 20 00 00 00 44 0f b6 84 24 b4 00 00 00 41 0f af d0 8b 84 24 fa 00 00 00 44 0f b7 c0 41 03 d0 8b 84 24 b8 00 00 00 0f b7 c0 c7 84 24 b0 00 00 00 20 00 00 00 44 0f b6 84 24 b0 00 00 00 41 0f af c0 44 8b 84 24 ba 00 00 00 45 0f b7 c0 41 03 c0 2b d0 85 d2 7d 0a f7 da 85 d2 0f 8c 15 01 00 00 ff c2 83 fa 20 7e 0f b8 ff ff ff ff 48 81 c4 18 01 00 00 5e 5f c3 8b 44 24 40 0f b7 c0 44 8b 44 24 20 45 0f b7 c0 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 12 44 8b 44 24 42 45 0f b7 c0 41 f7 d8 41 83 c0 20 eb 03 44 8b c2 44 89 84 24 ac 00 00 00 44 0f b6 84 24 ac 00 00 00 4c 8b 09 c5 fa 6f 44 24 40 c5 fa 7f 84 24 88 00 00 00 c5 fa 6f 44 24 50 c5 fa 7f 84 24 98 00 00 00 44 8b 94 24 88 00 00 00 45 0f b7 d2 4d 63 d2 47 8b 0c 91 44 8b 54 24 42 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 85 c0 74 0d 41 8b c1 48 81 c4 18 01 00 00 5e 5f c3 41 2b d0 89 94 24 84 00 00 00 0f b6 84 24 84 00 00 00 48 8b 09 c5 fa 6f 44 24 20 c5 fa 7f 44 24 60 c5 fa 6f 44 24 30 c5 fa 7f 44 24 70 8b 54 24 60 0f b7 d2 48 63 d2 8b 0c 91 c1 e0 08 0f b7 c0 c4 e2 78 f7 c1 41 8b c8 d3 e0 41 0b c1 48 81 c4 18 01 00 00 5e 5f c3 e8 f1 97 11 ff cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,118h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 18 01 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0014h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0025h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
002bh vmovdqu xmm0,xmmword ptr [r8+10h]       ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c4 c1 7a 6f 40 10}
0031h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0037h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
003bh vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
0041h vmovdqu xmm0,xmmword ptr [rdx+10h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 42 10}
0046h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
004ch vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
0052h vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
005bh vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0061h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
006ah vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
0070h vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0079h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
007fh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0088h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0091h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
009ah vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
00a3h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
00ach mov eax,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f8 00 00 00}
00b3h movzx edx,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d0}
00b6h mov dword ptr [rsp+0b4h],20h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 b4 00 00 00 20 00 00 00}
00c1h movzx r8d,byte ptr [rsp+0b4h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 b4 00 00 00}
00cah imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
00ceh mov eax,[rsp+0fah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 fa 00 00 00}
00d5h movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
00d9h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
00dch mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
00e3h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00e6h mov dword ptr [rsp+0b0h],20h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 b0 00 00 00 20 00 00 00}
00f1h movzx r8d,byte ptr [rsp+0b0h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 b0 00 00 00}
00fah imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
00feh mov r8d,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 ba 00 00 00}
0106h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
010ah add eax,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c0}
010dh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
010fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0111h jge short 011dh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0113h neg edx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 da}
0115h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0117h jl near ptr 0232h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 15 01 00 00}
011dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
011fh cmp edx,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 20}
0122h jle short 0133h                         ; JLE rel8 || 7E cb || encoded[2]{7e 0f}
0124h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0129h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
0130h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0131h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0132h ret                                     ; RET || C3 || encoded[1]{c3}
0133h mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
0137h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
013ah mov r8d,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 20}
013fh movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0143h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0146h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0149h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
014ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
014eh jne short 0162h                         ; JNE rel8 || 75 cb || encoded[2]{75 12}
0150h mov r8d,[rsp+42h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 42}
0155h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0159h neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
015ch add r8d,20h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 20}
0160h jmp short 0165h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0162h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0165h mov [rsp+0ach],r8d                      ; MOV r/m32, r32 || o32 89 /r || encoded[8]{44 89 84 24 ac 00 00 00}
016dh movzx r8d,byte ptr [rsp+0ach]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 ac 00 00 00}
0176h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0179h vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
017fh vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
018eh vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
0197h mov r10d,[rsp+88h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 88 00 00 00}
019fh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01a3h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
01a6h mov r9d,[r9+r10*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{47 8b 0c 91}
01aah mov r10d,[rsp+42h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 54 24 42}
01afh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01b3h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
01b7h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
01bah shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
01beh or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
01c1h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01c5h bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
01cah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
01cch je short 01dbh                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
01ceh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
01d1h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
01deh mov [rsp+84h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 84 00 00 00}
01e5h movzx eax,byte ptr [rsp+84h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 84 00 00 00}
01edh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
01f0h vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
01f6h vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
01fch vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0202h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
0208h mov edx,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 60}
020ch movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
020fh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0212h mov ecx,[rcx+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 91}
0215h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0218h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
021bh bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0220h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0223h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0225h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0228h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
022fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0230h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0231h ret                                     ; RET || C3 || encoded[1]{c3}
0232h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 97 11 ff}
0237h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ulong bitseg<ulong>(Span<ulong> src, BitPos<ulong> firstpos, BitPos<ulong> lastpos)
; bitseg_g[64u](span64u)[575] = {57 56 48 81 ec 18 01 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 10 00 00 00 33 c0 f3 ab 48 8b ce c4 c1 7a 6f 00 c5 fa 7f 44 24 20 c4 c1 7a 6f 40 10 c5 fa 7f 44 24 30 c5 fa 6f 02 c5 fa 7f 44 24 40 c5 fa 6f 42 10 c5 fa 7f 44 24 50 c5 fa 6f 44 24 20 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 44 24 30 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 44 24 40 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 44 24 50 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 c8 00 00 00 8b 84 24 f8 00 00 00 0f b7 d0 c7 84 24 b4 00 00 00 40 00 00 00 44 0f b6 84 24 b4 00 00 00 41 0f af d0 8b 84 24 fa 00 00 00 44 0f b7 c0 41 03 d0 8b 84 24 b8 00 00 00 0f b7 c0 c7 84 24 b0 00 00 00 40 00 00 00 44 0f b6 84 24 b0 00 00 00 41 0f af c0 44 8b 84 24 ba 00 00 00 45 0f b7 c0 41 03 c0 2b d0 85 d2 7d 0a f7 da 85 d2 0f 8c 1c 01 00 00 ff c2 83 fa 40 7e 14 48 b8 ff ff ff ff ff ff ff ff 48 81 c4 18 01 00 00 5e 5f c3 8b 44 24 40 0f b7 c0 44 8b 44 24 20 45 0f b7 c0 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 12 44 8b 44 24 42 45 0f b7 c0 41 f7 d8 41 83 c0 40 eb 03 44 8b c2 44 89 84 24 ac 00 00 00 44 0f b6 84 24 ac 00 00 00 4c 8b 09 c5 fa 6f 44 24 40 c5 fa 7f 84 24 88 00 00 00 c5 fa 6f 44 24 50 c5 fa 7f 84 24 98 00 00 00 44 8b 94 24 88 00 00 00 45 0f b7 d2 4d 63 d2 4f 8b 0c d1 44 8b 54 24 42 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 a8 f7 c9 85 c0 74 0d 49 8b c1 48 81 c4 18 01 00 00 5e 5f c3 41 2b d0 89 94 24 84 00 00 00 0f b6 84 24 84 00 00 00 48 8b 09 c5 fa 6f 44 24 20 c5 fa 7f 44 24 60 c5 fa 6f 44 24 30 c5 fa 7f 44 24 70 8b 54 24 60 0f b7 d2 48 63 d2 48 8b 0c d1 c1 e0 08 0f b7 c0 c4 e2 f8 f7 c1 41 8b c8 48 d3 e0 49 0b c1 48 81 c4 18 01 00 00 5e 5f c3 e8 7a 95 11 ff cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,118h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 18 01 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0014h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0025h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
002bh vmovdqu xmm0,xmmword ptr [r8+10h]       ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c4 c1 7a 6f 40 10}
0031h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0037h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
003bh vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
0041h vmovdqu xmm0,xmmword ptr [rdx+10h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 42 10}
0046h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
004ch vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
0052h vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
005bh vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0061h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
006ah vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
0070h vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0079h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
007fh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0088h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0091h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
009ah vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
00a3h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
00ach mov eax,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f8 00 00 00}
00b3h movzx edx,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d0}
00b6h mov dword ptr [rsp+0b4h],40h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 b4 00 00 00 40 00 00 00}
00c1h movzx r8d,byte ptr [rsp+0b4h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 b4 00 00 00}
00cah imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
00ceh mov eax,[rsp+0fah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 fa 00 00 00}
00d5h movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
00d9h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
00dch mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
00e3h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00e6h mov dword ptr [rsp+0b0h],40h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 b0 00 00 00 40 00 00 00}
00f1h movzx r8d,byte ptr [rsp+0b0h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 b0 00 00 00}
00fah imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
00feh mov r8d,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 ba 00 00 00}
0106h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
010ah add eax,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c0}
010dh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
010fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0111h jge short 011dh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0113h neg edx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 da}
0115h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0117h jl near ptr 0239h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 1c 01 00 00}
011dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
011fh cmp edx,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 40}
0122h jle short 0138h                         ; JLE rel8 || 7E cb || encoded[2]{7e 14}
0124h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
012eh add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
0135h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0136h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0137h ret                                     ; RET || C3 || encoded[1]{c3}
0138h mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
013ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
013fh mov r8d,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 20}
0144h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0148h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
014bh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
014eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0151h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0153h jne short 0167h                         ; JNE rel8 || 75 cb || encoded[2]{75 12}
0155h mov r8d,[rsp+42h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 42}
015ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
015eh neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
0161h add r8d,40h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 40}
0165h jmp short 016ah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0167h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
016ah mov [rsp+0ach],r8d                      ; MOV r/m32, r32 || o32 89 /r || encoded[8]{44 89 84 24 ac 00 00 00}
0172h movzx r8d,byte ptr [rsp+0ach]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 84 24 ac 00 00 00}
017bh mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
017eh vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
0184h vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
018dh vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
0193h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
019ch mov r10d,[rsp+88h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 88 00 00 00}
01a4h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01a8h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
01abh mov r9,[r9+r10*8]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4f 8b 0c d1}
01afh mov r10d,[rsp+42h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 54 24 42}
01b4h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01b8h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
01bch mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
01bfh shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
01c3h or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
01c6h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01cah bextr r9,r9,r10                         ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 42 a8 f7 c9}
01cfh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
01d1h je short 01e0h                          ; JE rel8 || 74 cb || encoded[2]{74 0d}
01d3h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
01d6h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
01ddh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01deh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dfh ret                                     ; RET || C3 || encoded[1]{c3}
01e0h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
01e3h mov [rsp+84h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 84 00 00 00}
01eah movzx eax,byte ptr [rsp+84h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 84 00 00 00}
01f2h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
01f5h vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
01fbh vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
0201h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0207h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
020dh mov edx,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 60}
0211h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0214h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0217h mov rcx,[rcx+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 0c d1}
021bh shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
021eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0221h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0226h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0229h shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
022ch or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
022fh add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
0236h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0237h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0238h ret                                     ; RET || C3 || encoded[1]{c3}
0239h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 95 11 ff}
023eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; byte bitseg<byte>(in Block256<byte> src, BitPos<byte> firstpos, BitPos<byte> lastpos)
; bitseg_g[8u](b256x8u~in)[547] = {48 81 ec 18 01 00 00 c5 f8 77 48 8b 09 c5 fa 6f 02 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 42 10 c5 fa 7f 84 24 e8 00 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 f8 00 00 00 c4 c1 7a 6f 40 10 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 08 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 08 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 14 01 00 00 ff c0 83 f8 08 7e 0a b8 ff 00 00 00 e9 fb 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 08 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 46 0f b6 0c 09 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 45 0f b6 c9 85 d2 74 05 41 8b c1 eb 56 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 0f b6 0c 11 c1 e0 08 0f b7 c0 c4 e2 78 f7 c9 0f b6 c1 41 8b c8 d3 e0 0f b6 c0 41 8b d1 0b c2 0f b6 c0 48 81 c4 18 01 00 00 c3 e8 16 93 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,118h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 18 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000dh vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0011h vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
001ah vmovdqu xmm0,xmmword ptr [rdx+10h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 42 10}
001fh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0028h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
002dh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0036h vmovdqu xmm0,xmmword ptr [r8+10h]       ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c4 c1 7a 6f 40 10}
003ch vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
0045h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
004eh vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
0057h vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0060h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
0069h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0072h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
007bh vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
0084h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
008dh vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
0096h vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
009ch vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
00a5h vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
00aeh mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
00b5h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00b8h mov dword ptr [rsp+74h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 08 00 00 00}
00c0h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
00c5h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
00c8h mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
00cfh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00d2h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
00d4h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
00d8h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00dbh mov dword ptr [rsp+70h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 08 00 00 00}
00e3h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
00e9h imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
00edh mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
00f2h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
00f6h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
00f9h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
00fbh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00fdh jge short 0109h                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
00ffh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0101h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0103h jl near ptr 021dh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 14 01 00 00}
0109h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
010bh cmp eax,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 08}
010eh jle short 011ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 0a}
0110h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0115h jmp near ptr 0215h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 00 00 00}
011ah mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
0121h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0124h mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
012ch movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0130h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0133h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0136h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0139h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
013bh jne short 0152h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
013dh mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
0145h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0149h neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
014ch add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
0150h jmp short 0155h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0152h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0155h mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
015ah movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
0160h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0169h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
016fh vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
0178h vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
017eh mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
0183h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
0187h movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
018ah movzx r9d,byte ptr [rcx+r9]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 0c 09}
018fh mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
0197h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
019bh movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
019fh mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
01a2h shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
01a6h or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
01a9h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01adh bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
01b2h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
01b6h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
01b8h je short 01bfh                          ; JE rel8 || 74 cb || encoded[2]{74 05}
01bah mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
01bdh jmp short 0215h                         ; JMP rel8 || EB cb || encoded[2]{eb 56}
01bfh sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
01c2h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
01c6h movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
01cbh vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01d4h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
01dah vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01e3h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
01e9h mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
01edh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
01f0h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
01f3h movzx ecx,byte ptr [rcx+rdx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 0c 11}
01f7h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
01fah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01fdh bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0202h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0205h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0208h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
020ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
020dh mov edx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d1}
0210h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0212h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0215h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
021ch ret                                     ; RET || C3 || encoded[1]{c3}
021dh call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 93 11 ff}
0222h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ushort bitseg<ushort>(in Block256<ushort> src, BitPos<ushort> firstpos, BitPos<ushort> lastpos)
; bitseg_g[16u](b256x16u~in)[547] = {48 81 ec 18 01 00 00 c5 f8 77 48 8b 09 c5 fa 6f 02 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 42 10 c5 fa 7f 84 24 e8 00 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 f8 00 00 00 c4 c1 7a 6f 40 10 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 10 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 10 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 14 01 00 00 ff c0 83 f8 10 7e 0a b8 ff ff 00 00 e9 fb 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 10 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 46 0f b7 0c 49 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 45 0f b7 c9 85 d2 74 05 41 8b c1 eb 56 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 0f b7 0c 51 c1 e0 08 0f b7 c0 c4 e2 78 f7 c9 0f b7 c1 41 8b c8 d3 e0 0f b7 c0 41 8b d1 0b c2 0f b7 c0 48 81 c4 18 01 00 00 c3 e8 b6 90 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,118h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 18 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000dh vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0011h vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
001ah vmovdqu xmm0,xmmword ptr [rdx+10h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 42 10}
001fh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0028h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
002dh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0036h vmovdqu xmm0,xmmword ptr [r8+10h]       ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c4 c1 7a 6f 40 10}
003ch vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
0045h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
004eh vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
0057h vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0060h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
0069h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0072h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
007bh vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
0084h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
008dh vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
0096h vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
009ch vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
00a5h vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
00aeh mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
00b5h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00b8h mov dword ptr [rsp+74h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 10 00 00 00}
00c0h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
00c5h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
00c8h mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
00cfh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00d2h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
00d4h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
00d8h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00dbh mov dword ptr [rsp+70h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 10 00 00 00}
00e3h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
00e9h imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
00edh mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
00f2h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
00f6h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
00f9h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
00fbh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00fdh jge short 0109h                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
00ffh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0101h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0103h jl near ptr 021dh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 14 01 00 00}
0109h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
010bh cmp eax,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 10}
010eh jle short 011ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 0a}
0110h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0115h jmp near ptr 0215h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 00 00 00}
011ah mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
0121h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0124h mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
012ch movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0130h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0133h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0136h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0139h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
013bh jne short 0152h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
013dh mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
0145h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0149h neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
014ch add r8d,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 10}
0150h jmp short 0155h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0152h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0155h mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
015ah movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
0160h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0169h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
016fh vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
0178h vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
017eh mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
0183h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
0187h movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
018ah movzx r9d,word ptr [rcx+r9*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 0c 49}
018fh mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
0197h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
019bh movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
019fh mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
01a2h shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
01a6h or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
01a9h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01adh bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
01b2h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
01b6h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
01b8h je short 01bfh                          ; JE rel8 || 74 cb || encoded[2]{74 05}
01bah mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
01bdh jmp short 0215h                         ; JMP rel8 || EB cb || encoded[2]{eb 56}
01bfh sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
01c2h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
01c6h movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
01cbh vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01d4h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
01dah vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01e3h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
01e9h mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
01edh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
01f0h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
01f3h movzx ecx,word ptr [rcx+rdx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 0c 51}
01f7h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
01fah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01fdh bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0202h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0205h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0208h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
020ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
020dh mov edx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d1}
0210h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0212h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0215h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
021ch ret                                     ; RET || C3 || encoded[1]{c3}
021dh call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 90 11 ff}
0222h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; uint bitseg<uint>(in Block256<uint> src, BitPos<uint> firstpos, BitPos<uint> lastpos)
; bitseg_g[32u](b256x32u~in)[530] = {48 81 ec 18 01 00 00 c5 f8 77 48 8b 09 c5 fa 6f 02 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 42 10 c5 fa 7f 84 24 e8 00 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 f8 00 00 00 c4 c1 7a 6f 40 10 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 20 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 20 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 03 01 00 00 ff c0 83 f8 20 7e 0a b8 ff ff ff ff e9 ea 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 20 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 46 8b 0c 89 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 85 d2 74 05 41 8b c1 eb 4a 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 8b 0c 91 c1 e0 08 0f b7 c0 c4 e2 78 f7 c1 41 8b c8 d3 e0 41 0b c1 48 81 c4 18 01 00 00 c3 e8 67 8e 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,118h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 18 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000dh vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0011h vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
001ah vmovdqu xmm0,xmmword ptr [rdx+10h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 42 10}
001fh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0028h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
002dh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0036h vmovdqu xmm0,xmmword ptr [r8+10h]       ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c4 c1 7a 6f 40 10}
003ch vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
0045h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
004eh vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
0057h vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0060h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
0069h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0072h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
007bh vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
0084h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
008dh vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
0096h vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
009ch vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
00a5h vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
00aeh mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
00b5h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00b8h mov dword ptr [rsp+74h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 20 00 00 00}
00c0h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
00c5h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
00c8h mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
00cfh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00d2h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
00d4h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
00d8h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00dbh mov dword ptr [rsp+70h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 20 00 00 00}
00e3h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
00e9h imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
00edh mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
00f2h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
00f6h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
00f9h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
00fbh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00fdh jge short 0109h                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
00ffh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0101h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0103h jl near ptr 020ch                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 03 01 00 00}
0109h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
010bh cmp eax,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 20}
010eh jle short 011ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 0a}
0110h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0115h jmp near ptr 0204h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 00 00 00}
011ah mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
0121h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0124h mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
012ch movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0130h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0133h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0136h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0139h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
013bh jne short 0152h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
013dh mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
0145h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0149h neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
014ch add r8d,20h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 20}
0150h jmp short 0155h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0152h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0155h mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
015ah movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
0160h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0169h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
016fh vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
0178h vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
017eh mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
0183h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
0187h movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
018ah mov r9d,[rcx+r9*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 0c 89}
018eh mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
0196h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
019ah movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
019eh mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
01a1h shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
01a5h or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
01a8h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01ach bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
01b1h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
01b3h je short 01bah                          ; JE rel8 || 74 cb || encoded[2]{74 05}
01b5h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
01b8h jmp short 0204h                         ; JMP rel8 || EB cb || encoded[2]{eb 4a}
01bah sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
01bdh mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
01c1h movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
01c6h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01cfh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
01d5h vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01deh vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
01e4h mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
01e8h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
01ebh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
01eeh mov ecx,[rcx+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 91}
01f1h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
01f4h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01f7h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
01fch mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
01ffh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0201h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0204h add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
020bh ret                                     ; RET || C3 || encoded[1]{c3}
020ch call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 8e 11 ff}
0211h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ulong bitseg<ulong>(in Block256<ulong> src, BitPos<ulong> firstpos, BitPos<ulong> lastpos)
; bitseg_g[64u](b256x64u~in)[537] = {48 81 ec 18 01 00 00 c5 f8 77 48 8b 09 c5 fa 6f 02 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 42 10 c5 fa 7f 84 24 e8 00 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 f8 00 00 00 c4 c1 7a 6f 40 10 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 40 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 40 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 0a 01 00 00 ff c0 83 f8 40 7e 0f 48 b8 ff ff ff ff ff ff ff ff e9 ec 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 40 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 4e 8b 0c c9 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 a8 f7 c9 85 d2 74 05 49 8b c1 eb 4c 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 48 8b 0c d1 c1 e0 08 0f b7 c0 c4 e2 f8 f7 c1 41 8b c8 48 d3 e0 49 0b c1 48 81 c4 18 01 00 00 c3 e8 20 8c 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,118h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 18 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000dh vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0011h vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
001ah vmovdqu xmm0,xmmword ptr [rdx+10h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 42 10}
001fh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0028h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
002dh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0036h vmovdqu xmm0,xmmword ptr [r8+10h]       ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c4 c1 7a 6f 40 10}
003ch vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
0045h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
004eh vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
0057h vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0060h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
0069h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
0072h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
007bh vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
0084h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
008dh vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
0096h vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
009ch vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
00a5h vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
00aeh mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
00b5h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00b8h mov dword ptr [rsp+74h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 40 00 00 00}
00c0h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
00c5h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
00c8h mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
00cfh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00d2h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
00d4h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
00d8h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00dbh mov dword ptr [rsp+70h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 40 00 00 00}
00e3h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
00e9h imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
00edh mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
00f2h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
00f6h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
00f9h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
00fbh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00fdh jge short 0109h                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
00ffh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0101h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0103h jl near ptr 0213h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 0a 01 00 00}
0109h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
010bh cmp eax,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 40}
010eh jle short 011fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 0f}
0110h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
011ah jmp near ptr 020bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ec 00 00 00}
011fh mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
0126h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0129h mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
0131h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0135h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0138h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
013bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
013eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0140h jne short 0157h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
0142h mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
014ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
014eh neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
0151h add r8d,40h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 40}
0155h jmp short 015ah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0157h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
015ah mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
015fh movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
0165h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
016eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0174h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
017dh vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
0183h mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
0188h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
018ch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
018fh mov r9,[rcx+r9*8]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 0c c9}
0193h mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
019bh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
019fh movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
01a3h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
01a6h shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
01aah or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
01adh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
01b1h bextr r9,r9,r10                         ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 42 a8 f7 c9}
01b6h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
01b8h je short 01bfh                          ; JE rel8 || 74 cb || encoded[2]{74 05}
01bah mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
01bdh jmp short 020bh                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
01bfh sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
01c2h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
01c6h movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
01cbh vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01d4h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
01dah vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01e3h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
01e9h mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
01edh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
01f0h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
01f3h mov rcx,[rcx+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 0c d1}
01f7h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
01fah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01fdh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0202h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0205h shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
0208h or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
020bh add rsp,118h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 01 00 00}
0212h ret                                     ; RET || C3 || encoded[1]{c3}
0213h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 8c 11 ff}
0218h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; byte bitseg<byte>(Span<byte> src, int firstidx, int lastidx)
; bitseg_g[8u](span8u,32i,32i)[888] = {48 81 ec b8 01 00 00 c5 f8 77 44 8b ca c7 84 24 54 01 00 00 08 00 00 00 44 0f b6 94 24 54 01 00 00 41 8b c1 33 d2 41 f7 f2 89 84 24 50 01 00 00 44 0f b7 94 24 50 01 00 00 c7 84 24 4c 01 00 00 08 00 00 00 44 0f b6 9c 24 4c 01 00 00 41 8b c1 33 d2 41 f7 f3 89 94 24 48 01 00 00 48 8d 84 24 58 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 48 01 00 00 66 44 89 94 24 58 01 00 00 66 89 84 24 5a 01 00 00 c5 fa 6f 84 24 58 01 00 00 c5 fa 7f 84 24 98 01 00 00 c5 fa 6f 84 24 68 01 00 00 c5 fa 7f 84 24 a8 01 00 00 c7 84 24 24 01 00 00 08 00 00 00 44 0f b6 8c 24 24 01 00 00 41 8b c0 33 d2 41 f7 f1 89 84 24 20 01 00 00 44 0f b7 8c 24 20 01 00 00 c7 84 24 1c 01 00 00 08 00 00 00 44 0f b6 94 24 1c 01 00 00 41 8b c0 33 d2 41 f7 f2 89 94 24 18 01 00 00 48 8d 84 24 28 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 18 01 00 00 66 44 89 8c 24 28 01 00 00 66 89 84 24 2a 01 00 00 c5 fa 6f 84 24 28 01 00 00 c5 fa 7f 84 24 78 01 00 00 c5 fa 6f 84 24 38 01 00 00 c5 fa 7f 84 24 88 01 00 00 48 8b 09 c5 fa 6f 84 24 98 01 00 00 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 84 24 a8 01 00 00 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 78 01 00 00 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 84 24 88 01 00 00 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 08 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 08 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 14 01 00 00 ff c0 83 f8 08 7e 0a b8 ff 00 00 00 e9 fb 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 08 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 46 0f b6 0c 09 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 45 0f b6 c9 85 d2 74 05 41 8b c1 eb 56 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 0f b6 0c 11 c1 e0 08 0f b7 c0 c4 e2 78 f7 c9 0f b6 c1 41 8b c8 d3 e0 0f b6 c0 41 8b d1 0b c2 0f b6 c0 48 81 c4 b8 01 00 00 c3 e8 71 84 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,1b8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b8 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
000dh mov dword ptr [rsp+154h],8              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 54 01 00 00 08 00 00 00}
0018h movzx r10d,byte ptr [rsp+154h]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 54 01 00 00}
0021h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0024h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0026h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0029h mov [rsp+150h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 50 01 00 00}
0030h movzx r10d,word ptr [rsp+150h]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 94 24 50 01 00 00}
0039h mov dword ptr [rsp+14ch],8              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 4c 01 00 00 08 00 00 00}
0044h movzx r11d,byte ptr [rsp+14ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 9c 24 4c 01 00 00}
004dh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0050h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0052h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0055h mov [rsp+148h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 48 01 00 00}
005ch lea rax,[rsp+158h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 58 01 00 00}
0064h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0068h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
006ch vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0071h movzx eax,byte ptr [rsp+148h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 48 01 00 00}
0079h mov [rsp+158h],r10w                     ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 94 24 58 01 00 00}
0082h mov [rsp+15ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 5a 01 00 00}
008ah vmovdqu xmm0,xmmword ptr [rsp+158h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 01 00 00}
0093h vmovdqu xmmword ptr [rsp+198h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 01 00 00}
009ch vmovdqu xmm0,xmmword ptr [rsp+168h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 01 00 00}
00a5h vmovdqu xmmword ptr [rsp+1a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 01 00 00}
00aeh mov dword ptr [rsp+124h],8              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 24 01 00 00 08 00 00 00}
00b9h movzx r9d,byte ptr [rsp+124h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 8c 24 24 01 00 00}
00c2h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00c5h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00c7h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
00cah mov [rsp+120h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 20 01 00 00}
00d1h movzx r9d,word ptr [rsp+120h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 8c 24 20 01 00 00}
00dah mov dword ptr [rsp+11ch],8              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 1c 01 00 00 08 00 00 00}
00e5h movzx r10d,byte ptr [rsp+11ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 1c 01 00 00}
00eeh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00f1h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00f3h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
00f6h mov [rsp+118h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 18 01 00 00}
00fdh lea rax,[rsp+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 28 01 00 00}
0105h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0109h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
010dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0112h movzx eax,byte ptr [rsp+118h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 18 01 00 00}
011ah mov [rsp+128h],r9w                      ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 8c 24 28 01 00 00}
0123h mov [rsp+12ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 2a 01 00 00}
012bh vmovdqu xmm0,xmmword ptr [rsp+128h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 28 01 00 00}
0134h vmovdqu xmmword ptr [rsp+178h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 01 00 00}
013dh vmovdqu xmm0,xmmword ptr [rsp+138h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 01 00 00}
0146h vmovdqu xmmword ptr [rsp+188h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 01 00 00}
014fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0152h vmovdqu xmm0,xmmword ptr [rsp+198h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 01 00 00}
015bh vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0164h vmovdqu xmm0,xmmword ptr [rsp+1a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 01 00 00}
016dh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0176h vmovdqu xmm0,xmmword ptr [rsp+178h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 01 00 00}
017fh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+188h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 01 00 00}
0191h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
019ah vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01a3h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
01ach vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01b5h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
01beh vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
01c7h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
01d0h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
01d9h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
01e2h vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
01ebh vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
01f1h vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
01fah vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0203h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
020ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
020dh mov dword ptr [rsp+74h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 08 00 00 00}
0215h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
021ah imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
021dh mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
0224h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0227h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0229h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
022dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0230h mov dword ptr [rsp+70h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 08 00 00 00}
0238h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
023eh imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
0242h mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
0247h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
024bh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
024eh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0250h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0252h jge short 025eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0254h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0256h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0258h jl near ptr 0372h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 14 01 00 00}
025eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0260h cmp eax,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 08}
0263h jle short 026fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 0a}
0265h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
026ah jmp near ptr 036ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 00 00 00}
026fh mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
0276h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0279h mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
0281h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0285h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0288h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
028bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
028eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0290h jne short 02a7h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
0292h mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
029ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
029eh neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
02a1h add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
02a5h jmp short 02aah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
02a7h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
02aah mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
02afh movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
02b5h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
02beh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
02c4h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
02cdh vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
02d3h mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
02d8h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
02dch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
02dfh movzx r9d,byte ptr [rcx+r9]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 0c 09}
02e4h mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
02ech movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
02f0h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
02f4h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
02f7h shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
02fbh or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
02feh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0302h bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
0307h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
030bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
030dh je short 0314h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
030fh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0312h jmp short 036ah                         ; JMP rel8 || EB cb || encoded[2]{eb 56}
0314h sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
0317h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
031bh movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
0320h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
0329h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
032fh vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0338h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
033eh mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
0342h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0345h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0348h movzx ecx,byte ptr [rcx+rdx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 0c 11}
034ch shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
034fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0352h bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0357h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
035ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
035dh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
035fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0362h mov edx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d1}
0365h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0367h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
036ah add rsp,1b8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b8 01 00 00}
0371h ret                                     ; RET || C3 || encoded[1]{c3}
0372h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 84 11 ff}
0377h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ushort bitseg<ushort>(Span<ushort> src, int firstidx, int lastidx)
; bitseg_g[16u](span16u,32i,32i)[888] = {48 81 ec b8 01 00 00 c5 f8 77 44 8b ca c7 84 24 54 01 00 00 10 00 00 00 44 0f b6 94 24 54 01 00 00 41 8b c1 33 d2 41 f7 f2 89 84 24 50 01 00 00 44 0f b7 94 24 50 01 00 00 c7 84 24 4c 01 00 00 10 00 00 00 44 0f b6 9c 24 4c 01 00 00 41 8b c1 33 d2 41 f7 f3 89 94 24 48 01 00 00 48 8d 84 24 58 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 48 01 00 00 66 44 89 94 24 58 01 00 00 66 89 84 24 5a 01 00 00 c5 fa 6f 84 24 58 01 00 00 c5 fa 7f 84 24 98 01 00 00 c5 fa 6f 84 24 68 01 00 00 c5 fa 7f 84 24 a8 01 00 00 c7 84 24 24 01 00 00 10 00 00 00 44 0f b6 8c 24 24 01 00 00 41 8b c0 33 d2 41 f7 f1 89 84 24 20 01 00 00 44 0f b7 8c 24 20 01 00 00 c7 84 24 1c 01 00 00 10 00 00 00 44 0f b6 94 24 1c 01 00 00 41 8b c0 33 d2 41 f7 f2 89 94 24 18 01 00 00 48 8d 84 24 28 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 18 01 00 00 66 44 89 8c 24 28 01 00 00 66 89 84 24 2a 01 00 00 c5 fa 6f 84 24 28 01 00 00 c5 fa 7f 84 24 78 01 00 00 c5 fa 6f 84 24 38 01 00 00 c5 fa 7f 84 24 88 01 00 00 48 8b 09 c5 fa 6f 84 24 98 01 00 00 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 84 24 a8 01 00 00 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 78 01 00 00 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 84 24 88 01 00 00 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 10 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 10 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 14 01 00 00 ff c0 83 f8 10 7e 0a b8 ff ff 00 00 e9 fb 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 10 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 46 0f b7 0c 49 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 45 0f b7 c9 85 d2 74 05 41 8b c1 eb 56 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 0f b7 0c 51 c1 e0 08 0f b7 c0 c4 e2 78 f7 c9 0f b7 c1 41 8b c8 d3 e0 0f b7 c0 41 8b d1 0b c2 0f b7 c0 48 81 c4 b8 01 00 00 c3 e8 b1 80 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,1b8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b8 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
000dh mov dword ptr [rsp+154h],10h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 54 01 00 00 10 00 00 00}
0018h movzx r10d,byte ptr [rsp+154h]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 54 01 00 00}
0021h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0024h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0026h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0029h mov [rsp+150h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 50 01 00 00}
0030h movzx r10d,word ptr [rsp+150h]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 94 24 50 01 00 00}
0039h mov dword ptr [rsp+14ch],10h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 4c 01 00 00 10 00 00 00}
0044h movzx r11d,byte ptr [rsp+14ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 9c 24 4c 01 00 00}
004dh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0050h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0052h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0055h mov [rsp+148h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 48 01 00 00}
005ch lea rax,[rsp+158h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 58 01 00 00}
0064h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0068h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
006ch vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0071h movzx eax,byte ptr [rsp+148h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 48 01 00 00}
0079h mov [rsp+158h],r10w                     ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 94 24 58 01 00 00}
0082h mov [rsp+15ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 5a 01 00 00}
008ah vmovdqu xmm0,xmmword ptr [rsp+158h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 01 00 00}
0093h vmovdqu xmmword ptr [rsp+198h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 01 00 00}
009ch vmovdqu xmm0,xmmword ptr [rsp+168h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 01 00 00}
00a5h vmovdqu xmmword ptr [rsp+1a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 01 00 00}
00aeh mov dword ptr [rsp+124h],10h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 24 01 00 00 10 00 00 00}
00b9h movzx r9d,byte ptr [rsp+124h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 8c 24 24 01 00 00}
00c2h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00c5h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00c7h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
00cah mov [rsp+120h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 20 01 00 00}
00d1h movzx r9d,word ptr [rsp+120h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 8c 24 20 01 00 00}
00dah mov dword ptr [rsp+11ch],10h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 1c 01 00 00 10 00 00 00}
00e5h movzx r10d,byte ptr [rsp+11ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 1c 01 00 00}
00eeh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00f1h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00f3h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
00f6h mov [rsp+118h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 18 01 00 00}
00fdh lea rax,[rsp+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 28 01 00 00}
0105h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0109h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
010dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0112h movzx eax,byte ptr [rsp+118h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 18 01 00 00}
011ah mov [rsp+128h],r9w                      ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 8c 24 28 01 00 00}
0123h mov [rsp+12ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 2a 01 00 00}
012bh vmovdqu xmm0,xmmword ptr [rsp+128h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 28 01 00 00}
0134h vmovdqu xmmword ptr [rsp+178h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 01 00 00}
013dh vmovdqu xmm0,xmmword ptr [rsp+138h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 01 00 00}
0146h vmovdqu xmmword ptr [rsp+188h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 01 00 00}
014fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0152h vmovdqu xmm0,xmmword ptr [rsp+198h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 01 00 00}
015bh vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0164h vmovdqu xmm0,xmmword ptr [rsp+1a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 01 00 00}
016dh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0176h vmovdqu xmm0,xmmword ptr [rsp+178h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 01 00 00}
017fh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+188h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 01 00 00}
0191h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
019ah vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01a3h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
01ach vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01b5h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
01beh vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
01c7h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
01d0h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
01d9h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
01e2h vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
01ebh vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
01f1h vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
01fah vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0203h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
020ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
020dh mov dword ptr [rsp+74h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 10 00 00 00}
0215h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
021ah imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
021dh mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
0224h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0227h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0229h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
022dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0230h mov dword ptr [rsp+70h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 10 00 00 00}
0238h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
023eh imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
0242h mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
0247h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
024bh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
024eh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0250h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0252h jge short 025eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0254h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0256h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0258h jl near ptr 0372h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 14 01 00 00}
025eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0260h cmp eax,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 10}
0263h jle short 026fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 0a}
0265h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
026ah jmp near ptr 036ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 00 00 00}
026fh mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
0276h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0279h mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
0281h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0285h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0288h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
028bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
028eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0290h jne short 02a7h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
0292h mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
029ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
029eh neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
02a1h add r8d,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 10}
02a5h jmp short 02aah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
02a7h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
02aah mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
02afh movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
02b5h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
02beh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
02c4h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
02cdh vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
02d3h mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
02d8h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
02dch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
02dfh movzx r9d,word ptr [rcx+r9*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 0c 49}
02e4h mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
02ech movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
02f0h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
02f4h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
02f7h shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
02fbh or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
02feh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0302h bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
0307h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
030bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
030dh je short 0314h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
030fh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0312h jmp short 036ah                         ; JMP rel8 || EB cb || encoded[2]{eb 56}
0314h sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
0317h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
031bh movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
0320h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
0329h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
032fh vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0338h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
033eh mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
0342h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0345h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0348h movzx ecx,word ptr [rcx+rdx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 0c 51}
034ch shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
034fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0352h bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0357h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
035ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
035dh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
035fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0362h mov edx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d1}
0365h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0367h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
036ah add rsp,1b8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b8 01 00 00}
0371h ret                                     ; RET || C3 || encoded[1]{c3}
0372h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 80 11 ff}
0377h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; uint bitseg<uint>(Span<uint> src, int firstidx, int lastidx)
; bitseg_g[32u](span32u,32i,32i)[871] = {48 81 ec b8 01 00 00 c5 f8 77 44 8b ca c7 84 24 54 01 00 00 20 00 00 00 44 0f b6 94 24 54 01 00 00 41 8b c1 33 d2 41 f7 f2 89 84 24 50 01 00 00 44 0f b7 94 24 50 01 00 00 c7 84 24 4c 01 00 00 20 00 00 00 44 0f b6 9c 24 4c 01 00 00 41 8b c1 33 d2 41 f7 f3 89 94 24 48 01 00 00 48 8d 84 24 58 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 48 01 00 00 66 44 89 94 24 58 01 00 00 66 89 84 24 5a 01 00 00 c5 fa 6f 84 24 58 01 00 00 c5 fa 7f 84 24 98 01 00 00 c5 fa 6f 84 24 68 01 00 00 c5 fa 7f 84 24 a8 01 00 00 c7 84 24 24 01 00 00 20 00 00 00 44 0f b6 8c 24 24 01 00 00 41 8b c0 33 d2 41 f7 f1 89 84 24 20 01 00 00 44 0f b7 8c 24 20 01 00 00 c7 84 24 1c 01 00 00 20 00 00 00 44 0f b6 94 24 1c 01 00 00 41 8b c0 33 d2 41 f7 f2 89 94 24 18 01 00 00 48 8d 84 24 28 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 18 01 00 00 66 44 89 8c 24 28 01 00 00 66 89 84 24 2a 01 00 00 c5 fa 6f 84 24 28 01 00 00 c5 fa 7f 84 24 78 01 00 00 c5 fa 6f 84 24 38 01 00 00 c5 fa 7f 84 24 88 01 00 00 48 8b 09 c5 fa 6f 84 24 98 01 00 00 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 84 24 a8 01 00 00 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 78 01 00 00 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 84 24 88 01 00 00 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 20 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 20 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 03 01 00 00 ff c0 83 f8 20 7e 0a b8 ff ff ff ff e9 ea 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 20 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 46 8b 0c 89 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 85 d2 74 05 41 8b c1 eb 4a 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 8b 0c 91 c1 e0 08 0f b7 c0 c4 e2 78 f7 c1 41 8b c8 d3 e0 41 0b c1 48 81 c4 b8 01 00 00 c3 e8 02 7d 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,1b8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b8 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
000dh mov dword ptr [rsp+154h],20h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 54 01 00 00 20 00 00 00}
0018h movzx r10d,byte ptr [rsp+154h]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 54 01 00 00}
0021h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0024h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0026h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0029h mov [rsp+150h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 50 01 00 00}
0030h movzx r10d,word ptr [rsp+150h]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 94 24 50 01 00 00}
0039h mov dword ptr [rsp+14ch],20h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 4c 01 00 00 20 00 00 00}
0044h movzx r11d,byte ptr [rsp+14ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 9c 24 4c 01 00 00}
004dh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0050h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0052h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0055h mov [rsp+148h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 48 01 00 00}
005ch lea rax,[rsp+158h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 58 01 00 00}
0064h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0068h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
006ch vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0071h movzx eax,byte ptr [rsp+148h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 48 01 00 00}
0079h mov [rsp+158h],r10w                     ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 94 24 58 01 00 00}
0082h mov [rsp+15ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 5a 01 00 00}
008ah vmovdqu xmm0,xmmword ptr [rsp+158h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 01 00 00}
0093h vmovdqu xmmword ptr [rsp+198h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 01 00 00}
009ch vmovdqu xmm0,xmmword ptr [rsp+168h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 01 00 00}
00a5h vmovdqu xmmword ptr [rsp+1a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 01 00 00}
00aeh mov dword ptr [rsp+124h],20h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 24 01 00 00 20 00 00 00}
00b9h movzx r9d,byte ptr [rsp+124h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 8c 24 24 01 00 00}
00c2h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00c5h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00c7h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
00cah mov [rsp+120h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 20 01 00 00}
00d1h movzx r9d,word ptr [rsp+120h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 8c 24 20 01 00 00}
00dah mov dword ptr [rsp+11ch],20h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 1c 01 00 00 20 00 00 00}
00e5h movzx r10d,byte ptr [rsp+11ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 1c 01 00 00}
00eeh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00f1h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00f3h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
00f6h mov [rsp+118h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 18 01 00 00}
00fdh lea rax,[rsp+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 28 01 00 00}
0105h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0109h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
010dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0112h movzx eax,byte ptr [rsp+118h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 18 01 00 00}
011ah mov [rsp+128h],r9w                      ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 8c 24 28 01 00 00}
0123h mov [rsp+12ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 2a 01 00 00}
012bh vmovdqu xmm0,xmmword ptr [rsp+128h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 28 01 00 00}
0134h vmovdqu xmmword ptr [rsp+178h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 01 00 00}
013dh vmovdqu xmm0,xmmword ptr [rsp+138h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 01 00 00}
0146h vmovdqu xmmword ptr [rsp+188h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 01 00 00}
014fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0152h vmovdqu xmm0,xmmword ptr [rsp+198h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 01 00 00}
015bh vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0164h vmovdqu xmm0,xmmword ptr [rsp+1a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 01 00 00}
016dh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0176h vmovdqu xmm0,xmmword ptr [rsp+178h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 01 00 00}
017fh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+188h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 01 00 00}
0191h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
019ah vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01a3h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
01ach vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01b5h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
01beh vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
01c7h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
01d0h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
01d9h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
01e2h vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
01ebh vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
01f1h vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
01fah vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0203h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
020ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
020dh mov dword ptr [rsp+74h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 20 00 00 00}
0215h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
021ah imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
021dh mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
0224h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0227h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0229h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
022dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0230h mov dword ptr [rsp+70h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 20 00 00 00}
0238h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
023eh imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
0242h mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
0247h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
024bh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
024eh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0250h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0252h jge short 025eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0254h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0256h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0258h jl near ptr 0361h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 03 01 00 00}
025eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0260h cmp eax,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 20}
0263h jle short 026fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 0a}
0265h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
026ah jmp near ptr 0359h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 00 00 00}
026fh mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
0276h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0279h mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
0281h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0285h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0288h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
028bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
028eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0290h jne short 02a7h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
0292h mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
029ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
029eh neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
02a1h add r8d,20h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 20}
02a5h jmp short 02aah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
02a7h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
02aah mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
02afh movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
02b5h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
02beh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
02c4h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
02cdh vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
02d3h mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
02d8h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
02dch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
02dfh mov r9d,[rcx+r9*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 0c 89}
02e3h mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
02ebh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
02efh movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
02f3h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
02f6h shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
02fah or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
02fdh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0301h bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
0306h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0308h je short 030fh                          ; JE rel8 || 74 cb || encoded[2]{74 05}
030ah mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
030dh jmp short 0359h                         ; JMP rel8 || EB cb || encoded[2]{eb 4a}
030fh sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
0312h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
0316h movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
031bh vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
0324h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
032ah vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0333h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0339h mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
033dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0340h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0343h mov ecx,[rcx+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 91}
0346h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0349h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
034ch bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0351h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0354h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0356h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0359h add rsp,1b8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b8 01 00 00}
0360h ret                                     ; RET || C3 || encoded[1]{c3}
0361h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 7d 11 ff}
0366h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ulong bitseg<ulong>(Span<ulong> src, int firstidx, int lastidx)
; bitseg_g[64u](span64u,32i,32i)[878] = {48 81 ec b8 01 00 00 c5 f8 77 44 8b ca c7 84 24 54 01 00 00 40 00 00 00 44 0f b6 94 24 54 01 00 00 41 8b c1 33 d2 41 f7 f2 89 84 24 50 01 00 00 44 0f b7 94 24 50 01 00 00 c7 84 24 4c 01 00 00 40 00 00 00 44 0f b6 9c 24 4c 01 00 00 41 8b c1 33 d2 41 f7 f3 89 94 24 48 01 00 00 48 8d 84 24 58 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 48 01 00 00 66 44 89 94 24 58 01 00 00 66 89 84 24 5a 01 00 00 c5 fa 6f 84 24 58 01 00 00 c5 fa 7f 84 24 98 01 00 00 c5 fa 6f 84 24 68 01 00 00 c5 fa 7f 84 24 a8 01 00 00 c7 84 24 24 01 00 00 40 00 00 00 44 0f b6 8c 24 24 01 00 00 41 8b c0 33 d2 41 f7 f1 89 84 24 20 01 00 00 44 0f b7 8c 24 20 01 00 00 c7 84 24 1c 01 00 00 40 00 00 00 44 0f b6 94 24 1c 01 00 00 41 8b c0 33 d2 41 f7 f2 89 94 24 18 01 00 00 48 8d 84 24 28 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 18 01 00 00 66 44 89 8c 24 28 01 00 00 66 89 84 24 2a 01 00 00 c5 fa 6f 84 24 28 01 00 00 c5 fa 7f 84 24 78 01 00 00 c5 fa 6f 84 24 38 01 00 00 c5 fa 7f 84 24 88 01 00 00 48 8b 09 c5 fa 6f 84 24 98 01 00 00 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 84 24 a8 01 00 00 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 78 01 00 00 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 84 24 88 01 00 00 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 40 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 40 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 0a 01 00 00 ff c0 83 f8 40 7e 0f 48 b8 ff ff ff ff ff ff ff ff e9 ec 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 40 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 4e 8b 0c c9 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 a8 f7 c9 85 d2 74 05 49 8b c1 eb 4c 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 48 8b 0c d1 c1 e0 08 0f b7 c0 c4 e2 f8 f7 c1 41 8b c8 48 d3 e0 49 0b c1 48 81 c4 b8 01 00 00 c3 e8 4b 79 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,1b8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b8 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
000dh mov dword ptr [rsp+154h],40h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 54 01 00 00 40 00 00 00}
0018h movzx r10d,byte ptr [rsp+154h]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 54 01 00 00}
0021h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0024h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0026h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0029h mov [rsp+150h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 50 01 00 00}
0030h movzx r10d,word ptr [rsp+150h]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 94 24 50 01 00 00}
0039h mov dword ptr [rsp+14ch],40h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 4c 01 00 00 40 00 00 00}
0044h movzx r11d,byte ptr [rsp+14ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 9c 24 4c 01 00 00}
004dh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0050h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0052h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0055h mov [rsp+148h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 48 01 00 00}
005ch lea rax,[rsp+158h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 58 01 00 00}
0064h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0068h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
006ch vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0071h movzx eax,byte ptr [rsp+148h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 48 01 00 00}
0079h mov [rsp+158h],r10w                     ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 94 24 58 01 00 00}
0082h mov [rsp+15ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 5a 01 00 00}
008ah vmovdqu xmm0,xmmword ptr [rsp+158h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 01 00 00}
0093h vmovdqu xmmword ptr [rsp+198h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 01 00 00}
009ch vmovdqu xmm0,xmmword ptr [rsp+168h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 01 00 00}
00a5h vmovdqu xmmword ptr [rsp+1a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 01 00 00}
00aeh mov dword ptr [rsp+124h],40h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 24 01 00 00 40 00 00 00}
00b9h movzx r9d,byte ptr [rsp+124h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 8c 24 24 01 00 00}
00c2h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00c5h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00c7h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
00cah mov [rsp+120h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 20 01 00 00}
00d1h movzx r9d,word ptr [rsp+120h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 8c 24 20 01 00 00}
00dah mov dword ptr [rsp+11ch],40h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 1c 01 00 00 40 00 00 00}
00e5h movzx r10d,byte ptr [rsp+11ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 1c 01 00 00}
00eeh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00f1h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00f3h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
00f6h mov [rsp+118h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 18 01 00 00}
00fdh lea rax,[rsp+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 28 01 00 00}
0105h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0109h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
010dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0112h movzx eax,byte ptr [rsp+118h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 18 01 00 00}
011ah mov [rsp+128h],r9w                      ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 8c 24 28 01 00 00}
0123h mov [rsp+12ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 2a 01 00 00}
012bh vmovdqu xmm0,xmmword ptr [rsp+128h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 28 01 00 00}
0134h vmovdqu xmmword ptr [rsp+178h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 01 00 00}
013dh vmovdqu xmm0,xmmword ptr [rsp+138h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 01 00 00}
0146h vmovdqu xmmword ptr [rsp+188h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 01 00 00}
014fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0152h vmovdqu xmm0,xmmword ptr [rsp+198h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 01 00 00}
015bh vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0164h vmovdqu xmm0,xmmword ptr [rsp+1a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 01 00 00}
016dh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0176h vmovdqu xmm0,xmmword ptr [rsp+178h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 01 00 00}
017fh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+188h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 01 00 00}
0191h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
019ah vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01a3h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
01ach vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01b5h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
01beh vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
01c7h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
01d0h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
01d9h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
01e2h vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
01ebh vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
01f1h vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
01fah vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0203h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
020ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
020dh mov dword ptr [rsp+74h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 40 00 00 00}
0215h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
021ah imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
021dh mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
0224h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0227h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0229h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
022dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0230h mov dword ptr [rsp+70h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 40 00 00 00}
0238h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
023eh imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
0242h mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
0247h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
024bh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
024eh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0250h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0252h jge short 025eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0254h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0256h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0258h jl near ptr 0368h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 0a 01 00 00}
025eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0260h cmp eax,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 40}
0263h jle short 0274h                         ; JLE rel8 || 7E cb || encoded[2]{7e 0f}
0265h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
026fh jmp near ptr 0360h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ec 00 00 00}
0274h mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
027bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
027eh mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
0286h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
028ah cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
028dh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0290h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0293h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0295h jne short 02ach                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
0297h mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
029fh movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
02a3h neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
02a6h add r8d,40h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 40}
02aah jmp short 02afh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
02ach mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
02afh mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
02b4h movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
02bah vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
02c3h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
02c9h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
02d2h vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
02d8h mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
02ddh movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
02e1h movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
02e4h mov r9,[rcx+r9*8]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 0c c9}
02e8h mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
02f0h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
02f4h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
02f8h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
02fbh shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
02ffh or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
0302h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0306h bextr r9,r9,r10                         ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 42 a8 f7 c9}
030bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
030dh je short 0314h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
030fh mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0312h jmp short 0360h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0314h sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
0317h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
031bh movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
0320h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
0329h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
032fh vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0338h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
033eh mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
0342h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0345h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0348h mov rcx,[rcx+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 0c d1}
034ch shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
034fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0352h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0357h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
035ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
035dh or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
0360h add rsp,1b8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b8 01 00 00}
0367h ret                                     ; RET || C3 || encoded[1]{c3}
0368h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 79 11 ff}
036dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; byte bitseg<byte>(in Block256<byte> src, int firstidx, int lastidx)
; bitseg_g[8u](b256x8u~in,32i,32i)[888] = {48 81 ec b8 01 00 00 c5 f8 77 44 8b ca 48 8b 09 c7 84 24 54 01 00 00 08 00 00 00 44 0f b6 94 24 54 01 00 00 41 8b c1 33 d2 41 f7 f2 89 84 24 50 01 00 00 44 0f b7 94 24 50 01 00 00 c7 84 24 4c 01 00 00 08 00 00 00 44 0f b6 9c 24 4c 01 00 00 41 8b c1 33 d2 41 f7 f3 89 94 24 48 01 00 00 48 8d 84 24 58 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 48 01 00 00 66 44 89 94 24 58 01 00 00 66 89 84 24 5a 01 00 00 c5 fa 6f 84 24 58 01 00 00 c5 fa 7f 84 24 98 01 00 00 c5 fa 6f 84 24 68 01 00 00 c5 fa 7f 84 24 a8 01 00 00 c7 84 24 24 01 00 00 08 00 00 00 44 0f b6 8c 24 24 01 00 00 41 8b c0 33 d2 41 f7 f1 89 84 24 20 01 00 00 44 0f b7 8c 24 20 01 00 00 c7 84 24 1c 01 00 00 08 00 00 00 44 0f b6 94 24 1c 01 00 00 41 8b c0 33 d2 41 f7 f2 89 94 24 18 01 00 00 48 8d 84 24 28 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 18 01 00 00 66 44 89 8c 24 28 01 00 00 66 89 84 24 2a 01 00 00 c5 fa 6f 84 24 28 01 00 00 c5 fa 7f 84 24 78 01 00 00 c5 fa 6f 84 24 38 01 00 00 c5 fa 7f 84 24 88 01 00 00 c5 fa 6f 84 24 98 01 00 00 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 84 24 a8 01 00 00 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 78 01 00 00 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 84 24 88 01 00 00 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 08 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 08 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 14 01 00 00 ff c0 83 f8 08 7e 0a b8 ff 00 00 00 e9 fb 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 08 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 46 0f b6 0c 09 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 45 0f b6 c9 85 d2 74 05 41 8b c1 eb 56 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 0f b6 0c 11 c1 e0 08 0f b7 c0 c4 e2 78 f7 c9 0f b6 c1 41 8b c8 d3 e0 0f b6 c0 41 8b d1 0b c2 0f b6 c0 48 81 c4 b8 01 00 00 c3 e8 91 75 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,1b8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b8 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
000dh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0010h mov dword ptr [rsp+154h],8              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 54 01 00 00 08 00 00 00}
001bh movzx r10d,byte ptr [rsp+154h]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 54 01 00 00}
0024h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0027h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0029h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
002ch mov [rsp+150h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 50 01 00 00}
0033h movzx r10d,word ptr [rsp+150h]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 94 24 50 01 00 00}
003ch mov dword ptr [rsp+14ch],8              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 4c 01 00 00 08 00 00 00}
0047h movzx r11d,byte ptr [rsp+14ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 9c 24 4c 01 00 00}
0050h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0053h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0055h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0058h mov [rsp+148h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 48 01 00 00}
005fh lea rax,[rsp+158h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 58 01 00 00}
0067h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006bh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
006fh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0074h movzx eax,byte ptr [rsp+148h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 48 01 00 00}
007ch mov [rsp+158h],r10w                     ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 94 24 58 01 00 00}
0085h mov [rsp+15ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 5a 01 00 00}
008dh vmovdqu xmm0,xmmword ptr [rsp+158h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 01 00 00}
0096h vmovdqu xmmword ptr [rsp+198h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 01 00 00}
009fh vmovdqu xmm0,xmmword ptr [rsp+168h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 01 00 00}
00a8h vmovdqu xmmword ptr [rsp+1a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 01 00 00}
00b1h mov dword ptr [rsp+124h],8              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 24 01 00 00 08 00 00 00}
00bch movzx r9d,byte ptr [rsp+124h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 8c 24 24 01 00 00}
00c5h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00c8h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00cah div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
00cdh mov [rsp+120h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 20 01 00 00}
00d4h movzx r9d,word ptr [rsp+120h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 8c 24 20 01 00 00}
00ddh mov dword ptr [rsp+11ch],8              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 1c 01 00 00 08 00 00 00}
00e8h movzx r10d,byte ptr [rsp+11ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 1c 01 00 00}
00f1h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00f4h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00f6h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
00f9h mov [rsp+118h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 18 01 00 00}
0100h lea rax,[rsp+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 28 01 00 00}
0108h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
010ch vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0110h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0115h movzx eax,byte ptr [rsp+118h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 18 01 00 00}
011dh mov [rsp+128h],r9w                      ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 8c 24 28 01 00 00}
0126h mov [rsp+12ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 2a 01 00 00}
012eh vmovdqu xmm0,xmmword ptr [rsp+128h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 28 01 00 00}
0137h vmovdqu xmmword ptr [rsp+178h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 01 00 00}
0140h vmovdqu xmm0,xmmword ptr [rsp+138h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 01 00 00}
0149h vmovdqu xmmword ptr [rsp+188h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 01 00 00}
0152h vmovdqu xmm0,xmmword ptr [rsp+198h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 01 00 00}
015bh vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0164h vmovdqu xmm0,xmmword ptr [rsp+1a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 01 00 00}
016dh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0176h vmovdqu xmm0,xmmword ptr [rsp+178h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 01 00 00}
017fh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+188h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 01 00 00}
0191h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
019ah vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01a3h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
01ach vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01b5h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
01beh vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
01c7h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
01d0h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
01d9h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
01e2h vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
01ebh vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
01f1h vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
01fah vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0203h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
020ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
020dh mov dword ptr [rsp+74h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 08 00 00 00}
0215h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
021ah imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
021dh mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
0224h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0227h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0229h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
022dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0230h mov dword ptr [rsp+70h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 08 00 00 00}
0238h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
023eh imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
0242h mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
0247h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
024bh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
024eh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0250h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0252h jge short 025eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0254h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0256h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0258h jl near ptr 0372h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 14 01 00 00}
025eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0260h cmp eax,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 08}
0263h jle short 026fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 0a}
0265h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
026ah jmp near ptr 036ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 00 00 00}
026fh mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
0276h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0279h mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
0281h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0285h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0288h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
028bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
028eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0290h jne short 02a7h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
0292h mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
029ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
029eh neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
02a1h add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
02a5h jmp short 02aah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
02a7h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
02aah mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
02afh movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
02b5h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
02beh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
02c4h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
02cdh vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
02d3h mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
02d8h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
02dch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
02dfh movzx r9d,byte ptr [rcx+r9]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 0c 09}
02e4h mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
02ech movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
02f0h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
02f4h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
02f7h shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
02fbh or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
02feh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0302h bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
0307h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
030bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
030dh je short 0314h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
030fh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0312h jmp short 036ah                         ; JMP rel8 || EB cb || encoded[2]{eb 56}
0314h sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
0317h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
031bh movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
0320h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
0329h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
032fh vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0338h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
033eh mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
0342h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0345h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0348h movzx ecx,byte ptr [rcx+rdx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 0c 11}
034ch shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
034fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0352h bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0357h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
035ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
035dh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
035fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0362h mov edx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d1}
0365h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0367h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
036ah add rsp,1b8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b8 01 00 00}
0371h ret                                     ; RET || C3 || encoded[1]{c3}
0372h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 75 11 ff}
0377h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ushort bitseg<ushort>(in Block256<ushort> src, int firstidx, int lastidx)
; bitseg_g[16u](b256x16u~in,32i,32i)[888] = {48 81 ec b8 01 00 00 c5 f8 77 44 8b ca 48 8b 09 c7 84 24 54 01 00 00 10 00 00 00 44 0f b6 94 24 54 01 00 00 41 8b c1 33 d2 41 f7 f2 89 84 24 50 01 00 00 44 0f b7 94 24 50 01 00 00 c7 84 24 4c 01 00 00 10 00 00 00 44 0f b6 9c 24 4c 01 00 00 41 8b c1 33 d2 41 f7 f3 89 94 24 48 01 00 00 48 8d 84 24 58 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 48 01 00 00 66 44 89 94 24 58 01 00 00 66 89 84 24 5a 01 00 00 c5 fa 6f 84 24 58 01 00 00 c5 fa 7f 84 24 98 01 00 00 c5 fa 6f 84 24 68 01 00 00 c5 fa 7f 84 24 a8 01 00 00 c7 84 24 24 01 00 00 10 00 00 00 44 0f b6 8c 24 24 01 00 00 41 8b c0 33 d2 41 f7 f1 89 84 24 20 01 00 00 44 0f b7 8c 24 20 01 00 00 c7 84 24 1c 01 00 00 10 00 00 00 44 0f b6 94 24 1c 01 00 00 41 8b c0 33 d2 41 f7 f2 89 94 24 18 01 00 00 48 8d 84 24 28 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 18 01 00 00 66 44 89 8c 24 28 01 00 00 66 89 84 24 2a 01 00 00 c5 fa 6f 84 24 28 01 00 00 c5 fa 7f 84 24 78 01 00 00 c5 fa 6f 84 24 38 01 00 00 c5 fa 7f 84 24 88 01 00 00 c5 fa 6f 84 24 98 01 00 00 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 84 24 a8 01 00 00 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 78 01 00 00 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 84 24 88 01 00 00 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 10 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 10 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 14 01 00 00 ff c0 83 f8 10 7e 0a b8 ff ff 00 00 e9 fb 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 10 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 46 0f b7 0c 49 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 45 0f b7 c9 85 d2 74 05 41 8b c1 eb 56 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 0f b7 0c 51 c1 e0 08 0f b7 c0 c4 e2 78 f7 c9 0f b7 c1 41 8b c8 d3 e0 0f b7 c0 41 8b d1 0b c2 0f b7 c0 48 81 c4 b8 01 00 00 c3 e8 d1 71 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,1b8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b8 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
000dh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0010h mov dword ptr [rsp+154h],10h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 54 01 00 00 10 00 00 00}
001bh movzx r10d,byte ptr [rsp+154h]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 54 01 00 00}
0024h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0027h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0029h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
002ch mov [rsp+150h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 50 01 00 00}
0033h movzx r10d,word ptr [rsp+150h]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 94 24 50 01 00 00}
003ch mov dword ptr [rsp+14ch],10h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 4c 01 00 00 10 00 00 00}
0047h movzx r11d,byte ptr [rsp+14ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 9c 24 4c 01 00 00}
0050h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0053h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0055h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0058h mov [rsp+148h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 48 01 00 00}
005fh lea rax,[rsp+158h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 58 01 00 00}
0067h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006bh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
006fh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0074h movzx eax,byte ptr [rsp+148h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 48 01 00 00}
007ch mov [rsp+158h],r10w                     ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 94 24 58 01 00 00}
0085h mov [rsp+15ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 5a 01 00 00}
008dh vmovdqu xmm0,xmmword ptr [rsp+158h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 01 00 00}
0096h vmovdqu xmmword ptr [rsp+198h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 01 00 00}
009fh vmovdqu xmm0,xmmword ptr [rsp+168h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 01 00 00}
00a8h vmovdqu xmmword ptr [rsp+1a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 01 00 00}
00b1h mov dword ptr [rsp+124h],10h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 24 01 00 00 10 00 00 00}
00bch movzx r9d,byte ptr [rsp+124h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 8c 24 24 01 00 00}
00c5h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00c8h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00cah div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
00cdh mov [rsp+120h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 20 01 00 00}
00d4h movzx r9d,word ptr [rsp+120h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 8c 24 20 01 00 00}
00ddh mov dword ptr [rsp+11ch],10h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 1c 01 00 00 10 00 00 00}
00e8h movzx r10d,byte ptr [rsp+11ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 1c 01 00 00}
00f1h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00f4h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00f6h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
00f9h mov [rsp+118h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 18 01 00 00}
0100h lea rax,[rsp+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 28 01 00 00}
0108h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
010ch vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0110h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0115h movzx eax,byte ptr [rsp+118h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 18 01 00 00}
011dh mov [rsp+128h],r9w                      ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 8c 24 28 01 00 00}
0126h mov [rsp+12ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 2a 01 00 00}
012eh vmovdqu xmm0,xmmword ptr [rsp+128h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 28 01 00 00}
0137h vmovdqu xmmword ptr [rsp+178h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 01 00 00}
0140h vmovdqu xmm0,xmmword ptr [rsp+138h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 01 00 00}
0149h vmovdqu xmmword ptr [rsp+188h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 01 00 00}
0152h vmovdqu xmm0,xmmword ptr [rsp+198h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 01 00 00}
015bh vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0164h vmovdqu xmm0,xmmword ptr [rsp+1a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 01 00 00}
016dh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0176h vmovdqu xmm0,xmmword ptr [rsp+178h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 01 00 00}
017fh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+188h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 01 00 00}
0191h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
019ah vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01a3h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
01ach vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01b5h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
01beh vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
01c7h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
01d0h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
01d9h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
01e2h vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
01ebh vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
01f1h vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
01fah vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0203h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
020ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
020dh mov dword ptr [rsp+74h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 10 00 00 00}
0215h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
021ah imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
021dh mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
0224h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0227h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0229h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
022dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0230h mov dword ptr [rsp+70h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 10 00 00 00}
0238h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
023eh imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
0242h mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
0247h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
024bh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
024eh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0250h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0252h jge short 025eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0254h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0256h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0258h jl near ptr 0372h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 14 01 00 00}
025eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0260h cmp eax,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 10}
0263h jle short 026fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 0a}
0265h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
026ah jmp near ptr 036ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 00 00 00}
026fh mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
0276h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0279h mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
0281h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0285h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0288h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
028bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
028eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0290h jne short 02a7h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
0292h mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
029ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
029eh neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
02a1h add r8d,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 10}
02a5h jmp short 02aah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
02a7h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
02aah mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
02afh movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
02b5h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
02beh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
02c4h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
02cdh vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
02d3h mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
02d8h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
02dch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
02dfh movzx r9d,word ptr [rcx+r9*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 0c 49}
02e4h mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
02ech movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
02f0h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
02f4h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
02f7h shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
02fbh or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
02feh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0302h bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
0307h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
030bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
030dh je short 0314h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
030fh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0312h jmp short 036ah                         ; JMP rel8 || EB cb || encoded[2]{eb 56}
0314h sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
0317h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
031bh movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
0320h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
0329h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
032fh vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0338h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
033eh mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
0342h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0345h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0348h movzx ecx,word ptr [rcx+rdx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 0c 51}
034ch shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
034fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0352h bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0357h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
035ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
035dh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
035fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0362h mov edx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d1}
0365h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0367h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
036ah add rsp,1b8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b8 01 00 00}
0371h ret                                     ; RET || C3 || encoded[1]{c3}
0372h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 71 11 ff}
0377h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; uint bitseg<uint>(in Block256<uint> src, int firstidx, int lastidx)
; bitseg_g[32u](b256x32u~in,32i,32i)[871] = {48 81 ec b8 01 00 00 c5 f8 77 44 8b ca 48 8b 09 c7 84 24 54 01 00 00 20 00 00 00 44 0f b6 94 24 54 01 00 00 41 8b c1 33 d2 41 f7 f2 89 84 24 50 01 00 00 44 0f b7 94 24 50 01 00 00 c7 84 24 4c 01 00 00 20 00 00 00 44 0f b6 9c 24 4c 01 00 00 41 8b c1 33 d2 41 f7 f3 89 94 24 48 01 00 00 48 8d 84 24 58 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 48 01 00 00 66 44 89 94 24 58 01 00 00 66 89 84 24 5a 01 00 00 c5 fa 6f 84 24 58 01 00 00 c5 fa 7f 84 24 98 01 00 00 c5 fa 6f 84 24 68 01 00 00 c5 fa 7f 84 24 a8 01 00 00 c7 84 24 24 01 00 00 20 00 00 00 44 0f b6 8c 24 24 01 00 00 41 8b c0 33 d2 41 f7 f1 89 84 24 20 01 00 00 44 0f b7 8c 24 20 01 00 00 c7 84 24 1c 01 00 00 20 00 00 00 44 0f b6 94 24 1c 01 00 00 41 8b c0 33 d2 41 f7 f2 89 94 24 18 01 00 00 48 8d 84 24 28 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 18 01 00 00 66 44 89 8c 24 28 01 00 00 66 89 84 24 2a 01 00 00 c5 fa 6f 84 24 28 01 00 00 c5 fa 7f 84 24 78 01 00 00 c5 fa 6f 84 24 38 01 00 00 c5 fa 7f 84 24 88 01 00 00 c5 fa 6f 84 24 98 01 00 00 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 84 24 a8 01 00 00 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 78 01 00 00 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 84 24 88 01 00 00 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 20 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 20 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 03 01 00 00 ff c0 83 f8 20 7e 0a b8 ff ff ff ff e9 ea 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 20 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 46 8b 0c 89 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 85 d2 74 05 41 8b c1 eb 4a 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 8b 0c 91 c1 e0 08 0f b7 c0 c4 e2 78 f7 c1 41 8b c8 d3 e0 41 0b c1 48 81 c4 b8 01 00 00 c3 e8 22 6e 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,1b8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b8 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
000dh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0010h mov dword ptr [rsp+154h],20h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 54 01 00 00 20 00 00 00}
001bh movzx r10d,byte ptr [rsp+154h]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 54 01 00 00}
0024h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0027h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0029h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
002ch mov [rsp+150h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 50 01 00 00}
0033h movzx r10d,word ptr [rsp+150h]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 94 24 50 01 00 00}
003ch mov dword ptr [rsp+14ch],20h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 4c 01 00 00 20 00 00 00}
0047h movzx r11d,byte ptr [rsp+14ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 9c 24 4c 01 00 00}
0050h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0053h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0055h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0058h mov [rsp+148h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 48 01 00 00}
005fh lea rax,[rsp+158h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 58 01 00 00}
0067h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006bh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
006fh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0074h movzx eax,byte ptr [rsp+148h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 48 01 00 00}
007ch mov [rsp+158h],r10w                     ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 94 24 58 01 00 00}
0085h mov [rsp+15ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 5a 01 00 00}
008dh vmovdqu xmm0,xmmword ptr [rsp+158h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 01 00 00}
0096h vmovdqu xmmword ptr [rsp+198h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 01 00 00}
009fh vmovdqu xmm0,xmmword ptr [rsp+168h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 01 00 00}
00a8h vmovdqu xmmword ptr [rsp+1a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 01 00 00}
00b1h mov dword ptr [rsp+124h],20h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 24 01 00 00 20 00 00 00}
00bch movzx r9d,byte ptr [rsp+124h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 8c 24 24 01 00 00}
00c5h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00c8h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00cah div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
00cdh mov [rsp+120h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 20 01 00 00}
00d4h movzx r9d,word ptr [rsp+120h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 8c 24 20 01 00 00}
00ddh mov dword ptr [rsp+11ch],20h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 1c 01 00 00 20 00 00 00}
00e8h movzx r10d,byte ptr [rsp+11ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 1c 01 00 00}
00f1h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00f4h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00f6h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
00f9h mov [rsp+118h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 18 01 00 00}
0100h lea rax,[rsp+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 28 01 00 00}
0108h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
010ch vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0110h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0115h movzx eax,byte ptr [rsp+118h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 18 01 00 00}
011dh mov [rsp+128h],r9w                      ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 8c 24 28 01 00 00}
0126h mov [rsp+12ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 2a 01 00 00}
012eh vmovdqu xmm0,xmmword ptr [rsp+128h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 28 01 00 00}
0137h vmovdqu xmmword ptr [rsp+178h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 01 00 00}
0140h vmovdqu xmm0,xmmword ptr [rsp+138h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 01 00 00}
0149h vmovdqu xmmword ptr [rsp+188h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 01 00 00}
0152h vmovdqu xmm0,xmmword ptr [rsp+198h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 01 00 00}
015bh vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0164h vmovdqu xmm0,xmmword ptr [rsp+1a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 01 00 00}
016dh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0176h vmovdqu xmm0,xmmword ptr [rsp+178h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 01 00 00}
017fh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+188h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 01 00 00}
0191h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
019ah vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01a3h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
01ach vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01b5h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
01beh vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
01c7h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
01d0h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
01d9h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
01e2h vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
01ebh vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
01f1h vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
01fah vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0203h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
020ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
020dh mov dword ptr [rsp+74h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 20 00 00 00}
0215h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
021ah imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
021dh mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
0224h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0227h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0229h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
022dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0230h mov dword ptr [rsp+70h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 20 00 00 00}
0238h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
023eh imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
0242h mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
0247h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
024bh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
024eh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0250h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0252h jge short 025eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0254h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0256h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0258h jl near ptr 0361h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 03 01 00 00}
025eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0260h cmp eax,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 20}
0263h jle short 026fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 0a}
0265h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
026ah jmp near ptr 0359h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 00 00 00}
026fh mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
0276h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0279h mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
0281h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0285h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0288h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
028bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
028eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0290h jne short 02a7h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
0292h mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
029ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
029eh neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
02a1h add r8d,20h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 20}
02a5h jmp short 02aah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
02a7h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
02aah mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
02afh movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
02b5h vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
02beh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
02c4h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
02cdh vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
02d3h mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
02d8h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
02dch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
02dfh mov r9d,[rcx+r9*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 0c 89}
02e3h mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
02ebh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
02efh movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
02f3h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
02f6h shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
02fah or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
02fdh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0301h bextr r9d,r9d,r10d                      ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 42 28 f7 c9}
0306h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0308h je short 030fh                          ; JE rel8 || 74 cb || encoded[2]{74 05}
030ah mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
030dh jmp short 0359h                         ; JMP rel8 || EB cb || encoded[2]{eb 4a}
030fh sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
0312h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
0316h movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
031bh vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
0324h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
032ah vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0333h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0339h mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
033dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0340h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0343h mov ecx,[rcx+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 91}
0346h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0349h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
034ch bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0351h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0354h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0356h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0359h add rsp,1b8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b8 01 00 00}
0360h ret                                     ; RET || C3 || encoded[1]{c3}
0361h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 6e 11 ff}
0366h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ulong bitseg<ulong>(in Block256<ulong> src, int firstidx, int lastidx)
; bitseg_g[64u](b256x64u~in,32i,32i)[878] = {48 81 ec b8 01 00 00 c5 f8 77 44 8b ca 48 8b 09 c7 84 24 54 01 00 00 40 00 00 00 44 0f b6 94 24 54 01 00 00 41 8b c1 33 d2 41 f7 f2 89 84 24 50 01 00 00 44 0f b7 94 24 50 01 00 00 c7 84 24 4c 01 00 00 40 00 00 00 44 0f b6 9c 24 4c 01 00 00 41 8b c1 33 d2 41 f7 f3 89 94 24 48 01 00 00 48 8d 84 24 58 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 48 01 00 00 66 44 89 94 24 58 01 00 00 66 89 84 24 5a 01 00 00 c5 fa 6f 84 24 58 01 00 00 c5 fa 7f 84 24 98 01 00 00 c5 fa 6f 84 24 68 01 00 00 c5 fa 7f 84 24 a8 01 00 00 c7 84 24 24 01 00 00 40 00 00 00 44 0f b6 8c 24 24 01 00 00 41 8b c0 33 d2 41 f7 f1 89 84 24 20 01 00 00 44 0f b7 8c 24 20 01 00 00 c7 84 24 1c 01 00 00 40 00 00 00 44 0f b6 94 24 1c 01 00 00 41 8b c0 33 d2 41 f7 f2 89 94 24 18 01 00 00 48 8d 84 24 28 01 00 00 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 84 24 18 01 00 00 66 44 89 8c 24 28 01 00 00 66 89 84 24 2a 01 00 00 c5 fa 6f 84 24 28 01 00 00 c5 fa 7f 84 24 78 01 00 00 c5 fa 6f 84 24 38 01 00 00 c5 fa 7f 84 24 88 01 00 00 c5 fa 6f 84 24 98 01 00 00 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 84 24 a8 01 00 00 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 78 01 00 00 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 84 24 88 01 00 00 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 40 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 40 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 0a 01 00 00 ff c0 83 f8 40 7e 0f 48 b8 ff ff ff ff ff ff ff ff e9 ec 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 40 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 4e 8b 0c c9 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 a8 f7 c9 85 d2 74 05 49 8b c1 eb 4c 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 48 8b 0c d1 c1 e0 08 0f b7 c0 c4 e2 f8 f7 c1 41 8b c8 48 d3 e0 49 0b c1 48 81 c4 b8 01 00 00 c3 e8 6b 6a 11 ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,1b8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b8 01 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
000dh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0010h mov dword ptr [rsp+154h],40h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 54 01 00 00 40 00 00 00}
001bh movzx r10d,byte ptr [rsp+154h]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 54 01 00 00}
0024h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0027h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0029h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
002ch mov [rsp+150h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 50 01 00 00}
0033h movzx r10d,word ptr [rsp+150h]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 94 24 50 01 00 00}
003ch mov dword ptr [rsp+14ch],40h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 4c 01 00 00 40 00 00 00}
0047h movzx r11d,byte ptr [rsp+14ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 9c 24 4c 01 00 00}
0050h mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0053h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0055h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0058h mov [rsp+148h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 48 01 00 00}
005fh lea rax,[rsp+158h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 58 01 00 00}
0067h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006bh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
006fh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0074h movzx eax,byte ptr [rsp+148h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 48 01 00 00}
007ch mov [rsp+158h],r10w                     ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 94 24 58 01 00 00}
0085h mov [rsp+15ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 5a 01 00 00}
008dh vmovdqu xmm0,xmmword ptr [rsp+158h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 01 00 00}
0096h vmovdqu xmmword ptr [rsp+198h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 01 00 00}
009fh vmovdqu xmm0,xmmword ptr [rsp+168h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 01 00 00}
00a8h vmovdqu xmmword ptr [rsp+1a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 01 00 00}
00b1h mov dword ptr [rsp+124h],40h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 24 01 00 00 40 00 00 00}
00bch movzx r9d,byte ptr [rsp+124h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 8c 24 24 01 00 00}
00c5h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00c8h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00cah div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
00cdh mov [rsp+120h],eax                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 84 24 20 01 00 00}
00d4h movzx r9d,word ptr [rsp+120h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[9]{44 0f b7 8c 24 20 01 00 00}
00ddh mov dword ptr [rsp+11ch],40h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 1c 01 00 00 40 00 00 00}
00e8h movzx r10d,byte ptr [rsp+11ch]          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[9]{44 0f b6 94 24 1c 01 00 00}
00f1h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00f4h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
00f6h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
00f9h mov [rsp+118h],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 94 24 18 01 00 00}
0100h lea rax,[rsp+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 28 01 00 00}
0108h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
010ch vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0110h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0115h movzx eax,byte ptr [rsp+118h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 84 24 18 01 00 00}
011dh mov [rsp+128h],r9w                      ; MOV r/m16, r16 || o16 89 /r || encoded[9]{66 44 89 8c 24 28 01 00 00}
0126h mov [rsp+12ah],ax                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 84 24 2a 01 00 00}
012eh vmovdqu xmm0,xmmword ptr [rsp+128h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 28 01 00 00}
0137h vmovdqu xmmword ptr [rsp+178h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 01 00 00}
0140h vmovdqu xmm0,xmmword ptr [rsp+138h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 01 00 00}
0149h vmovdqu xmmword ptr [rsp+188h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 01 00 00}
0152h vmovdqu xmm0,xmmword ptr [rsp+198h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 01 00 00}
015bh vmovdqu xmmword ptr [rsp+0d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 00 00 00}
0164h vmovdqu xmm0,xmmword ptr [rsp+1a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 01 00 00}
016dh vmovdqu xmmword ptr [rsp+0e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 00 00 00}
0176h vmovdqu xmm0,xmmword ptr [rsp+178h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 01 00 00}
017fh vmovdqu xmmword ptr [rsp+0f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 00 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+188h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 01 00 00}
0191h vmovdqu xmmword ptr [rsp+108h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 01 00 00}
019ah vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
01a3h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
01ach vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
01b5h vmovdqu xmmword ptr [rsp+0c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 00 00 00}
01beh vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
01c7h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
01d0h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
01d9h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
01e2h vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
01ebh vmovdqu xmmword ptr [rsp+78h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 78}
01f1h vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
01fah vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
0203h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
020ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
020dh mov dword ptr [rsp+74h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 74 40 00 00 00}
0215h movzx edx,byte ptr [rsp+74h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 74}
021ah imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
021dh mov edx,[rsp+0bah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 ba 00 00 00}
0224h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0227h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0229h mov edx,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 78}
022dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0230h mov dword ptr [rsp+70h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 70 40 00 00 00}
0238h movzx r8d,byte ptr [rsp+70h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 70}
023eh imul edx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af d0}
0242h mov r8d,[rsp+7ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 7a}
0247h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
024bh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
024eh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0250h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0252h jge short 025eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 0a}
0254h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0256h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0258h jl near ptr 0368h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 0a 01 00 00}
025eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0260h cmp eax,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 40}
0263h jle short 0274h                         ; JLE rel8 || 7E cb || encoded[2]{7e 0f}
0265h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
026fh jmp near ptr 0360h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ec 00 00 00}
0274h mov edx,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 d8 00 00 00}
027bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
027eh mov r8d,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 f8 00 00 00}
0286h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
028ah cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
028dh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0290h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0293h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0295h jne short 02ach                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
0297h mov r8d,[rsp+0dah]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 da 00 00 00}
029fh movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
02a3h neg r8d                                 ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 d8}
02a6h add r8d,40h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 40}
02aah jmp short 02afh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
02ach mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
02afh mov [rsp+6ch],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 6c}
02b4h movzx r8d,byte ptr [rsp+6ch]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 44 24 6c}
02bah vmovdqu xmm0,xmmword ptr [rsp+0d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 00 00 00}
02c3h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
02c9h vmovdqu xmm0,xmmword ptr [rsp+0e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 00 00 00}
02d2h vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
02d8h mov r9d,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 48}
02ddh movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
02e1h movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
02e4h mov r9,[rcx+r9*8]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 0c c9}
02e8h mov r10d,[rsp+0dah]                     ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 94 24 da 00 00 00}
02f0h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
02f4h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
02f8h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
02fbh shl r11d,8                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 08}
02ffh or r10d,r11d                            ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b d3}
0302h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0306h bextr r9,r9,r10                         ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 42 a8 f7 c9}
030bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
030dh je short 0314h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
030fh mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0312h jmp short 0360h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0314h sub eax,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b c0}
0317h mov [rsp+44h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 44}
031bh movzx eax,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 44}
0320h vmovdqu xmm0,xmmword ptr [rsp+0f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 00 00 00}
0329h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
032fh vmovdqu xmm0,xmmword ptr [rsp+108h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 01 00 00}
0338h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
033eh mov edx,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 20}
0342h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0345h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0348h mov rcx,[rcx+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 0c d1}
034ch shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
034fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0352h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0357h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
035ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
035dh or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
0360h add rsp,1b8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b8 01 00 00}
0367h ret                                     ; RET || C3 || encoded[1]{c3}
0368h call 7ff7c7794428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 6a 11 ff}
036dh int 3                                   ; INT3 || CC || encoded[1]{cc}
