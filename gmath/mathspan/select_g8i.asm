; Span<sbyte> select<sbyte>(ReadOnlySpan<sbyte> a, ReadOnlySpan<sbyte> b, ReadOnlySpan<sbyte> c, Span<sbyte> dst)
; select_g8i[7ff7c71a7670h, 7ff7c71a76e7h][119] = {57 56 55 53 48 8b 44 24 48 48 8b 12 4d 8b 00 4d 8b 09 4c 8b 10 8b 40 08 45 33 db 85 c0 7e 4a 49 63 f3 49 03 f2 49 63 fb 48 0f be 3c 3a 49 63 db 49 0f be 1c 18 49 63 eb 49 0f be 2c 29 48 0f be ff 48 0f be db 23 df 48 0f be db c4 e2 40 f2 fd 48 0f be ff 48 0f be db 0b fb 48 0f be ff 40 88 3e 41 ff c3 44 3b d8 7c b6 4c 89 11 89 41 08 48 8b c1 5b 5d 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:39:973
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
001dh jle short 0069h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4a}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h add rsi,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f2}
0025h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0028h movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h movsx rbx,byte ptr [r8+rbx]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 1c 18}
0035h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0038h movsx rbp,byte ptr [r9+rbp]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 2c 29}
003dh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0041h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
0045h and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
0047h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
004bh andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0050h movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0054h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
0058h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
005ah movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
005eh mov [rsi],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 3e}
0061h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0064h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
0067h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0069h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
006ch mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
006fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
