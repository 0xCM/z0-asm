------------------------------------------------------------------------------------------------------------------------
; void increments<byte>(int count, ref byte dst)
; increments_g32i[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4c 03 c2 44 0f b6 c8 45 88 08 ff c0 3b c1 7c ed c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
0011h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
0015h mov [r8],r9b                            ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<sbyte>(int count, ref sbyte dst)
; increments_g32i[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4c 03 c2 4c 0f be c8 45 88 08 ff c0 3b c1 7c ed c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
0011h movsx r9,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c8}
0015h mov [r8],r9b                            ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<ushort>(int count, ref ushort dst)
; increments_g32i[33] = {0f 1f 44 00 00 33 c0 85 c9 7e 15 4c 63 c0 4e 8d 04 42 44 0f b7 c8 66 45 89 08 ff c0 3b c1 7c eb c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 0020h                         ; JLE rel8 || 7E cb || encoded[2]{7e 15}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r8,[rdx+r8*2]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 04 42}
0012h movzx r9d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c8}
0016h mov [r8],r9w                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 08}
001ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ch cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001eh jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c eb}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<short>(int count, ref short dst)
; increments_g32i[33] = {0f 1f 44 00 00 33 c0 85 c9 7e 15 4c 63 c0 4e 8d 04 42 4c 0f bf c8 66 45 89 08 ff c0 3b c1 7c eb c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 0020h                         ; JLE rel8 || 7E cb || encoded[2]{7e 15}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r8,[rdx+r8*2]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 04 42}
0012h movsx r9,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c8}
0016h mov [r8],r9w                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 08}
001ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ch cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001eh jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c eb}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<uint>(int count, ref uint dst)
; increments_g32i[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4e 8d 04 82 44 8b c8 45 89 08 ff c0 3b c1 7c ed c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r8,[rdx+r8*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 04 82}
0012h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0015h mov [r8],r9d                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<int>(int count, ref int dst)
; increments_g32i[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4e 8d 04 82 44 8b c8 45 89 08 ff c0 3b c1 7c ed c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r8,[rdx+r8*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 04 82}
0012h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0015h mov [r8],r9d                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<ulong>(int count, ref ulong dst)
; increments_g32i[28] = {0f 1f 44 00 00 33 c0 85 c9 7e 10 4c 63 c0 4e 8d 0c c2 4d 89 01 ff c0 3b c1 7c f0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 10}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r9,[rdx+r8*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c2}
0012h mov [r9],r8                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 01}
0015h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0017h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0019h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c f0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<long>(int count, ref long dst)
; increments_g32i[28] = {0f 1f 44 00 00 33 c0 85 c9 7e 10 4c 63 c0 4e 8d 0c c2 4d 89 01 ff c0 3b c1 7c f0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 10}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r9,[rdx+r8*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c2}
0012h mov [r9],r8                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 01}
0015h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0017h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0019h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c f0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
