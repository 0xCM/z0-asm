------------------------------------------------------------------------------------------------------------------------
; Span<byte> clamp<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; clamp_gimspan8u_imspan8u_span8u[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4b 8d 34 18 42 0f b6 3c 18 46 0f b6 1c 1a 40 0f b6 ff 40 0f b6 ff 41 3b fb 7f 02 eb 03 41 8b fb 40 88 3e 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; clamp_gimspan8i_imspan8i_span8i[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4b 8d 34 18 4a 0f be 3c 18 4e 0f be 1c 1a 48 0f be ff 48 0f be ff 41 3b fb 7f 02 eb 03 41 8b fb 40 88 3e 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; clamp_gimspan16u_imspan16u_span16u[83] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2c 4d 63 da 4b 8d 34 58 42 0f b7 3c 58 46 0f b7 1c 5a 0f b7 ff 0f b7 ff 41 3b fb 7f 02 eb 03 41 8b fb 66 89 3e 41 ff c2 45 3b d1 7c d4 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; clamp_gimspan16i_imspan16i_span16i[85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4b 8d 34 58 4a 0f bf 3c 58 4e 0f bf 1c 5a 48 0f bf ff 48 0f bf ff 41 3b fb 7f 02 eb 03 41 8b fb 66 89 3e 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; clamp_gimspan32u_imspan32u_span32u[74] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 23 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 77 02 eb 03 41 8b fb 89 3e 41 ff c2 45 3b d1 7c dd 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; clamp_gimspan32i_imspan32i_span32i[74] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 23 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 7f 02 eb 03 41 8b fb 89 3e 41 ff c2 45 3b d1 7c dd 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; clamp_gimspan64u_imspan64u_span64u[75] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 24 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 49 3b fb 77 02 eb 03 49 8b fb 48 89 3e 41 ff c2 45 3b d1 7c dc 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
; clamp_gimspan64i_imspan64i_span64i[75] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 24 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 49 3b fb 7f 02 eb 03 49 8b fb 48 89 3e 41 ff c2 45 3b d1 7c dc 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
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
