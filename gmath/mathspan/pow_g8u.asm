; Span<byte> pow<byte>(ReadOnlySpan<byte> src, uint exp, Span<byte> dst)
; pow_g8u[7ff7c71aa490h, 7ff7c71aa4fch][108] = {57 56 53 66 90 49 8b 01 45 8b 49 08 48 8b 12 45 33 d2 45 85 c9 7e 47 4d 63 da 4a 8d 34 18 46 0f b6 1c 1a 41 8b f8 45 85 c0 75 07 bb 01 00 00 00 eb 22 bb 01 00 00 00 40 f6 c7 01 74 07 41 0f af db 0f b6 db d1 ef 85 ff 74 0a 45 0f af db 45 0f b6 db eb e3 88 1e 41 ff c2 45 3b d1 7c b9 48 89 01 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:40:106
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
