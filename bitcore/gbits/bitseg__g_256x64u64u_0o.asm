; ulong bitseg<ulong>(in Block256<ulong> src, BitPos<ulong> firstpos, BitPos<ulong> lastpos)
; bitseg__g_256x64u64u_0o[7ff7c6e94840h, 7ff7c6e94a59h][537] = {48 81 ec 18 01 00 00 c5 f8 77 48 8b 09 c5 fa 6f 02 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 42 10 c5 fa 7f 84 24 e8 00 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 f8 00 00 00 c4 c1 7a 6f 40 10 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 40 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 40 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 0a 01 00 00 ff c0 83 f8 40 7e 0f 48 b8 ff ff ff ff ff ff ff ff e9 ec 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 40 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 4e 8b 0c c9 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 a8 f7 c9 85 d2 74 05 49 8b c1 eb 4c 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 48 8b 0c d1 c1 e0 08 0f b7 c0 c4 e2 f8 f7 c1 41 8b c8 48 d3 e0 49 0b c1 48 81 c4 18 01 00 00 c3 e8 d8 2f 52 ff cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:53:686
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
0213h call 7ff7c63b7a30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 2f 52 ff}
0218h int 3                                   ; INT3 || CC || encoded[1]{cc}
