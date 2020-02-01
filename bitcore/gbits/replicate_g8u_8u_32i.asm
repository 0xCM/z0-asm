------------------------------------------------------------------------------------------------------------------------
; byte replicate<byte>(byte src, byte i0, byte i1, int reps)
; replicate_g8u_8u_8u_32i[85] = {0f 1f 44 00 00 0f b6 c9 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 44 8b c0 41 c1 e0 08 41 0b d0 0f b7 d2 c4 e2 e8 f7 d1 4c 8b c2 41 ba 01 00 00 00 41 83 f9 01 7e 17 41 8b ca 0f af c8 4c 8b da 49 d3 e3 4d 0b c3 41 ff c2 45 3b d1 7c e9 49 8b c0 0f b6 c0 c3}
; TermCode = RET_ZEDx3
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
; replicate_g16u_8u_8u_32i[85] = {0f 1f 44 00 00 0f b7 c9 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 44 8b c0 41 c1 e0 08 41 0b d0 0f b7 d2 c4 e2 e8 f7 d1 4c 8b c2 41 ba 01 00 00 00 41 83 f9 01 7e 17 41 8b ca 0f af c8 4c 8b da 49 d3 e3 4d 0b c3 41 ff c2 45 3b d1 7c e9 49 8b c0 0f b7 c0 c3}
; TermCode = RET_ZEDx3
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
; replicate_g32u_8u_8u_32i[81] = {0f 1f 44 00 00 8b c9 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 44 8b c0 41 c1 e0 08 41 0b d0 0f b7 d2 c4 e2 e8 f7 d1 4c 8b c2 41 ba 01 00 00 00 41 83 f9 01 7e 17 41 8b ca 0f af c8 4c 8b da 49 d3 e3 4d 0b c3 41 ff c2 45 3b d1 7c e9 49 8b c0 c3}
; TermCode = RET_ZEDx3
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
; replicate_g64u_8u_8u_32i[79] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 44 8b c0 41 c1 e0 08 41 0b d0 0f b7 d2 c4 e2 e8 f7 d1 4c 8b c2 41 ba 01 00 00 00 41 83 f9 01 7e 17 41 8b ca 0f af c8 4c 8b da 49 d3 e3 4d 0b c3 41 ff c2 45 3b d1 7c e9 49 8b c0 c3}
; TermCode = RET_ZED_SBB
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
