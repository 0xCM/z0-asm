; bit test<byte>(in Block256<byte> src, int index)
; test__g_256x8u_0obit[7ff7c6e8bed0h, 7ff7c6e8bf86h][182] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b c2 c7 44 24 14 08 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 08 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 8b 44 24 38 0f b7 c0 48 63 c0 0f b6 04 01 8b 4c 24 3a 0f b7 c9 d3 e8 83 e0 01 48 83 c4 58 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:53:259
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
