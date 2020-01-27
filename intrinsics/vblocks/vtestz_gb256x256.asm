------------------------------------------------------------------------------------------------------------------------
; Span<bit> vtestz<byte>(in Block256<byte> a, in Block256<byte> b, Span<bit> dst)
; vtestz_gb256x8u_256x8u_span0o[127] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 f9 1f 83 e1 1f 03 c1 c1 f8 05 49 8b 09 45 33 d2 85 c0 7e 45 4d 63 da 4e 8d 1c 99 48 8b 32 41 8b fa c1 e7 05 48 63 ff 48 03 f7 c5 ff f0 06 49 8b 30 41 8b fa c1 e7 05 48 63 ff 48 03 f7 c5 ff f0 0e c4 e2 7d 17 c1 40 0f 94 c6 40 0f b6 f6 41 89 33 41 ff c2 44 3b d0 7c bb 48 8b fb 49 8b f1 e8 4d aa bd 5e 48 a5 48 8b c3 c5 f8 77 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
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
0019h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
001ch xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0021h jle short 0068h                         ; JLE rel8 || 7E cb || encoded[2]{7e 45}
0023h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0026h lea r11,[rcx+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 99}
002ah mov rsi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 32}
002dh mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0030h shl edi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 05}
0033h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0036h add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
0039h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003dh mov rsi,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 30}
0040h mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0043h shl edi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 05}
0046h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0049h add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004ch vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0050h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0055h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
0059h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
005dh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0060h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0063h cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0066h jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c bb}
0068h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006bh mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
006eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d aa bd 5e}
0073h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0075h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0078h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> vtestz<sbyte>(in Block256<sbyte> a, in Block256<sbyte> b, Span<bit> dst)
; vtestz_gb256x8i_256x8i_span0o[127] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 f9 1f 83 e1 1f 03 c1 c1 f8 05 49 8b 09 45 33 d2 85 c0 7e 45 4d 63 da 4e 8d 1c 99 48 8b 32 41 8b fa c1 e7 05 48 63 ff 48 03 f7 c5 ff f0 06 49 8b 30 41 8b fa c1 e7 05 48 63 ff 48 03 f7 c5 ff f0 0e c4 e2 7d 17 c1 40 0f 94 c6 40 0f b6 f6 41 89 33 41 ff c2 44 3b d0 7c bb 48 8b fb 49 8b f1 e8 ad a9 bd 5e 48 a5 48 8b c3 c5 f8 77 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
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
0019h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
001ch xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0021h jle short 0068h                         ; JLE rel8 || 7E cb || encoded[2]{7e 45}
0023h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0026h lea r11,[rcx+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 99}
002ah mov rsi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 32}
002dh mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0030h shl edi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 05}
0033h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0036h add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
0039h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003dh mov rsi,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 30}
0040h mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0043h shl edi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 05}
0046h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0049h add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004ch vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0050h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0055h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
0059h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
005dh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0060h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0063h cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0066h jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c bb}
0068h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006bh mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
006eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad a9 bd 5e}
0073h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0075h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0078h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> vtestz<ushort>(in Block256<ushort> a, in Block256<ushort> b, Span<bit> dst)
; vtestz_gb256x16u_256x16u_span0o[129] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 f9 1f 83 e1 0f 03 c1 c1 f8 04 49 8b 09 45 33 d2 85 c0 7e 47 4d 63 da 4e 8d 1c 99 48 8b 32 41 8b fa c1 e7 04 48 63 ff 48 8d 34 7e c5 ff f0 06 49 8b 30 41 8b fa c1 e7 04 48 63 ff 48 8d 34 7e c5 ff f0 0e c4 e2 7d 17 c1 40 0f 94 c6 40 0f b6 f6 41 89 33 41 ff c2 44 3b d0 7c b9 48 8b fb 49 8b f1 e8 0b a9 bd 5e 48 a5 48 8b c3 c5 f8 77 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0006h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0009h mov eax,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 42 08}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0014h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0016h sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
0019h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
001ch xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0021h jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0023h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0026h lea r11,[rcx+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 99}
002ah mov rsi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 32}
002dh mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0030h shl edi,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 04}
0033h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0036h lea rsi,[rsi+rdi*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 7e}
003ah vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003eh mov rsi,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 30}
0041h mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0044h shl edi,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 04}
0047h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
004ah lea rsi,[rsi+rdi*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 7e}
004eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0052h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0057h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
005bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
005fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0062h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0065h cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0068h jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c b9}
006ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006dh mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0070h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b a9 bd 5e}
0075h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0077h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> vtestz<short>(in Block256<short> a, in Block256<short> b, Span<bit> dst)
; vtestz_gb256x16i_256x16i_span0o[129] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 f9 1f 83 e1 0f 03 c1 c1 f8 04 49 8b 09 45 33 d2 85 c0 7e 47 4d 63 da 4e 8d 1c 99 48 8b 32 41 8b fa c1 e7 04 48 63 ff 48 8d 34 7e c5 ff f0 06 49 8b 30 41 8b fa c1 e7 04 48 63 ff 48 8d 34 7e c5 ff f0 0e c4 e2 7d 17 c1 40 0f 94 c6 40 0f b6 f6 41 89 33 41 ff c2 44 3b d0 7c b9 48 8b fb 49 8b f1 e8 6b a8 bd 5e 48 a5 48 8b c3 c5 f8 77 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0006h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0009h mov eax,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 42 08}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0014h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0016h sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
0019h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
001ch xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0021h jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0023h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0026h lea r11,[rcx+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 99}
002ah mov rsi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 32}
002dh mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0030h shl edi,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 04}
0033h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0036h lea rsi,[rsi+rdi*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 7e}
003ah vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003eh mov rsi,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 30}
0041h mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0044h shl edi,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 04}
0047h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
004ah lea rsi,[rsi+rdi*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 7e}
004eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0052h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0057h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
005bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
005fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0062h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0065h cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0068h jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c b9}
006ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006dh mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0070h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b a8 bd 5e}
0075h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0077h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> vtestz<uint>(in Block256<uint> a, in Block256<uint> b, Span<bit> dst)
; vtestz_gb256x32u_256x32u_span0o[129] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 f9 1f 83 e1 07 03 c1 c1 f8 03 49 8b 09 45 33 d2 85 c0 7e 47 4d 63 da 4e 8d 1c 99 48 8b 32 41 8b fa c1 e7 03 48 63 ff 48 8d 34 be c5 ff f0 06 49 8b 30 41 8b fa c1 e7 03 48 63 ff 48 8d 34 be c5 ff f0 0e c4 e2 7d 17 c1 40 0f 94 c6 40 0f b6 f6 41 89 33 41 ff c2 44 3b d0 7c b9 48 8b fb 49 8b f1 e8 bb a3 bd 5e 48 a5 48 8b c3 c5 f8 77 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0006h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0009h mov eax,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 42 08}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0014h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0016h sar eax,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 03}
0019h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
001ch xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0021h jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0023h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0026h lea r11,[rcx+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 99}
002ah mov rsi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 32}
002dh mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0030h shl edi,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 03}
0033h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0036h lea rsi,[rsi+rdi*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 be}
003ah vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003eh mov rsi,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 30}
0041h mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0044h shl edi,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 03}
0047h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
004ah lea rsi,[rsi+rdi*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 be}
004eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0052h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0057h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
005bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
005fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0062h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0065h cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0068h jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c b9}
006ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006dh mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0070h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb a3 bd 5e}
0075h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0077h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> vtestz<int>(in Block256<int> a, in Block256<int> b, Span<bit> dst)
; vtestz_gb256x32i_256x32i_span0o[129] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 f9 1f 83 e1 07 03 c1 c1 f8 03 49 8b 09 45 33 d2 85 c0 7e 47 4d 63 da 4e 8d 1c 99 48 8b 32 41 8b fa c1 e7 03 48 63 ff 48 8d 34 be c5 ff f0 06 49 8b 30 41 8b fa c1 e7 03 48 63 ff 48 8d 34 be c5 ff f0 0e c4 e2 7d 17 c1 40 0f 94 c6 40 0f b6 f6 41 89 33 41 ff c2 44 3b d0 7c b9 48 8b fb 49 8b f1 e8 1b a3 bd 5e 48 a5 48 8b c3 c5 f8 77 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0006h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0009h mov eax,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 42 08}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0014h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0016h sar eax,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 03}
0019h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
001ch xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0021h jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0023h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0026h lea r11,[rcx+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 99}
002ah mov rsi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 32}
002dh mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0030h shl edi,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 03}
0033h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0036h lea rsi,[rsi+rdi*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 be}
003ah vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003eh mov rsi,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 30}
0041h mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0044h shl edi,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 03}
0047h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
004ah lea rsi,[rsi+rdi*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 be}
004eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0052h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0057h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
005bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
005fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0062h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0065h cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0068h jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c b9}
006ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006dh mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0070h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b a3 bd 5e}
0075h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0077h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> vtestz<ulong>(in Block256<ulong> a, in Block256<ulong> b, Span<bit> dst)
; vtestz_gb256x64u_256x64u_span0o[129] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 f9 1f 83 e1 03 03 c1 c1 f8 02 49 8b 09 45 33 d2 85 c0 7e 47 4d 63 da 4e 8d 1c 99 48 8b 32 41 8b fa c1 e7 02 48 63 ff 48 8d 34 fe c5 ff f0 06 49 8b 30 41 8b fa c1 e7 02 48 63 ff 48 8d 34 fe c5 ff f0 0e c4 e2 7d 17 c1 40 0f 94 c6 40 0f b6 f6 41 89 33 41 ff c2 44 3b d0 7c b9 48 8b fb 49 8b f1 e8 7b a2 bd 5e 48 a5 48 8b c3 c5 f8 77 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0006h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0009h mov eax,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 42 08}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0014h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0016h sar eax,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 02}
0019h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
001ch xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0021h jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0023h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0026h lea r11,[rcx+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 99}
002ah mov rsi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 32}
002dh mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0030h shl edi,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 02}
0033h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0036h lea rsi,[rsi+rdi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 fe}
003ah vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003eh mov rsi,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 30}
0041h mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0044h shl edi,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 02}
0047h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
004ah lea rsi,[rsi+rdi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 fe}
004eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0052h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0057h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
005bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
005fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0062h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0065h cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0068h jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c b9}
006ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006dh mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0070h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b a2 bd 5e}
0075h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0077h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> vtestz<long>(in Block256<long> a, in Block256<long> b, Span<bit> dst)
; vtestz_gb256x64i_256x64i_span0o[129] = {57 56 53 c5 f8 77 48 8b d9 8b 42 08 8b c8 c1 f9 1f 83 e1 03 03 c1 c1 f8 02 49 8b 09 45 33 d2 85 c0 7e 47 4d 63 da 4e 8d 1c 99 48 8b 32 41 8b fa c1 e7 02 48 63 ff 48 8d 34 fe c5 ff f0 06 49 8b 30 41 8b fa c1 e7 02 48 63 ff 48 8d 34 fe c5 ff f0 0e c4 e2 7d 17 c1 40 0f 94 c6 40 0f b6 f6 41 89 33 41 ff c2 44 3b d0 7c b9 48 8b fb 49 8b f1 e8 db a1 bd 5e 48 a5 48 8b c3 c5 f8 77 5b 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0006h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0009h mov eax,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 42 08}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0014h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0016h sar eax,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 02}
0019h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
001ch xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0021h jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0023h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
0026h lea r11,[rcx+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 99}
002ah mov rsi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 32}
002dh mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0030h shl edi,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 02}
0033h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
0036h lea rsi,[rsi+rdi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 fe}
003ah vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
003eh mov rsi,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 30}
0041h mov edi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fa}
0044h shl edi,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e7 02}
0047h movsxd rdi,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ff}
004ah lea rsi,[rsi+rdi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 34 fe}
004eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0052h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0057h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
005bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
005fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0062h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0065h cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0068h jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c b9}
006ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006dh mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0070h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db a1 bd 5e}
0075h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0077h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
