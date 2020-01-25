; Span<byte> select<byte>(ReadOnlySpan<byte> a, ReadOnlySpan<byte> b, ReadOnlySpan<byte> c, Span<byte> dst)
; select_g8u[7ff7c71a71d0h, 7ff7c71a7241h][113] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 44 49 63 f3 49 03 f2 49 63 fb 40 0f b6 3c 3a 49 63 db 41 0f b6 1c 18 49 63 eb 41 0f b6 2c 29 40 0f b6 ff 0f b6 db 40 0f b6 ff 0f b6 db 23 df c4 e2 40 f2 fd 0b fb 40 0f b6 ff 40 88 3e 41 ff c3 44 3b d8 7c bc 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:970
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
001dh jle short 0063h                         ; JLE rel8 || 7E cb || encoded[2]{7e 44}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h add rsi,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f2}
0025h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0028h movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h movzx ebx,byte ptr [r8+rbx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 1c 18}
0035h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0038h movzx ebp,byte ptr [r9+rbp]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 2c 29}
003dh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0041h movzx ebx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 db}
0044h movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0048h movzx ebx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 db}
004bh and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
004dh andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0052h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0054h movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0058h mov [rsi],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 3e}
005bh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
005eh cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
0061h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c bc}
0063h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0066h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0069h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
