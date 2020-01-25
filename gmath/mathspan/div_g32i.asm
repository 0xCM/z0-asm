; Span<int> div<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; div_g32i[7ff7c71ac070h, 7ff7c71ac0b4h][68] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 1d 48 63 c6 49 8d 3c 83 41 8b 14 82 41 8b 1c 80 8b c2 99 f7 fb 89 07 ff c6 41 3b f1 7c e3 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:59:133
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
