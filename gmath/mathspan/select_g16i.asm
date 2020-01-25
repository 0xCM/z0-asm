; Span<Int16> select<Int16>(ReadOnlySpan<Int16> a, ReadOnlySpan<Int16> b, ReadOnlySpan<Int16> c, Span<Int16> dst)
; select_g16i[7ff7c71a7790h, 7ff7c71a7808h][120] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 4b 49 63 f3 49 8d 34 72 49 63 fb 48 0f bf 3c 7a 49 63 db 49 0f bf 1c 58 49 63 eb 49 0f bf 2c 69 48 0f bf ff 48 0f bf db 23 df 48 0f bf db c4 e2 40 f2 fd 48 0f bf ff 48 0f bf db 0b fb 48 0f bf ff 66 89 3e 41 ff c3 44 3b d8 7c b5 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:979
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
001dh jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 4b}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 72}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
002eh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0031h movsx rbx,word ptr [r8+rbx*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 1c 58}
0036h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0039h movsx rbp,word ptr [r9+rbp*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 2c 69}
003eh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0042h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
0046h and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
0048h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
004ch andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0051h movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0055h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
0059h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
005bh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
005fh mov [rsi],di                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 3e}
0062h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0065h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
0068h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
006ah mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
006dh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0070h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0073h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0074h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
