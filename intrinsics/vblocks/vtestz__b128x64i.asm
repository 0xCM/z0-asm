; Span<bit> vtestz<long>(in Block128<long> a, in Block128<long> b, Span<bit> dst)
; vtestz__b128x64i[7ff7c6fdc880h, 7ff7c6fdc8f8h][120] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 e9 1f 03 c1 d1 f8 49 8b 09 45 33 d2 85 c0 7e 45 4d 63 da 4e 8d 1c 99 48 8b 32 41 8b fa d1 e7 48 63 ff 48 8d 34 fe c5 fb f0 06 49 8b 30 41 8b fa d1 e7 48 63 ff 48 8d 34 fe c5 fb f0 0e c4 e2 79 17 c1 40 0f 94 c6 40 0f b6 f6 41 89 33 41 ff c2 44 3b d0 7c bb 48 8b fb 49 8b f1 e8 a1 95 ec 5e 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:15:416
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
0015h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
0018h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0064h                         ; JLE rel8 || 7E cb || encoded[2]{7e 45}
001fh movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0022h lea r11,[rcx+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 99}
0026h mov rsi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 32}
0029h mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
002ch shl edi,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e7}
002eh movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0031h lea rsi,[rsi+rdi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 fe}
0035h vlddqu xmm0,xmmword ptr [rsi]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 06}
0039h mov rsi,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 30}
003ch mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
003fh shl edi,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e7}
0041h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0044h lea rsi,[rsi+rdi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 fe}
0048h vlddqu xmm1,xmmword ptr [rsi]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 0e}
004ch vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0051h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
0055h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0059h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
005ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005fh cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0062h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c bb}
0064h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0067h mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
006ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 95 ec 5e}
006fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0071h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
