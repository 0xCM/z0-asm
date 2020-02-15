------------------------------------------------------------------------------------------------------------------------
; Span<byte> add<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; add_g[8u](uspan8u,uspan8u,span8u)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 03 f7 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> add<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; add_g[8i](uspan8i,uspan8i,span8i)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 03 f7 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0036h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> add<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; add_g[16u](uspan16u,uspan16u,span16u)[80] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 29 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 03 f7 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d7 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0034h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0037h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> add<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; add_g[16i](uspan16i,uspan16i,span16i)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 03 f7 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0037h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003bh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> add<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; add_g[32u](uspan32u,uspan32u,span32u)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 03 df 44 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h add r11d,edi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 df}
002ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> add<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; add_g[32i](uspan32i,uspan32i,span32i)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 03 df 44 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h add r11d,edi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 df}
002ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> add<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; add_g[64u](uspan64u,uspan64u,span64u)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 03 df 4c 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h add r11,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 df}
002ch mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> add<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; add_g[64i](uspan64i,uspan64i,span64i)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 03 df 4c 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h add r11,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 df}
002ch mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> sub<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; sub_g[8u](uspan8u,uspan8u,span8u)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 2b f7 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h sub esi,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f7}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> sub<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; sub_g[8i](uspan8i,uspan8i,span8i)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 2b f7 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h sub esi,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f7}
0036h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> sub<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; sub_g[16u](uspan16u,uspan16u,span16u)[80] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 29 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 2b f7 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d7 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h sub esi,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f7}
0034h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0037h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> sub<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; sub_g[16i](uspan16i,uspan16i,span16i)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 2b f7 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h sub esi,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f7}
0037h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003bh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> sub<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; sub_g[32u](uspan32u,uspan32u,span32u)[67] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1c 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 2b fb 89 3e 41 ff c2 45 3b d1 7c e4 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h sub edi,r11d                            ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b fb}
002ch mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
002eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0031h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0034h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0036h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0039h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> sub<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; sub_g[32i](uspan32i,uspan32i,span32i)[67] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1c 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 2b fb 89 3e 41 ff c2 45 3b d1 7c e4 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h sub edi,r11d                            ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b fb}
002ch mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
002eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0031h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0034h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0036h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0039h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> sub<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; sub_g[64u](uspan64u,uspan64u,span64u)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 49 2b fb 48 89 3e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h sub rdi,r11                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{49 2b fb}
002ch mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> sub<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; sub_g[64i](uspan64i,uspan64i,span64i)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 49 2b fb 48 89 3e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h sub rdi,r11                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{49 2b fb}
002ch mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> mul<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; mul_g[8u](uspan8u,uspan8u,span8u)[83] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2c 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 0f af f7 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d4 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0046h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h imul esi,edi                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af f7}
0037h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003bh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0041h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0044h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0046h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0049h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> mul<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; mul_g[8i](uspan8i,uspan8i,span8i)[83] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2c 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 0f af f7 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d4 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0046h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h imul esi,edi                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af f7}
0037h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003bh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0041h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0044h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0046h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0049h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> mul<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; mul_g[16u](uspan16u,uspan16u,span16u)[81] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2a 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 0f af f7 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d6 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h imul esi,edi                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af f7}
0035h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0038h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0042h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0044h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0047h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> mul<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; mul_g[16i](uspan16i,uspan16i,span16i)[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 0f af f7 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h imul esi,edi                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af f7}
0038h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003ch mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> mul<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; mul_g[32u](uspan32u,uspan32u,span32u)[69] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1e 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 0f af df 44 89 1e 41 ff c2 45 3b d1 7c e2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h imul r11d,edi                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{44 0f af df}
002dh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0030h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0033h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0036h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0038h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> mul<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; mul_g[32i](uspan32i,uspan32i,span32i)[69] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1e 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 0f af df 44 89 1e 41 ff c2 45 3b d1 7c e2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h imul r11d,edi                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{44 0f af df}
002dh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0030h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0033h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0036h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0038h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> mul<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; mul_g[64u](uspan64u,uspan64u,span64u)[69] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1e 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 0f af df 4c 89 1e 41 ff c2 45 3b d1 7c e2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h imul r11,rdi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4c 0f af df}
002dh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0030h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0033h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0036h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0038h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> mul<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; mul_g[64i](uspan64i,uspan64i,span64i)[69] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1e 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 0f af df 4c 89 1e 41 ff c2 45 3b d1 7c e2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h imul r11,rdi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4c 0f af df}
002dh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0030h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0033h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0036h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0038h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> div<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; div_g[8u](uspan8u,uspan8u,span8u)[77] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 26 48 63 c6 49 8d 3c 03 41 0f b6 14 02 41 0f b6 1c 00 0f b6 c2 0f b6 c0 99 f7 fb 0f b6 c0 88 07 ff c6 41 3b f1 7c da 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 03}
0020h movzx edx,byte ptr [r10+rax]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 14 02}
0025h movzx ebx,byte ptr [r8+rax]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 1c 00}
002ah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0031h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h mov [rdi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 07}
0038h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003ah cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
003dh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c da}
003fh mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> div<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; div_g[8i](uspan8i,uspan8i,span8i)[80] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 29 48 63 c6 49 8d 3c 03 49 0f be 14 02 49 0f be 1c 00 48 0f be c2 48 0f be c0 99 f7 fb 48 0f be c0 88 07 ff c6 41 3b f1 7c d7 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 03}
0020h movsx rdx,byte ptr [r10+rax]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 14 02}
0025h movsx rbx,byte ptr [r8+rax]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 1c 00}
002ah movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
002eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0032h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0033h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0035h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0039h mov [rdi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 07}
003bh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003dh cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0040h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0042h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> div<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; div_g[16u](uspan16u,uspan16u,span16u)[78] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 27 48 63 c6 49 8d 3c 43 41 0f b7 14 42 41 0f b7 1c 40 0f b7 c2 0f b7 c0 99 f7 fb 0f b7 c0 66 89 07 ff c6 41 3b f1 7c d9 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 43}
0020h movzx edx,word ptr [r10+rax*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 14 42}
0025h movzx ebx,word ptr [r8+rax*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 1c 40}
002ah movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
002dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0030h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0031h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0033h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0036h mov [rdi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 07}
0039h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003bh cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
003eh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d9}
0040h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> div<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; div_g[16i](uspan16i,uspan16i,span16i)[81] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 2a 48 63 c6 49 8d 3c 43 49 0f bf 14 42 49 0f bf 1c 40 48 0f bf c2 48 0f bf c0 99 f7 fb 48 0f bf c0 66 89 07 ff c6 41 3b f1 7c d6 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 43}
0020h movsx rdx,word ptr [r10+rax*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 14 42}
0025h movsx rbx,word ptr [r8+rax*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 1c 40}
002ah movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
002eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0032h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0033h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0035h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0039h mov [rdi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 07}
003ch inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003eh cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0041h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0043h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> div<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; div_g[32u](uspan32u,uspan32u,span32u)[69] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 1e 48 63 c6 49 8d 3c 83 41 8b 14 82 41 8b 1c 80 8b c2 33 d2 f7 f3 89 07 ff c6 41 3b f1 7c e2 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h mov edx,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 14 82}
0024h mov ebx,[r8+rax*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 80}
0028h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
002ch div ebx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f3}
002eh mov [rdi],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 07}
0030h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0032h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0035h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0037h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> div<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; div_g[32i](uspan32i,uspan32i,span32i)[68] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 1d 48 63 c6 49 8d 3c 83 41 8b 14 82 41 8b 1c 80 8b c2 99 f7 fb 89 07 ff c6 41 3b f1 7c e3 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h mov edx,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 14 82}
0024h mov ebx,[r8+rax*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 80}
0028h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
002bh idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
002dh mov [rdi],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 07}
002fh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0031h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0034h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0036h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0039h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> div<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; div_g[64u](uspan64u,uspan64u,span64u)[72] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 21 48 63 c6 49 8d 3c c3 49 8b 14 c2 49 8b 1c c0 48 8b c2 33 d2 48 f7 f3 48 89 07 ff c6 41 3b f1 7c df 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c c3}
0020h mov rdx,[r10+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 14 c2}
0024h mov rbx,[r8+rax*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c c0}
0028h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
002bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
002dh div rbx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f3}
0030h mov [rdi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 07}
0033h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0035h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0038h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
003ah mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> div<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; div_g[64i](uspan64i,uspan64i,span64i)[72] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 21 48 63 c6 49 8d 3c c3 49 8b 14 c2 49 8b 1c c0 48 8b c2 48 99 48 f7 fb 48 89 07 ff c6 41 3b f1 7c df 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c c3}
0020h mov rdx,[r10+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 14 c2}
0024h mov rbx,[r8+rax*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c c0}
0028h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
002bh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
002dh idiv rbx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 fb}
0030h mov [rdi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 07}
0033h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0035h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0038h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
003ah mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> mod<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; mod_g[8u](uspan8u,uspan8u,span8u)[80] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 29 48 63 fe 49 03 fb 48 63 c6 41 0f b6 04 02 48 63 d6 41 0f b6 1c 10 0f b6 c0 33 d2 f7 f3 0f b6 c2 88 07 ff c6 41 3b f1 7c d7 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
0019h movsxd rdi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 fe}
001ch add rdi,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 fb}
001fh movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0022h movzx eax,byte ptr [r10+rax]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 04 02}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah movzx ebx,byte ptr [r8+rdx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 1c 10}
002fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0032h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0034h div ebx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f3}
0036h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0039h mov [rdi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 07}
003bh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003dh cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0040h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0042h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> mod<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; mod_g[8i](uspan8i,uspan8i,span8i)[81] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 2a 48 63 fe 49 03 fb 48 63 c6 49 0f be 04 02 48 63 d6 49 0f be 1c 10 48 0f be c0 99 f7 fb 48 0f be c2 88 07 ff c6 41 3b f1 7c d6 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
0019h movsxd rdi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 fe}
001ch add rdi,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 fb}
001fh movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0022h movsx rax,byte ptr [r10+rax]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 04 02}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah movsx rbx,byte ptr [r8+rdx]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 1c 10}
002fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0033h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0034h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0036h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
003ah mov [rdi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 07}
003ch inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003eh cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0041h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0043h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> mod<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; mod_g[16u](uspan16u,uspan16u,span16u)[82] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 2b 48 63 c6 49 8d 3c 43 48 63 c6 41 0f b7 04 42 48 63 d6 41 0f b7 1c 50 0f b7 c0 33 d2 f7 f3 0f b7 c2 66 89 07 ff c6 41 3b f1 7c d5 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 43}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h movzx eax,word ptr [r10+rax*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 04 42}
0028h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002bh movzx ebx,word ptr [r8+rdx*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 1c 50}
0030h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0033h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0035h div ebx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f3}
0037h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
003ah mov [rdi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 07}
003dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003fh cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0042h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0044h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0047h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> mod<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; mod_g[16i](uspan16i,uspan16i,span16i)[83] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 2c 48 63 c6 49 8d 3c 43 48 63 c6 49 0f bf 04 42 48 63 d6 49 0f bf 1c 50 48 0f bf c0 99 f7 fb 48 0f bf c2 66 89 07 ff c6 41 3b f1 7c d4 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 43}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h movsx rax,word ptr [r10+rax*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 04 42}
0028h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002bh movsx rbx,word ptr [r8+rdx*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 1c 50}
0030h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0034h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0035h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0037h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
003bh mov [rdi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 07}
003eh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0040h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0043h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0045h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> mod<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; mod_g[32u](uspan32u,uspan32u,span32u)[69] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 1e 48 63 c6 49 8d 3c 83 41 8b 14 82 41 8b 1c 80 8b c2 33 d2 f7 f3 89 17 ff c6 41 3b f1 7c e2 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h mov edx,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 14 82}
0024h mov ebx,[r8+rax*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 80}
0028h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
002ch div ebx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f3}
002eh mov [rdi],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 17}
0030h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0032h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0035h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0037h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> mod<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; mod_g[32i](uspan32i,uspan32i,span32i)[68] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 1d 48 63 c6 49 8d 3c 83 41 8b 14 82 41 8b 1c 80 8b c2 99 f7 fb 89 17 ff c6 41 3b f1 7c e3 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h mov edx,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 14 82}
0024h mov ebx,[r8+rax*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 80}
0028h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
002bh idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
002dh mov [rdi],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 17}
002fh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0031h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0034h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0036h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0039h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> mod<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; mod_g[64u](uspan64u,uspan64u,span64u)[72] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 21 48 63 c6 49 8d 3c c3 49 8b 14 c2 49 8b 1c c0 48 8b c2 33 d2 48 f7 f3 48 89 17 ff c6 41 3b f1 7c df 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c c3}
0020h mov rdx,[r10+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 14 c2}
0024h mov rbx,[r8+rax*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c c0}
0028h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
002bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
002dh div rbx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f3}
0030h mov [rdi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 17}
0033h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0035h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0038h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
003ah mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> mod<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; mod_g[64i](uspan64i,uspan64i,span64i)[72] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 21 48 63 c6 49 8d 3c c3 49 8b 14 c2 49 8b 1c c0 48 8b c2 48 99 48 f7 fb 48 89 17 ff c6 41 3b f1 7c df 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c c3}
0020h mov rdx,[r10+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 14 c2}
0024h mov rbx,[r8+rax*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c c0}
0028h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
002bh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
002dh idiv rbx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 fb}
0030h mov [rdi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 17}
0033h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0035h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0038h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
003ah mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> clamp<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; clamp_g[8u](uspan8u,uspan8u,span8u)[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4b 8d 34 18 42 0f b6 3c 18 46 0f b6 1c 1a 40 0f b6 ff 40 0f b6 ff 41 3b fb 7f 02 eb 03 41 8b fb 40 88 3e 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 18}
0021h movzx edi,byte ptr [rax+r11]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{42 0f b6 3c 18}
0026h movzx r11d,byte ptr [rdx+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 1a}
002bh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
002fh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h jg short 003ah                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0038h jmp short 003dh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
003ah mov edi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fb}
003dh mov [rsi],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 3e}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> clamp<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; clamp_g[8i](uspan8i,uspan8i,span8i)[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4b 8d 34 18 4a 0f be 3c 18 4e 0f be 1c 1a 48 0f be ff 48 0f be ff 41 3b fb 7f 02 eb 03 41 8b fb 40 88 3e 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 18}
0021h movsx rdi,byte ptr [rax+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4a 0f be 3c 18}
0026h movsx r11,byte ptr [rdx+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 1a}
002bh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
002fh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h jg short 003ah                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0038h jmp short 003dh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
003ah mov edi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fb}
003dh mov [rsi],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 3e}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> clamp<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; clamp_g[16u](uspan16u,uspan16u,span16u)[83] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2c 4d 63 da 4b 8d 34 58 42 0f b7 3c 58 46 0f b7 1c 5a 0f b7 ff 0f b7 ff 41 3b fb 7f 02 eb 03 41 8b fb 66 89 3e 41 ff c2 45 3b d1 7c d4 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0046h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 58}
0021h movzx edi,word ptr [rax+r11*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{42 0f b7 3c 58}
0026h movzx r11d,word ptr [rdx+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 5a}
002bh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
002eh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0031h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0034h jg short 0038h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0036h jmp short 003bh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0038h mov edi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fb}
003bh mov [rsi],di                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 3e}
003eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0041h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0044h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0046h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0049h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> clamp<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; clamp_g[16i](uspan16i,uspan16i,span16i)[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4b 8d 34 58 4a 0f bf 3c 58 4e 0f bf 1c 5a 48 0f bf ff 48 0f bf ff 41 3b fb 7f 02 eb 03 41 8b fb 66 89 3e 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 58}
0021h movsx rdi,word ptr [rax+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4a 0f bf 3c 58}
0026h movsx r11,word ptr [rdx+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 5a}
002bh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
002fh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h jg short 003ah                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0038h jmp short 003dh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
003ah mov edi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fb}
003dh mov [rsi],di                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 3e}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> clamp<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; clamp_g[32u](uspan32u,uspan32u,span32u)[74] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 23 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 77 02 eb 03 41 8b fb 89 3e 41 ff c2 45 3b d1 7c dd 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 02}
002eh jmp short 0033h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0030h mov edi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fb}
0033h mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> clamp<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; clamp_g[32i](uspan32i,uspan32i,span32i)[74] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 23 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 7f 02 eb 03 41 8b fb 89 3e 41 ff c2 45 3b d1 7c dd 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch jg short 0030h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
002eh jmp short 0033h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0030h mov edi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fb}
0033h mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> clamp<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; clamp_g[64u](uspan64u,uspan64u,span64u)[75] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 24 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 49 3b fb 77 02 eb 03 49 8b fb 48 89 3e 41 ff c2 45 3b d1 7c dc 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 02}
002eh jmp short 0033h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0030h mov rdi,r11                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b fb}
0033h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0036h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0039h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ch jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dc}
003eh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0041h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0045h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> clamp<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; clamp_g[64i](uspan64i,uspan64i,span64i)[75] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 24 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 49 3b fb 7f 02 eb 03 49 8b fb 48 89 3e 41 ff c2 45 3b d1 7c dc 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch jg short 0030h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
002eh jmp short 0033h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0030h mov rdi,r11                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b fb}
0033h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0036h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0039h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ch jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dc}
003eh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0041h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0045h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> negate<byte>(ReadOnlySpan<byte> src, Span<byte> dst)
; negate_g[8u](uspan8u,span8u)[67] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 21 4d 63 d1 4e 8d 1c 12 46 0f b6 14 10 41 f7 d2 41 ff c2 45 0f b6 d2 45 88 13 41 ff c1 45 3b c8 7c df 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
001eh movzx r10d,byte ptr [rax+r10]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 14 10}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0029h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
002dh mov [r11],r10b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 13}
0030h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0033h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0036h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> negate<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst)
; negate_g[8i](uspan8i,span8i)[64] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1e 4d 63 d1 4e 8d 1c 12 4e 0f be 14 10 41 f7 da 4d 0f be d2 45 88 13 41 ff c1 45 3b c8 7c e2 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_SBB
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
0023h neg r10d                                ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 da}
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
; Span<ushort> negate<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst)
; negate_g[16u](uspan16u,span16u)[68] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 22 4d 63 d1 4e 8d 1c 52 46 0f b7 14 50 41 f7 d2 41 ff c2 45 0f b7 d2 66 45 89 13 41 ff c1 45 3b c8 7c de 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 52}
001eh movzx r10d,word ptr [rax+r10*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 14 50}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0029h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
002dh mov [r11],r10w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 13}
0031h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0034h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0037h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
0039h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ch mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> negate<short>(ReadOnlySpan<short> src, Span<short> dst)
; negate_g[16i](uspan16i,span16i)[65] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1f 4d 63 d1 4e 8d 1c 52 4e 0f bf 14 50 41 f7 da 4d 0f bf d2 66 45 89 13 41 ff c1 45 3b c8 7c e1 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
0023h neg r10d                                ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 da}
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
; Span<uint> negate<uint>(ReadOnlySpan<uint> src, Span<uint> dst)
; negate_g[32u](uspan32u,span32u)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 1c 92 46 8b 14 90 41 f7 d2 41 ff c2 45 89 13 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0025h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0028h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> negate<int>(ReadOnlySpan<int> src, Span<int> dst)
; negate_g[32i](uspan32i,span32i)[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4e 8d 1c 92 46 8b 14 90 41 f7 da 45 89 13 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
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
0022h neg r10d                                ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 da}
0025h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> negate<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst)
; negate_g[64u](uspan64u,span64u)[65] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1f 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 f7 d3 49 ff c3 4d 89 1a 41 ff c1 45 3b c8 7c e1 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
0028h inc r11                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{49 ff c3}
002bh mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002eh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0031h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0034h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0036h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0039h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> negate<long>(ReadOnlySpan<long> src, Span<long> dst)
; negate_g[64i](uspan64i,span64i)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 f7 db 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
0025h neg r11                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{49 f7 db}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> inc<byte>(ReadOnlySpan<byte> src, Span<byte> dst)
; inc_g[8u](uspan8u,span8u)[66] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 20 4d 63 d1 4c 03 d2 4d 63 d9 46 0f b6 1c 18 41 ff c3 45 0f b6 db 45 88 1a 41 ff c1 45 3b c8 7c e0 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
0025h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
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
; Span<sbyte> inc<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst)
; inc_g[8i](uspan8i,span8i)[66] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 20 4d 63 d1 4c 03 d2 4d 63 d9 4e 0f be 1c 18 41 ff c3 4d 0f be db 45 88 1a 41 ff c1 45 3b c8 7c e0 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
0025h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
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
; Span<ushort> inc<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst)
; inc_g[16u](uspan16u,span16u)[68] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 22 4d 63 d1 4e 8d 14 52 4d 63 d9 46 0f b7 1c 58 41 ff c3 45 0f b7 db 66 45 89 1a 41 ff c1 45 3b c8 7c de 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_SBB
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
0026h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
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
; Span<short> inc<short>(ReadOnlySpan<short> src, Span<short> dst)
; inc_g[16i](uspan16i,span16i)[68] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 22 4d 63 d1 4e 8d 14 52 4d 63 d9 4e 0f bf 1c 58 41 ff c3 4d 0f bf db 66 45 89 1a 41 ff c1 45 3b c8 7c de 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_SBB
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
0026h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
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
; Span<uint> inc<uint>(ReadOnlySpan<uint> src, Span<uint> dst)
; inc_g[32u](uspan32u,span32u)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 92 4d 63 d9 46 8b 1c 98 41 ff c3 45 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
0025h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0028h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> inc<int>(ReadOnlySpan<int> src, Span<int> dst)
; inc_g[32i](uspan32i,span32i)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 92 4d 63 d9 46 8b 1c 98 41 ff c3 45 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
0025h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0028h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> inc<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst)
; inc_g[64u](uspan64u,span64u)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 ff c3 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
0025h inc r11                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{49 ff c3}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> inc<long>(ReadOnlySpan<long> src, Span<long> dst)
; inc_g[64i](uspan64i,span64i)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 ff c3 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
0025h inc r11                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{49 ff c3}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> dec<byte>(ReadOnlySpan<byte> src, Span<byte> dst)
; dec_g[8u](uspan8u,span8u)[66] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 20 4d 63 d1 4c 03 d2 4d 63 d9 46 0f b6 1c 18 41 ff cb 45 0f b6 db 45 88 1a 41 ff c1 45 3b c8 7c e0 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; dec_g[8i](uspan8i,span8i)[66] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 20 4d 63 d1 4c 03 d2 4d 63 d9 4e 0f be 1c 18 41 ff cb 4d 0f be db 45 88 1a 41 ff c1 45 3b c8 7c e0 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; dec_g[16u](uspan16u,span16u)[68] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 22 4d 63 d1 4e 8d 14 52 4d 63 d9 46 0f b7 1c 58 41 ff cb 45 0f b7 db 66 45 89 1a 41 ff c1 45 3b c8 7c de 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_SBB
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
; Span<short> dec<short>(ReadOnlySpan<short> src, Span<short> dst)
; dec_g[16i](uspan16i,span16i)[68] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 22 4d 63 d1 4e 8d 14 52 4d 63 d9 4e 0f bf 1c 58 41 ff cb 4d 0f bf db 66 45 89 1a 41 ff c1 45 3b c8 7c de 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_SBB
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
; dec_g[32u](uspan32u,span32u)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 92 4d 63 d9 46 8b 1c 98 41 ff cb 45 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; dec_g[32i](uspan32i,span32i)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 92 4d 63 d9 46 8b 1c 98 41 ff cb 45 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; dec_g[64u](uspan64u,span64u)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 ff cb 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; dec_g[64i](uspan64i,span64i)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 ff cb 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; Span<byte> square<byte>(ReadOnlySpan<byte> src, Span<byte> dst)
; square_g[8u](uspan8u,span8u)[67] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 21 4d 63 d1 4c 03 d2 4d 63 d9 46 0f b6 1c 18 45 0f af db 45 0f b6 db 45 88 1a 41 ff c1 45 3b c8 7c df 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
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
; square_g[8i](uspan8i,span8i)[67] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 21 4d 63 d1 4c 03 d2 4d 63 d9 4e 0f be 1c 18 45 0f af db 4d 0f be db 45 88 1a 41 ff c1 45 3b c8 7c df 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
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
; square_g[16u](uspan16u,span16u)[69] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 23 4d 63 d1 4e 8d 14 52 4d 63 d9 46 0f b7 1c 58 45 0f af db 45 0f b7 db 66 45 89 1a 41 ff c1 45 3b c8 7c dd 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; square_g[16i](uspan16i,span16i)[69] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 23 4d 63 d1 4e 8d 14 52 4d 63 d9 4e 0f bf 1c 58 45 0f af db 4d 0f bf db 66 45 89 1a 41 ff c1 45 3b c8 7c dd 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; square_g[32u](uspan32u,span32u)[60] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1a 4d 63 d1 4e 8d 1c 92 46 8b 14 90 45 0f af d2 45 89 13 41 ff c1 45 3b c8 7c e6 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_SBB
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
; square_g[32i](uspan32i,span32i)[60] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1a 4d 63 d1 4e 8d 1c 92 46 8b 14 90 45 0f af d2 45 89 13 41 ff c1 45 3b c8 7c e6 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_SBB
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
; square_g[64u](uspan64u,span64u)[63] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1d 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 4d 0f af db 4d 89 1a 41 ff c1 45 3b c8 7c e3 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
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
; square_g[64i](uspan64i,span64i)[63] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1d 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 4d 0f af db 4d 89 1a 41 ff c1 45 3b c8 7c e3 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
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
; Span<byte> abs<byte>(ReadOnlySpan<byte> src, Span<byte> dst)
; abs_g[8u](uspan8u,span8u)[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4c 03 d2 4d 63 d9 46 0f b6 1c 18 45 88 1a 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
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
; abs_g[8i](uspan8i,span8i)[74] = {56 0f 1f 40 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 27 4d 63 d1 4e 8d 1c 12 4e 0f be 14 10 41 8b f2 c1 fe 07 44 03 d6 44 33 d6 4d 0f be d2 45 88 13 41 ff c1 45 3b c8 7c d9 48 89 11 44 89 41 08 48 8b c1 5e c3}
; TermCode = CTC_RET_Zx3
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
; abs_g[16u](uspan16u,span16u)[61] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1b 4d 63 d1 4e 8d 14 52 4d 63 d9 46 0f b7 1c 58 66 45 89 1a 41 ff c1 45 3b c8 7c e5 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; abs_g[16i](uspan16i,span16i)[75] = {56 0f 1f 40 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 28 4d 63 d1 4e 8d 1c 52 4e 0f bf 14 50 41 8b f2 c1 fe 0f 44 03 d6 44 33 d6 4d 0f bf d2 66 45 89 13 41 ff c1 45 3b c8 7c d8 48 89 11 44 89 41 08 48 8b c1 5e c3}
; TermCode = CTC_RET_ZED_SBB
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
; abs_g[32u](uspan32u,span32u)[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4e 8d 14 92 4d 63 d9 46 8b 1c 98 45 89 1a 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
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
; abs_g[32i](uspan32i,span32i)[69] = {56 0f 1f 40 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 22 4d 63 d1 4e 8d 1c 92 46 8b 14 90 41 8b f2 c1 fe 1f 44 03 d6 44 33 d6 45 89 13 41 ff c1 45 3b c8 7c de 48 89 11 44 89 41 08 48 8b c1 5e c3}
; TermCode = CTC_RET_Zx3
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
; abs_g[64u](uspan64u,span64u)[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 4d 89 1a 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
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
; abs_g[64i](uspan64i,span64i)[73] = {56 0f 1f 40 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 26 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 8b f3 48 c1 fe 3f 4c 03 de 4c 33 de 4d 89 1a 41 ff c1 45 3b c8 7c da 48 89 11 44 89 41 08 48 8b c1 5e c3}
; TermCode = CTC_RET_Zx3
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
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst)
; eq_g[8u](uspan8u,uspan8u)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4b 8d 34 98 42 0f b6 3c 18 46 0f b6 1c 1a 40 0f b6 ff 40 0f b6 ff 41 3b fb 41 0f 94 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movzx edi,byte ptr [rax+r11]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{42 0f b6 3c 18}
0026h movzx r11d,byte ptr [rdx+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 1a}
002bh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
002fh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
003ah movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
003eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst)
; eq_g[8i](uspan8i,uspan8i)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4b 8d 34 98 4a 0f be 3c 18 4e 0f be 1c 1a 48 0f be ff 48 0f be ff 41 3b fb 41 0f 94 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movsx rdi,byte ptr [rax+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4a 0f be 3c 18}
0026h movsx r11,byte ptr [rdx+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 1a}
002bh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
002fh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
003ah movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
003eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst)
; eq_g[16u](uspan16u,uspan16u)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4b 8d 34 98 42 0f b7 3c 58 46 0f b7 1c 5a 0f b7 ff 0f b7 ff 41 3b fb 41 0f 94 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movzx edi,word ptr [rax+r11*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{42 0f b7 3c 58}
0026h movzx r11d,word ptr [rdx+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 5a}
002bh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
002eh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0031h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0034h sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
0038h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
003ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst)
; eq_g[16i](uspan16i,uspan16i)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4b 8d 34 98 4a 0f bf 3c 58 4e 0f bf 1c 5a 48 0f bf ff 48 0f bf ff 41 3b fb 41 0f 94 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movsx rdi,word ptr [rax+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4a 0f bf 3c 58}
0026h movsx r11,word ptr [rdx+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 5a}
002bh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
002fh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
003ah movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
003eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst)
; eq_g[32u](uspan32u,uspan32u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 94 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst)
; eq_g[32i](uspan32i,uspan32i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 94 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst)
; eq_g[64u](uspan64u,uspan64u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 94 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst)
; eq_g[64i](uspan64i,uspan64i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 94 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst)
; neq_g[8u](uspan8u,uspan8u)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4b 8d 34 98 42 0f b6 3c 18 46 0f b6 1c 1a 40 0f b6 ff 40 0f b6 ff 41 3b fb 41 0f 95 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movzx edi,byte ptr [rax+r11]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{42 0f b6 3c 18}
0026h movzx r11d,byte ptr [rdx+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 1a}
002bh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
002fh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h setne r11b                              ; SETNE r/m8 || 0F 95 /r || encoded[4]{41 0f 95 c3}
003ah movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
003eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst)
; neq_g[8i](uspan8i,uspan8i)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4b 8d 34 98 4a 0f be 3c 18 4e 0f be 1c 1a 48 0f be ff 48 0f be ff 41 3b fb 41 0f 95 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movsx rdi,byte ptr [rax+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4a 0f be 3c 18}
0026h movsx r11,byte ptr [rdx+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 1a}
002bh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
002fh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h setne r11b                              ; SETNE r/m8 || 0F 95 /r || encoded[4]{41 0f 95 c3}
003ah movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
003eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst)
; neq_g[16u](uspan16u,uspan16u)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4b 8d 34 98 42 0f b7 3c 58 46 0f b7 1c 5a 0f b7 ff 0f b7 ff 41 3b fb 41 0f 95 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movzx edi,word ptr [rax+r11*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{42 0f b7 3c 58}
0026h movzx r11d,word ptr [rdx+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 5a}
002bh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
002eh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0031h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0034h setne r11b                              ; SETNE r/m8 || 0F 95 /r || encoded[4]{41 0f 95 c3}
0038h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
003ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst)
; neq_g[16i](uspan16i,uspan16i)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4b 8d 34 98 4a 0f bf 3c 58 4e 0f bf 1c 5a 48 0f bf ff 48 0f bf ff 41 3b fb 41 0f 95 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movsx rdi,word ptr [rax+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4a 0f bf 3c 58}
0026h movsx r11,word ptr [rdx+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 5a}
002bh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
002fh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h setne r11b                              ; SETNE r/m8 || 0F 95 /r || encoded[4]{41 0f 95 c3}
003ah movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
003eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst)
; neq_g[32u](uspan32u,uspan32u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 95 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch setne r11b                              ; SETNE r/m8 || 0F 95 /r || encoded[4]{41 0f 95 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst)
; neq_g[32i](uspan32i,uspan32i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 95 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch setne r11b                              ; SETNE r/m8 || 0F 95 /r || encoded[4]{41 0f 95 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst)
; neq_g[64u](uspan64u,uspan64u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 95 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch setne r11b                              ; SETNE r/m8 || 0F 95 /r || encoded[4]{41 0f 95 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst)
; neq_g[64i](uspan64i,uspan64i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 95 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch setne r11b                              ; SETNE r/m8 || 0F 95 /r || encoded[4]{41 0f 95 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst)
; lt_g[8u](uspan8u,uspan8u)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 3b f7 40 0f 92 c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0031h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setb sil                                ; SETB r/m8 || 0F 92 /r || encoded[4]{40 0f 92 c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst)
; lt_g[8i](uspan8i,uspan8i)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 3b f7 40 0f 9c c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0031h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setl sil                                ; SETL r/m8 || 0F 9C /r || encoded[4]{40 0f 9c c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst)
; lt_g[16u](uspan16u,uspan16u)[81] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2a 4d 63 da 4b 8d 34 98 42 0f b7 3c 58 46 0f b7 1c 5a 0f b7 ff 41 3b fb 41 0f 92 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d6 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movzx edi,word ptr [rax+r11*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{42 0f b7 3c 58}
0026h movzx r11d,word ptr [rdx+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 5a}
002bh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
002eh cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0031h setb r11b                               ; SETB r/m8 || 0F 92 /r || encoded[4]{41 0f 92 c3}
0035h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0039h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
003ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0042h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0044h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0047h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst)
; lt_g[16i](uspan16i,uspan16i)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 3b f7 40 0f 9c c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setl sil                                ; SETL r/m8 || 0F 9C /r || encoded[4]{40 0f 9c c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst)
; lt_g[32u](uspan32u,uspan32u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 92 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch setb r11b                               ; SETB r/m8 || 0F 92 /r || encoded[4]{41 0f 92 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst)
; lt_g[32i](uspan32i,uspan32i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 9c c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch setl r11b                               ; SETL r/m8 || 0F 9C /r || encoded[4]{41 0f 9c c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst)
; lt_g[64u](uspan64u,uspan64u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 92 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch setb r11b                               ; SETB r/m8 || 0F 92 /r || encoded[4]{41 0f 92 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst)
; lt_g[64i](uspan64i,uspan64i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 9c c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch setl r11b                               ; SETL r/m8 || 0F 9C /r || encoded[4]{41 0f 9c c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst)
; lteq_g[8u](uspan8u,uspan8u)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 3b f7 40 0f 96 c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0031h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setbe sil                               ; SETBE r/m8 || 0F 96 /r || encoded[4]{40 0f 96 c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst)
; lteq_g[8i](uspan8i,uspan8i)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 3b f7 40 0f 9e c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0031h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setle sil                               ; SETLE r/m8 || 0F 9E /r || encoded[4]{40 0f 9e c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst)
; lteq_g[16u](uspan16u,uspan16u)[81] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2a 4d 63 da 4b 8d 34 98 42 0f b7 3c 58 46 0f b7 1c 5a 0f b7 ff 41 3b fb 41 0f 96 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d6 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movzx edi,word ptr [rax+r11*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{42 0f b7 3c 58}
0026h movzx r11d,word ptr [rdx+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 5a}
002bh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
002eh cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0031h setbe r11b                              ; SETBE r/m8 || 0F 96 /r || encoded[4]{41 0f 96 c3}
0035h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0039h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
003ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0042h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0044h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0047h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst)
; lteq_g[16i](uspan16i,uspan16i)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 3b f7 40 0f 9e c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setle sil                               ; SETLE r/m8 || 0F 9E /r || encoded[4]{40 0f 9e c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst)
; lteq_g[32u](uspan32u,uspan32u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 96 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch setbe r11b                              ; SETBE r/m8 || 0F 96 /r || encoded[4]{41 0f 96 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst)
; lteq_g[32i](uspan32i,uspan32i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 9e c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch setle r11b                              ; SETLE r/m8 || 0F 9E /r || encoded[4]{41 0f 9e c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst)
; lteq_g[64u](uspan64u,uspan64u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 96 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch setbe r11b                              ; SETBE r/m8 || 0F 96 /r || encoded[4]{41 0f 96 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst)
; lteq_g[64i](uspan64i,uspan64i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 9e c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch setle r11b                              ; SETLE r/m8 || 0F 9E /r || encoded[4]{41 0f 9e c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst)
; gt_g[8u](uspan8u,uspan8u)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 3b f7 40 0f 97 c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0031h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h seta sil                                ; SETA r/m8 || 0F 97 /r || encoded[4]{40 0f 97 c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst)
; gt_g[8i](uspan8i,uspan8i)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 3b f7 40 0f 9f c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0031h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setg sil                                ; SETG r/m8 || 0F 9F /r || encoded[4]{40 0f 9f c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst)
; gt_g[16u](uspan16u,uspan16u)[81] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2a 4d 63 da 4b 8d 34 98 42 0f b7 3c 58 46 0f b7 1c 5a 0f b7 ff 41 3b fb 41 0f 97 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d6 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movzx edi,word ptr [rax+r11*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{42 0f b7 3c 58}
0026h movzx r11d,word ptr [rdx+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 5a}
002bh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
002eh cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0031h seta r11b                               ; SETA r/m8 || 0F 97 /r || encoded[4]{41 0f 97 c3}
0035h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0039h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
003ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0042h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0044h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0047h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst)
; gt_g[16i](uspan16i,uspan16i)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 3b f7 40 0f 9f c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setg sil                                ; SETG r/m8 || 0F 9F /r || encoded[4]{40 0f 9f c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst)
; gt_g[32u](uspan32u,uspan32u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 97 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch seta r11b                               ; SETA r/m8 || 0F 97 /r || encoded[4]{41 0f 97 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst)
; gt_g[32i](uspan32i,uspan32i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 9f c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch setg r11b                               ; SETG r/m8 || 0F 9F /r || encoded[4]{41 0f 9f c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst)
; gt_g[64u](uspan64u,uspan64u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 97 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch seta r11b                               ; SETA r/m8 || 0F 97 /r || encoded[4]{41 0f 97 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst)
; gt_g[64i](uspan64i,uspan64i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 9f c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch setg r11b                               ; SETG r/m8 || 0F 9F /r || encoded[4]{41 0f 9f c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst)
; gteq_g[8u](uspan8u,uspan8u)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 3b f7 40 0f 93 c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0031h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setae sil                               ; SETAE r/m8 || 0F 93 /r || encoded[4]{40 0f 93 c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst)
; gteq_g[8i](uspan8i,uspan8i)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 3b f7 40 0f 9d c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0031h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setge sil                               ; SETGE r/m8 || 0F 9D /r || encoded[4]{40 0f 9d c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst)
; gteq_g[16u](uspan16u,uspan16u)[81] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2a 4d 63 da 4b 8d 34 98 42 0f b7 3c 58 46 0f b7 1c 5a 0f b7 ff 41 3b fb 41 0f 93 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d6 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movzx edi,word ptr [rax+r11*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{42 0f b7 3c 58}
0026h movzx r11d,word ptr [rdx+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 5a}
002bh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
002eh cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0031h setae r11b                              ; SETAE r/m8 || 0F 93 /r || encoded[4]{41 0f 93 c3}
0035h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0039h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
003ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0042h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0044h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0047h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst)
; gteq_g[16i](uspan16i,uspan16i)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 98 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 3b f7 40 0f 9d c6 40 0f b6 f6 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setge sil                               ; SETGE r/m8 || 0F 9D /r || encoded[4]{40 0f 9d c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst)
; gteq_g[32u](uspan32u,uspan32u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 93 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch setae r11b                              ; SETAE r/m8 || 0F 93 /r || encoded[4]{41 0f 93 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst)
; gteq_g[32i](uspan32i,uspan32i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 41 0f 9d c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch setge r11b                              ; SETGE r/m8 || 0F 9D /r || encoded[4]{41 0f 9d c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst)
; gteq_g[64u](uspan64u,uspan64u)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 93 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch setae r11b                              ; SETAE r/m8 || 0F 93 /r || encoded[4]{41 0f 93 c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst)
; gteq_g[64i](uspan64i,uspan64i)[76] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 25 4d 63 da 4b 8d 34 98 4a 8b 3c d8 4e 8b 1c da 49 3b fb 41 0f 9d c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c db 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h cmp rdi,r11                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b fb}
002ch setge r11b                              ; SETGE r/m8 || 0F 9D /r || encoded[4]{41 0f 9d c3}
0030h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0034h mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> and<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; and_g[8u](uspan8u,uspan8u,span8u)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 23 f7 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> and<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; and_g[8i](uspan8i,uspan8i,span8i)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 23 f7 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0036h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> and<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; and_g[16u](uspan16u,uspan16u,span16u)[80] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 29 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 23 f7 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d7 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0034h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0037h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> and<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; and_g[16i](uspan16i,uspan16i,span16i)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 23 f7 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0037h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003bh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> and<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; and_g[32u](uspan32u,uspan32u,span32u)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 23 df 44 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h and r11d,edi                            ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 df}
002ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> and<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; and_g[32i](uspan32i,uspan32i,span32i)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 23 df 44 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h and r11d,edi                            ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 df}
002ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> and<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; and_g[64u](uspan64u,uspan64u,span64u)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 23 df 4c 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h and r11,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 df}
002ch mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> and<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; and_g[64i](uspan64i,uspan64i,span64i)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 23 df 4c 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h and r11,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 df}
002ch mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> or<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; or_g[8u](uspan8u,uspan8u,span8u)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 0b f7 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> or<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; or_g[8i](uspan8i,uspan8i,span8i)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 0b f7 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> or<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; or_g[16u](uspan16u,uspan16u,span16u)[80] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 29 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 0b f7 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d7 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0034h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0037h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> or<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; or_g[16i](uspan16i,uspan16i,span16i)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 0b f7 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0037h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003bh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> or<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; or_g[32u](uspan32u,uspan32u,span32u)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 0b df 44 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h or r11d,edi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b df}
002ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> or<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; or_g[32i](uspan32i,uspan32i,span32i)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 0b df 44 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h or r11d,edi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b df}
002ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> or<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; or_g[64u](uspan64u,uspan64u,span64u)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 0b df 4c 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h or r11,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b df}
002ch mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> or<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; or_g[64i](uspan64i,uspan64i,span64i)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 0b df 4c 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h or r11,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b df}
002ch mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> xor<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; xor_g[8u](uspan8u,uspan8u,span8u)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 33 f7 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> xor<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; xor_g[8i](uspan8i,uspan8i,span8i)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 33 f7 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0036h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> xor<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; xor_g[16u](uspan16u,uspan16u,span16u)[80] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 29 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 33 f7 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d7 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0034h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0037h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> xor<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; xor_g[16i](uspan16i,uspan16i,span16i)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 33 f7 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0037h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003bh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> xor<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; xor_g[32u](uspan32u,uspan32u,span32u)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 33 df 44 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h xor r11d,edi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 df}
002ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> xor<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; xor_g[32i](uspan32i,uspan32i,span32i)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 33 df 44 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h xor r11d,edi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 df}
002ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> xor<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; xor_g[64u](uspan64u,uspan64u,span64u)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 33 df 4c 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h xor r11,rdi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4c 33 df}
002ch mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> xor<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; xor_g[64i](uspan64i,uspan64i,span64i)[68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 33 df 4c 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h xor r11,rdi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4c 33 df}
002ch mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> nand<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; nand_g[8u](uspan8u,uspan8u,span8u)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 23 f7 f7 d6 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> nand<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; nand_g[8i](uspan8i,uspan8i,span8i)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 23 f7 f7 d6 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> nand<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; nand_g[16u](uspan16u,uspan16u,span16u)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 23 f7 f7 d6 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0034h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0036h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0039h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> nand<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; nand_g[16i](uspan16i,uspan16i,span16i)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 23 f7 f7 d6 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0037h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0039h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> nand<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; nand_g[32u](uspan32u,uspan32u,span32u)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 23 df 41 f7 d3 44 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h and r11d,edi                            ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 df}
002ch not r11d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d3}
002fh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> nand<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; nand_g[32i](uspan32i,uspan32i,span32i)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 23 df 41 f7 d3 44 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h and r11d,edi                            ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 df}
002ch not r11d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d3}
002fh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> nand<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; nand_g[64u](uspan64u,uspan64u,span64u)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 23 df 49 f7 d3 4c 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h and r11,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 df}
002ch not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
002fh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> nand<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; nand_g[64i](uspan64i,uspan64i,span64i)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 23 df 49 f7 d3 4c 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h and r11,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 df}
002ch not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
002fh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> nor<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; nor_g[8u](uspan8u,uspan8u,span8u)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 0b f7 f7 d6 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> nor<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; nor_g[8i](uspan8i,uspan8i,span8i)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 0b f7 f7 d6 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> nor<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; nor_g[16u](uspan16u,uspan16u,span16u)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 0b f7 f7 d6 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0034h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0036h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0039h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> nor<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; nor_g[16i](uspan16i,uspan16i,span16i)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 0b f7 f7 d6 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0037h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0039h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> nor<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; nor_g[32u](uspan32u,uspan32u,span32u)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 0b df 41 f7 d3 44 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h or r11d,edi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b df}
002ch not r11d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d3}
002fh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> nor<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; nor_g[32i](uspan32i,uspan32i,span32i)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 0b df 41 f7 d3 44 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h or r11d,edi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b df}
002ch not r11d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d3}
002fh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> nor<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; nor_g[64u](uspan64u,uspan64u,span64u)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 0b df 49 f7 d3 4c 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h or r11,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b df}
002ch not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
002fh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> nor<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; nor_g[64i](uspan64i,uspan64i,span64i)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 0b df 49 f7 d3 4c 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h or r11,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b df}
002ch not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
002fh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> xnor<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; xnor_g[8u](uspan8u,uspan8u,span8u)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 33 f7 f7 d6 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> xnor<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; xnor_g[8i](uspan8i,uspan8i,span8i)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 33 f7 f7 d6 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> xnor<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; xnor_g[16u](uspan16u,uspan16u,span16u)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 33 f7 f7 d6 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0034h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0036h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0039h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> xnor<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; xnor_g[16i](uspan16i,uspan16i,span16i)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 33 f7 f7 d6 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0037h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0039h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> xnor<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; xnor_g[32u](uspan32u,uspan32u,span32u)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 33 df 41 f7 d3 44 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h xor r11d,edi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 df}
002ch not r11d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d3}
002fh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> xnor<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; xnor_g[32i](uspan32i,uspan32i,span32i)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 33 df 41 f7 d3 44 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h xor r11d,edi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 df}
002ch not r11d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d3}
002fh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> xnor<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; xnor_g[64u](uspan64u,uspan64u,span64u)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 33 df 49 f7 d3 4c 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h xor r11,rdi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4c 33 df}
002ch not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
002fh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> xnor<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; xnor_g[64i](uspan64i,uspan64i,span64i)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 33 df 49 f7 d3 4c 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h xor r11,rdi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4c 33 df}
002ch not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
002fh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> impl<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; impl_g[8u](uspan8u,uspan8u,span8u)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 f7 d7 0b f7 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
0036h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> impl<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; impl_g[8i](uspan8i,uspan8i,span8i)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 f7 d7 0b f7 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
0036h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0038h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> impl<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; impl_g[16u](uspan16u,uspan16u,span16u)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 f7 d7 0b f7 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0039h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> impl<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; impl_g[16i](uspan16i,uspan16i,span16i)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 f7 d7 0b f7 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
0037h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0039h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> impl<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; impl_g[32u](uspan32u,uspan32u,span32u)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 f7 d3 44 0b df 44 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h not r11d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d3}
002ch or r11d,edi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b df}
002fh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> impl<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; impl_g[32i](uspan32i,uspan32i,span32i)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 f7 d3 44 0b df 44 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h not r11d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d3}
002ch or r11d,edi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b df}
002fh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> impl<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; impl_g[64u](uspan64u,uspan64u,span64u)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 49 f7 d3 4c 0b df 4c 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
002ch or r11,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b df}
002fh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> impl<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; impl_g[64i](uspan64i,uspan64i,span64i)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 49 f7 d3 4c 0b df 4c 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
002ch or r11,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b df}
002fh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> nonimpl<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; nonimpl_g[8u](uspan8u,uspan8u,span8u)[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 c4 e2 48 f2 f7 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h andn esi,esi,edi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 f7}
0039h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003dh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> nonimpl<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; nonimpl_g[8i](uspan8i,uspan8i,span8i)[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 c4 e2 48 f2 f7 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h andn esi,esi,edi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 f7}
0039h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003dh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> nonimpl<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; nonimpl_g[16u](uspan16u,uspan16u,span16u)[83] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2c 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 c4 e2 48 f2 f7 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d4 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0046h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h andn esi,esi,edi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 f7}
0037h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
003ah mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0041h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0044h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0046h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0049h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> nonimpl<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; nonimpl_g[16i](uspan16i,uspan16i,span16i)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 c4 e2 48 f2 f7 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h andn esi,esi,edi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 f7}
003ah movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003eh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> nonimpl<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; nonimpl_g[32u](uspan32u,uspan32u,span32u)[70] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1f 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a c4 42 40 f2 db 44 89 1e 41 ff c2 45 3b d1 7c e1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h andn r11d,edi,r11d                      ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 42 40 f2 db}
002eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0031h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0034h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0037h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0039h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> nonimpl<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; nonimpl_g[32i](uspan32i,uspan32i,span32i)[70] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1f 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a c4 42 40 f2 db 44 89 1e 41 ff c2 45 3b d1 7c e1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h andn r11d,edi,r11d                      ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 42 40 f2 db}
002eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0031h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0034h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0037h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0039h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> nonimpl<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; nonimpl_g[64u](uspan64u,uspan64u,span64u)[70] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1f 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da c4 42 c0 f2 db 4c 89 1e 41 ff c2 45 3b d1 7c e1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h andn r11,rdi,r11                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 42 c0 f2 db}
002eh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0031h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0034h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0037h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0039h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> nonimpl<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; nonimpl_g[64i](uspan64i,uspan64i,span64i)[70] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1f 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da c4 42 c0 f2 db 4c 89 1e 41 ff c2 45 3b d1 7c e1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h andn r11,rdi,r11                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 42 c0 f2 db}
002eh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0031h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0034h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0037h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0039h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> cimpl<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; cimpl_g[8u](uspan8u,uspan8u,span8u)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 f7 d6 0b f7 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0036h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> cimpl<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; cimpl_g[8i](uspan8i,uspan8i,span8i)[84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 f7 d6 0b f7 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0036h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0038h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> cimpl<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; cimpl_g[16u](uspan16u,uspan16u,span16u)[82] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2b 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 f7 d6 0b f7 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d5 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0039h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> cimpl<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; cimpl_g[16i](uspan16i,uspan16i,span16i)[86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 f7 d6 0b f7 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0037h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0039h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> cimpl<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; cimpl_g[32u](uspan32u,uspan32u,span32u)[70] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1f 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a f7 d7 44 0b df 44 89 1e 41 ff c2 45 3b d1 7c e1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
002bh or r11d,edi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b df}
002eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0031h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0034h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0037h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0039h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> cimpl<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; cimpl_g[32i](uspan32i,uspan32i,span32i)[70] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1f 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a f7 d7 44 0b df 44 89 1e 41 ff c2 45 3b d1 7c e1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
002bh or r11d,edi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b df}
002eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0031h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0034h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0037h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0039h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> cimpl<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; cimpl_g[64u](uspan64u,uspan64u,span64u)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 48 f7 d7 4c 0b df 4c 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h not rdi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d7}
002ch or r11,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b df}
002fh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> cimpl<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; cimpl_g[64i](uspan64i,uspan64i,span64i)[71] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 20 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 48 f7 d7 4c 0b df 4c 89 1e 41 ff c2 45 3b d1 7c e0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h not rdi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d7}
002ch or r11,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b df}
002fh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> cnonimpl<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; cnonimpl_g[8u](uspan8u,uspan8u,span8u)[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 c4 e2 40 f2 f6 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h andn esi,edi,esi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 f6}
0039h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003dh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> cnonimpl<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; cnonimpl_g[8i](uspan8i,uspan8i,span8i)[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 c4 e2 40 f2 f6 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h andn esi,edi,esi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 f6}
0039h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003dh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> cnonimpl<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; cnonimpl_g[16u](uspan16u,uspan16u,span16u)[83] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2c 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 c4 e2 40 f2 f6 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d4 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0046h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h andn esi,edi,esi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 f6}
0037h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
003ah mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0041h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0044h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0046h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0049h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> cnonimpl<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst)
; cnonimpl_g[16i](uspan16i,uspan16i,span16i)[87] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 30 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 c4 e2 40 f2 f6 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d0 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h andn esi,edi,esi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 f6}
003ah movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003eh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> cnonimpl<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; cnonimpl_g[32u](uspan32u,uspan32u,span32u)[70] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1f 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a c4 62 20 f2 df 44 89 1e 41 ff c2 45 3b d1 7c e1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h andn r11d,r11d,edi                      ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 62 20 f2 df}
002eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0031h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0034h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0037h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0039h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> cnonimpl<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; cnonimpl_g[32i](uspan32i,uspan32i,span32i)[70] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1f 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a c4 62 20 f2 df 44 89 1e 41 ff c2 45 3b d1 7c e1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h andn r11d,r11d,edi                      ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 62 20 f2 df}
002eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0031h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0034h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0037h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0039h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> cnonimpl<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; cnonimpl_g[64u](uspan64u,uspan64u,span64u)[70] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1f 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da c4 62 a0 f2 df 4c 89 1e 41 ff c2 45 3b d1 7c e1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h andn r11,r11,rdi                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 62 a0 f2 df}
002eh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0031h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0034h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0037h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0039h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> cnonimpl<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; cnonimpl_g[64i](uspan64i,uspan64i,span64i)[70] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1f 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da c4 62 a0 f2 df 4c 89 1e 41 ff c2 45 3b d1 7c e1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h andn r11,r11,rdi                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 62 a0 f2 df}
002eh mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
0031h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0034h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0037h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0039h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> select<byte>(ReadOnlySpan<byte> a, ReadOnlySpan<byte> b, ReadOnlySpan<byte> c, Span<byte> dst)
; select_g[8u](uspan8u,uspan8u,uspan8u,span8u)[113] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 44 49 63 f3 49 03 f2 49 63 fb 40 0f b6 3c 3a 49 63 db 41 0f b6 1c 18 49 63 eb 41 0f b6 2c 29 40 0f b6 ff 0f b6 db 40 0f b6 ff 0f b6 db 23 df c4 e2 40 f2 fd 0b fb 40 0f b6 ff 40 88 3e 41 ff c3 44 3b d8 7c bc 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0063h                         ; JLE rel8 || 7E cb || encoded[2]{7e 44}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h add rsi,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f2}
0025h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0028h movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h movzx ebx,byte ptr [r8+rbx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 1c 18}
0035h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0038h movzx ebp,byte ptr [r9+rbp]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 2c 29}
003dh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0041h movzx ebx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 db}
0044h movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0048h movzx ebx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 db}
004bh and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
004dh andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0052h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0054h movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0058h mov [rsi],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 3e}
005bh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
005eh cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
0061h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c bc}
0063h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0066h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0069h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> select<sbyte>(ReadOnlySpan<sbyte> a, ReadOnlySpan<sbyte> b, ReadOnlySpan<sbyte> c, Span<sbyte> dst)
; select_g[8i](uspan8i,uspan8i,uspan8i,span8i)[119] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 4a 49 63 f3 49 03 f2 49 63 fb 48 0f be 3c 3a 49 63 db 49 0f be 1c 18 49 63 eb 49 0f be 2c 29 48 0f be ff 48 0f be db 23 df 48 0f be db c4 e2 40 f2 fd 48 0f be ff 48 0f be db 0b fb 48 0f be ff 40 88 3e 41 ff c3 44 3b d8 7c b6 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0069h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4a}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h add rsi,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f2}
0025h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0028h movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h movsx rbx,byte ptr [r8+rbx]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 1c 18}
0035h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0038h movsx rbp,byte ptr [r9+rbp]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 2c 29}
003dh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0041h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
0045h and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
0047h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
004bh andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0050h movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0054h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
0058h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
005ah movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
005eh mov [rsi],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 3e}
0061h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0064h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
0067h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0069h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
006ch mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
006fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> select<ushort>(ReadOnlySpan<ushort> a, ReadOnlySpan<ushort> b, ReadOnlySpan<ushort> c, Span<ushort> dst)
; select_g[16u](uspan16u,uspan16u,uspan16u,span16u)[110] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 41 49 63 f3 49 8d 34 72 49 63 fb 0f b7 3c 7a 49 63 db 41 0f b7 1c 58 49 63 eb 41 0f b7 2c 69 0f b7 ff 0f b7 db 0f b7 ff 0f b7 db 23 df c4 e2 40 f2 fd 0b fb 0f b7 ff 66 89 3e 41 ff c3 44 3b d8 7c bf 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0060h                         ; JLE rel8 || 7E cb || encoded[2]{7e 41}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 72}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h movzx ebx,word ptr [r8+rbx*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 1c 58}
0035h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0038h movzx ebp,word ptr [r9+rbp*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 2c 69}
003dh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0040h movzx ebx,bx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 db}
0043h movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0046h movzx ebx,bx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 db}
0049h and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
004bh andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0050h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0052h movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0055h mov [rsi],di                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 3e}
0058h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
005bh cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
005eh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c bf}
0060h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0069h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> select<short>(ReadOnlySpan<short> a, ReadOnlySpan<short> b, ReadOnlySpan<short> c, Span<short> dst)
; select_g[16i](uspan16i,uspan16i,uspan16i,span16i)[120] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 4b 49 63 f3 49 8d 34 72 49 63 fb 48 0f bf 3c 7a 49 63 db 49 0f bf 1c 58 49 63 eb 49 0f bf 2c 69 48 0f bf ff 48 0f bf db 23 df 48 0f bf db c4 e2 40 f2 fd 48 0f bf ff 48 0f bf db 0b fb 48 0f bf ff 66 89 3e 41 ff c3 44 3b d8 7c b5 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 4b}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 72}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
002eh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0031h movsx rbx,word ptr [r8+rbx*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 1c 58}
0036h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0039h movsx rbp,word ptr [r9+rbp*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 2c 69}
003eh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0042h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
0046h and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
0048h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
004ch andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0051h movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0055h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
0059h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
005bh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
005fh mov [rsi],di                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 3e}
0062h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0065h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
0068h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
006ah mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
006dh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0070h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0073h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0074h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> select<uint>(ReadOnlySpan<uint> a, ReadOnlySpan<uint> b, ReadOnlySpan<uint> c, Span<uint> dst)
; select_g[32u](uspan32u,uspan32u,uspan32u,span32u)[91] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 2e 49 63 f3 49 8d 34 b2 49 63 fb 8b 3c ba 49 63 db 41 8b 1c 98 49 63 eb 41 8b 2c a9 23 df c4 e2 40 f2 fd 0b fb 89 3e 41 ff c3 44 3b d8 7c d2 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 004dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 b2}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002ch movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
002fh mov ebx,[r8+rbx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 98}
0033h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0036h mov ebp,[r9+rbp*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 2c a9}
003ah and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
003ch andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0041h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0043h mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0045h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0048h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
004bh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
004dh mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0050h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0053h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> select<int>(ReadOnlySpan<int> a, ReadOnlySpan<int> b, ReadOnlySpan<int> c, Span<int> dst)
; select_g[32i](uspan32i,uspan32i,uspan32i,span32i)[91] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 2e 49 63 f3 49 8d 34 b2 49 63 fb 8b 3c ba 49 63 db 41 8b 1c 98 49 63 eb 41 8b 2c a9 23 df c4 e2 40 f2 fd 0b fb 89 3e 41 ff c3 44 3b d8 7c d2 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 004dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 b2}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002ch movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
002fh mov ebx,[r8+rbx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 98}
0033h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0036h mov ebp,[r9+rbp*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 2c a9}
003ah and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
003ch andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0041h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0043h mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0045h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0048h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
004bh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
004dh mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0050h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0053h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> select<ulong>(ReadOnlySpan<ulong> a, ReadOnlySpan<ulong> b, ReadOnlySpan<ulong> c, Span<ulong> dst)
; select_g[64u](uspan64u,uspan64u,uspan64u,span64u)[95] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 32 49 63 f3 49 8d 34 f2 49 63 fb 48 8b 3c fa 49 63 db 49 8b 1c d8 49 63 eb 49 8b 2c e9 48 23 df c4 e2 c0 f2 fd 48 0b fb 48 89 3e 41 ff c3 44 3b d8 7c ce 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0051h                         ; JLE rel8 || 7E cb || encoded[2]{7e 32}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 f2}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h mov rbx,[r8+rbx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c d8}
0034h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0037h mov rbp,[r9+rbp*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 2c e9}
003bh and rbx,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 df}
003eh andn rdi,rdi,rbp                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c0 f2 fd}
0043h or rdi,rbx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b fb}
0046h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0049h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
004ch cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
004fh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c ce}
0051h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> select<long>(ReadOnlySpan<long> a, ReadOnlySpan<long> b, ReadOnlySpan<long> c, Span<long> dst)
; select_g[64i](uspan64i,uspan64i,uspan64i,span64i)[95] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 32 49 63 f3 49 8d 34 f2 49 63 fb 48 8b 3c fa 49 63 db 49 8b 1c d8 49 63 eb 49 8b 2c e9 48 23 df c4 e2 c0 f2 fd 48 0b fb 48 89 3e 41 ff c3 44 3b d8 7c ce 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0051h                         ; JLE rel8 || 7E cb || encoded[2]{7e 32}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 f2}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h mov rbx,[r8+rbx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c d8}
0034h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0037h mov rbp,[r9+rbp*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 2c e9}
003bh and rbx,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 df}
003eh andn rdi,rdi,rbp                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c0 f2 fd}
0043h or rdi,rbx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b fb}
0046h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0049h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
004ch cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
004fh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c ce}
0051h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> not<byte>(ReadOnlySpan<byte> src, Span<byte> dst)
; not_g[8u](uspan8u,span8u)[64] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1e 4d 63 d1 4e 8d 1c 12 46 0f b6 14 10 41 f7 d2 45 0f b6 d2 45 88 13 41 ff c1 45 3b c8 7c e2 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_SBB
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
; not_g[8i](uspan8i,span8i)[64] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1e 4d 63 d1 4e 8d 1c 12 4e 0f be 14 10 41 f7 d2 4d 0f be d2 45 88 13 41 ff c1 45 3b c8 7c e2 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_SBB
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
; not_g[16u](uspan16u,span16u)[65] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1f 4d 63 d1 4e 8d 1c 52 46 0f b7 14 50 41 f7 d2 45 0f b7 d2 66 45 89 13 41 ff c1 45 3b c8 7c e1 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; Span<short> not<short>(ReadOnlySpan<short> src, Span<short> dst)
; not_g[16i](uspan16i,span16i)[65] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1f 4d 63 d1 4e 8d 1c 52 4e 0f bf 14 50 41 f7 d2 4d 0f bf d2 66 45 89 13 41 ff c1 45 3b c8 7c e1 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; not_g[32u](uspan32u,span32u)[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4e 8d 1c 92 46 8b 14 90 41 f7 d2 45 89 13 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
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
; not_g[32i](uspan32i,span32i)[59] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 19 4d 63 d1 4e 8d 1c 92 46 8b 14 90 41 f7 d2 45 89 13 41 ff c1 45 3b c8 7c e7 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
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
; not_g[64u](uspan64u,span64u)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 f7 d3 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; not_g[64i](uspan64i,span64i)[62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 f7 d3 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
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
; Span<byte> srl<byte>(ReadOnlySpan<byte> src, byte count, Span<byte> dst)
; srl_g[8u](uspan8u,8u,span8u)[72] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 27 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 0a 40 0f b6 3c 0a 41 8b c8 d3 ef 40 0f b6 cf 88 0e 41 ff c3 45 3b d9 7c e1 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0026h movzx edi,byte ptr [rdx+rcx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 0a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0030h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0034h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0036h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0039h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003ch jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
003eh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0041h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> srl<sbyte>(ReadOnlySpan<sbyte> src, byte count, Span<sbyte> dst)
; srl_g[8i](uspan8i,8u,span8i)[72] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 27 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 0a 48 0f be 3c 0a 41 8b c8 d3 ef 48 0f be cf 88 0e 41 ff c3 45 3b d9 7c e1 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0026h movsx rdi,byte ptr [rdx+rcx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 0a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0030h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0034h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0036h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0039h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003ch jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
003eh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0041h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> srl<ushort>(ReadOnlySpan<ushort> src, byte count, Span<ushort> dst)
; srl_g[16u](uspan16u,8u,span16u)[71] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 26 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 4a 0f b7 3c 4a 41 8b c8 d3 ef 0f b7 cf 66 89 0e 41 ff c3 45 3b d9 7c e2 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0026h movzx edi,word ptr [rdx+rcx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 4a}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002fh movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0032h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0035h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0038h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003bh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
003dh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0040h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> srl<short>(ReadOnlySpan<short> src, byte count, Span<short> dst)
; srl_g[16i](uspan16i,8u,span16i)[73] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 28 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 4a 48 0f bf 3c 4a 41 8b c8 d3 ef 48 0f bf cf 66 89 0e 41 ff c3 45 3b d9 7c e0 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0026h movsx rdi,word ptr [rdx+rcx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 4a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0030h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
0034h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0037h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003ah cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003dh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003fh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0042h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> srl<uint>(ReadOnlySpan<uint> src, byte count, Span<uint> dst)
; srl_g[32u](uspan32u,8u,span32u)[66] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 21 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b c8 d3 ef 89 3e 41 ff c3 45 3b d9 7c e7 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0026h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0029h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002ch shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002eh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> srl<int>(ReadOnlySpan<int> src, byte count, Span<int> dst)
; srl_g[32i](uspan32i,8u,span32i)[66] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 21 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b c8 d3 ef 89 3e 41 ff c3 45 3b d9 7c e7 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0026h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0029h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002ch shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002eh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> srl<ulong>(ReadOnlySpan<ulong> src, byte count, Span<ulong> dst)
; srl_g[64u](uspan64u,8u,span64u)[69] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 24 45 0f b6 c0 41 83 e0 3f 49 63 cb 49 8d 34 ca 48 8b 3c ca 41 8b c8 48 d3 ef 48 89 3e 41 ff c3 45 3b d9 7c e4 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 3f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0026h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shr rdi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ef}
0030h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0033h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0036h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0039h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
003bh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003eh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> srl<long>(ReadOnlySpan<long> src, byte count, Span<long> dst)
; srl_g[64i](uspan64i,8u,span64i)[69] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 24 45 0f b6 c0 41 83 e0 3f 49 63 cb 49 8d 34 ca 48 8b 3c ca 41 8b c8 48 d3 ef 48 89 3e 41 ff c3 45 3b d9 7c e4 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 3f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0026h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shr rdi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ef}
0030h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0033h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0036h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0039h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
003bh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003eh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> srlv<byte>(ReadOnlySpan<byte> src, ReadOnlySpan<byte> counts, Span<byte> dst)
; srlv_g[8u](uspan8u,uspan8u,span8u)[73] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 25 49 63 cb 49 8d 34 0a 40 0f b6 3c 0a 41 0f b6 0c 08 40 0f b6 ff d3 ef 40 0f b6 cf 88 0e 41 ff c3 45 3b d9 7c db 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0021h movzx edi,byte ptr [rdx+rcx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 0a}
0026h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002bh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
002fh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0031h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0035h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0037h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003ah cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0042h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> srlv<sbyte>(ReadOnlySpan<sbyte> src, ReadOnlySpan<sbyte> counts, Span<sbyte> dst)
; srlv_g[8i](uspan8i,uspan8i,span8i)[76] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 28 49 63 cb 49 8d 34 0a 48 0f be 3c 0a 49 0f be 0c 08 0f b6 c9 48 0f be ff d3 ef 48 0f be cf 88 0e 41 ff c3 45 3b d9 7c d8 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0021h movsx rdi,byte ptr [rdx+rcx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 0a}
0026h movsx rcx,byte ptr [r8+rcx]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 0c 08}
002bh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002eh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0032h shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0034h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0038h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
003ah inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003dh cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0045h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> srlv<ushort>(ReadOnlySpan<ushort> src, ReadOnlySpan<ushort> counts, Span<ushort> dst)
; srlv_g[16u](uspan16u,uspan16u,span16u)[74] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 26 49 63 cb 49 8d 34 4a 0f b7 3c 4a 41 0f b7 0c 48 0f b6 c9 0f b7 ff d3 ef 0f b7 cf 66 89 0e 41 ff c3 45 3b d9 7c da 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0021h movzx edi,word ptr [rdx+rcx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 4a}
0025h movzx ecx,word ptr [r8+rcx*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 0c 48}
002ah movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002dh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0030h shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0032h movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0035h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0038h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003bh cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0043h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> srlv<short>(ReadOnlySpan<short> src, ReadOnlySpan<short> counts, Span<short> dst)
; srlv_g[16i](uspan16i,uspan16i,span16i)[77] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 29 49 63 cb 49 8d 34 4a 48 0f bf 3c 4a 49 0f bf 0c 48 0f b6 c9 48 0f bf ff d3 ef 48 0f bf cf 66 89 0e 41 ff c3 45 3b d9 7c d7 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0021h movsx rdi,word ptr [rdx+rcx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 4a}
0026h movsx rcx,word ptr [r8+rcx*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 0c 48}
002bh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002eh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0032h shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0034h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
0038h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
003bh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003eh cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0046h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> srlv<uint>(ReadOnlySpan<uint> src, ReadOnlySpan<uint> counts, Span<uint> dst)
; srlv_g[32u](uspan32u,uspan32u,span32u)[65] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 1d 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b 0c 88 0f b6 c9 d3 ef 89 3e 41 ff c3 45 3b d9 7c e3 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0021h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0024h mov ecx,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 0c 88}
0028h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002bh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002dh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
002fh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0032h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003ah mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> srlv<int>(ReadOnlySpan<int> src, ReadOnlySpan<int> counts, Span<int> dst)
; srlv_g[32i](uspan32i,uspan32i,span32i)[65] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 1d 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b 0c 88 0f b6 c9 d3 ef 89 3e 41 ff c3 45 3b d9 7c e3 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0021h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0024h mov ecx,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 0c 88}
0028h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002bh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002dh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
002fh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0032h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003ah mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> srlv<ulong>(ReadOnlySpan<ulong> src, ReadOnlySpan<ulong> counts, Span<ulong> dst)
; srlv_g[64u](uspan64u,uspan64u,span64u)[68] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 20 49 63 cb 49 8d 34 ca 48 8b 3c ca 49 8b 0c c8 0f b6 c9 48 d3 ef 48 89 3e 41 ff c3 45 3b d9 7c e0 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0021h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
0025h mov rcx,[r8+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 0c c8}
0029h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002ch shr rdi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ef}
002fh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0032h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0035h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003dh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> srlv<long>(ReadOnlySpan<long> src, ReadOnlySpan<long> counts, Span<long> dst)
; srlv_g[64i](uspan64i,uspan64i,span64i)[68] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 20 49 63 cb 49 8d 34 ca 48 8b 3c ca 49 8b 0c c8 0f b6 c9 48 d3 ef 48 89 3e 41 ff c3 45 3b d9 7c e0 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0021h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
0025h mov rcx,[r8+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 0c c8}
0029h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002ch shr rdi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ef}
002fh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0032h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0035h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003dh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> sll<byte>(ReadOnlySpan<byte> src, byte count, Span<byte> dst)
; sll_g[8u](uspan8u,8u,span8u)[72] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 27 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 0a 40 0f b6 3c 0a 41 8b c8 d3 e7 40 0f b6 cf 88 0e 41 ff c3 45 3b d9 7c e1 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0026h movzx edi,byte ptr [rdx+rcx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 0a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0030h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0034h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0036h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0039h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003ch jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
003eh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0041h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> sll<sbyte>(ReadOnlySpan<sbyte> src, byte count, Span<sbyte> dst)
; sll_g[8i](uspan8i,8u,span8i)[72] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 27 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 0a 48 0f be 3c 0a 41 8b c8 d3 e7 48 0f be cf 88 0e 41 ff c3 45 3b d9 7c e1 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0026h movsx rdi,byte ptr [rdx+rcx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 0a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0030h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0034h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0036h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0039h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003ch jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
003eh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0041h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> sll<ushort>(ReadOnlySpan<ushort> src, byte count, Span<ushort> dst)
; sll_g[16u](uspan16u,8u,span16u)[71] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 26 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 4a 0f b7 3c 4a 41 8b c8 d3 e7 0f b7 cf 66 89 0e 41 ff c3 45 3b d9 7c e2 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0026h movzx edi,word ptr [rdx+rcx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 4a}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002fh movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0032h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0035h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0038h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003bh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
003dh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0040h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> sll<short>(ReadOnlySpan<short> src, byte count, Span<short> dst)
; sll_g[16i](uspan16i,8u,span16i)[73] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 28 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 4a 48 0f bf 3c 4a 41 8b c8 d3 e7 48 0f bf cf 66 89 0e 41 ff c3 45 3b d9 7c e0 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0026h movsx rdi,word ptr [rdx+rcx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 4a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0030h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
0034h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0037h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003ah cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003dh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003fh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0042h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> sll<uint>(ReadOnlySpan<uint> src, byte count, Span<uint> dst)
; sll_g[32u](uspan32u,8u,span32u)[66] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 21 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b c8 d3 e7 89 3e 41 ff c3 45 3b d9 7c e7 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0026h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0029h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002ch shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002eh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> sll<int>(ReadOnlySpan<int> src, byte count, Span<int> dst)
; sll_g[32i](uspan32i,8u,span32i)[66] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 21 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b c8 d3 e7 89 3e 41 ff c3 45 3b d9 7c e7 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0026h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0029h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002ch shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002eh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> sll<ulong>(ReadOnlySpan<ulong> src, byte count, Span<ulong> dst)
; sll_g[64u](uspan64u,8u,span64u)[69] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 24 45 0f b6 c0 41 83 e0 3f 49 63 cb 49 8d 34 ca 48 8b 3c ca 41 8b c8 48 d3 e7 48 89 3e 41 ff c3 45 3b d9 7c e4 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 3f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0026h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shl rdi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e7}
0030h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0033h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0036h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0039h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
003bh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003eh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> sll<long>(ReadOnlySpan<long> src, byte count, Span<long> dst)
; sll_g[64i](uspan64i,8u,span64i)[69] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 24 45 0f b6 c0 41 83 e0 3f 49 63 cb 49 8d 34 ca 48 8b 3c ca 41 8b c8 48 d3 e7 48 89 3e 41 ff c3 45 3b d9 7c e4 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 3f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0026h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shl rdi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e7}
0030h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0033h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0036h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0039h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
003bh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003eh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> sllv<byte>(ReadOnlySpan<byte> src, ReadOnlySpan<byte> counts, Span<byte> dst)
; sllv_g[8u](uspan8u,uspan8u,span8u)[73] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 25 49 63 cb 49 8d 34 0a 40 0f b6 3c 0a 41 0f b6 0c 08 40 0f b6 ff d3 e7 40 0f b6 cf 88 0e 41 ff c3 45 3b d9 7c db 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0021h movzx edi,byte ptr [rdx+rcx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 0a}
0026h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002bh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
002fh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0031h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0035h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0037h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003ah cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0042h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> sllv<sbyte>(ReadOnlySpan<sbyte> src, ReadOnlySpan<sbyte> counts, Span<sbyte> dst)
; sllv_g[8i](uspan8i,uspan8i,span8i)[76] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 28 49 63 cb 49 8d 34 0a 48 0f be 3c 0a 49 0f be 0c 08 0f b6 c9 48 0f be ff d3 e7 48 0f be cf 88 0e 41 ff c3 45 3b d9 7c d8 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0021h movsx rdi,byte ptr [rdx+rcx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 0a}
0026h movsx rcx,byte ptr [r8+rcx]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 0c 08}
002bh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002eh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0032h shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0034h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0038h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
003ah inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003dh cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0045h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> sllv<ushort>(ReadOnlySpan<ushort> src, ReadOnlySpan<ushort> counts, Span<ushort> dst)
; sllv_g[16u](uspan16u,uspan16u,span16u)[74] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 26 49 63 cb 49 8d 34 4a 0f b7 3c 4a 41 0f b7 0c 48 0f b6 c9 0f b7 ff d3 e7 0f b7 cf 66 89 0e 41 ff c3 45 3b d9 7c da 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0021h movzx edi,word ptr [rdx+rcx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 4a}
0025h movzx ecx,word ptr [r8+rcx*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 0c 48}
002ah movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002dh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0030h shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0032h movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0035h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0038h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003bh cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0043h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> sllv<short>(ReadOnlySpan<short> src, ReadOnlySpan<short> counts, Span<short> dst)
; sllv_g[16i](uspan16i,uspan16i,span16i)[77] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 29 49 63 cb 49 8d 34 4a 48 0f bf 3c 4a 49 0f bf 0c 48 0f b6 c9 48 0f bf ff d3 e7 48 0f bf cf 66 89 0e 41 ff c3 45 3b d9 7c d7 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0021h movsx rdi,word ptr [rdx+rcx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 4a}
0026h movsx rcx,word ptr [r8+rcx*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 0c 48}
002bh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002eh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0032h shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0034h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
0038h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
003bh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003eh cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0046h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> sllv<uint>(ReadOnlySpan<uint> src, ReadOnlySpan<uint> counts, Span<uint> dst)
; sllv_g[32u](uspan32u,uspan32u,span32u)[65] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 1d 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b 0c 88 0f b6 c9 d3 e7 89 3e 41 ff c3 45 3b d9 7c e3 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0021h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0024h mov ecx,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 0c 88}
0028h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002bh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002dh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
002fh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0032h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003ah mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> sllv<int>(ReadOnlySpan<int> src, ReadOnlySpan<int> counts, Span<int> dst)
; sllv_g[32i](uspan32i,uspan32i,span32i)[65] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 1d 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b 0c 88 0f b6 c9 d3 e7 89 3e 41 ff c3 45 3b d9 7c e3 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0021h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0024h mov ecx,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 0c 88}
0028h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002bh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002dh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
002fh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0032h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003ah mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> sllv<ulong>(ReadOnlySpan<ulong> src, ReadOnlySpan<ulong> counts, Span<ulong> dst)
; sllv_g[64u](uspan64u,uspan64u,span64u)[68] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 20 49 63 cb 49 8d 34 ca 48 8b 3c ca 49 8b 0c c8 0f b6 c9 48 d3 e7 48 89 3e 41 ff c3 45 3b d9 7c e0 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0021h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
0025h mov rcx,[r8+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 0c c8}
0029h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002ch shl rdi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e7}
002fh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0032h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0035h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003dh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> sllv<long>(ReadOnlySpan<long> src, ReadOnlySpan<long> counts, Span<long> dst)
; sllv_g[64i](uspan64i,uspan64i,span64i)[68] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 20 49 63 cb 49 8d 34 ca 48 8b 3c ca 49 8b 0c c8 0f b6 c9 48 d3 e7 48 89 3e 41 ff c3 45 3b d9 7c e0 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0021h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
0025h mov rcx,[r8+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 0c c8}
0029h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002ch shl rdi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e7}
002fh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0032h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0035h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003dh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte dot<byte>(ReadOnlySpan<byte> lhs, ReadOnlySpan<byte> rhs)
; dot_g[8u](uspan8u,uspan8u)[72] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 2c 4d 63 d1 46 0f b6 1c 11 46 0f b6 14 12 45 0f b6 db 45 0f b6 db 45 0f b6 d2 45 0f af d3 45 03 c2 45 0f b6 c0 41 ff c1 44 3b c8 7c d4 41 8b c0 c3}
; TermCode = CTC_RET_SBB
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
; dot_g[8i](uspan8i,uspan8i)[72] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 2c 4d 63 d1 4e 0f be 1c 11 4e 0f be 14 12 4d 0f be db 4d 0f be db 4d 0f be d2 45 0f af d3 45 03 c2 4d 0f be c0 41 ff c1 44 3b c8 7c d4 41 8b c0 c3}
; TermCode = CTC_RET_SBB
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
; dot_g[16u](uspan16u,uspan16u)[72] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 2c 4d 63 d1 46 0f b7 1c 51 46 0f b7 14 52 45 0f b7 db 45 0f b7 db 45 0f b7 d2 45 0f af d3 45 03 c2 45 0f b7 c0 41 ff c1 44 3b c8 7c d4 41 8b c0 c3}
; TermCode = CTC_RET_SBB
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
; dot_g[16i](uspan16i,uspan16i)[72] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 2c 4d 63 d1 4e 0f bf 1c 51 4e 0f bf 14 52 4d 0f bf db 4d 0f bf db 4d 0f bf d2 45 0f af d3 45 03 c2 4d 0f bf c0 41 ff c1 44 3b c8 7c d4 41 8b c0 c3}
; TermCode = CTC_RET_SBB
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
; dot_g[32u](uspan32u,uspan32u)[54] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 1a 4d 63 d1 46 8b 1c 91 46 8b 14 92 45 0f af d3 45 03 c2 41 ff c1 44 3b c8 7c e6 41 8b c0 c3}
; TermCode = CTC_RET_Zx3
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
; dot_g[32i](uspan32i,uspan32i)[54] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 1a 4d 63 d1 46 8b 1c 91 46 8b 14 92 45 0f af d3 45 03 c2 41 ff c1 44 3b c8 7c e6 41 8b c0 c3}
; TermCode = CTC_RET_Zx3
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
; dot_g[64u](uspan64u,uspan64u)[57] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 1d 4d 63 d1 4e 8b 14 d1 4d 63 d9 4e 8b 1c da 4d 0f af d3 4d 03 c2 41 ff c1 44 3b c8 7c e3 49 8b c0 c3}
; TermCode = CTC_RET_Zx3
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
; dot_g[64i](uspan64i,uspan64i)[57] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 1d 4d 63 d1 4e 8b 14 d1 4d 63 d9 4e 8b 1c da 4d 0f af d3 4d 03 c2 41 ff c1 44 3b c8 7c e3 49 8b c0 c3}
; TermCode = CTC_RET_Zx3
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
; dot_g[32f](uspan32f,uspan32f)[77] = {50 c5 f8 77 90 8b 41 08 48 8b 09 48 8b 12 45 33 c0 44 89 44 24 04 85 c0 7e 28 4d 63 c8 c4 a1 7a 10 04 89 c4 a1 7a 10 0c 8a c5 fa 10 54 24 04 c4 e2 71 a9 c2 c5 fa 11 44 24 04 41 ff c0 44 3b c0 7c d8 c5 fa 10 44 24 04 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
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
; dot_g[64f](uspan64f,uspan64f)[73] = {50 c5 f8 77 90 8b 41 08 48 8b 09 48 8b 12 45 33 c0 4c 89 04 24 85 c0 7e 26 4d 63 c8 c4 a1 7b 10 04 c9 c4 a1 7b 10 0c ca c5 fb 10 14 24 c4 e2 f1 a9 c2 c5 fb 11 04 24 41 ff c0 44 3b c0 7c da c5 fb 10 04 24 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
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
------------------------------------------------------------------------------------------------------------------------
; Span<byte> pow<byte>(ReadOnlySpan<byte> src, uint exp, Span<byte> dst)
; pow_g[8u](uspan8u,32u,span8u)[108] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 47 4d 63 da 4a 8d 34 18 46 0f b6 1c 1a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 22 bb 01 00 00 00 40 f6 c7 01 74 07 41 0f af db 0f b6 db d1 ef 85 ff 74 0a 45 0f af db 45 0f b6 db eb e3 88 1e 41 ff c2 45 3b d1 7c b9 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 005eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001eh movzx r11d,byte ptr [rdx+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 1a}
0023h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0026h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0029h jne short 0032h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002bh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0030h jmp short 0054h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0032h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0037h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003bh je short 0044h                          ; JE rel8 || 74 cb || encoded[2]{74 07}
003dh imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0041h movzx ebx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 db}
0044h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0046h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0048h je short 0054h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
004ah imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004eh movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0052h jmp short 0037h                         ; JMP rel8 || EB cb || encoded[2]{eb e3}
0054h mov [rsi],bl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 1e}
0056h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0059h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005ch jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c b9}
005eh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0061h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0065h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> pow<sbyte>(ReadOnlySpan<sbyte> src, uint exp, Span<sbyte> dst)
; pow_g[8i](uspan8i,32u,span8i)[109] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 48 4d 63 da 4a 8d 34 18 4e 0f be 1c 1a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 23 bb 01 00 00 00 40 f6 c7 01 74 08 41 0f af db 48 0f be db d1 ef 85 ff 74 0a 45 0f af db 4d 0f be db eb e2 88 1e 41 ff c2 45 3b d1 7c b8 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 005fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 48}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001eh movsx r11,byte ptr [rdx+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 1a}
0023h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0026h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0029h jne short 0032h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002bh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0030h jmp short 0055h                         ; JMP rel8 || EB cb || encoded[2]{eb 23}
0032h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0037h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003bh je short 0045h                          ; JE rel8 || 74 cb || encoded[2]{74 08}
003dh imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0041h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
0045h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0047h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0049h je short 0055h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
004bh imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004fh movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
0053h jmp short 0037h                         ; JMP rel8 || EB cb || encoded[2]{eb e2}
0055h mov [rsi],bl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 1e}
0057h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005dh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c b8}
005fh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0062h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0066h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0069h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> pow<ushort>(ReadOnlySpan<ushort> src, uint exp, Span<ushort> dst)
; pow_g[16u](uspan16u,32u,span16u)[109] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 48 4d 63 da 4a 8d 34 58 46 0f b7 1c 5a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 22 bb 01 00 00 00 40 f6 c7 01 74 07 41 0f af db 0f b7 db d1 ef 85 ff 74 0a 45 0f af db 45 0f b7 db eb e3 66 89 1e 41 ff c2 45 3b d1 7c b8 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 005fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 48}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 58}
001eh movzx r11d,word ptr [rdx+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 5a}
0023h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0026h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0029h jne short 0032h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002bh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0030h jmp short 0054h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0032h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0037h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003bh je short 0044h                          ; JE rel8 || 74 cb || encoded[2]{74 07}
003dh imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0041h movzx ebx,bx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 db}
0044h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0046h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0048h je short 0054h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
004ah imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004eh movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
0052h jmp short 0037h                         ; JMP rel8 || EB cb || encoded[2]{eb e3}
0054h mov [rsi],bx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 1e}
0057h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005dh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c b8}
005fh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0062h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0066h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0069h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> pow<short>(ReadOnlySpan<short> src, uint exp, Span<short> dst)
; pow_g[16i](uspan16i,32u,span16i)[110] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 49 4d 63 da 4a 8d 34 58 4e 0f bf 1c 5a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 23 bb 01 00 00 00 40 f6 c7 01 74 08 41 0f af db 48 0f bf db d1 ef 85 ff 74 0a 45 0f af db 4d 0f bf db eb e2 66 89 1e 41 ff c2 45 3b d1 7c b7 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0060h                         ; JLE rel8 || 7E cb || encoded[2]{7e 49}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 58}
001eh movsx r11,word ptr [rdx+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 5a}
0023h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0026h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0029h jne short 0032h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002bh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0030h jmp short 0055h                         ; JMP rel8 || EB cb || encoded[2]{eb 23}
0032h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0037h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003bh je short 0045h                          ; JE rel8 || 74 cb || encoded[2]{74 08}
003dh imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0041h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
0045h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0047h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0049h je short 0055h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
004bh imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004fh movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
0053h jmp short 0037h                         ; JMP rel8 || EB cb || encoded[2]{eb e2}
0055h mov [rsi],bx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 1e}
0058h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c b7}
0060h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0063h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0067h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> pow<uint>(ReadOnlySpan<uint> src, uint exp, Span<uint> dst)
; pow_g[32u](uspan32u,32u,span32u)[100] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 3f 4d 63 da 4a 8d 34 98 46 8b 1c 9a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 1b bb 01 00 00 00 40 f6 c7 01 74 04 41 0f af db d1 ef 85 ff 74 06 45 0f af db eb ea 89 1e 41 ff c2 45 3b d1 7c c1 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0056h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3f}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 98}
001eh mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0022h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0025h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0028h jne short 0031h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002ah mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
002fh jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0031h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0036h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003ah je short 0040h                          ; JE rel8 || 74 cb || encoded[2]{74 04}
003ch imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0040h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0042h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0044h je short 004ch                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0046h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004ah jmp short 0036h                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
004ch mov [rsi],ebx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 1e}
004eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0051h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0054h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c c1}
0056h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0059h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
005dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> pow<int>(ReadOnlySpan<int> src, uint exp, Span<int> dst)
; pow_g[32i](uspan32i,32u,span32i)[100] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 3f 4d 63 da 4a 8d 34 98 46 8b 1c 9a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 1b bb 01 00 00 00 40 f6 c7 01 74 04 41 0f af db d1 ef 85 ff 74 06 45 0f af db eb ea 89 1e 41 ff c2 45 3b d1 7c c1 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0056h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3f}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 98}
001eh mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0022h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0025h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0028h jne short 0031h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002ah mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
002fh jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0031h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0036h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003ah je short 0040h                          ; JE rel8 || 74 cb || encoded[2]{74 04}
003ch imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0040h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0042h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0044h je short 004ch                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0046h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004ah jmp short 0036h                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
004ch mov [rsi],ebx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 1e}
004eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0051h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0054h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c c1}
0056h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0059h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
005dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> pow<ulong>(ReadOnlySpan<ulong> src, uint exp, Span<ulong> dst)
; pow_g[64u](uspan64u,32u,span64u)[104] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 43 4d 63 da 4e 8d 1c d8 49 63 f2 48 8b 34 f2 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 1b bb 01 00 00 00 40 f6 c7 01 74 04 48 0f af de d1 ef 85 ff 74 06 48 0f af f6 eb ea 49 89 1b 41 ff c2 45 3b d1 7c bd 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 005ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 43}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea r11,[rax+r11*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c d8}
001eh movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0021h mov rsi,[rdx+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f2}
0025h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0028h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
002bh jne short 0034h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002dh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0032h jmp short 004fh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0034h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0039h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003dh je short 0043h                          ; JE rel8 || 74 cb || encoded[2]{74 04}
003fh imul rbx,rsi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af de}
0043h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0045h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0047h je short 004fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0049h imul rsi,rsi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af f6}
004dh jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
004fh mov [r11],rbx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 1b}
0052h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0055h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0058h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
005ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
005dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0061h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> pow<long>(ReadOnlySpan<long> src, uint exp, Span<long> dst)
; pow_g[64i](uspan64i,32u,span64i)[104] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 43 4d 63 da 4e 8d 1c d8 49 63 f2 48 8b 34 f2 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 1b bb 01 00 00 00 40 f6 c7 01 74 04 48 0f af de d1 ef 85 ff 74 06 48 0f af f6 eb ea 49 89 1b 41 ff c2 45 3b d1 7c bd 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 005ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 43}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea r11,[rax+r11*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c d8}
001eh movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0021h mov rsi,[rdx+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f2}
0025h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0028h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
002bh jne short 0034h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002dh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0032h jmp short 004fh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0034h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0039h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003dh je short 0043h                          ; JE rel8 || 74 cb || encoded[2]{74 04}
003fh imul rbx,rsi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af de}
0043h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0045h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0047h je short 004fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0049h imul rsi,rsi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af f6}
004dh jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
004fh mov [r11],rbx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 1b}
0052h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0055h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0058h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
005ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
005dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0061h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<float> pow<float>(ReadOnlySpan<float> src, uint exp, Span<float> dst)
; pow_g[32f](uspan32f,32u,span32f)[120] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 c5 f8 29 74 24 20 48 8b f1 49 8b 39 41 8b 59 08 48 8b 2a 45 33 f6 85 db 7e 33 41 8b c0 c5 f8 57 c0 c4 e1 fb 2a c0 c5 cb 5a f0 49 63 c6 4c 8d 3c 87 c5 fa 10 44 85 00 c5 f8 28 ce e8 e1 91 73 5f c4 c1 7a 11 07 41 ff c6 44 3b f3 7c dd 48 89 3e 89 5e 08 48 8b c6 c5 f8 28 74 24 20 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = CTC_RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh vmovaps [rsp+20h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 20}
0015h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0018h mov rdi,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 39}
001bh mov ebx,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 59 08}
001fh mov rbp,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 2a}
0022h xor r14d,r14d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 f6}
0025h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0027h jle short 005ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 33}
0029h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
0035h vcvtsd2ss xmm6,xmm6,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 cb 5a f0}
0039h movsxd rax,r14d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c6}
003ch lea r15,[rdi+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 3c 87}
0040h vmovss xmm0,dword ptr [rbp+rax*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 85 00}
0046h vmovaps xmm1,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ce}
004ah call 7ff8274b8d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 91 73 5f}
004fh vmovss dword ptr [r15],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c4 c1 7a 11 07}
0054h inc r14d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c6}
0057h cmp r14d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f3}
005ah jl short 0039h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
005ch mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
005fh mov [rsi+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 5e 08}
0062h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0065h vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
006bh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
006fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0070h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0075h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<double> pow<double>(ReadOnlySpan<double> src, uint exp, Span<double> dst)
; pow_g[64f](uspan64f,32u,span64f)[116] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 c5 f8 29 74 24 20 48 8b f1 49 8b 39 41 8b 59 08 48 8b 2a 45 33 f6 85 db 7e 2f 41 8b c0 c5 c8 57 f6 c4 e1 cb 2a f0 49 63 c6 4c 8d 3c c7 c5 fb 10 44 c5 00 c5 f8 28 ce e8 f5 8e 73 5f c4 c1 7b 11 07 41 ff c6 44 3b f3 7c dd 48 89 3e 89 5e 08 48 8b c6 c5 f8 28 74 24 20 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = CTC_RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh vmovaps [rsp+20h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 20}
0015h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0018h mov rdi,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 39}
001bh mov ebx,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 59 08}
001fh mov rbp,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 2a}
0022h xor r14d,r14d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 f6}
0025h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0027h jle short 0058h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
0029h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
002ch vxorps xmm6,xmm6,xmm6                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 c8 57 f6}
0030h vcvtsi2sd xmm6,xmm6,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 cb 2a f0}
0035h movsxd rax,r14d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c6}
0038h lea r15,[rdi+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 3c c7}
003ch vmovsd xmm0,qword ptr [rbp+rax*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 c5 00}
0042h vmovaps xmm1,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ce}
0046h call 7ff8274b8ee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 8e 73 5f}
004bh vmovsd qword ptr [r15],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c4 c1 7b 11 07}
0050h inc r14d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c6}
0053h cmp r14d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f3}
0056h jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
0058h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
005bh mov [rsi+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 5e 08}
005eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0061h vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
0067h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
006bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0071h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte avg<byte>(ReadOnlySpan<byte> src)
; avg_g[8u](uspan8u)[89] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 18 4d 63 c8 46 0f b6 0c 08 49 03 c9 72 27 41 83 c0 01 70 21 44 3b c2 7c e8 85 d2 7c 18 44 8b c2 48 8b c1 33 d2 49 f7 f0 48 3d ff 00 00 00 77 05 48 83 c4 28 c3 e8 93 fb 60 5f cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 18}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h movzx r9d,byte ptr [rax+r9]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 0c 08}
001ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
001fh jb short 0048h                          ; JB rel8 || 72 cb || encoded[2]{72 27}
0021h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0025h jo short 0048h                          ; JO rel8 || 70 cb || encoded[2]{70 21}
0027h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002ah jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
002ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
002eh jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c 18}
0030h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0033h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0036h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0038h div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
003bh cmp rax,0ffh                            ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff 00 00 00}
0041h ja short 0048h                          ; JA rel8 || 77 cb || encoded[2]{77 05}
0043h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
0048h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 fb 60 5f}
004dh int 3                                   ; INT3 || CC || encoded[1]{cc}
004eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0050h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0053h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0056h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0058h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; sbyte avg<sbyte>(ReadOnlySpan<sbyte> src)
; avg_g[8i](uspan8i)[93] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 1b 4d 63 c8 4e 0f be 0c 08 4d 63 c9 49 03 c9 70 27 41 83 c0 01 70 21 44 3b c2 7c e5 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 83 f8 7f 7f 0b 48 83 f8 80 7c 05 48 83 c4 28 c3 e8 20 f7 60 5f cc 00 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h movsx r9,byte ptr [rax+r9]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 0c 08}
001ch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001fh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0022h jo short 004bh                          ; JO rel8 || 70 cb || encoded[2]{70 27}
0024h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0028h jo short 004bh                          ; JO rel8 || 70 cb || encoded[2]{70 21}
002ah cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002dh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
002fh movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0037h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
003ah cmp rax,7fh                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 7f}
003eh jg short 004bh                          ; JG rel8 || 7F cb || encoded[2]{7f 0b}
0040h cmp rax,0ffffffffffffff80h              ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 80}
0044h jl short 004bh                          ; JL rel8 || 7C cb || encoded[2]{7c 05}
0046h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
004bh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 f7 60 5f}
0050h int 3                                   ; INT3 || CC || encoded[1]{cc}
0051h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0053h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0055h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0057h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
005ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
005ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ushort avg<ushort>(ReadOnlySpan<ushort> src)
; avg_g[16u](uspan16u)[89] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 18 4d 63 c8 46 0f b7 0c 48 49 03 c9 72 27 41 83 c0 01 70 21 44 3b c2 7c e8 85 d2 7c 18 44 8b c2 48 8b c1 33 d2 49 f7 f0 48 3d ff ff 00 00 77 05 48 83 c4 28 c3 e8 b3 f6 60 5f cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 18}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h movzx r9d,word ptr [rax+r9*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 0c 48}
001ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
001fh jb short 0048h                          ; JB rel8 || 72 cb || encoded[2]{72 27}
0021h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0025h jo short 0048h                          ; JO rel8 || 70 cb || encoded[2]{70 21}
0027h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002ah jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
002ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
002eh jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c 18}
0030h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0033h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0036h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0038h div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
003bh cmp rax,0ffffh                          ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff 00 00}
0041h ja short 0048h                          ; JA rel8 || 77 cb || encoded[2]{77 05}
0043h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
0048h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f6 60 5f}
004dh int 3                                   ; INT3 || CC || encoded[1]{cc}
004eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0050h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0053h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0056h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0058h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; short avg<short>(ReadOnlySpan<short> src)
; avg_g[16i](uspan16i)[97] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 1b 4d 63 c8 4e 0f bf 0c 48 4d 63 c9 49 03 c9 70 2b 41 83 c0 01 70 25 44 3b c2 7c e5 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 3d ff 7f 00 00 7f 0d 48 3d 00 80 ff ff 7c 05 48 83 c4 28 c3 e8 3c f6 60 5f cc 00 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h movsx r9,word ptr [rax+r9*2]            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 0c 48}
001ch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001fh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0022h jo short 004fh                          ; JO rel8 || 70 cb || encoded[2]{70 2b}
0024h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0028h jo short 004fh                          ; JO rel8 || 70 cb || encoded[2]{70 25}
002ah cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002dh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
002fh movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0037h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
003ah cmp rax,7fffh                           ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff 7f 00 00}
0040h jg short 004fh                          ; JG rel8 || 7F cb || encoded[2]{7f 0d}
0042h cmp rax,0ffffffffffff8000h              ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 80 ff ff}
0048h jl short 004fh                          ; JL rel8 || 7C cb || encoded[2]{7c 05}
004ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c f6 60 5f}
0054h int 3                                   ; INT3 || CC || encoded[1]{cc}
0055h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0057h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0059h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
005bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
005eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0060h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; uint avg<uint>(ReadOnlySpan<uint> src)
; avg_g[32u](uspan32u)[89] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 17 4d 63 c8 46 8b 0c 88 49 03 c9 72 28 41 83 c0 01 70 22 44 3b c2 7c e9 85 d2 7c 19 44 8b c2 48 8b c1 33 d2 49 f7 f0 48 8b d0 48 c1 ea 20 75 05 48 83 c4 28 c3 e8 c3 f1 60 5f cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h mov r9d,[rax+r9*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 0c 88}
001bh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
001eh jb short 0048h                          ; JB rel8 || 72 cb || encoded[2]{72 28}
0020h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0024h jo short 0048h                          ; JO rel8 || 70 cb || encoded[2]{70 22}
0026h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0029h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
002bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
002dh jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c 19}
002fh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0037h div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
003ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003dh shr rdx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 20}
0041h jne short 0048h                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
0043h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
0048h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 f1 60 5f}
004dh int 3                                   ; INT3 || CC || encoded[1]{cc}
004eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0050h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0053h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0056h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0058h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; int avg<int>(ReadOnlySpan<int> src)
; avg_g[32i](uspan32i)[93] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 1a 4d 63 c8 46 8b 0c 88 4d 63 c9 49 03 c9 70 2b 41 83 c0 01 70 25 44 3b c2 7c e6 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 3d ff ff ff 7f 7f 0d 48 3d 00 00 00 80 7c 05 48 83 c4 28 c3 e8 4d f1 60 5f cc 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h mov r9d,[rax+r9*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 0c 88}
001bh movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001eh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0021h jo short 004eh                          ; JO rel8 || 70 cb || encoded[2]{70 2b}
0023h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0027h jo short 004eh                          ; JO rel8 || 70 cb || encoded[2]{70 25}
0029h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002ch jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
002eh movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
0031h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0034h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0036h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0039h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
003fh jg short 004eh                          ; JG rel8 || 7F cb || encoded[2]{7f 0d}
0041h cmp rax,0ffffffff80000000h              ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 00 80}
0047h jl short 004eh                          ; JL rel8 || 7C cb || encoded[2]{7c 05}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh ret                                     ; RET || C3 || encoded[1]{c3}
004eh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d f1 60 5f}
0053h int 3                                   ; INT3 || CC || encoded[1]{cc}
0054h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0057h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
005ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
005ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ulong avg<ulong>(ReadOnlySpan<ulong> src)
; avg_g[64u](uspan64u)[77] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 14 4d 63 c8 4a 03 0c c8 72 1f 41 83 c0 01 70 19 44 3b c2 7c ec 85 d2 7c 10 44 8b c2 48 8b c1 33 d2 49 f7 f0 48 83 c4 28 c3 e8 ef f0 60 5f cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 0028h                         ; JLE rel8 || 7E cb || encoded[2]{7e 14}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h add rcx,[rax+r9*8]                      ; ADD r64, r/m64 || REX.W 03 /r || encoded[4]{4a 03 0c c8}
001bh jb short 003ch                          ; JB rel8 || 72 cb || encoded[2]{72 1f}
001dh add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0021h jo short 003ch                          ; JO rel8 || 70 cb || encoded[2]{70 19}
0023h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0026h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c ec}
0028h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
002ah jl short 003ch                          ; JL rel8 || 7C cb || encoded[2]{7c 10}
002ch mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0034h div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0037h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef f0 60 5f}
0041h int 3                                   ; INT3 || CC || encoded[1]{cc}
0042h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0044h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0047h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
004ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; long avg<long>(ReadOnlySpan<long> src)
; avg_g[64i](uspan64i)[73] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 14 4d 63 c8 4a 03 0c c8 70 1b 41 83 c0 01 70 15 44 3b c2 7c ec 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 83 c4 28 c3 e8 93 f0 60 5f cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 0028h                         ; JLE rel8 || 7E cb || encoded[2]{7e 14}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h add rcx,[rax+r9*8]                      ; ADD r64, r/m64 || REX.W 03 /r || encoded[4]{4a 03 0c c8}
001bh jo short 0038h                          ; JO rel8 || 70 cb || encoded[2]{70 1b}
001dh add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0021h jo short 0038h                          ; JO rel8 || 70 cb || encoded[2]{70 15}
0023h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0026h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c ec}
0028h movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0030h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0033h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 f0 60 5f}
003dh int 3                                   ; INT3 || CC || encoded[1]{cc}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0043h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0046h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; float avg<float>(ReadOnlySpan<float> src)
; avg_g[32f](uspan32f)[65] = {48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b 01 8b 49 08 48 8d 54 24 28 48 89 02 89 4a 08 48 8d 4c 24 28 e8 0f 5b d3 ff 90 48 83 c4 38 c3 e8 3c f0 60 5f cc 00 00 00 19 04 01 00 04 62 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000eh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0011h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0014h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0019h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
001ch mov [rdx+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 4a 08}
001fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0024h call 7ff7c7ab66e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 5b d3 ff}
0029h nop                                     ; NOP || o32 90 || encoded[1]{90}
002ah add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
002fh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c f0 60 5f}
0034h int 3                                   ; INT3 || CC || encoded[1]{cc}
0035h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0037h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0039h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
003bh add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 62}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; double avg<double>(ReadOnlySpan<double> src)
; avg_g[64f](uspan64f)[65] = {48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b 01 8b 49 08 48 8d 54 24 28 48 89 02 89 4a 08 48 8d 4c 24 28 e8 c7 5a d3 ff 90 48 83 c4 38 c3 e8 ec ef 60 5f cc 00 00 00 19 04 01 00 04 62 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000eh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0011h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0014h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0019h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
001ch mov [rdx+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 4a 08}
001fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0024h call 7ff7c7ab66f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 5a d3 ff}
0029h nop                                     ; NOP || o32 90 || encoded[1]{90}
002ah add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
002fh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec ef 60 5f}
0034h int 3                                   ; INT3 || CC || encoded[1]{cc}
0035h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0037h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0039h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
003bh add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 62}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
