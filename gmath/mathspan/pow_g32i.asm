; Span<int> pow<int>(ReadOnlySpan<int> src, uint exp, Span<int> dst)
; pow_g32i[7ff7c71bd500h, 7ff7c71bd564h][100] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 3f 4d 63 da 4a 8d 34 98 46 8b 1c 9a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 1b bb 01 00 00 00 40 f6 c7 01 74 04 41 0f af db d1 ef 85 ff 74 06 45 0f af db eb ea 89 1e 41 ff c2 45 3b d1 7c c1 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:11:00:320
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
