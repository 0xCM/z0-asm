------------------------------------------------------------------------------------------------------------------------
; Span<byte> sllv<byte>(ReadOnlySpan<byte> src, ReadOnlySpan<byte> counts, Span<byte> dst)
; sllv_gimspan8u_imspan8u_span8u[73] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 25 49 63 cb 49 8d 34 0a 40 0f b6 3c 0a 41 0f b6 0c 08 40 0f b6 ff d3 e7 40 0f b6 cf 88 0e 41 ff c3 45 3b d9 7c db 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZEDx3
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
; sllv_gimspan8i_imspan8i_span8i[76] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 28 49 63 cb 49 8d 34 0a 48 0f be 3c 0a 49 0f be 0c 08 0f b6 c9 48 0f be ff d3 e7 48 0f be cf 88 0e 41 ff c3 45 3b d9 7c d8 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_SBB
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
; sllv_gimspan16u_imspan16u_span16u[74] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 26 49 63 cb 49 8d 34 4a 0f b7 3c 4a 41 0f b7 0c 48 0f b6 c9 0f b7 ff d3 e7 0f b7 cf 66 89 0e 41 ff c3 45 3b d9 7c da 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZEDx3
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
; sllv_gimspan16i_imspan16i_span16i[77] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 29 49 63 cb 49 8d 34 4a 48 0f bf 3c 4a 49 0f bf 0c 48 0f b6 c9 48 0f bf ff d3 e7 48 0f bf cf 66 89 0e 41 ff c3 45 3b d9 7c d7 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZEDx3
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
; sllv_gimspan32u_imspan32u_span32u[65] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 1d 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b 0c 88 0f b6 c9 d3 e7 89 3e 41 ff c3 45 3b d9 7c e3 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZEDx3
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
; sllv_gimspan32i_imspan32i_span32i[65] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 1d 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b 0c 88 0f b6 c9 d3 e7 89 3e 41 ff c3 45 3b d9 7c e3 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZEDx3
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
; sllv_gimspan64u_imspan64u_span64u[68] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 20 49 63 cb 49 8d 34 ca 48 8b 3c ca 49 8b 0c c8 0f b6 c9 48 d3 e7 48 89 3e 41 ff c3 45 3b d9 7c e0 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_SBB
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
; sllv_gimspan64i_imspan64i_span64i[68] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 20 49 63 cb 49 8d 34 ca 48 8b 3c ca 49 8b 0c c8 0f b6 c9 48 d3 e7 48 89 3e 41 ff c3 45 3b d9 7c e0 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_SBB
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
