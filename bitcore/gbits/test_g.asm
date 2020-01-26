------------------------------------------------------------------------------------------------------------------------
; bit test<byte>(in Block256<byte> src, int index)
; test_g256x8u_0o[182] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 08 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 08 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 8b 44 24 38 0f b7 c0 48 63 c0 0f b6 04 01 8b 4c 24 3a 0f b7 c9 d3 e8 83 e0 01 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0020h mov dword ptr [rsp+14h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 08 00 00 00}
0028h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
002eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
0040h mov dword ptr [rsp+0ch],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 08 00 00 00}
0048h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
004eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
009bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
009eh movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
00a1h movzx eax,byte ptr [rcx+rax]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 04 01}
00a5h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00a9h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00ach shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
00aeh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
00b1h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit test<sbyte>(in Block256<sbyte> src, int index)
; test_g256x8i_0o[187] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 08 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 08 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 01 8b 54 24 38 0f b7 d2 48 63 d2 48 0f be 04 10 8b 54 24 3a 0f b7 d2 0f a3 d0 0f 92 c0 0f b6 c0 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0020h mov dword ptr [rsp+14h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 08 00 00 00}
0028h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
002eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
0040h mov dword ptr [rsp+0ch],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 08 00 00 00}
0048h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
004eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0097h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
009eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a1h movsx rax,byte ptr [rax+rdx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 04 10}
00a6h mov edx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 3a}
00aah movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00adh bt eax,edx                              ; BT r/m32, r32 || o32 0F A3 /r || encoded[3]{0f a3 d0}
00b0h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
00b3h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b6h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit test<ushort>(in Block256<ushort> src, int index)
; test_g256x16u_0o[182] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 10 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 10 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 8b 44 24 38 0f b7 c0 48 63 c0 0f b7 04 41 8b 4c 24 3a 0f b7 c9 d3 e8 83 e0 01 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0020h mov dword ptr [rsp+14h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 10 00 00 00}
0028h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
002eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
0040h mov dword ptr [rsp+0ch],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 10 00 00 00}
0048h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
004eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
009bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
009eh movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
00a1h movzx eax,word ptr [rcx+rax*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 04 41}
00a5h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00a9h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00ach shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
00aeh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
00b1h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit test<Int16>(in Block256<Int16> src, int index)
; test_g256x16i_0o[187] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 10 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 10 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 01 8b 54 24 38 0f b7 d2 48 63 d2 48 0f bf 04 50 8b 54 24 3a 0f b7 d2 0f a3 d0 0f 92 c0 0f b6 c0 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0020h mov dword ptr [rsp+14h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 10 00 00 00}
0028h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
002eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
0040h mov dword ptr [rsp+0ch],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 10 00 00 00}
0048h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
004eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0097h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
009eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a1h movsx rax,word ptr [rax+rdx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 04 50}
00a6h mov edx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 3a}
00aah movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00adh bt eax,edx                              ; BT r/m32, r32 || o32 0F A3 /r || encoded[3]{0f a3 d0}
00b0h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
00b3h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b6h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit test<uint>(in Block256<uint> src, int index)
; test_g256x32u_0o[181] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 20 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 20 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 8b 44 24 38 0f b7 c0 48 63 c0 8b 04 81 8b 4c 24 3a 0f b7 c9 d3 e8 83 e0 01 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0020h mov dword ptr [rsp+14h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 20 00 00 00}
0028h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
002eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
0040h mov dword ptr [rsp+0ch],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 20 00 00 00}
0048h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
004eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
009bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
009eh movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
00a1h mov eax,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 81}
00a4h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00a8h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00abh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
00adh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
00b0h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00b4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit test<int>(in Block256<int> src, int index)
; test_g256x32i_0o[185] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 20 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 20 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 01 8b 54 24 38 0f b7 d2 48 63 d2 8b 04 90 8b 54 24 3a 0f b7 d2 0f a3 d0 0f 92 c0 0f b6 c0 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0020h mov dword ptr [rsp+14h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 20 00 00 00}
0028h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
002eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
0040h mov dword ptr [rsp+0ch],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 20 00 00 00}
0048h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
004eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0097h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
009eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a1h mov eax,[rax+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 90}
00a4h mov edx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 3a}
00a8h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00abh bt eax,edx                              ; BT r/m32, r32 || o32 0F A3 /r || encoded[3]{0f a3 d0}
00aeh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
00b1h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b4h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00b8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit test<ulong>(in Block256<ulong> src, int index)
; test_g256x64u_0o[183] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 40 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 40 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 8b 44 24 38 0f b7 c0 48 63 c0 48 8b 04 c1 8b 4c 24 3a 0f b7 c9 48 d3 e8 83 e0 01 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0020h mov dword ptr [rsp+14h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 40 00 00 00}
0028h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
002eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
0040h mov dword ptr [rsp+0ch],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 40 00 00 00}
0048h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
004eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
009bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
009eh movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
00a1h mov rax,[rcx+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 c1}
00a5h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00a9h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00ach shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
00afh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
00b2h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00b6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit test<long>(in Block256<long> src, int index)
; test_g256x64i_0o[187] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 40 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 40 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 01 8b 54 24 38 0f b7 d2 48 63 d2 48 8b 04 d0 8b 54 24 3a 0f b7 d2 48 0f a3 d0 0f 92 c0 0f b6 c0 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0020h mov dword ptr [rsp+14h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 40 00 00 00}
0028h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
002eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
0040h mov dword ptr [rsp+0ch],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 40 00 00 00}
0048h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
004eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0097h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
009eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a1h mov rax,[rax+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 d0}
00a5h mov edx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 3a}
00a9h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00ach bt rax,rdx                              ; BT r/m64, r64 || REX.W 0F A3 /r || encoded[4]{48 0f a3 d0}
00b0h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
00b3h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b6h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit test<float>(in Block256<float> src, int index)
; test_g256x32f_0o[197] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 20 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 20 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 01 8b 54 24 38 0f b7 d2 48 63 d2 c5 fa 10 04 90 c5 fa 11 44 24 04 8b 44 24 04 8b 54 24 3a 0f b7 d2 0f a3 d0 0f 92 c0 0f b6 c0 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0020h mov dword ptr [rsp+14h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 20 00 00 00}
0028h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
002eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
0040h mov dword ptr [rsp+0ch],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 20 00 00 00}
0048h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
004eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0097h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
009eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a1h vmovss xmm0,dword ptr [rax+rdx*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 90}
00a6h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
00ach mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
00b0h mov edx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 3a}
00b4h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00b7h bt eax,edx                              ; BT r/m32, r32 || o32 0F A3 /r || encoded[3]{0f a3 d0}
00bah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
00bdh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c0h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00c4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit test<double>(in Block256<double> src, int index)
; test_g256x64f_0o[197] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 40 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 40 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 01 8b 54 24 38 0f b7 d2 48 63 d2 c5 fb 10 04 d0 c5 fb 11 04 24 48 8b 04 24 8b 54 24 3a 0f b7 d2 48 0f a3 d0 0f 92 c0 0f b6 c0 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0020h mov dword ptr [rsp+14h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 40 00 00 00}
0028h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
002eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
0040h mov dword ptr [rsp+0ch],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 40 00 00 00}
0048h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
004eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0097h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
009eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a1h vmovsd xmm0,qword ptr [rax+rdx*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 d0}
00a6h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
00abh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
00afh mov edx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 3a}
00b3h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00b6h bt rax,rdx                              ; BT r/m64, r64 || REX.W 0F A3 /r || encoded[4]{48 0f a3 d0}
00bah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
00bdh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c0h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00c4h ret                                     ; RET || C3 || encoded[1]{c3}
