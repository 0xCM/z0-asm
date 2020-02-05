------------------------------------------------------------------------------------------------------------------------
; Span<byte> pow<byte>(ReadOnlySpan<byte> src, uint exp, Span<byte> dst)
; pow_gimspan8u_32u_span8u[108] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 47 4d 63 da 4a 8d 34 18 46 0f b6 1c 1a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 22 bb 01 00 00 00 40 f6 c7 01 74 07 41 0f af db 0f b6 db d1 ef 85 ff 74 0a 45 0f af db 45 0f b6 db eb e3 88 1e 41 ff c2 45 3b d1 7c b9 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = RET_SBB
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
; pow_gimspan8i_32u_span8i[109] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 48 4d 63 da 4a 8d 34 18 4e 0f be 1c 1a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 23 bb 01 00 00 00 40 f6 c7 01 74 08 41 0f af db 48 0f be db d1 ef 85 ff 74 0a 45 0f af db 4d 0f be db eb e2 88 1e 41 ff c2 45 3b d1 7c b8 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = RET_ZEDx3
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
; pow_gimspan16u_32u_span16u[109] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 48 4d 63 da 4a 8d 34 58 46 0f b7 1c 5a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 22 bb 01 00 00 00 40 f6 c7 01 74 07 41 0f af db 0f b7 db d1 ef 85 ff 74 0a 45 0f af db 45 0f b7 db eb e3 66 89 1e 41 ff c2 45 3b d1 7c b8 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = RET_ZEDx3
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
; pow_gimspan16i_32u_span16i[110] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 49 4d 63 da 4a 8d 34 58 4e 0f bf 1c 5a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 23 bb 01 00 00 00 40 f6 c7 01 74 08 41 0f af db 48 0f bf db d1 ef 85 ff 74 0a 45 0f af db 4d 0f bf db eb e2 66 89 1e 41 ff c2 45 3b d1 7c b7 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = RET_ZEDx3
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
; pow_gimspan32u_32u_span32u[100] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 3f 4d 63 da 4a 8d 34 98 46 8b 1c 9a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 1b bb 01 00 00 00 40 f6 c7 01 74 04 41 0f af db d1 ef 85 ff 74 06 45 0f af db eb ea 89 1e 41 ff c2 45 3b d1 7c c1 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = RET_SBB
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
; pow_gimspan32i_32u_span32i[100] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 3f 4d 63 da 4a 8d 34 98 46 8b 1c 9a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 1b bb 01 00 00 00 40 f6 c7 01 74 04 41 0f af db d1 ef 85 ff 74 06 45 0f af db eb ea 89 1e 41 ff c2 45 3b d1 7c c1 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = RET_SBB
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
; pow_gimspan64u_32u_span64u[104] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 43 4d 63 da 4e 8d 1c d8 49 63 f2 48 8b 34 f2 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 1b bb 01 00 00 00 40 f6 c7 01 74 04 48 0f af de d1 ef 85 ff 74 06 48 0f af f6 eb ea 49 89 1b 41 ff c2 45 3b d1 7c bd 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = RET_SBB
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
; pow_gimspan64i_32u_span64i[104] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 43 4d 63 da 4e 8d 1c d8 49 63 f2 48 8b 34 f2 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 1b bb 01 00 00 00 40 f6 c7 01 74 04 48 0f af de d1 ef 85 ff 74 06 48 0f af f6 eb ea 49 89 1b 41 ff c2 45 3b d1 7c bd 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; TermCode = RET_SBB
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
; pow_gimspan32f_32u_span32f[120] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 c5 f8 29 74 24 20 48 8b f1 49 8b 39 41 8b 59 08 48 8b 2a 45 33 f6 85 db 7e 33 41 8b c0 c5 f8 57 c0 c4 e1 fb 2a c0 c5 cb 5a f0 49 63 c6 4c 8d 3c 87 c5 fa 10 44 85 00 c5 f8 28 ce e8 31 2d 1f 5f c4 c1 7a 11 07 41 ff c6 44 3b f3 7c dd 48 89 3e 89 5e 08 48 8b c6 c5 f8 28 74 24 20 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = RET_INTR
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
004ah call 7ff8260f8d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 2d 1f 5f}
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
; pow_gimspan64f_32u_span64f[116] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 c5 f8 29 74 24 20 48 8b f1 49 8b 39 41 8b 59 08 48 8b 2a 45 33 f6 85 db 7e 2f 41 8b c0 c5 c8 57 f6 c4 e1 cb 2a f0 49 63 c6 4c 8d 3c c7 c5 fb 10 44 c5 00 c5 f8 28 ce e8 45 2e 1f 5f c4 c1 7b 11 07 41 ff c6 44 3b f3 7c dd 48 89 3e 89 5e 08 48 8b c6 c5 f8 28 74 24 20 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = RET_INTR
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
0046h call 7ff8260f8ee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 2e 1f 5f}
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
