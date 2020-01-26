------------------------------------------------------------------------------------------------------------------------
; Span<byte> dec<byte>(ReadOnlySpan<byte> src, Span<byte> dst)
; dec_g8u[66] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 20 4d 63 d1 4c 03 d2 4d 63 d9 46 0f b6 1c 18 41 ff cb 45 0f b6 db 45 88 1a 41 ff c1 45 3b c8 7c e0 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movzx r11d,byte ptr [rax+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 18}
0025h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0028h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
002ch mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
002fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0032h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0035h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> dec<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst)
; dec_g8i[66] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 20 4d 63 d1 4c 03 d2 4d 63 d9 4e 0f be 1c 18 41 ff cb 4d 0f be db 45 88 1a 41 ff c1 45 3b c8 7c e0 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movsx r11,byte ptr [rax+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 18}
0025h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0028h movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
002ch mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
002fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0032h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0035h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> dec<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst)
; dec_g16u[68] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 22 4d 63 d1 4e 8d 14 52 4d 63 d9 46 0f b7 1c 58 41 ff cb 45 0f b7 db 66 45 89 1a 41 ff c1 45 3b c8 7c de 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movzx r11d,word ptr [rax+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 58}
0026h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0029h movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
002dh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0031h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0034h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0037h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
0039h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ch mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<Int16> dec<Int16>(ReadOnlySpan<Int16> src, Span<Int16> dst)
; dec_g16i[68] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 22 4d 63 d1 4e 8d 14 52 4d 63 d9 4e 0f bf 1c 58 41 ff cb 4d 0f bf db 66 45 89 1a 41 ff c1 45 3b c8 7c de 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movsx r11,word ptr [rax+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 58}
0026h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0029h movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
002dh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0031h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0034h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0037h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
0039h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ch mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> dec<uint>(ReadOnlySpan<uint> src, Span<uint> dst)
; dec_g32u[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 92 4d 63 d9 46 8b 1c 98 41 ff cb 45 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 92}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11d,[rax+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 98}
0025h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0028h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> dec<int>(ReadOnlySpan<int> src, Span<int> dst)
; dec_g32i[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 92 4d 63 d9 46 8b 1c 98 41 ff cb 45 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 92}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11d,[rax+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 98}
0025h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0028h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> dec<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst)
; dec_g64u[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 ff cb 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
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
0025h dec r11                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{49 ff cb}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> dec<long>(ReadOnlySpan<long> src, Span<long> dst)
; dec_g64i[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 ff cb 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
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
0025h dec r11                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{49 ff cb}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
