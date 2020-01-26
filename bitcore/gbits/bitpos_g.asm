------------------------------------------------------------------------------------------------------------------------
; BitPos<byte> bitpos<byte>(int index)
; bitpos_g32i[131] = {48 83 ec 38 c5 f8 77 44 8b c2 c7 44 24 14 08 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 08 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 01 c5 fa 6f 44 24 28 c5 fa 7f 41 10 48 8b c1 48 83 c4 38 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
000ah mov dword ptr [rsp+14h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 08 00 00 00}
0012h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
0018h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
001bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
001dh div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0020h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
0024h movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
002ah mov dword ptr [rsp+0ch],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 08 00 00 00}
0032h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
0038h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
003bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
003dh div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0040h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
0044h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0049h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004dh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0051h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0056h movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
005bh mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0061h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
0066h vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
006ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0070h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0076h vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
007bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
007eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitPos<ushort> bitpos<ushort>(int index)
; bitpos_g32i[131] = {48 83 ec 38 c5 f8 77 44 8b c2 c7 44 24 14 10 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 10 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 01 c5 fa 6f 44 24 28 c5 fa 7f 41 10 48 8b c1 48 83 c4 38 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
000ah mov dword ptr [rsp+14h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 10 00 00 00}
0012h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
0018h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
001bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
001dh div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0020h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
0024h movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
002ah mov dword ptr [rsp+0ch],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 10 00 00 00}
0032h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
0038h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
003bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
003dh div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0040h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
0044h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0049h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004dh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0051h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0056h movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
005bh mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0061h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
0066h vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
006ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0070h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0076h vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
007bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
007eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitPos<uint> bitpos<uint>(int index)
; bitpos_g32i[131] = {48 83 ec 38 c5 f8 77 44 8b c2 c7 44 24 14 20 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 20 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 01 c5 fa 6f 44 24 28 c5 fa 7f 41 10 48 8b c1 48 83 c4 38 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
000ah mov dword ptr [rsp+14h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 20 00 00 00}
0012h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
0018h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
001bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
001dh div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0020h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
0024h movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
002ah mov dword ptr [rsp+0ch],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 20 00 00 00}
0032h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
0038h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
003bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
003dh div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0040h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
0044h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0049h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004dh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0051h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0056h movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
005bh mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0061h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
0066h vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
006ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0070h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0076h vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
007bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
007eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitPos<ulong> bitpos<ulong>(int index)
; bitpos_g32i[131] = {48 83 ec 38 c5 f8 77 44 8b c2 c7 44 24 14 40 00 00 00 44 0f b6 4c 24 14 41 8b c0 33 d2 41 f7 f1 89 44 24 10 44 0f b7 4c 24 10 c7 44 24 0c 40 00 00 00 44 0f b6 54 24 0c 41 8b c0 33 d2 41 f7 f2 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 4c 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 01 c5 fa 6f 44 24 28 c5 fa 7f 41 10 48 8b c1 48 83 c4 38 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
000ah mov dword ptr [rsp+14h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 40 00 00 00}
0012h movzx r9d,byte ptr [rsp+14h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 4c 24 14}
0018h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
001bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
001dh div r9d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f1}
0020h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
0024h movzx r9d,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 4c 24 10}
002ah mov dword ptr [rsp+0ch],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 40 00 00 00}
0032h movzx r10d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 0c}
0038h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
003bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
003dh div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0040h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
0044h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0049h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004dh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0051h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0056h movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
005bh mov [rsp+18h],r9w                       ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 4c 24 18}
0061h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
0066h vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
006ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0070h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0076h vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
007bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
007eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
