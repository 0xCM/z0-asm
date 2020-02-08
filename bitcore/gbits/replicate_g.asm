------------------------------------------------------------------------------------------------------------------------
; byte replicate<byte>(byte src, byte i0, byte i1, int reps)
; replicate_g[8u](8u,8u,8u,32i)[85] = {0f 1f 44 00 00 0f b6 c9 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 44 8b c0 41 c1 e0 08 41 0b d0 0f b7 d2 c4 e2 e8 f7 d1 4c 8b c2 41 ba 01 00 00 00 41 83 f9 01 7e 17 41 8b ca 0f af c8 4c 8b da 49 d3 e3 4d 0b c3 41 ff c2 45 3b d1 7c e9 49 8b c0 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
000ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000fh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0011h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0019h shl r8d,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 08}
001dh or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0020h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0023h bextr rdx,rcx,rdx                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 e8 f7 d1}
0028h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
002bh mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0031h cmp r9d,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 01}
0035h jle short 004eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0037h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003ah imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
003dh mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0040h shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
0043h or r8,r11                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4d 0b c3}
0046h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0049h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004ch jl short 0037h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
004eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0051h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort replicate<ushort>(ushort src, byte i0, byte i1, int reps)
; replicate_g[16u](16u,8u,8u,32i)[85] = {0f 1f 44 00 00 0f b7 c9 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 44 8b c0 41 c1 e0 08 41 0b d0 0f b7 d2 c4 e2 e8 f7 d1 4c 8b c2 41 ba 01 00 00 00 41 83 f9 01 7e 17 41 8b ca 0f af c8 4c 8b da 49 d3 e3 4d 0b c3 41 ff c2 45 3b d1 7c e9 49 8b c0 0f b7 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0008h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
000ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000fh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0011h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0019h shl r8d,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 08}
001dh or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0020h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0023h bextr rdx,rcx,rdx                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 e8 f7 d1}
0028h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
002bh mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0031h cmp r9d,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 01}
0035h jle short 004eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0037h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003ah imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
003dh mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0040h shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
0043h or r8,r11                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4d 0b c3}
0046h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0049h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004ch jl short 0037h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
004eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0051h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint replicate<uint>(uint src, byte i0, byte i1, int reps)
; replicate_g[32u](32u,8u,8u,32i)[81] = {0f 1f 44 00 00 8b c9 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 44 8b c0 41 c1 e0 08 41 0b d0 0f b7 d2 c4 e2 e8 f7 d1 4c 8b c2 41 ba 01 00 00 00 41 83 f9 01 7e 17 41 8b ca 0f af c8 4c 8b da 49 d3 e3 4d 0b c3 41 ff c2 45 3b d1 7c e9 49 8b c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0007h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
000bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000eh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0010h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0018h shl r8d,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 08}
001ch or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
001fh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0022h bextr rdx,rcx,rdx                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 e8 f7 d1}
0027h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
002ah mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0030h cmp r9d,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 01}
0034h jle short 004dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0036h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0039h imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
003ch mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
003fh shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
0042h or r8,r11                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4d 0b c3}
0045h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0048h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004bh jl short 0036h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
004dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong replicate<ulong>(ulong src, byte i0, byte i1, int reps)
; replicate_g[64u](64u,8u,8u,32i)[79] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 44 8b c0 41 c1 e0 08 41 0b d0 0f b7 d2 c4 e2 e8 f7 d1 4c 8b c2 41 ba 01 00 00 00 41 83 f9 01 7e 17 41 8b ca 0f af c8 4c 8b da 49 d3 e3 4d 0b c3 41 ff c2 45 3b d1 7c e9 49 8b c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0016h shl r8d,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 08}
001ah or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
001dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0020h bextr rdx,rcx,rdx                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 e8 f7 d1}
0025h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0028h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
002eh cmp r9d,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 01}
0032h jle short 004bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0034h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0037h imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
003ah mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
003dh shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
0040h or r8,r11                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4d 0b c3}
0043h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0046h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0049h jl short 0034h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
004bh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte replicate<byte>(byte src)
; replicate_g[8u](8u)[106] = {0f 1f 44 00 00 0f b6 c9 8b c1 f3 0f bd c0 83 c0 e8 f7 d8 83 c0 07 44 0f b6 c0 b8 08 00 00 00 41 ff c0 99 41 f7 f8 ff c0 8b c9 41 0f b6 d0 44 8b c2 41 c1 e0 08 45 0f b7 c0 c4 62 b8 f7 c1 4d 8b c8 41 ba 01 00 00 00 83 f8 01 7e 17 41 8b ca 0f af ca 4d 8b d8 49 d3 e3 4d 0b cb 41 ff c2 44 3b d0 7c e9 49 8b c1 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000eh add eax,0ffffffe8h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 e8}
0011h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0013h add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0016h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
001ah mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
001fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0022h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0023h idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
0026h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0028h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
002ah movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
002eh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0031h shl r8d,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 08}
0035h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0039h bextr r8,rcx,r8                         ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 62 b8 f7 c1}
003eh mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
0041h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0047h cmp eax,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 01}
004ah jle short 0063h                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
004ch mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004fh imul ecx,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af ca}
0052h mov r11,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d8}
0055h shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
0058h or r9,r11                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4d 0b cb}
005bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005eh cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0061h jl short 004ch                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
0063h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0066h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort replicate<ushort>(ushort src)
; replicate_g[16u](16u)[106] = {0f 1f 44 00 00 0f b7 c9 8b c1 f3 0f bd c0 83 c0 f0 f7 d8 83 c0 0f 44 0f b6 c0 b8 10 00 00 00 41 ff c0 99 41 f7 f8 ff c0 8b c9 41 0f b6 d0 44 8b c2 41 c1 e0 08 45 0f b7 c0 c4 62 b8 f7 c1 4d 8b c8 41 ba 01 00 00 00 83 f8 01 7e 17 41 8b ca 0f af ca 4d 8b d8 49 d3 e3 4d 0b cb 41 ff c2 44 3b d0 7c e9 49 8b c1 0f b7 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000eh add eax,0fffffff0h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 f0}
0011h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0013h add eax,0fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 0f}
0016h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
001ah mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
001fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0022h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0023h idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
0026h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0028h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
002ah movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
002eh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0031h shl r8d,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 08}
0035h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0039h bextr r8,rcx,r8                         ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 62 b8 f7 c1}
003eh mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
0041h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0047h cmp eax,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 01}
004ah jle short 0063h                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
004ch mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004fh imul ecx,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af ca}
0052h mov r11,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d8}
0055h shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
0058h or r9,r11                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4d 0b cb}
005bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005eh cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0061h jl short 004ch                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
0063h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0066h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint replicate<uint>(uint src)
; replicate_g[32u](32u)[97] = {0f 1f 44 00 00 33 c0 f3 0f bd c1 f7 d8 83 c0 1f 44 0f b6 c0 b8 20 00 00 00 41 ff c0 99 41 f7 f8 ff c0 8b c9 41 0f b6 d0 44 8b c2 41 c1 e0 08 45 0f b7 c0 c4 62 b8 f7 c1 4d 8b c8 41 ba 01 00 00 00 83 f8 01 7e 17 41 8b ca 0f af ca 4d 8b d8 49 d3 e3 4d 0b cb 41 ff c2 44 3b d0 7c e9 49 8b c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt eax,ecx                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c1}
000bh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000dh add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0010h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
0014h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
0019h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
001ch cdq                                     ; CDQ || o32 99 || encoded[1]{99}
001dh idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
0020h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0022h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0024h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0028h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
002bh shl r8d,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 08}
002fh movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0033h bextr r8,rcx,r8                         ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 62 b8 f7 c1}
0038h mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
003bh mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0041h cmp eax,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 01}
0044h jle short 005dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0046h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0049h imul ecx,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af ca}
004ch mov r11,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d8}
004fh shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
0052h or r9,r11                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4d 0b cb}
0055h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0058h cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
005bh jl short 0046h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
005dh mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0060h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong replicate<ulong>(ulong src)
; replicate_g[64u](64u)[96] = {0f 1f 44 00 00 33 c0 f3 48 0f bd c1 f7 d8 83 c0 3f 44 0f b6 c0 b8 40 00 00 00 41 ff c0 99 41 f7 f8 ff c0 41 0f b6 d0 44 8b c2 41 c1 e0 08 45 0f b7 c0 c4 62 b8 f7 c1 4d 8b c8 41 ba 01 00 00 00 83 f8 01 7e 17 41 8b ca 0f af ca 4d 8b d8 49 d3 e3 4d 0b cb 41 ff c2 44 3b d0 7c e9 49 8b c1 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt rax,rcx                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c1}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 3f}
0011h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
0015h mov eax,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 00}
001ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
001dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
001eh idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
0021h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0023h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0027h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
002ah shl r8d,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 08}
002eh movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0032h bextr r8,rcx,r8                         ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 62 b8 f7 c1}
0037h mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
003ah mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0040h cmp eax,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 01}
0043h jle short 005ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0045h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0048h imul ecx,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af ca}
004bh mov r11,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d8}
004eh shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
0051h or r9,r11                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4d 0b cb}
0054h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0057h cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
005ah jl short 0045h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
005ch mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte replicate<byte>(byte src)
; replicate_g[8u](8u)[22] = {0f 1f 44 00 00 0f b6 c1 ba 00 08 00 00 c4 e2 e8 f7 c0 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov edx,800h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 00 08 00 00}
000dh bextr rax,rax,rdx                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 e8 f7 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort replicate<ushort>(byte src)
; replicate_g[16u](8u)[58] = {0f 1f 44 00 00 0f b6 c9 b8 00 08 00 00 c4 e2 f8 f7 c1 48 8b d0 41 b8 01 00 00 00 41 8b c8 c1 e1 03 4c 8b c8 49 d3 e1 49 0b d1 41 ff c0 41 83 f8 02 7c e8 48 8b c2 0f b7 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h mov eax,800h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 08 00 00}
000dh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
001bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
001eh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0021h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0024h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0027h or rdx,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d1}
002ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002dh cmp r8d,2                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 02}
0031h jl short 001bh                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
0033h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0036h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint replicate<uint>(byte src)
; replicate_g[32u](8u)[55] = {0f 1f 44 00 00 0f b6 c9 b8 00 08 00 00 c4 e2 f8 f7 c1 48 8b d0 41 b8 01 00 00 00 41 8b c8 c1 e1 03 4c 8b c8 49 d3 e1 49 0b d1 41 ff c0 41 83 f8 04 7c e8 48 8b c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h mov eax,800h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 08 00 00}
000dh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
001bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
001eh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0021h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0024h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0027h or rdx,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d1}
002ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002dh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0031h jl short 001bh                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
0033h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong replicate<ulong>(byte src)
; replicate_g[64u](8u)[55] = {0f 1f 44 00 00 0f b6 c9 b8 00 08 00 00 c4 e2 f8 f7 c1 48 8b d0 41 b8 01 00 00 00 41 8b c8 c1 e1 03 4c 8b c8 49 d3 e1 49 0b d1 41 ff c0 41 83 f8 08 7c e8 48 8b c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h mov eax,800h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 08 00 00}
000dh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
001bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
001eh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0021h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0024h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0027h or rdx,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d1}
002ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002dh cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
0031h jl short 001bh                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
0033h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
