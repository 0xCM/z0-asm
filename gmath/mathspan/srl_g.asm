------------------------------------------------------------------------------------------------------------------------
; Span<byte> srl<byte>(ReadOnlySpan<byte> src, byte count, Span<byte> dst)
; srl_gimspan8u_8u_span8u[72] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 27 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 0a 40 0f b6 3c 0a 41 8b c8 d3 ef 40 0f b6 cf 88 0e 41 ff c3 45 3b d9 7c e1 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_SBB
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
; srl_gimspan8i_8u_span8i[72] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 27 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 0a 48 0f be 3c 0a 41 8b c8 d3 ef 48 0f be cf 88 0e 41 ff c3 45 3b d9 7c e1 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_SBB
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
; srl_gimspan16u_8u_span16u[71] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 26 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 4a 0f b7 3c 4a 41 8b c8 d3 ef 0f b7 cf 66 89 0e 41 ff c3 45 3b d9 7c e2 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZED_SBB
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
; srl_gimspan16i_8u_span16i[73] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 28 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 4a 48 0f bf 3c 4a 41 8b c8 d3 ef 48 0f bf cf 66 89 0e 41 ff c3 45 3b d9 7c e0 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZEDx3
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
; srl_gimspan32u_8u_span32u[66] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 21 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b c8 d3 ef 89 3e 41 ff c3 45 3b d9 7c e7 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZEDx3
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
; srl_gimspan32i_8u_span32i[66] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 21 45 0f b6 c0 41 83 e0 1f 49 63 cb 49 8d 34 8a 8b 3c 8a 41 8b c8 d3 ef 89 3e 41 ff c3 45 3b d9 7c e7 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZEDx3
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
; srl_gimspan64u_8u_span64u[69] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 24 45 0f b6 c0 41 83 e0 3f 49 63 cb 49 8d 34 ca 48 8b 3c ca 41 8b c8 48 d3 ef 48 89 3e 41 ff c3 45 3b d9 7c e4 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZEDx3
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
; srl_gimspan64i_8u_span64i[69] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 24 45 0f b6 c0 41 83 e0 3f 49 63 cb 49 8d 34 ca 48 8b 3c ca 41 8b c8 48 d3 ef 48 89 3e 41 ff c3 45 3b d9 7c e4 4c 89 10 44 89 48 08 5e 5f c3}
; TermCode = RET_ZEDx3
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
