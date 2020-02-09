------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block64<byte> dst)
; broadcast_g[8u](8u,b64x8u~in)[24] = {48 8b c2 66 90 0f b6 d1 48 8b c8 48 b8 b8 21 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c77721b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 21 77 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block64<sbyte> dst)
; broadcast_g[8i](8i,b64x8i~in)[25] = {48 8b c2 66 90 48 0f be d1 48 8b c8 48 b8 c8 a3 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 a3 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block64<ushort> dst)
; broadcast_g[16u](16u,b64x16u~in)[24] = {48 8b c2 66 90 0f b7 d1 48 8b c8 48 b8 f0 1d cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7cf1df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1d cf c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block64<short> dst)
; broadcast_g[16i](16i,b64x16i~in)[25] = {48 8b c2 66 90 48 0f bf d1 48 8b c8 48 b8 80 a5 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 a5 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<uint>(uint data, in Block64<uint> dst)
; broadcast_g[32u](32u,b64x32u~in)[23] = {8b c1 0f 1f 00 48 8b ca 8b d0 48 b8 28 31 cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7cf3128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 31 cf c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<int>(int data, in Block64<int> dst)
; broadcast_g[32i](32i,b64x32i~in)[23] = {8b c1 0f 1f 00 48 8b ca 8b d0 48 b8 e8 55 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c77755e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 55 77 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ulong>(ulong data, in Block64<ulong> dst)
; broadcast_g[64u](64u,b64x64u~in)[24] = {48 8b c1 66 90 48 8b ca 48 8b d0 48 b8 c8 24 cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7cf24c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 24 cf c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<long>(long data, in Block64<long> dst)
; broadcast_g[64i](64i,b64x64i~in)[24] = {48 8b c1 66 90 48 8b ca 48 8b d0 48 b8 c0 b2 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7d1b2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 b2 d1 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<float>(float data, in Block64<float> dst)
; broadcast_g[32f](32f,b64x32f~in)[25] = {c5 f8 77 66 90 48 8b ca c5 f8 28 c8 48 b8 68 b4 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7d1b468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 b4 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<double>(double data, in Block64<double> dst)
; broadcast_g[64f](64f,b64x64f~in)[25] = {c5 f8 77 66 90 48 8b ca c5 f8 28 c8 48 b8 08 b7 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7d1b708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 b7 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block128<byte> dst)
; broadcast_g[8u](8u,b128x8u~in)[24] = {48 8b c2 66 90 0f b6 d1 48 8b c8 48 b8 b8 21 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c77721b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 21 77 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block128<sbyte> dst)
; broadcast_g[8i](8i,b128x8i~in)[25] = {48 8b c2 66 90 48 0f be d1 48 8b c8 48 b8 c8 a3 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 a3 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block128<ushort> dst)
; broadcast_g[16u](16u,b128x16u~in)[24] = {48 8b c2 66 90 0f b7 d1 48 8b c8 48 b8 f0 1d cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7cf1df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1d cf c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block128<short> dst)
; broadcast_g[16i](16i,b128x16i~in)[25] = {48 8b c2 66 90 48 0f bf d1 48 8b c8 48 b8 80 a5 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 a5 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<uint>(uint data, in Block128<uint> dst)
; broadcast_g[32u](32u,b128x32u~in)[23] = {8b c1 0f 1f 00 48 8b ca 8b d0 48 b8 28 31 cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7cf3128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 31 cf c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<int>(int data, in Block128<int> dst)
; broadcast_g[32i](32i,b128x32i~in)[23] = {8b c1 0f 1f 00 48 8b ca 8b d0 48 b8 e8 55 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c77755e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 55 77 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ulong>(ulong data, in Block128<ulong> dst)
; broadcast_g[64u](64u,b128x64u~in)[24] = {48 8b c1 66 90 48 8b ca 48 8b d0 48 b8 c8 24 cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7cf24c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 24 cf c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<long>(long data, in Block128<long> dst)
; broadcast_g[64i](64i,b128x64i~in)[24] = {48 8b c1 66 90 48 8b ca 48 8b d0 48 b8 c0 b2 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7d1b2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 b2 d1 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<float>(float data, in Block128<float> dst)
; broadcast_g[32f](32f,b128x32f~in)[25] = {c5 f8 77 66 90 48 8b ca c5 f8 28 c8 48 b8 68 b4 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7d1b468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 b4 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<double>(double data, in Block128<double> dst)
; broadcast_g[64f](64f,b128x64f~in)[25] = {c5 f8 77 66 90 48 8b ca c5 f8 28 c8 48 b8 08 b7 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7d1b708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 b7 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block256<byte> dst)
; broadcast_g[8u](8u,b256x8u~in)[24] = {48 8b c2 66 90 0f b6 d1 48 8b c8 48 b8 b8 21 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c77721b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 21 77 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block256<sbyte> dst)
; broadcast_g[8i](8i,b256x8i~in)[25] = {48 8b c2 66 90 48 0f be d1 48 8b c8 48 b8 c8 a3 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 a3 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block256<ushort> dst)
; broadcast_g[16u](16u,b256x16u~in)[24] = {48 8b c2 66 90 0f b7 d1 48 8b c8 48 b8 f0 1d cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7cf1df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1d cf c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block256<short> dst)
; broadcast_g[16i](16i,b256x16i~in)[25] = {48 8b c2 66 90 48 0f bf d1 48 8b c8 48 b8 80 a5 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 a5 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<uint>(uint data, in Block256<uint> dst)
; broadcast_g[32u](32u,b256x32u~in)[23] = {8b c1 0f 1f 00 48 8b ca 8b d0 48 b8 28 31 cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7cf3128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 31 cf c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<int>(int data, in Block256<int> dst)
; broadcast_g[32i](32i,b256x32i~in)[23] = {8b c1 0f 1f 00 48 8b ca 8b d0 48 b8 e8 55 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c77755e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 55 77 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ulong>(ulong data, in Block256<ulong> dst)
; broadcast_g[64u](64u,b256x64u~in)[24] = {48 8b c1 66 90 48 8b ca 48 8b d0 48 b8 c8 24 cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7cf24c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 24 cf c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<long>(long data, in Block256<long> dst)
; broadcast_g[64i](64i,b256x64i~in)[24] = {48 8b c1 66 90 48 8b ca 48 8b d0 48 b8 c0 b2 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7d1b2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 b2 d1 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<float>(float data, in Block256<float> dst)
; broadcast_g[32f](32f,b256x32f~in)[25] = {c5 f8 77 66 90 48 8b ca c5 f8 28 c8 48 b8 68 b4 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7d1b468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 b4 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<double>(double data, in Block256<double> dst)
; broadcast_g[64f](64f,b256x64f~in)[25] = {c5 f8 77 66 90 48 8b ca c5 f8 28 c8 48 b8 08 b7 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7d1b708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 b7 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block512<byte> dst)
; broadcast_g[8u](8u,b512x8u~in)[24] = {48 8b c2 66 90 0f b6 d1 48 8b c8 48 b8 b8 21 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c77721b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 21 77 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block512<sbyte> dst)
; broadcast_g[8i](8i,b512x8i~in)[25] = {48 8b c2 66 90 48 0f be d1 48 8b c8 48 b8 c8 a3 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 a3 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block512<ushort> dst)
; broadcast_g[16u](16u,b512x16u~in)[24] = {48 8b c2 66 90 0f b7 d1 48 8b c8 48 b8 f0 1d cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7cf1df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1d cf c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block512<short> dst)
; broadcast_g[16i](16i,b512x16i~in)[25] = {48 8b c2 66 90 48 0f bf d1 48 8b c8 48 b8 80 a5 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 a5 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<uint>(uint data, in Block512<uint> dst)
; broadcast_g[32u](32u,b512x32u~in)[23] = {8b c1 0f 1f 00 48 8b ca 8b d0 48 b8 28 31 cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7cf3128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 31 cf c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<int>(int data, in Block512<int> dst)
; broadcast_g[32i](32i,b512x32i~in)[23] = {8b c1 0f 1f 00 48 8b ca 8b d0 48 b8 e8 55 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c77755e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 55 77 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ulong>(ulong data, in Block512<ulong> dst)
; broadcast_g[64u](64u,b512x64u~in)[24] = {48 8b c1 66 90 48 8b ca 48 8b d0 48 b8 c8 24 cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7cf24c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 24 cf c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<long>(long data, in Block512<long> dst)
; broadcast_g[64i](64i,b512x64i~in)[24] = {48 8b c1 66 90 48 8b ca 48 8b d0 48 b8 c0 b2 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7d1b2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 b2 d1 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<float>(float data, in Block512<float> dst)
; broadcast_g[32f](32f,b512x32f~in)[25] = {c5 f8 77 66 90 48 8b ca c5 f8 28 c8 48 b8 68 b4 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7d1b468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 b4 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<double>(double data, in Block512<double> dst)
; broadcast_g[64f](64f,b512x64f~in)[25] = {c5 f8 77 66 90 48 8b ca c5 f8 28 c8 48 b8 08 b7 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7d1b708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 b7 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block16<byte> dst)
; broadcast_g[8u](8u,b16x8u~in)[24] = {48 8b c2 66 90 0f b6 d1 48 8b c8 48 b8 b8 21 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c77721b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 21 77 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block16<sbyte> dst)
; broadcast_g[8i](8i,b16x8i~in)[25] = {48 8b c2 66 90 48 0f be d1 48 8b c8 48 b8 c8 a3 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 a3 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block16<ushort> dst)
; broadcast_g[16u](16u,b16x16u~in)[24] = {48 8b c2 66 90 0f b7 d1 48 8b c8 48 b8 f0 1d cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7cf1df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1d cf c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block16<short> dst)
; broadcast_g[16i](16i,b16x16i~in)[25] = {48 8b c2 66 90 48 0f bf d1 48 8b c8 48 b8 80 a5 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 a5 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block32<byte> dst)
; broadcast_g[8u](8u,b32x8u~in)[24] = {48 8b c2 66 90 0f b6 d1 48 8b c8 48 b8 b8 21 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c77721b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 21 77 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block32<sbyte> dst)
; broadcast_g[8i](8i,b32x8i~in)[25] = {48 8b c2 66 90 48 0f be d1 48 8b c8 48 b8 c8 a3 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 a3 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block32<ushort> dst)
; broadcast_g[16u](16u,b32x16u~in)[24] = {48 8b c2 66 90 0f b7 d1 48 8b c8 48 b8 f0 1d cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7cf1df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1d cf c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block32<short> dst)
; broadcast_g[16i](16i,b32x16i~in)[25] = {48 8b c2 66 90 48 0f bf d1 48 8b c8 48 b8 80 a5 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7d1a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 a5 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<uint>(uint data, in Block32<uint> dst)
; broadcast_g[32u](32u,b32x32u~in)[23] = {8b c1 0f 1f 00 48 8b ca 8b d0 48 b8 28 31 cf c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7cf3128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 31 cf c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<int>(int data, in Block32<int> dst)
; broadcast_g[32i](32i,b32x32i~in)[23] = {8b c1 0f 1f 00 48 8b ca 8b d0 48 b8 e8 55 77 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c77755e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 55 77 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<float>(float data, in Block32<float> dst)
; broadcast_g[32f](32f,b32x32f~in)[25] = {c5 f8 77 66 90 48 8b ca c5 f8 28 c8 48 b8 68 b4 d1 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7d1b468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 b4 d1 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
