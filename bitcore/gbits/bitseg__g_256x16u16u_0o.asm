; ushort bitseg<ushort>(in Block256<ushort> src, BitPos<ushort> firstpos, BitPos<ushort> lastpos)
; bitseg__g_256x16u16u_0o[7ff7c6e943a0h, 7ff7c6e945c3h][547] = {48 81 ec 18 01 00 00 c5 f8 77 48 8b 09 c5 fa 6f 02 c5 fa 7f 84 24 d8 00 00 00 c5 fa 6f 42 10 c5 fa 7f 84 24 e8 00 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 f8 00 00 00 c4 c1 7a 6f 40 10 c5 fa 7f 84 24 08 01 00 00 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 84 24 b8 00 00 00 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 84 24 c8 00 00 00 c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 84 24 98 00 00 00 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 84 24 a8 00 00 00 c5 fa 6f 84 24 98 00 00 00 c5 fa 7f 44 24 78 c5 fa 6f 84 24 a8 00 00 00 c5 fa 7f 84 24 88 00 00 00 8b 84 24 b8 00 00 00 0f b7 c0 c7 44 24 74 10 00 00 00 0f b6 54 24 74 0f af c2 8b 94 24 ba 00 00 00 0f b7 d2 03 c2 8b 54 24 78 0f b7 d2 c7 44 24 70 10 00 00 00 44 0f b6 44 24 70 41 0f af d0 44 8b 44 24 7a 45 0f b7 c0 41 03 d0 2b c2 85 c0 7d 0a f7 d8 85 c0 0f 8c 14 01 00 00 ff c0 83 f8 10 7e 0a b8 ff ff 00 00 e9 fb 00 00 00 8b 94 24 d8 00 00 00 0f b7 d2 44 8b 84 24 f8 00 00 00 45 0f b7 c0 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 15 44 8b 84 24 da 00 00 00 45 0f b7 c0 41 f7 d8 41 83 c0 10 eb 03 44 8b c0 44 89 44 24 6c 44 0f b6 44 24 6c c5 fa 6f 84 24 d8 00 00 00 c5 fa 7f 44 24 48 c5 fa 6f 84 24 e8 00 00 00 c5 fa 7f 44 24 58 44 8b 4c 24 48 45 0f b7 c9 4d 63 c9 46 0f b7 0c 49 44 8b 94 24 da 00 00 00 45 0f b7 d2 45 0f b6 d2 45 8b d8 41 c1 e3 08 45 0b d3 45 0f b7 d2 c4 42 28 f7 c9 45 0f b7 c9 85 d2 74 05 41 8b c1 eb 56 41 2b c0 89 44 24 44 0f b6 44 24 44 c5 fa 6f 84 24 f8 00 00 00 c5 fa 7f 44 24 20 c5 fa 6f 84 24 08 01 00 00 c5 fa 7f 44 24 30 8b 54 24 20 0f b7 d2 48 63 d2 0f b7 0c 51 c1 e0 08 0f b7 c0 c4 e2 78 f7 c9 0f b7 c1 41 8b c8 d3 e0 0f b7 c0 41 8b d1 0b c2 0f b7 c0 48 81 c4 18 01 00 00 c3 e8 6e 34 52 ff cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:53:670
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
021dh call 7ff7c63b7a30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 34 52 ff}
0222h int 3                                   ; INT3 || CC || encoded[1]{cc}
