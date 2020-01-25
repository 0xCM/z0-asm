; void set<float>(in Block256<float> src, int index, bit value)
; set__g_256x32f_0obit~Void[7ff7c6e75a80h, 7ff7c6e75b92h][274] = {48 83 ec 68 c5 f8 77 33 c0 48 89 44 24 48 48 89 44 24 50 48 89 44 24 58 48 89 44 24 60 44 8b ca c7 44 24 24 20 00 00 00 44 0f b6 54 24 24 41 8b c1 33 d2 41 f7 f2 89 44 24 20 44 0f b7 54 24 20 c7 44 24 1c 20 00 00 00 44 0f b6 5c 24 1c 41 8b c1 33 d2 41 f7 f3 89 54 24 18 48 8d 44 24 28 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 18 66 44 89 54 24 28 66 89 44 24 2a c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 c5 fa 6f 44 24 38 c5 fa 7f 44 24 58 48 8b 09 48 8b c1 8b 54 24 48 0f b7 d2 48 63 d2 48 8d 04 90 8b 54 24 48 0f b7 d2 48 63 d2 c5 fa 10 04 91 8b 4c 24 4a 0f b7 c9 0f b6 c9 45 85 c0 74 22 c5 fa 11 44 24 14 8b 54 24 14 41 b8 01 00 00 00 41 d3 e0 41 0b d0 89 54 24 10 c5 fa 10 44 24 10 eb 21 c5 fa 11 44 24 0c 48 8d 54 24 0c 41 b8 01 00 00 00 41 d3 e0 41 8b c8 f7 d1 21 0a c5 fa 10 44 24 0c c5 fa 11 00 48 83 c4 68 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:33:662
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
000eh mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0013h mov [rsp+58h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 58}
0018h mov [rsp+60h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 60}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+24h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 20 00 00 00}
0028h movzx r10d,byte ptr [rsp+24h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 24}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+20h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 20}
003ah movzx r10d,word ptr [rsp+20h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 20}
0040h mov dword ptr [rsp+1ch],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 1c 20 00 00 00}
0048h movzx r11d,byte ptr [rsp+1ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 1c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+18h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 18}
005ah lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+18h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 18}
0071h mov [rsp+28h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 28}
0077h mov [rsp+2ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 2a}
007ch vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0082h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0088h vmovdqu xmm0,xmmword ptr [rsp+38h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 38}
008eh vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 48}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
00a8h mov edx,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 48}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h vmovss xmm0,dword ptr [rcx+rdx*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 91}
00b7h mov ecx,[rsp+4ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 4a}
00bbh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00beh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00c1h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c4h je short 00e8h                          ; JE rel8 || 74 cb || encoded[2]{74 22}
00c6h vmovss dword ptr [rsp+14h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 14}
00cch mov edx,[rsp+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 14}
00d0h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00d6h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00d9h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
00dch mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
00e0h vmovss xmm0,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 10}
00e6h jmp short 0109h                         ; JMP rel8 || EB cb || encoded[2]{eb 21}
00e8h vmovss dword ptr [rsp+0ch],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 0c}
00eeh lea rdx,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 0c}
00f3h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00f9h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00fch mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
00ffh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0101h and [rdx],ecx                           ; AND r/m32, r32 || o32 21 /r || encoded[2]{21 0a}
0103h vmovss xmm0,dword ptr [rsp+0ch]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 0c}
0109h vmovss dword ptr [rax],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 00}
010dh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0111h ret                                     ; RET || C3 || encoded[1]{c3}
