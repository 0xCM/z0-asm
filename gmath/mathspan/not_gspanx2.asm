------------------------------------------------------------------------------------------------------------------------
; Span<byte> not<byte>(ReadOnlySpan<byte> src, Span<byte> dst)
; not_g8u[64] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1e 4d 63 d1 4e 8d 1c 12 46 0f b6 14 10 41 f7 d2 45 0f b6 d2 45 88 13 41 ff c1 45 3b c8 7c e2 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
001eh movzx r10d,byte ptr [rax+r10]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 14 10}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
002ah mov [r11],r10b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 13}
002dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0030h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0033h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0035h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0038h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> not<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst)
; not_g8i[64] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1e 4d 63 d1 4e 8d 1c 12 4e 0f be 14 10 41 f7 d2 4d 0f be d2 45 88 13 41 ff c1 45 3b c8 7c e2 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
001eh movsx r10,byte ptr [rax+r10]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 14 10}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h movsx r10,r10b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d2}
002ah mov [r11],r10b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 13}
002dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0030h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0033h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0035h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0038h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> not<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst)
; not_g16u[65] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1f 4d 63 d1 4e 8d 1c 52 46 0f b7 14 50 41 f7 d2 45 0f b7 d2 66 45 89 13 41 ff c1 45 3b c8 7c e1 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 52}
001eh movzx r10d,word ptr [rax+r10*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 14 50}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
002ah mov [r11],r10w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 13}
002eh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0031h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0034h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0036h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0039h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<Int16> not<Int16>(ReadOnlySpan<Int16> src, Span<Int16> dst)
; not_g16i[65] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1f 4d 63 d1 4e 8d 1c 52 4e 0f bf 14 50 41 f7 d2 4d 0f bf d2 66 45 89 13 41 ff c1 45 3b c8 7c e1 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 52}
001eh movsx r10,word ptr [rax+r10*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 14 50}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h movsx r10,r10w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d2}
002ah mov [r11],r10w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 13}
002eh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0031h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0034h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0036h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0039h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> not<uint>(ReadOnlySpan<uint> src, Span<uint> dst)
; not_g32u[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4e 8d 1c 92 46 8b 14 90 41 f7 d2 45 89 13 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0025h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> not<int>(ReadOnlySpan<int> src, Span<int> dst)
; not_g32i[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4e 8d 1c 92 46 8b 14 90 41 f7 d2 45 89 13 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0025h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> not<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst)
; not_g64u[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 f7 d3 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> not<long>(ReadOnlySpan<long> src, Span<long> dst)
; not_g64i[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 f7 d3 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
