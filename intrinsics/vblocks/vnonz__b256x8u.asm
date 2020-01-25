; Span<bit> vnonz<byte>(in Block256<byte> a, Span<bit> dst)
; vnonz__b256x8u[7ff7c6fd90d0h, 7ff7c6fd9148h][120] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 f9 1f 83 e1 1f 03 c1 c1 f8 05 49 8b 08 45 33 c9 85 c0 7e 3e 4d 63 d1 4e 8d 14 91 4c 8b 1a 41 8b f1 c1 e6 05 48 63 f6 4c 03 de c4 c1 7f f0 03 c4 e2 7d 17 c0 41 0f 94 c3 45 0f b6 db 45 85 db 41 0f 94 c3 45 0f b6 db 45 89 1a 41 ff c1 44 3b c8 7c c2 48 8b fb 49 8b f0 e8 54 cd ec 5e 48 a5 48 8b c3 c5 f8 77 5b 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:15:153
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0006h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0009h mov eax,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 42 08}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h and ecx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 1f}
0014h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0016h sar eax,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 05}
0019h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
001ch xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0021h jle short 0061h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3e}
0023h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0026h lea r10,[rcx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 91}
002ah mov r11,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 1a}
002dh mov esi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f1}
0030h shl esi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 05}
0033h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0036h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
0039h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
003eh vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
0043h sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
0047h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
004bh test r11d,r11d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 db}
004eh sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
0052h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0056h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
0059h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
005ch cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
005fh jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c c2}
0061h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0064h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0067h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 cd ec 5e}
006ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
