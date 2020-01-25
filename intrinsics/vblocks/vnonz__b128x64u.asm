; Span<bit> vnonz<ulong>(in Block128<ulong> a, Span<bit> dst)
; vnonz__b128x64u[7ff7c6fd8ba0h, 7ff7c6fd8c11h][113] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 e9 1f 03 c1 d1 f8 49 8b 08 45 33 c9 85 c0 7e 3e 4d 63 d1 4e 8d 14 91 4c 8b 1a 41 8b f1 d1 e6 48 63 f6 4d 8d 1c f3 c4 c1 7b f0 03 c4 e2 79 17 c0 41 0f 94 c3 45 0f b6 db 45 85 db 41 0f 94 c3 45 0f b6 db 45 89 1a 41 ff c1 44 3b c8 7c c2 48 8b fb 49 8b f0 e8 88 d2 ec 5e 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:15:145
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0006h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0009h mov eax,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 42 08}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0011h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0013h sar eax,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f8}
0015h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0018h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 005dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 3e}
001fh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0022h lea r10,[rcx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 91}
0026h mov r11,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 1a}
0029h mov esi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f1}
002ch shl esi,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e6}
002eh movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0031h lea r11,[r11+rsi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4d 8d 1c f3}
0035h vlddqu xmm0,xmmword ptr [r11]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7b f0 03}
003ah vptest xmm0,xmm0                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c0}
003fh sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
0043h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0047h test r11d,r11d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 db}
004ah sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
004eh movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0052h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
0055h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0058h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
005bh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c c2}
005dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0060h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0063h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 d2 ec 5e}
0068h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
