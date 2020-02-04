------------------------------------------------------------------------------------------------------------------------
; Span<byte> square<byte>(ReadOnlySpan<byte> src, Span<byte> dst)
; square_gimspan8u_span8u[67] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 21 4d 63 d1 4c 03 d2 4d 63 d9 46 0f b6 1c 18 45 0f af db 45 0f b6 db 45 88 1a 41 ff c1 45 3b c8 7c df 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movzx r11d,byte ptr [rax+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 18}
0025h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
0029h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
002dh mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0030h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0033h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0036h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> square<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst)
; square_gimspan8i_span8i[67] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 21 4d 63 d1 4c 03 d2 4d 63 d9 4e 0f be 1c 18 45 0f af db 4d 0f be db 45 88 1a 41 ff c1 45 3b c8 7c df 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movsx r11,byte ptr [rax+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 18}
0025h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
0029h movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
002dh mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0030h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0033h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0036h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> square<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst)
; square_gimspan16u_span16u[69] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 23 4d 63 d1 4e 8d 14 52 4d 63 d9 46 0f b7 1c 58 45 0f af db 45 0f b7 db 66 45 89 1a 41 ff c1 45 3b c8 7c dd 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movzx r11d,word ptr [rax+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 58}
0026h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
002ah movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
002eh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0032h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0035h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0038h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003ah mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003dh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> square<short>(ReadOnlySpan<short> src, Span<short> dst)
; square_gimspan16i_span16i[69] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 23 4d 63 d1 4e 8d 14 52 4d 63 d9 4e 0f bf 1c 58 45 0f af db 4d 0f bf db 66 45 89 1a 41 ff c1 45 3b c8 7c dd 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movsx r11,word ptr [rax+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 58}
0026h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
002ah movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
002eh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0032h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0035h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0038h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003ah mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003dh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> square<uint>(ReadOnlySpan<uint> src, Span<uint> dst)
; square_gimspan32u_span32u[60] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1a 4d 63 d1 4e 8d 1c 92 46 8b 14 90 45 0f af d2 45 89 13 41 ff c1 45 3b c8 7c e6 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0031h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h imul r10d,r10d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d2}
0026h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0029h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002ch cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002fh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
0031h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0034h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0038h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> square<int>(ReadOnlySpan<int> src, Span<int> dst)
; square_gimspan32i_span32i[60] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1a 4d 63 d1 4e 8d 1c 92 46 8b 14 90 45 0f af d2 45 89 13 41 ff c1 45 3b c8 7c e6 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0031h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h imul r10d,r10d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d2}
0026h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0029h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002ch cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002fh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
0031h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0034h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0038h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> square<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst)
; square_gimspan64u_span64u[63] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1d 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 4d 0f af db 4d 89 1a 41 ff c1 45 3b c8 7c e3 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0034h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h imul r11,r11                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4d 0f af db}
0029h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002fh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0032h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> square<long>(ReadOnlySpan<long> src, Span<long> dst)
; square_gimspan64i_span64i[63] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1d 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 4d 0f af db 4d 89 1a 41 ff c1 45 3b c8 7c e3 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0034h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h imul r11,r11                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4d 0f af db}
0029h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002fh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0032h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
