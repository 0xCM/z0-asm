; void set<double>(in Block256<double> src, int index, bit value)
; set__g_256x64f_0obit~Void[7ff7c6e75bc0h, 7ff7c6e75cd3h][275] = {48 83 ec 68 c5 f8 77 33 c0 48 89 44 24 48 48 89 44 24 50 48 89 44 24 58 48 89 44 24 60 44 8b ca c7 44 24 24 40 00 00 00 44 0f b6 54 24 24 41 8b c1 33 d2 41 f7 f2 89 44 24 20 44 0f b7 54 24 20 c7 44 24 1c 40 00 00 00 44 0f b6 5c 24 1c 41 8b c1 33 d2 41 f7 f3 89 54 24 18 48 8d 44 24 28 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 18 66 44 89 54 24 28 66 89 44 24 2a c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 c5 fa 6f 44 24 38 c5 fa 7f 44 24 58 48 8b 01 8b 54 24 48 0f b7 d2 48 63 d2 48 8d 04 d0 48 8b 09 8b 54 24 48 0f b7 d2 48 63 d2 c5 fb 10 04 d1 8b 4c 24 4a 0f b7 c9 0f b6 c9 45 85 c0 74 24 c5 fb 11 44 24 10 48 8b 54 24 10 41 b8 01 00 00 00 49 d3 e0 49 0b d0 48 89 54 24 08 c5 fb 10 44 24 08 eb 20 c5 fb 11 04 24 48 8d 14 24 41 b8 01 00 00 00 49 d3 e0 49 8b c8 48 f7 d1 48 21 0a c5 fb 10 04 24 c5 fb 11 00 48 83 c4 68 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:33:665
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
000eh mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0013h mov [rsp+58h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 58}
0018h mov [rsp+60h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 60}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+24h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 40 00 00 00}
0028h movzx r10d,byte ptr [rsp+24h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 24}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+20h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 20}
003ah movzx r10d,word ptr [rsp+20h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 20}
0040h mov dword ptr [rsp+1ch],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 1c 40 00 00 00}
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
0094h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0097h mov edx,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 48}
009bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
009eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a1h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
00a5h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
00a8h mov edx,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 48}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h vmovsd xmm0,qword ptr [rcx+rdx*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 d1}
00b7h mov ecx,[rsp+4ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 4a}
00bbh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00beh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00c1h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c4h je short 00eah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
00c6h vmovsd qword ptr [rsp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 10}
00cch mov rdx,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 10}
00d1h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00d7h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
00dah or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
00ddh mov [rsp+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 08}
00e2h vmovsd xmm0,qword ptr [rsp+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 08}
00e8h jmp short 010ah                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
00eah vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
00efh lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00f3h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00f9h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
00fch mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
00ffh not rcx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d1}
0102h and [rdx],rcx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 0a}
0105h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
010ah vmovsd qword ptr [rax],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 00}
010eh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0112h ret                                     ; RET || C3 || encoded[1]{c3}
