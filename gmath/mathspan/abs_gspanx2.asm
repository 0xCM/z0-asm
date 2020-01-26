------------------------------------------------------------------------------------------------------------------------
; Span<byte> abs<byte>(ReadOnlySpan<byte> src, Span<byte> dst)
; abs_g8u[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4c 03 d2 4d 63 d9 46 0f b6 1c 18 45 88 1a 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movzx r11d,byte ptr [rax+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 18}
0025h mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> abs<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst)
; abs_g8i[74] = {56 0f 1f 40 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 27 4d 63 d1 4e 8d 1c 12 4e 0f be 14 10 41 8b f2 c1 fe 07 44 03 d6 44 33 d6 4d 0f be d2 45 88 13 41 ff c1 45 3b c8 7c d9 48 89 11 44 89 41 08 48 8b c1 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
001eh movsx r10,byte ptr [rax+r10]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 14 10}
0023h mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0026h sar esi,7                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fe 07}
0029h add r10d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 d6}
002ch xor r10d,esi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 d6}
002fh movsx r10,r10b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d2}
0033h mov [r11],r10b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 13}
0036h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0039h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
003ch jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c d9}
003eh mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0041h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0045h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> abs<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst)
; abs_g16u[61] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1b 4d 63 d1 4e 8d 14 52 4d 63 d9 46 0f b7 1c 58 66 45 89 1a 41 ff c1 45 3b c8 7c e5 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movzx r11d,word ptr [rax+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 58}
0026h mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
002ah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002dh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0030h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0032h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0035h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0039h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> abs<short>(ReadOnlySpan<short> src, Span<short> dst)
; abs_g16i[75] = {56 0f 1f 40 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 28 4d 63 d1 4e 8d 1c 52 4e 0f bf 14 50 41 8b f2 c1 fe 0f 44 03 d6 44 33 d6 4d 0f bf d2 66 45 89 13 41 ff c1 45 3b c8 7c d8 48 89 11 44 89 41 08 48 8b c1 5e c3}
; Capture completion code = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 52}
001eh movsx r10,word ptr [rax+r10*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 14 50}
0023h mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0026h sar esi,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fe 0f}
0029h add r10d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 d6}
002ch xor r10d,esi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 d6}
002fh movsx r10,r10w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d2}
0033h mov [r11],r10w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 13}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
003dh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
003fh mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0042h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> abs<uint>(ReadOnlySpan<uint> src, Span<uint> dst)
; abs_g32u[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4e 8d 14 92 4d 63 d9 46 8b 1c 98 45 89 1a 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 92}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11d,[rax+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 98}
0025h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> abs<int>(ReadOnlySpan<int> src, Span<int> dst)
; abs_g32i[69] = {56 0f 1f 40 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 22 4d 63 d1 4e 8d 1c 92 46 8b 14 90 41 8b f2 c1 fe 1f 44 03 d6 44 33 d6 45 89 13 41 ff c1 45 3b c8 7c de 48 89 11 44 89 41 08 48 8b c1 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0025h sar esi,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fe 1f}
0028h add r10d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 d6}
002bh xor r10d,esi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 d6}
002eh mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0031h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0034h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0037h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
0039h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ch mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> abs<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst)
; abs_g64u[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 4d 89 1a 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> abs<long>(ReadOnlySpan<long> src, Span<long> dst)
; abs_g64i[73] = {56 0f 1f 40 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 26 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 8b f3 48 c1 fe 3f 4c 03 de 4c 33 de 4d 89 1a 41 ff c1 45 3b c8 7c da 48 89 11 44 89 41 08 48 8b c1 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h mov rsi,r11                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f3}
0028h sar rsi,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 fe 3f}
002ch add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
002fh xor r11,rsi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4c 33 de}
0032h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
0035h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0038h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
003bh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c da}
003dh mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0040h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
