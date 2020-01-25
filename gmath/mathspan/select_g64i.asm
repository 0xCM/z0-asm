; Span<long> select<long>(ReadOnlySpan<long> a, ReadOnlySpan<long> b, ReadOnlySpan<long> c, Span<long> dst)
; select_g64i[7ff7c71a79a0h, 7ff7c71a79ffh][95] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 32 49 63 f3 49 8d 34 f2 49 63 fb 48 8b 3c fa 49 63 db 49 8b 1c d8 49 63 eb 49 8b 2c e9 48 23 df c4 e2 c0 f2 fd 48 0b fb 48 89 3e 41 ff c3 44 3b d8 7c ce 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:39:987
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0051h                         ; JLE rel8 || 7E cb || encoded[2]{7e 32}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 f2}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h mov rbx,[r8+rbx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c d8}
0034h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0037h mov rbp,[r9+rbp*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 2c e9}
003bh and rbx,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 df}
003eh andn rdi,rdi,rbp                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c0 f2 fd}
0043h or rdi,rbx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b fb}
0046h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0049h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
004ch cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
004fh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c ce}
0051h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
