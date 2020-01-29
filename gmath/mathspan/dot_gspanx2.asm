------------------------------------------------------------------------------------------------------------------------
; byte dot<byte>(ReadOnlySpan<byte> lhs, ReadOnlySpan<byte> rhs)
; dot_g8u[72] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 2c 4d 63 d1 46 0f b6 1c 11 46 0f b6 14 12 45 0f b6 db 45 0f b6 db 45 0f b6 d2 45 0f af d3 45 03 c2 45 0f b6 c0 41 ff c1 44 3b c8 7c d4 41 8b c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh movzx r11d,byte ptr [rcx+r10]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 11}
0020h movzx r10d,byte ptr [rdx+r10]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 14 12}
0025h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0029h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
002dh movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
0031h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0035h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
0038h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
003ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003fh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0042h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0044h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte dot<sbyte>(ReadOnlySpan<sbyte> lhs, ReadOnlySpan<sbyte> rhs)
; dot_g8i[72] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 2c 4d 63 d1 4e 0f be 1c 11 4e 0f be 14 12 4d 0f be db 4d 0f be db 4d 0f be d2 45 0f af d3 45 03 c2 4d 0f be c0 41 ff c1 44 3b c8 7c d4 41 8b c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh movsx r11,byte ptr [rcx+r10]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 11}
0020h movsx r10,byte ptr [rdx+r10]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 14 12}
0025h movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
0029h movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
002dh movsx r10,r10b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d2}
0031h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0035h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
0038h movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
003ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003fh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0042h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0044h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort dot<ushort>(ReadOnlySpan<ushort> lhs, ReadOnlySpan<ushort> rhs)
; dot_g16u[72] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 2c 4d 63 d1 46 0f b7 1c 51 46 0f b7 14 52 45 0f b7 db 45 0f b7 db 45 0f b7 d2 45 0f af d3 45 03 c2 45 0f b7 c0 41 ff c1 44 3b c8 7c d4 41 8b c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh movzx r11d,word ptr [rcx+r10*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 51}
0020h movzx r10d,word ptr [rdx+r10*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 14 52}
0025h movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
0029h movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
002dh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0031h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0035h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
0038h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
003ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003fh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0042h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0044h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short dot<short>(ReadOnlySpan<short> lhs, ReadOnlySpan<short> rhs)
; dot_g16i[72] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 2c 4d 63 d1 4e 0f bf 1c 51 4e 0f bf 14 52 4d 0f bf db 4d 0f bf db 4d 0f bf d2 45 0f af d3 45 03 c2 4d 0f bf c0 41 ff c1 44 3b c8 7c d4 41 8b c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh movsx r11,word ptr [rcx+r10*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 51}
0020h movsx r10,word ptr [rdx+r10*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 14 52}
0025h movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
0029h movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
002dh movsx r10,r10w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d2}
0031h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0035h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
0038h movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
003ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003fh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0042h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0044h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dot<uint>(ReadOnlySpan<uint> lhs, ReadOnlySpan<uint> rhs)
; dot_g32u[54] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 1a 4d 63 d1 46 8b 1c 91 46 8b 14 92 45 0f af d3 45 03 c2 41 ff c1 44 3b c8 7c e6 41 8b c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh mov r11d,[rcx+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 91}
001fh mov r10d,[rdx+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 92}
0023h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0027h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
002ah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002dh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0030h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
0032h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int dot<int>(ReadOnlySpan<int> lhs, ReadOnlySpan<int> rhs)
; dot_g32i[54] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 1a 4d 63 d1 46 8b 1c 91 46 8b 14 92 45 0f af d3 45 03 c2 41 ff c1 44 3b c8 7c e6 41 8b c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh mov r11d,[rcx+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 91}
001fh mov r10d,[rdx+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 92}
0023h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0027h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
002ah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002dh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0030h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
0032h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dot<ulong>(ReadOnlySpan<ulong> lhs, ReadOnlySpan<ulong> rhs)
; dot_g64u[57] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 1d 4d 63 d1 4e 8b 14 d1 4d 63 d9 4e 8b 1c da 4d 0f af d3 4d 03 c2 41 ff c1 44 3b c8 7c e3 49 8b c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh mov r10,[rcx+r10*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 14 d1}
001fh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0022h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0026h imul r10,r11                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4d 0f af d3}
002ah add r8,r10                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c2}
002dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0030h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0033h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0035h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long dot<long>(ReadOnlySpan<long> lhs, ReadOnlySpan<long> rhs)
; dot_g64i[57] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 1d 4d 63 d1 4e 8b 14 d1 4d 63 d9 4e 8b 1c da 4d 0f af d3 4d 03 c2 41 ff c1 44 3b c8 7c e3 49 8b c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh mov r10,[rcx+r10*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 14 d1}
001fh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0022h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0026h imul r10,r11                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4d 0f af d3}
002ah add r8,r10                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c2}
002dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0030h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0033h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0035h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float dot<float>(ReadOnlySpan<float> lhs, ReadOnlySpan<float> rhs)
; dot_g32f[77] = {50 c5 f8 77 90 8b 41 08 48 8b 09 48 8b 12 45 33 c0 44 89 44 24 04 85 c0 7e 28 4d 63 c8 c4 a1 7a 10 04 89 c4 a1 7a 10 0c 8a c5 fa 10 54 24 04 c4 e2 71 a9 c2 c5 fa 11 44 24 04 41 ff c0 44 3b c0 7c d8 c5 fa 10 44 24 04 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h mov [rsp+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 04}
0016h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
001dh vmovss xmm0,dword ptr [rcx+r9*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 a1 7a 10 04 89}
0023h vmovss xmm1,dword ptr [rdx+r9*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 a1 7a 10 0c 8a}
0029h vmovss xmm2,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 04}
002fh vfmadd213ss xmm0,xmm1,xmm2              ; VFMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 A9 /r || encoded[5]{c4 e2 71 a9 c2}
0034h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
003ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
003dh cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
0048h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double dot<double>(ReadOnlySpan<double> lhs, ReadOnlySpan<double> rhs)
; dot_g64f[73] = {50 c5 f8 77 90 8b 41 08 48 8b 09 48 8b 12 45 33 c0 4c 89 04 24 85 c0 7e 26 4d 63 c8 c4 a1 7b 10 04 c9 c4 a1 7b 10 0c ca c5 fb 10 14 24 c4 e2 f1 a9 c2 c5 fb 11 04 24 41 ff c0 44 3b c0 7c da c5 fb 10 04 24 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h mov [rsp],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 04 24}
0015h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0017h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0019h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
001ch vmovsd xmm0,qword ptr [rcx+r9*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 04 c9}
0022h vmovsd xmm1,qword ptr [rdx+r9*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 0c ca}
0028h vmovsd xmm2,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 14 24}
002dh vfmadd213sd xmm0,xmm1,xmm2              ; VFMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 A9 /r || encoded[5]{c4 e2 f1 a9 c2}
0032h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
0037h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
003ah cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
003dh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c da}
003fh vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0044h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
