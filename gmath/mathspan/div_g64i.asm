; Span<long> div<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; div_g64i[7ff7c71ac130h, 7ff7c71ac178h][72] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 21 48 63 c6 49 8d 3c c3 49 8b 14 c2 49 8b 1c c0 48 8b c2 48 99 48 f7 fb 48 89 07 ff c6 41 3b f1 7c df 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:59:137
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
