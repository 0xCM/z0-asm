------------------------------------------------------------------------------------------------------------------------
; Span<float> sqrt<float>(Span<float> src), hex://nats, corefunc.svc/fspan?sqrt#sqrt_g[32f](span32f)
; sqrt_g[32f](span32f)[58] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x02,0x8b,0x52,0x08,0x45,0x33,0xc0,0x85,0xd2,0x7e,0x1e,0x4d,0x63,0xc8,0x4e,0x8d,0x14,0x88,0xc4,0xa1,0x7a,0x10,0x04,0x88,0xc5,0xfa,0x51,0xc0,0xc4,0xc1,0x7a,0x11,0x02,0x41,0xff,0xc0,0x44,0x3b,0xc2,0x7c,0xe2,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r10,[rax+r9*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 88}
0019h vmovss xmm0,dword ptr [rax+r9*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 a1 7a 10 04 88}
001fh vsqrtss xmm0,xmm0,xmm0                  ; VSQRTSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 51 /r || encoded[4]{c5 fa 51 c0}
0023h vmovss dword ptr [r10],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c4 c1 7a 11 02}
0028h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002eh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0030h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0033h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0036h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<double> sqrt<double>(Span<double> src), hex://nats, corefunc.svc/fspan?sqrt#sqrt_g[64f](span64f)
; sqrt_g[64f](span64f)[58] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x02,0x8b,0x52,0x08,0x45,0x33,0xc0,0x85,0xd2,0x7e,0x1e,0x4d,0x63,0xc8,0x4e,0x8d,0x14,0xc8,0xc4,0xa1,0x7b,0x10,0x04,0xc8,0xc5,0xfb,0x51,0xc0,0xc4,0xc1,0x7b,0x11,0x02,0x41,0xff,0xc0,0x44,0x3b,0xc2,0x7c,0xe2,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r10,[rax+r9*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 c8}
0019h vmovsd xmm0,qword ptr [rax+r9*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 04 c8}
001fh vsqrtsd xmm0,xmm0,xmm0                  ; VSQRTSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 51 /r || encoded[4]{c5 fb 51 c0}
0023h vmovsd qword ptr [r10],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c4 c1 7b 11 02}
0028h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002eh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0030h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0033h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0036h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<float> fdiv<float>(Span<float> lhs, ReadOnlySpan<float> rhs), hex://nats, corefunc.svc/fspan?fdiv#fdiv_g[32f](span32f,uspan32f)
; fdiv_g[32f](span32f,uspan32f)[211] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x4c,0x8b,0x0a,0x8b,0x52,0x08,0xbe,0x32,0x00,0x00,0x00,0xbf,0x01,0x00,0x00,0x00,0x8b,0xda,0x41,0x8b,0xe8,0x41,0x3b,0xd0,0x75,0x47,0x45,0x33,0xd2,0x85,0xd2,0x7e,0x2c,0x4d,0x63,0xda,0x4b,0x8d,0x1c,0x99,0xc4,0x81,0x7a,0x10,0x04,0x99,0x45,0x3b,0xd0,0x0f,0x83,0x83,0x00,0x00,0x00,0xc4,0xa1,0x7a,0x10,0x0c,0x98,0xc5,0xfa,0x5e,0xc1,0xc5,0xfa,0x11,0x03,0x41,0xff,0xc2,0x44,0x3b,0xd2,0x7c,0xd4,0x4c,0x89,0x09,0x89,0x51,0x08,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xb9,0xf8,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa7,0x1b,0x1e,0x5f,0x4c,0x8b,0xf0,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x90,0x1b,0x1e,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x28,0x41,0x88,0x38,0x41,0x89,0x70,0x04,0x4d,0x8b,0xc6,0x8b,0xcb,0x8b,0xd5,0x48,0x8b,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x20,0xe8,0xbb,0x5b,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0xb3,0xce,0x02,0x5f,0xcc,0xe8,0x7d,0x13,0x1e,0x5f}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0010h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0014h mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
0017h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
001ah mov esi,32h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 32 00 00 00}
001fh mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0024h mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
0026h mov ebp,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b e8}
0029h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
002ch jne short 0075h                         ; JNE rel8 || 75 cb || encoded[2]{75 47}
002eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0031h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0033h jle short 0061h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0035h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0038h lea rbx,[r9+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 1c 99}
003ch vmovss xmm0,dword ptr [r9+r11*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 81 7a 10 04 99}
0042h cmp r10d,r8d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d0}
0045h jae near ptr 00ceh                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 83 00 00 00}
004bh vmovss xmm1,dword ptr [rax+r11*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 a1 7a 10 0c 98}
0051h vdivss xmm0,xmm0,xmm1                   ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[4]{c5 fa 5e c1}
0055h vmovss dword ptr [rbx],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 03}
0059h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005ch cmp r10d,edx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d2}
005fh jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0061h mov [rcx],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 09}
0064h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0067h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006ah add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0070h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0071h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0072h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h mov ecx,2f8h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 f8 02 00 00}
007ah mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0084h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 1b 1e 5f}
0089h mov r14,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f0}
008ch mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
0091h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
009bh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 1b 1e 5f}
00a0h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00a3h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
00a8h mov [r8],dil                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 38}
00abh mov [r8+4],esi                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 70 04}
00afh mov r8,r14                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c6}
00b2h mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00b4h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
00b6h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
00bbh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00c0h call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 5b 5b ff}
00c5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c8h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 ce 02 5f}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
00ceh call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 13 1e 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<double> fdiv<double>(Span<double> lhs, ReadOnlySpan<double> rhs), hex://nats, corefunc.svc/fspan?fdiv#fdiv_g[64f](span64f,uspan64f)
; fdiv_g[64f](span64f,uspan64f)[211] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x4c,0x8b,0x0a,0x8b,0x52,0x08,0xbe,0x32,0x00,0x00,0x00,0xbf,0x01,0x00,0x00,0x00,0x8b,0xda,0x41,0x8b,0xe8,0x41,0x3b,0xd0,0x75,0x47,0x45,0x33,0xd2,0x85,0xd2,0x7e,0x2c,0x4d,0x63,0xda,0x4b,0x8d,0x1c,0xd9,0xc4,0x81,0x7b,0x10,0x04,0xd9,0x45,0x3b,0xd0,0x0f,0x83,0x83,0x00,0x00,0x00,0xc4,0xa1,0x7b,0x10,0x0c,0xd8,0xc5,0xfb,0x5e,0xc1,0xc5,0xfb,0x11,0x03,0x41,0xff,0xc2,0x44,0x3b,0xd2,0x7c,0xd4,0x4c,0x89,0x09,0x89,0x51,0x08,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xb9,0xf8,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa7,0x1a,0x1e,0x5f,0x4c,0x8b,0xf0,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x90,0x1a,0x1e,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x28,0x41,0x88,0x38,0x41,0x89,0x70,0x04,0x4d,0x8b,0xc6,0x8b,0xcb,0x8b,0xd5,0x48,0x8b,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x20,0xe8,0xbb,0x5a,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0xb3,0xcd,0x02,0x5f,0xcc,0xe8,0x7d,0x12,0x1e,0x5f}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0010h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0014h mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
0017h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
001ah mov esi,32h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 32 00 00 00}
001fh mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0024h mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
0026h mov ebp,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b e8}
0029h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
002ch jne short 0075h                         ; JNE rel8 || 75 cb || encoded[2]{75 47}
002eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0031h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0033h jle short 0061h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0035h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0038h lea rbx,[r9+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 1c d9}
003ch vmovsd xmm0,qword ptr [r9+r11*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 81 7b 10 04 d9}
0042h cmp r10d,r8d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d0}
0045h jae near ptr 00ceh                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 83 00 00 00}
004bh vmovsd xmm1,qword ptr [rax+r11*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 0c d8}
0051h vdivsd xmm0,xmm0,xmm1                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 fb 5e c1}
0055h vmovsd qword ptr [rbx],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 03}
0059h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005ch cmp r10d,edx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d2}
005fh jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0061h mov [rcx],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 09}
0064h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0067h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006ah add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0070h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0071h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0072h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h mov ecx,2f8h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 f8 02 00 00}
007ah mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0084h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 1a 1e 5f}
0089h mov r14,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f0}
008ch mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
0091h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
009bh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 1a 1e 5f}
00a0h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00a3h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
00a8h mov [r8],dil                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 38}
00abh mov [r8+4],esi                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 70 04}
00afh mov r8,r14                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c6}
00b2h mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00b4h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
00b6h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
00bbh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00c0h call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 5a 5b ff}
00c5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c8h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 cd 02 5f}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
00ceh call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 12 1e 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<float> div<float>(Span<float> lhs, float rhs), hex://nats, corefunc.svc/fspan?div#div_g[32f](span32f,32f)
; div_g[32f](span32f,32f)[58] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x02,0x8b,0x52,0x08,0x45,0x33,0xc0,0x85,0xd2,0x7e,0x1e,0x4d,0x63,0xc8,0x4e,0x8d,0x14,0x88,0xc4,0xa1,0x7a,0x10,0x04,0x88,0xc5,0xfa,0x5e,0xc2,0xc4,0xc1,0x7a,0x11,0x02,0x41,0xff,0xc0,0x44,0x3b,0xc2,0x7c,0xe2,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r10,[rax+r9*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 88}
0019h vmovss xmm0,dword ptr [rax+r9*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 a1 7a 10 04 88}
001fh vdivss xmm0,xmm0,xmm2                   ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[4]{c5 fa 5e c2}
0023h vmovss dword ptr [r10],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c4 c1 7a 11 02}
0028h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002eh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0030h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0033h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0036h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<double> div<double>(Span<double> lhs, double rhs), hex://nats, corefunc.svc/fspan?div#div_g[64f](span64f,64f)
; div_g[64f](span64f,64f)[58] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x02,0x8b,0x52,0x08,0x45,0x33,0xc0,0x85,0xd2,0x7e,0x1e,0x4d,0x63,0xc8,0x4e,0x8d,0x14,0xc8,0xc4,0xa1,0x7b,0x10,0x04,0xc8,0xc5,0xfb,0x5e,0xc2,0xc4,0xc1,0x7b,0x11,0x02,0x41,0xff,0xc0,0x44,0x3b,0xc2,0x7c,0xe2,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r10,[rax+r9*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 c8}
0019h vmovsd xmm0,qword ptr [rax+r9*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 04 c8}
001fh vdivsd xmm0,xmm0,xmm2                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 fb 5e c2}
0023h vmovsd qword ptr [r10],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c4 c1 7b 11 02}
0028h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002eh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0030h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0033h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0036h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<float> fdiv<float>(ReadOnlySpan<float> lhs, ReadOnlySpan<float> rhs, Span<float> dst), hex://nats, corefunc.svc/fspan?fdiv#fdiv_g[32f](uspan32f,uspan32f,span32f)
; fdiv_g[32f](uspan32f,uspan32f,span32f)[225] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x49,0x8b,0x01,0x45,0x8b,0x49,0x08,0x4d,0x8b,0x10,0x45,0x8b,0x40,0x08,0x4c,0x8b,0x1a,0x8b,0x52,0x08,0xbe,0x53,0x00,0x00,0x00,0xbf,0x01,0x00,0x00,0x00,0x8b,0xda,0x41,0x8b,0xe8,0x41,0x3b,0xd0,0x75,0x4e,0x33,0xdb,0x85,0xd2,0x7e,0x33,0x41,0x3b,0xd9,0x0f,0x83,0x98,0x00,0x00,0x00,0x48,0x63,0xeb,0x48,0x8d,0x3c,0xa8,0xc4,0xc1,0x7a,0x10,0x04,0xab,0x41,0x3b,0xd8,0x0f,0x83,0x82,0x00,0x00,0x00,0xc4,0xc1,0x7a,0x10,0x0c,0xaa,0xc5,0xfa,0x5e,0xc1,0xc5,0xfa,0x11,0x07,0xff,0xc3,0x3b,0xda,0x7c,0xcd,0x48,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xb9,0xf8,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe9,0x14,0x1e,0x5f,0x4c,0x8b,0xf0,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd2,0x14,0x1e,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x28,0x41,0x88,0x38,0x41,0x89,0x70,0x04,0x4d,0x8b,0xc6,0x8b,0xcb,0x8b,0xd5,0x48,0x8b,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x20,0xe8,0xfd,0x54,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0xf5,0xc7,0x02,0x5f,0xcc,0xe8,0xbf,0x0c,0x1e,0x5f}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0010h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0014h mov r10,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 10}
0017h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
001bh mov r11,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 1a}
001eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0021h mov esi,53h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 53 00 00 00}
0026h mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
002bh mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
002dh mov ebp,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b e8}
0030h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0033h jne short 0083h                         ; JNE rel8 || 75 cb || encoded[2]{75 4e}
0035h xor ebx,ebx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 db}
0037h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0039h jle short 006eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 33}
003bh cmp ebx,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d9}
003eh jae near ptr 00dch                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 98 00 00 00}
0044h movsxd rbp,ebx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 eb}
0047h lea rdi,[rax+rbp*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c a8}
004bh vmovss xmm0,dword ptr [r11+rbp*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 c1 7a 10 04 ab}
0051h cmp ebx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d8}
0054h jae near ptr 00dch                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 82 00 00 00}
005ah vmovss xmm1,dword ptr [r10+rbp*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 c1 7a 10 0c aa}
0060h vdivss xmm0,xmm0,xmm1                   ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[4]{c5 fa 5e c1}
0064h vmovss dword ptr [rdi],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 07}
0068h inc ebx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c3}
006ah cmp ebx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b da}
006ch jl short 003bh                          ; JL rel8 || 7C cb || encoded[2]{7c cd}
006eh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0071h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0075h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0078h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
007ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h mov ecx,2f8h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 f8 02 00 00}
0088h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0092h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 14 1e 5f}
0097h mov r14,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f0}
009ah mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
009fh mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
00a9h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 14 1e 5f}
00aeh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00b1h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
00b6h mov [r8],dil                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 38}
00b9h mov [r8+4],esi                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 70 04}
00bdh mov r8,r14                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c6}
00c0h mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00c2h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
00c4h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
00c9h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00ceh call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 54 5b ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c7 02 5f}
00dbh int 3                                   ; INT3 || CC || encoded[1]{cc}
00dch call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 0c 1e 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<double> fdiv<double>(ReadOnlySpan<double> lhs, ReadOnlySpan<double> rhs, Span<double> dst), hex://nats, corefunc.svc/fspan?fdiv#fdiv_g[64f](uspan64f,uspan64f,span64f)
; fdiv_g[64f](uspan64f,uspan64f,span64f)[225] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x49,0x8b,0x01,0x45,0x8b,0x49,0x08,0x4d,0x8b,0x10,0x45,0x8b,0x40,0x08,0x4c,0x8b,0x1a,0x8b,0x52,0x08,0xbe,0x53,0x00,0x00,0x00,0xbf,0x01,0x00,0x00,0x00,0x8b,0xda,0x41,0x8b,0xe8,0x41,0x3b,0xd0,0x75,0x4e,0x33,0xdb,0x85,0xd2,0x7e,0x33,0x41,0x3b,0xd9,0x0f,0x83,0x98,0x00,0x00,0x00,0x48,0x63,0xeb,0x48,0x8d,0x3c,0xe8,0xc4,0xc1,0x7b,0x10,0x04,0xeb,0x41,0x3b,0xd8,0x0f,0x83,0x82,0x00,0x00,0x00,0xc4,0xc1,0x7b,0x10,0x0c,0xea,0xc5,0xfb,0x5e,0xc1,0xc5,0xfb,0x11,0x07,0xff,0xc3,0x3b,0xda,0x7c,0xcd,0x48,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xb9,0xf8,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe9,0x13,0x1e,0x5f,0x4c,0x8b,0xf0,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd2,0x13,0x1e,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x28,0x41,0x88,0x38,0x41,0x89,0x70,0x04,0x4d,0x8b,0xc6,0x8b,0xcb,0x8b,0xd5,0x48,0x8b,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x20,0xe8,0xfd,0x53,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0xf5,0xc6,0x02,0x5f,0xcc,0xe8,0xbf,0x0b,0x1e,0x5f}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0010h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0014h mov r10,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 10}
0017h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
001bh mov r11,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 1a}
001eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0021h mov esi,53h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 53 00 00 00}
0026h mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
002bh mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
002dh mov ebp,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b e8}
0030h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0033h jne short 0083h                         ; JNE rel8 || 75 cb || encoded[2]{75 4e}
0035h xor ebx,ebx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 db}
0037h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0039h jle short 006eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 33}
003bh cmp ebx,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d9}
003eh jae near ptr 00dch                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 98 00 00 00}
0044h movsxd rbp,ebx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 eb}
0047h lea rdi,[rax+rbp*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c e8}
004bh vmovsd xmm0,qword ptr [r11+rbp*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 c1 7b 10 04 eb}
0051h cmp ebx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d8}
0054h jae near ptr 00dch                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 82 00 00 00}
005ah vmovsd xmm1,qword ptr [r10+rbp*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 c1 7b 10 0c ea}
0060h vdivsd xmm0,xmm0,xmm1                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 fb 5e c1}
0064h vmovsd qword ptr [rdi],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 07}
0068h inc ebx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c3}
006ah cmp ebx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b da}
006ch jl short 003bh                          ; JL rel8 || 7C cb || encoded[2]{7c cd}
006eh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0071h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0075h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0078h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
007ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h mov ecx,2f8h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 f8 02 00 00}
0088h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0092h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 13 1e 5f}
0097h mov r14,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f0}
009ah mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
009fh mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
00a9h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 13 1e 5f}
00aeh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00b1h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
00b6h mov [r8],dil                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 38}
00b9h mov [r8+4],esi                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 70 04}
00bdh mov r8,r14                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c6}
00c0h mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00c2h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
00c4h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
00c9h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00ceh call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 53 5b ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c6 02 5f}
00dbh int 3                                   ; INT3 || CC || encoded[1]{cc}
00dch call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 0b 1e 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<float> fabs<float>(ReadOnlySpan<float> src, Span<float> dst), hex://nats, corefunc.svc/fspan?fabs#fabs_g[32f](uspan32f,span32f)
; fabs_g[32f](uspan32f,span32f)[251] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x38,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x4c,0x8b,0x0a,0x8b,0x52,0x08,0xbe,0x67,0x00,0x00,0x00,0xbf,0x01,0x00,0x00,0x00,0x8b,0xda,0x41,0x8b,0xe8,0x41,0x3b,0xd0,0x75,0x68,0x45,0x33,0xd2,0x85,0xd2,0x7e,0x4c,0x45,0x3b,0xd0,0x0f,0x83,0xb1,0x00,0x00,0x00,0x4d,0x63,0xda,0x4a,0x8d,0x1c,0x98,0xc4,0x81,0x7a,0x10,0x04,0x99,0x45,0x33,0xdb,0x44,0x89,0x5c,0x24,0x38,0xc5,0xfa,0x11,0x44,0x24,0x30,0x44,0x8b,0x5c,0x24,0x30,0x44,0x89,0x5c,0x24,0x38,0x4c,0x8d,0x5c,0x24,0x38,0x41,0x81,0x23,0xff,0xff,0xff,0x7f,0xc5,0xfa,0x10,0x44,0x24,0x38,0xc5,0xfa,0x11,0x03,0x41,0xff,0xc2,0x44,0x3b,0xd2,0x7c,0xb4,0x48,0x89,0x01,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x40,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xb9,0x0e,0x03,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x7f,0x08,0x1e,0x5f,0x4c,0x8b,0xf0,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x68,0x08,0x1e,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x28,0x41,0x88,0x38,0x41,0x89,0x70,0x04,0x4d,0x8b,0xc6,0x8b,0xcb,0x8b,0xd5,0x48,0x8b,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x20,0xe8,0x93,0x48,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0x8b,0xbb,0x02,0x5f,0xcc,0xe8,0x55,0x00,0x1e,0x5f}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0014h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0017h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
001bh mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
001eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0021h mov esi,67h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 67 00 00 00}
0026h mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
002bh mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
002dh mov ebp,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b e8}
0030h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0033h jne short 009dh                         ; JNE rel8 || 75 cb || encoded[2]{75 68}
0035h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0038h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
003ah jle short 0088h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4c}
003ch cmp r10d,r8d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d0}
003fh jae near ptr 00f6h                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 b1 00 00 00}
0045h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0048h lea rbx,[rax+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 1c 98}
004ch vmovss xmm0,dword ptr [r9+r11*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 81 7a 10 04 99}
0052h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0055h mov [rsp+38h],r11d                      ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 5c 24 38}
005ah vmovss dword ptr [rsp+30h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 30}
0060h mov r11d,[rsp+30h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 5c 24 30}
0065h mov [rsp+38h],r11d                      ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 5c 24 38}
006ah lea r11,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 5c 24 38}
006fh and dword ptr [r11],7fffffffh           ; AND r/m32, imm32 || o32 81 /4 id || encoded[7]{41 81 23 ff ff ff 7f}
0076h vmovss xmm0,dword ptr [rsp+38h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 38}
007ch vmovss dword ptr [rbx],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 03}
0080h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0083h cmp r10d,edx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d2}
0086h jl short 003ch                          ; JL rel8 || 7C cb || encoded[2]{7c b4}
0088h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
008bh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
008fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0092h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0096h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0097h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0098h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0099h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
009dh mov ecx,30eh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0e 03 00 00}
00a2h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
00ach call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 08 1e 5f}
00b1h mov r14,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f0}
00b4h mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
00b9h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
00c3h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 08 1e 5f}
00c8h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00cbh lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
00d0h mov [r8],dil                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 38}
00d3h mov [r8+4],esi                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 70 04}
00d7h mov r8,r14                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c6}
00dah mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00dch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
00deh mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
00e3h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00e8h call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 48 5b ff}
00edh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f0h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b bb 02 5f}
00f5h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f6h call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 00 1e 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<double> fabs<double>(ReadOnlySpan<double> src, Span<double> dst), hex://nats, corefunc.svc/fspan?fabs#fabs_g[64f](uspan64f,span64f)
; fabs_g[64f](uspan64f,span64f)[257] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x38,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x4c,0x8b,0x0a,0x8b,0x52,0x08,0xbe,0x67,0x00,0x00,0x00,0xbf,0x01,0x00,0x00,0x00,0x8b,0xda,0x41,0x8b,0xe8,0x41,0x3b,0xd0,0x75,0x6e,0x45,0x33,0xd2,0x85,0xd2,0x7e,0x52,0x45,0x3b,0xd0,0x0f,0x83,0xb7,0x00,0x00,0x00,0x4d,0x63,0xda,0x4a,0x8d,0x1c,0xd8,0xc4,0x81,0x7b,0x10,0x04,0xd9,0x45,0x33,0xdb,0x4c,0x89,0x5c,0x24,0x38,0xc5,0xfb,0x11,0x44,0x24,0x30,0x4c,0x8b,0x5c,0x24,0x30,0x4c,0x89,0x5c,0x24,0x38,0x4c,0x8d,0x5c,0x24,0x38,0x48,0xbd,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x49,0x21,0x2b,0xc5,0xfb,0x10,0x44,0x24,0x38,0xc5,0xfb,0x11,0x03,0x41,0xff,0xc2,0x44,0x3b,0xd2,0x7c,0xae,0x48,0x89,0x01,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x40,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xb9,0x0e,0x03,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x59,0x07,0x1e,0x5f,0x4c,0x8b,0xf0,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x42,0x07,0x1e,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x28,0x41,0x88,0x38,0x41,0x89,0x70,0x04,0x4d,0x8b,0xc6,0x8b,0xcb,0x8b,0xd5,0x48,0x8b,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x20,0xe8,0x6d,0x47,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0x65,0xba,0x02,0x5f,0xcc,0xe8,0x2f,0xff,0x1d,0x5f}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0014h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0017h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
001bh mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
001eh mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
0021h mov esi,67h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 67 00 00 00}
0026h mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
002bh mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
002dh mov ebp,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b e8}
0030h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0033h jne short 00a3h                         ; JNE rel8 || 75 cb || encoded[2]{75 6e}
0035h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0038h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
003ah jle short 008eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 52}
003ch cmp r10d,r8d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d0}
003fh jae near ptr 00fch                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 b7 00 00 00}
0045h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0048h lea rbx,[rax+r11*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 1c d8}
004ch vmovsd xmm0,qword ptr [r9+r11*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 81 7b 10 04 d9}
0052h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0055h mov [rsp+38h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 5c 24 38}
005ah vmovsd qword ptr [rsp+30h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 30}
0060h mov r11,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 5c 24 30}
0065h mov [rsp+38h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 5c 24 38}
006ah lea r11,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 5c 24 38}
006fh mov rbp,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 bd ff ff ff ff ff ff ff 7f}
0079h and [r11],rbp                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{49 21 2b}
007ch vmovsd xmm0,qword ptr [rsp+38h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 38}
0082h vmovsd qword ptr [rbx],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 03}
0086h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0089h cmp r10d,edx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d2}
008ch jl short 003ch                          ; JL rel8 || 7C cb || encoded[2]{7c ae}
008eh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0091h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0095h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0098h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
009ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a0h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a2h ret                                     ; RET || C3 || encoded[1]{c3}
00a3h mov ecx,30eh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0e 03 00 00}
00a8h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
00b2h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 07 1e 5f}
00b7h mov r14,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f0}
00bah mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
00bfh mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
00c9h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 07 1e 5f}
00ceh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00d1h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
00d6h mov [r8],dil                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 38}
00d9h mov [r8+4],esi                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 70 04}
00ddh mov r8,r14                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c6}
00e0h mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00e2h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
00e4h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
00e9h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00eeh call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 47 5b ff}
00f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f6h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 ba 02 5f}
00fbh int 3                                   ; INT3 || CC || encoded[1]{cc}
00fch call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ff 1d 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<float> mod<float>(ReadOnlySpan<float> lhs, ReadOnlySpan<float> rhs, Span<float> dst), hex://nats, corefunc.svc/fspan?mod#mod_g[32f](uspan32f,uspan32f,span32f)
; mod_g[32f](uspan32f,uspan32f,span32f)[271] = {0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x49,0x8b,0x39,0x41,0x8b,0x59,0x08,0x49,0x8b,0x28,0x45,0x8b,0x70,0x08,0x4c,0x8b,0x3a,0x44,0x8b,0x62,0x08,0x41,0xbd,0x71,0x00,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0x41,0x8b,0xd4,0x41,0x8b,0xce,0x88,0x44,0x24,0x44,0x45,0x3b,0xe6,0x75,0x62,0x45,0x33,0xed,0x45,0x85,0xe4,0x7e,0x40,0x44,0x3b,0xeb,0x0f,0x83,0xb4,0x00,0x00,0x00,0x49,0x63,0xc5,0x48,0x8d,0x14,0x87,0x48,0x89,0x54,0x24,0x30,0xc4,0xc1,0x7a,0x10,0x04,0x87,0x45,0x3b,0xee,0x0f,0x83,0x99,0x00,0x00,0x00,0xc5,0xfa,0x10,0x4c,0x85,0x00,0xe8,0x14,0x17,0x1e,0x5f,0x48,0x8b,0x44,0x24,0x30,0xc5,0xfa,0x11,0x00,0x41,0xff,0xc5,0x45,0x3b,0xec,0x7c,0xc0,0x48,0x89,0x3e,0x89,0x5e,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x48,0x5b,0x5d,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0xc3,0x8b,0xf2,0x8b,0xf9,0xb9,0x18,0x03,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x21,0x06,0x1e,0x5f,0x48,0x8b,0xd8,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x0a,0x06,0x1e,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x38,0x40,0x0f,0xb6,0x6c,0x24,0x44,0x41,0x88,0x28,0x45,0x89,0x68,0x04,0x4c,0x8b,0xc3,0x8b,0xce,0x8b,0xd7,0x48,0x8b,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0xe8,0x2f,0x46,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0x27,0xb9,0x02,0x5f,0xcc,0xe8,0xf1,0xfd,0x1d,0x5f}
; TermCode = CTC_INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0016h mov rdi,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 39}
0019h mov ebx,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 59 08}
001dh mov rbp,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 28}
0020h mov r14d,[r8+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 70 08}
0024h mov r15,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 3a}
0027h mov r12d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 62 08}
002bh mov r13d,71h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bd 71 00 00 00}
0031h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0036h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0039h mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
003ch mov [rsp+44h],al                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 44}
0040h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
0043h jne short 00a7h                         ; JNE rel8 || 75 cb || encoded[2]{75 62}
0045h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0048h test r12d,r12d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 e4}
004bh jle short 008dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 40}
004dh cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
0050h jae near ptr 010ah                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 b4 00 00 00}
0056h movsxd rax,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c5}
0059h lea rdx,[rdi+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 87}
005dh mov [rsp+30h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 30}
0062h vmovss xmm0,dword ptr [r15+rax*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 c1 7a 10 04 87}
0068h cmp r13d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b ee}
006bh jae near ptr 010ah                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 99 00 00 00}
0071h vmovss xmm1,dword ptr [rbp+rax*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 4c 85 00}
0077h call 7ff827391660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 17 1e 5f}
007ch mov rax,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 30}
0081h vmovss dword ptr [rax],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 00}
0085h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
0088h cmp r13d,r12d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b ec}
008bh jl short 004dh                          ; JL rel8 || 7C cb || encoded[2]{7c c0}
008dh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0090h mov [rsi+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 5e 08}
0093h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0096h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
009ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a0h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a2h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a4h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a6h ret                                     ; RET || C3 || encoded[1]{c3}
00a7h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
00a9h mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
00abh mov ecx,318h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 18 03 00 00}
00b0h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
00bah call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 06 1e 5f}
00bfh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c2h mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
00c7h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
00d1h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 06 1e 5f}
00d6h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00d9h lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
00deh movzx ebp,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{40 0f b6 6c 24 44}
00e4h mov [r8],bpl                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 28}
00e7h mov [r8+4],r13d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 68 04}
00ebh mov r8,rbx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c3}
00eeh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00f0h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
00f2h mov rax,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 38}
00f7h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00fch call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 46 5b ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 b9 02 5f}
0109h int 3                                   ; INT3 || CC || encoded[1]{cc}
010ah call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 fd 1d 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<double> mod<double>(ReadOnlySpan<double> lhs, ReadOnlySpan<double> rhs, Span<double> dst), hex://nats, corefunc.svc/fspan?mod#mod_g[64f](uspan64f,uspan64f,span64f)
; mod_g[64f](uspan64f,uspan64f,span64f)[271] = {0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x49,0x8b,0x39,0x41,0x8b,0x59,0x08,0x49,0x8b,0x28,0x45,0x8b,0x70,0x08,0x4c,0x8b,0x3a,0x44,0x8b,0x62,0x08,0x41,0xbd,0x71,0x00,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0x41,0x8b,0xd4,0x41,0x8b,0xce,0x88,0x44,0x24,0x44,0x45,0x3b,0xe6,0x75,0x62,0x45,0x33,0xed,0x45,0x85,0xe4,0x7e,0x40,0x44,0x3b,0xeb,0x0f,0x83,0xb4,0x00,0x00,0x00,0x49,0x63,0xc5,0x48,0x8d,0x14,0xc7,0x48,0x89,0x54,0x24,0x30,0xc4,0xc1,0x7b,0x10,0x04,0xc7,0x45,0x3b,0xee,0x0f,0x83,0x99,0x00,0x00,0x00,0xc5,0xfb,0x10,0x4c,0xc5,0x00,0xe8,0x44,0x15,0x1e,0x5f,0x48,0x8b,0x44,0x24,0x30,0xc5,0xfb,0x11,0x00,0x41,0xff,0xc5,0x45,0x3b,0xec,0x7c,0xc0,0x48,0x89,0x3e,0x89,0x5e,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x48,0x5b,0x5d,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0xc3,0x8b,0xf2,0x8b,0xf9,0xb9,0x18,0x03,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe1,0x04,0x1e,0x5f,0x48,0x8b,0xd8,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xca,0x04,0x1e,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x38,0x40,0x0f,0xb6,0x6c,0x24,0x44,0x41,0x88,0x28,0x45,0x89,0x68,0x04,0x4c,0x8b,0xc3,0x8b,0xce,0x8b,0xd7,0x48,0x8b,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x20,0xe8,0xef,0x44,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0xe7,0xb7,0x02,0x5f,0xcc,0xe8,0xb1,0xfc,0x1d,0x5f}
; TermCode = CTC_INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0016h mov rdi,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 39}
0019h mov ebx,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 59 08}
001dh mov rbp,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 28}
0020h mov r14d,[r8+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 70 08}
0024h mov r15,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 3a}
0027h mov r12d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 62 08}
002bh mov r13d,71h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bd 71 00 00 00}
0031h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0036h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0039h mov ecx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ce}
003ch mov [rsp+44h],al                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 44}
0040h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
0043h jne short 00a7h                         ; JNE rel8 || 75 cb || encoded[2]{75 62}
0045h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0048h test r12d,r12d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 e4}
004bh jle short 008dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 40}
004dh cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
0050h jae near ptr 010ah                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 b4 00 00 00}
0056h movsxd rax,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c5}
0059h lea rdx,[rdi+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 c7}
005dh mov [rsp+30h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 30}
0062h vmovsd xmm0,qword ptr [r15+rax*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 c1 7b 10 04 c7}
0068h cmp r13d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b ee}
006bh jae near ptr 010ah                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 99 00 00 00}
0071h vmovsd xmm1,qword ptr [rbp+rax*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 4c c5 00}
0077h call 7ff8273915d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 15 1e 5f}
007ch mov rax,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 30}
0081h vmovsd qword ptr [rax],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 00}
0085h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
0088h cmp r13d,r12d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b ec}
008bh jl short 004dh                          ; JL rel8 || 7C cb || encoded[2]{7c c0}
008dh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0090h mov [rsi+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 5e 08}
0093h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0096h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
009ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a0h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a2h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a4h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a6h ret                                     ; RET || C3 || encoded[1]{c3}
00a7h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
00a9h mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
00abh mov ecx,318h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 18 03 00 00}
00b0h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
00bah call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 04 1e 5f}
00bfh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c2h mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
00c7h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
00d1h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 04 1e 5f}
00d6h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00d9h lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
00deh movzx ebp,byte ptr [rsp+44h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{40 0f b6 6c 24 44}
00e4h mov [r8],bpl                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 28}
00e7h mov [r8+4],r13d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 68 04}
00ebh mov r8,rbx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c3}
00eeh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00f0h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
00f2h mov rax,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 38}
00f7h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00fch call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 44 5b ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 b7 02 5f}
0109h int 3                                   ; INT3 || CC || encoded[1]{cc}
010ah call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 fc 1d 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<float> ceil<float>(ReadOnlySpan<float> src, Span<float> dst), hex://nats, corefunc.svc/fspan?ceil#ceil_g[32f](uspan32f,span32f)
; ceil_g[32f](uspan32f,span32f)[208] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x4c,0x8b,0x0a,0x8b,0x52,0x08,0xbe,0x7b,0x00,0x00,0x00,0xbf,0x01,0x00,0x00,0x00,0x8b,0xda,0x41,0x8b,0xe8,0x41,0x3b,0xd0,0x75,0x44,0x45,0x33,0xd2,0x85,0xd2,0x7e,0x28,0x45,0x3b,0xd0,0x0f,0x83,0x8d,0x00,0x00,0x00,0x4d,0x63,0xda,0x4a,0x8d,0x1c,0x98,0xc4,0x81,0x7a,0x10,0x04,0x99,0xc4,0xe3,0x79,0x0a,0xc0,0x0a,0xc5,0xfa,0x11,0x03,0x41,0xff,0xc2,0x44,0x3b,0xd2,0x7c,0xd8,0x48,0x89,0x01,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xb9,0x20,0x03,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xda,0xff,0x1d,0x5f,0x4c,0x8b,0xf0,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xc3,0xff,0x1d,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x28,0x41,0x88,0x38,0x41,0x89,0x70,0x04,0x4d,0x8b,0xc6,0x8b,0xcb,0x8b,0xd5,0x48,0x8b,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x20,0xe8,0xee,0x3f,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0xe6,0xb2,0x02,0x5f,0xcc,0xe8,0xb0,0xf7,0x1d,0x5f}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0010h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0014h mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
0017h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
001ah mov esi,7bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 7b 00 00 00}
001fh mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0024h mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
0026h mov ebp,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b e8}
0029h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
002ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 44}
002eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0031h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0033h jle short 005dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0035h cmp r10d,r8d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d0}
0038h jae near ptr 00cbh                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 8d 00 00 00}
003eh movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0041h lea rbx,[rax+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 1c 98}
0045h vmovss xmm0,dword ptr [r9+r11*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 81 7a 10 04 99}
004bh vroundss xmm0,xmm0,xmm0,0ah             ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 0a}
0051h vmovss dword ptr [rbx],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 03}
0055h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0058h cmp r10d,edx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d2}
005bh jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
005dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0060h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0064h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0067h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
006bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
0072h mov ecx,320h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 03 00 00}
0077h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0081h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da ff 1d 5f}
0086h mov r14,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f0}
0089h mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
008eh mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0098h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 ff 1d 5f}
009dh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00a0h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
00a5h mov [r8],dil                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 38}
00a8h mov [r8+4],esi                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 70 04}
00ach mov r8,r14                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c6}
00afh mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00b1h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
00b3h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
00b8h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00bdh call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 3f 5b ff}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 b2 02 5f}
00cah int 3                                   ; INT3 || CC || encoded[1]{cc}
00cbh call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 f7 1d 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<double> ceil<double>(ReadOnlySpan<double> src, Span<double> dst), hex://nats, corefunc.svc/fspan?ceil#ceil_g[64f](uspan64f,span64f)
; ceil_g[64f](uspan64f,span64f)[208] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x4c,0x8b,0x0a,0x8b,0x52,0x08,0xbe,0x7b,0x00,0x00,0x00,0xbf,0x01,0x00,0x00,0x00,0x8b,0xda,0x41,0x8b,0xe8,0x41,0x3b,0xd0,0x75,0x44,0x45,0x33,0xd2,0x85,0xd2,0x7e,0x28,0x45,0x3b,0xd0,0x0f,0x83,0x8d,0x00,0x00,0x00,0x4d,0x63,0xda,0x4a,0x8d,0x1c,0xd8,0xc4,0x81,0x7b,0x10,0x04,0xd9,0xc4,0xe3,0x79,0x0b,0xc0,0x0a,0xc5,0xfb,0x11,0x03,0x41,0xff,0xc2,0x44,0x3b,0xd2,0x7c,0xd8,0x48,0x89,0x01,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xb9,0x20,0x03,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xea,0xfe,0x1d,0x5f,0x4c,0x8b,0xf0,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd3,0xfe,0x1d,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x28,0x41,0x88,0x38,0x41,0x89,0x70,0x04,0x4d,0x8b,0xc6,0x8b,0xcb,0x8b,0xd5,0x48,0x8b,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x20,0xe8,0xfe,0x3e,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0xf6,0xb1,0x02,0x5f,0xcc,0xe8,0xc0,0xf6,0x1d,0x5f}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0010h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0014h mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
0017h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
001ah mov esi,7bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 7b 00 00 00}
001fh mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0024h mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
0026h mov ebp,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b e8}
0029h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
002ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 44}
002eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0031h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0033h jle short 005dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0035h cmp r10d,r8d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d0}
0038h jae near ptr 00cbh                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 8d 00 00 00}
003eh movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0041h lea rbx,[rax+r11*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 1c d8}
0045h vmovsd xmm0,qword ptr [r9+r11*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 81 7b 10 04 d9}
004bh vroundsd xmm0,xmm0,xmm0,0ah             ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 0a}
0051h vmovsd qword ptr [rbx],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 03}
0055h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0058h cmp r10d,edx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d2}
005bh jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
005dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0060h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0064h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0067h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
006bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
0072h mov ecx,320h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 03 00 00}
0077h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0081h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea fe 1d 5f}
0086h mov r14,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f0}
0089h mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
008eh mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0098h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 fe 1d 5f}
009dh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00a0h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
00a5h mov [r8],dil                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 38}
00a8h mov [r8+4],esi                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 70 04}
00ach mov r8,r14                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c6}
00afh mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00b1h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
00b3h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
00b8h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00bdh call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 3e 5b ff}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 b1 02 5f}
00cah int 3                                   ; INT3 || CC || encoded[1]{cc}
00cbh call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 f6 1d 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<float> ceil<float>(Span<float> io), hex://nats, corefunc.svc/fspan?ceil#ceil_g[32f](span32f)
; ceil_g[32f](span32f)[60] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x02,0x8b,0x52,0x08,0x45,0x33,0xc0,0x85,0xd2,0x7e,0x20,0x4d,0x63,0xc8,0x4e,0x8d,0x14,0x88,0xc4,0xa1,0x7a,0x10,0x04,0x88,0xc4,0xe3,0x79,0x0a,0xc0,0x0a,0xc4,0xc1,0x7a,0x11,0x02,0x41,0xff,0xc0,0x44,0x3b,0xc2,0x7c,0xe0,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r10,[rax+r9*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 88}
0019h vmovss xmm0,dword ptr [rax+r9*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 a1 7a 10 04 88}
001fh vroundss xmm0,xmm0,xmm0,0ah             ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 0a}
0025h vmovss dword ptr [r10],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c4 c1 7a 11 02}
002ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002dh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0030h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
0032h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0035h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0038h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<double> ceil<double>(Span<double> io), hex://nats, corefunc.svc/fspan?ceil#ceil_g[64f](span64f)
; ceil_g[64f](span64f)[60] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x02,0x8b,0x52,0x08,0x45,0x33,0xc0,0x85,0xd2,0x7e,0x20,0x4d,0x63,0xc8,0x4e,0x8d,0x14,0xc8,0xc4,0xa1,0x7b,0x10,0x04,0xc8,0xc4,0xe3,0x79,0x0b,0xc0,0x0a,0xc4,0xc1,0x7b,0x11,0x02,0x41,0xff,0xc0,0x44,0x3b,0xc2,0x7c,0xe0,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r10,[rax+r9*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 c8}
0019h vmovsd xmm0,qword ptr [rax+r9*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 04 c8}
001fh vroundsd xmm0,xmm0,xmm0,0ah             ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 0a}
0025h vmovsd qword ptr [r10],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c4 c1 7b 11 02}
002ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002dh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0030h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
0032h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0035h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0038h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<float> floor<float>(ReadOnlySpan<float> src, Span<float> dst), hex://nats, corefunc.svc/fspan?floor#floor_g[32f](uspan32f,span32f)
; floor_g[32f](uspan32f,span32f)[208] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x4c,0x8b,0x0a,0x8b,0x52,0x08,0xbe,0x92,0x00,0x00,0x00,0xbf,0x01,0x00,0x00,0x00,0x8b,0xda,0x41,0x8b,0xe8,0x41,0x3b,0xd0,0x75,0x44,0x45,0x33,0xd2,0x85,0xd2,0x7e,0x28,0x45,0x3b,0xd0,0x0f,0x83,0x8d,0x00,0x00,0x00,0x4d,0x63,0xda,0x4a,0x8d,0x1c,0x98,0xc4,0x81,0x7a,0x10,0x04,0x99,0xc4,0xe3,0x79,0x0a,0xc0,0x09,0xc5,0xfa,0x11,0x03,0x41,0xff,0xc2,0x44,0x3b,0xd2,0x7c,0xd8,0x48,0x89,0x01,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xb9,0x2a,0x03,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x4a,0xf9,0x1d,0x5f,0x4c,0x8b,0xf0,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x33,0xf9,0x1d,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x28,0x41,0x88,0x38,0x41,0x89,0x70,0x04,0x4d,0x8b,0xc6,0x8b,0xcb,0x8b,0xd5,0x48,0x8b,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x20,0xe8,0x5e,0x39,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0x56,0xac,0x02,0x5f,0xcc,0xe8,0x20,0xf1,0x1d,0x5f}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0010h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0014h mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
0017h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
001ah mov esi,92h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 92 00 00 00}
001fh mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0024h mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
0026h mov ebp,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b e8}
0029h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
002ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 44}
002eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0031h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0033h jle short 005dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0035h cmp r10d,r8d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d0}
0038h jae near ptr 00cbh                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 8d 00 00 00}
003eh movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0041h lea rbx,[rax+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 1c 98}
0045h vmovss xmm0,dword ptr [r9+r11*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 81 7a 10 04 99}
004bh vroundss xmm0,xmm0,xmm0,9               ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 09}
0051h vmovss dword ptr [rbx],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 03}
0055h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0058h cmp r10d,edx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d2}
005bh jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
005dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0060h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0064h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0067h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
006bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
0072h mov ecx,32ah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 2a 03 00 00}
0077h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0081h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a f9 1d 5f}
0086h mov r14,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f0}
0089h mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
008eh mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0098h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f9 1d 5f}
009dh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00a0h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
00a5h mov [r8],dil                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 38}
00a8h mov [r8+4],esi                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 70 04}
00ach mov r8,r14                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c6}
00afh mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00b1h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
00b3h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
00b8h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00bdh call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 39 5b ff}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 ac 02 5f}
00cah int 3                                   ; INT3 || CC || encoded[1]{cc}
00cbh call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 f1 1d 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<double> floor<double>(ReadOnlySpan<double> src, Span<double> dst), hex://nats, corefunc.svc/fspan?floor#floor_g[64f](uspan64f,span64f)
; floor_g[64f](uspan64f,span64f)[208] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x49,0x8b,0x00,0x45,0x8b,0x40,0x08,0x4c,0x8b,0x0a,0x8b,0x52,0x08,0xbe,0x92,0x00,0x00,0x00,0xbf,0x01,0x00,0x00,0x00,0x8b,0xda,0x41,0x8b,0xe8,0x41,0x3b,0xd0,0x75,0x44,0x45,0x33,0xd2,0x85,0xd2,0x7e,0x28,0x45,0x3b,0xd0,0x0f,0x83,0x8d,0x00,0x00,0x00,0x4d,0x63,0xda,0x4a,0x8d,0x1c,0xd8,0xc4,0x81,0x7b,0x10,0x04,0xd9,0xc4,0xe3,0x79,0x0b,0xc0,0x09,0xc5,0xfb,0x11,0x03,0x41,0xff,0xc2,0x44,0x3b,0xd2,0x7c,0xd8,0x48,0x89,0x01,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xb9,0x2a,0x03,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x5a,0xf8,0x1d,0x5f,0x4c,0x8b,0xf0,0xb9,0xa0,0x02,0x00,0x00,0x48,0xba,0xc8,0xdc,0xbd,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x43,0xf8,0x1d,0x5f,0x4c,0x8b,0xc8,0x4c,0x8d,0x44,0x24,0x28,0x41,0x88,0x38,0x41,0x89,0x70,0x04,0x4d,0x8b,0xc6,0x8b,0xcb,0x8b,0xd5,0x48,0x8b,0x44,0x24,0x28,0x48,0x89,0x44,0x24,0x20,0xe8,0x6e,0x38,0x5b,0xff,0x48,0x8b,0xc8,0xe8,0x66,0xab,0x02,0x5f,0xcc,0xe8,0x30,0xf0,0x1d,0x5f}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0010h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0014h mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
0017h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
001ah mov esi,92h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 92 00 00 00}
001fh mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0024h mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
0026h mov ebp,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b e8}
0029h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
002ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 44}
002eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0031h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0033h jle short 005dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0035h cmp r10d,r8d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d0}
0038h jae near ptr 00cbh                      ; JAE rel32 || 0F 83 cd || encoded[6]{0f 83 8d 00 00 00}
003eh movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0041h lea rbx,[rax+r11*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 1c d8}
0045h vmovsd xmm0,qword ptr [r9+r11*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 81 7b 10 04 d9}
004bh vroundsd xmm0,xmm0,xmm0,9               ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 09}
0051h vmovsd qword ptr [rbx],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 03}
0055h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0058h cmp r10d,edx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d2}
005bh jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
005dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0060h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0064h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0067h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
006bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
0072h mov ecx,32ah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 2a 03 00 00}
0077h mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0081h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a f8 1d 5f}
0086h mov r14,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f0}
0089h mov ecx,2a0h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 a0 02 00 00}
008eh mov rdx,7ff7c7bddcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 dc bd c7 f7 7f 00 00}
0098h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 f8 1d 5f}
009dh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00a0h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
00a5h mov [r8],dil                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 38}
00a8h mov [r8+4],esi                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 70 04}
00ach mov r8,r14                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c6}
00afh mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00b1h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
00b3h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
00b8h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00bdh call 7ff7c7764600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 38 5b ff}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 ab 02 5f}
00cah int 3                                   ; INT3 || CC || encoded[1]{cc}
00cbh call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 f0 1d 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<float> floor<float>(Span<float> src), hex://nats, corefunc.svc/fspan?floor#floor_g[32f](span32f)
; floor_g[32f](span32f)[60] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x02,0x8b,0x52,0x08,0x45,0x33,0xc0,0x85,0xd2,0x7e,0x20,0x4d,0x63,0xc8,0x4e,0x8d,0x14,0x88,0xc4,0xa1,0x7a,0x10,0x04,0x88,0xc4,0xe3,0x79,0x0a,0xc0,0x09,0xc4,0xc1,0x7a,0x11,0x02,0x41,0xff,0xc0,0x44,0x3b,0xc2,0x7c,0xe0,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r10,[rax+r9*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 88}
0019h vmovss xmm0,dword ptr [rax+r9*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 a1 7a 10 04 88}
001fh vroundss xmm0,xmm0,xmm0,9               ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 09}
0025h vmovss dword ptr [r10],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c4 c1 7a 11 02}
002ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002dh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0030h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
0032h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0035h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0038h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<double> floor<double>(Span<double> src), hex://nats, corefunc.svc/fspan?floor#floor_g[64f](span64f)
; floor_g[64f](span64f)[60] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x02,0x8b,0x52,0x08,0x45,0x33,0xc0,0x85,0xd2,0x7e,0x20,0x4d,0x63,0xc8,0x4e,0x8d,0x14,0xc8,0xc4,0xa1,0x7b,0x10,0x04,0xc8,0xc4,0xe3,0x79,0x0b,0xc0,0x09,0xc4,0xc1,0x7b,0x11,0x02,0x41,0xff,0xc0,0x44,0x3b,0xc2,0x7c,0xe0,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r10,[rax+r9*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 c8}
0019h vmovsd xmm0,qword ptr [rax+r9*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 04 c8}
001fh vroundsd xmm0,xmm0,xmm0,9               ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 09}
0025h vmovsd qword ptr [r10],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c4 c1 7b 11 02}
002ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002dh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0030h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
0032h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0035h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0038h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
