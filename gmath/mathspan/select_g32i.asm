; Span<int> select<int>(ReadOnlySpan<int> a, ReadOnlySpan<int> b, ReadOnlySpan<int> c, Span<int> dst)
; select_g32i[7ff7c71ba650h, 7ff7c71ba6abh][91] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 2e 49 63 f3 49 8d 34 b2 49 63 fb 8b 3c ba 49 63 db 41 8b 1c 98 49 63 eb 41 8b 2c a9 23 df c4 e2 40 f2 fd 0b fb 89 3e 41 ff c3 44 3b d8 7c d2 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:11:00:181
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
001dh jle short 004dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 b2}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002ch movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
002fh mov ebx,[r8+rbx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 98}
0033h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0036h mov ebp,[r9+rbp*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 2c a9}
003ah and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
003ch andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0041h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0043h mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0045h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0048h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
004bh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
004dh mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0050h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0053h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
