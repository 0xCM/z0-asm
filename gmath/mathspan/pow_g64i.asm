; Span<long> pow<long>(ReadOnlySpan<long> src, uint exp, Span<long> dst)
; pow_g64i[7ff7c71bd600h, 7ff7c71bd668h][104] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 43 4d 63 da 4e 8d 1c d8 49 63 f2 48 8b 34 f2 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 1b bb 01 00 00 00 40 f6 c7 01 74 04 48 0f af de d1 ef 85 ff 74 06 48 0f af f6 eb ea 49 89 1b 41 ff c2 45 3b d1 7c bd 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:11:00:324
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
