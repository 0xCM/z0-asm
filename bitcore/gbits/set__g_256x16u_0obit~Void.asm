; void set<ushort>(in Block256<ushort> src, int index, bit value)
; set__g_256x16u_0obit~Void[7ff7c6e74cf0h, 7ff7c6e74deeh][254] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b ca c7 44 24 14 10 00 00 00 44 0f b6 54 24 14 41 8b c1 33 d2 41 f7 f2 89 44 24 10 44 0f b7 54 24 10 c7 44 24 0c 10 00 00 00 44 0f b6 5c 24 0c 41 8b c1 33 d2 41 f7 f3 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 54 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 48 8b c1 8b 54 24 38 0f b7 d2 48 63 d2 48 8d 04 50 8b 54 24 38 0f b7 d2 48 63 d2 0f b7 14 51 8b 4c 24 3a 0f b7 c9 0f b6 c9 45 85 c0 74 18 41 b8 01 00 00 00 41 d3 e0 41 0f b7 c8 0b ca 0f b7 c9 44 0f b7 c1 eb 18 41 b8 01 00 00 00 41 d3 e0 41 0f b7 c8 f7 d1 0f b7 c9 23 ca 44 0f b7 c1 66 44 89 00 48 83 c4 58 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:33:628
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+14h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 10 00 00 00}
0028h movzx r10d,byte ptr [rsp+14h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 14}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r10d,word ptr [rsp+10h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 10}
0040h mov dword ptr [rsp+0ch],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 10 00 00 00}
0048h movzx r11d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 0c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
00a8h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h movzx edx,word ptr [rcx+rdx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 14 51}
00b6h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00bah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00bdh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00c0h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c3h je short 00ddh                          ; JE rel8 || 74 cb || encoded[2]{74 18}
00c5h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00cbh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00ceh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
00d2h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00d4h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00d7h movzx r8d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c1}
00dbh jmp short 00f5h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
00ddh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00e3h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00e6h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
00eah not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00ech movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00efh and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
00f1h movzx r8d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c1}
00f5h mov [rax],r8w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 44 89 00}
00f9h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00fdh ret                                     ; RET || C3 || encoded[1]{c3}
