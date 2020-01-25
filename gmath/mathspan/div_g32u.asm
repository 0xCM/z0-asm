; Span<uint> div<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; div_g32u[7ff7c71abc00h, 7ff7c71abc45h][69] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 1e 48 63 c6 49 8d 3c 83 41 8b 14 82 41 8b 1c 80 8b c2 33 d2 f7 f3 89 07 ff c6 41 3b f1 7c e2 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:59:130
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
0017h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h mov edx,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 14 82}
0024h mov ebx,[r8+rax*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 80}
0028h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
002ch div ebx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f3}
002eh mov [rdi],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 07}
0030h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0032h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0035h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0037h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
