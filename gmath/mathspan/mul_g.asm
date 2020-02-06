------------------------------------------------------------------------------------------------------------------------
; Span<byte> mul<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; mul_gimspan8u_imspan8u_span8u[83] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2c 4d 63 da 4d 03 d8 49 63 f2 40 0f b6 34 30 49 63 fa 40 0f b6 3c 3a 40 0f b6 f6 0f af f7 40 0f b6 f6 41 88 33 41 ff c2 45 3b d1 7c d4 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; mul_gimspan8i_imspan8i_span8i[83] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2c 4d 63 da 4d 03 d8 49 63 f2 48 0f be 34 30 49 63 fa 48 0f be 3c 3a 48 0f be f6 0f af f7 48 0f be f6 41 88 33 41 ff c2 45 3b d1 7c d4 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; mul_gimspan16u_imspan16u_span16u[81] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2a 4d 63 da 4f 8d 1c 58 49 63 f2 0f b7 34 70 49 63 fa 0f b7 3c 7a 0f b7 f6 0f af f7 0f b7 f6 66 41 89 33 41 ff c2 45 3b d1 7c d6 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; mul_gimspan16i_imspan16i_span16i[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4f 8d 1c 58 49 63 f2 48 0f bf 34 70 49 63 fa 48 0f bf 3c 7a 48 0f bf f6 0f af f7 48 0f bf f6 66 41 89 33 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; mul_gimspan32u_imspan32u_span32u[69] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1e 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 0f af df 44 89 1e 41 ff c2 45 3b d1 7c e2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; mul_gimspan32i_imspan32i_span32i[69] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1e 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 44 0f af df 44 89 1e 41 ff c2 45 3b d1 7c e2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; mul_gimspan64u_imspan64u_span64u[69] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1e 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 0f af df 4c 89 1e 41 ff c2 45 3b d1 7c e2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; mul_gimspan64i_imspan64i_span64i[69] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1e 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 0f af df 4c 89 1e 41 ff c2 45 3b d1 7c e2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
