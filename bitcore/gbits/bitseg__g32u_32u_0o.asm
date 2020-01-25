; uint bitseg<uint>(Span<uint> src, BitPos<uint> firstpos, BitPos<uint> lastpos)
; bitseg__g32u_32u_0o[7ff7c6e93b50h, 7ff7c6e93d88h][568] = {57 56 48 81 ec 18 01 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 10 00 00 00 33 c0 f3 ab 48 8b ce c4 c1 7a 6f 00 c5 fa 7f 44 24 20 c4 c1 7a 6f 40 10 c5 fa 7f 44 24 30 c5 fa 6f 02 c5 fa 7f 44 24 40 c5 fa 6f 42 10 c5 fa 7f 44 24 50 c5 fa 6f 44 24 20 c5 fa 7f 84 24 f8 00 00 00 c5 fa 6f 44 24 30 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 44 24 40 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 44 24 50 c5 fa 7f 84 24 e8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 c8 00 00 00 8b 84 24 f8 00 00 00 0f b7 d0 c7 84 24 b4 00 00 00 20 00 00 00 44 0f b6 84 24 b4 00 00 00 41 0f af d0 8b 84 24 fa 00 00 00 44 0f b7 c0 41 03 d0 8b 84 24 b8 00 00 00 0f b7 c0 c7 84 24 b0 00 00 00 20 00 00 00 44 0f b6 84 24 b0 00 00 00 41 0f af c0 44 8b 84 24 ba 00 00 00 45 0f b7 c0 41 03 c0 2b d0 85 d2 7d 0a f7 da 85 d2 0f 8c 15 01 00 00 ff c2 83 fa 20 7e 0f b8 ff ff ff ff 48 81 c4 18 01 00 00 5e 5f c3 8b 44 24 40 0f b7 c0 44 8b 44 24 20 45 0f b7 c0 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 12 44 8b 44 24 42 45 0f b7 c0 41 f7 d8 41 83 c0 20 eb 03 44 8b c2 44 89 84 24 ac 00 00 00 44 0f b6 84 24 ac 00 00 00 4c 8b 09 c5 fa 6f 44 24 40 c5 fa 7f 84 24 88 00 00 00 c5 fa 6f 44 24 50 c5 fa 7f 84 24 98 00 00 00 44 8b 94 24 88 00 00 00 45 0f b7 d2 4d 63 d2 47 8b 0c 91 44 8b 54 24 42 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 85 c0 74 0d 41 8b c1 48 81 c4 18 01 00 00 5e 5f c3 41 2b d0 89 94 24 84 00 00 00 0f b6 84 24 84 00 00 00 48 8b 09 c5 fa 6f 44 24 20 c5 fa 7f 44 24 60 c5 fa 6f 44 24 30 c5 fa 7f 44 24 70 8b 54 24 60 0f b7 d2 48 63 d2 8b 0c 91 c1 e0 08 0f b7 c0 c4 e2 78 f7 c1 41 8b c8 d3 e0 41 0b c1 48 81 c4 18 01 00 00 5e 5f c3 e8 a9 3c 52 ff cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:53:564
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
0232h call 7ff7c63b7a30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 3c 52 ff}
0237h int 3                                   ; INT3 || CC || encoded[1]{cc}
