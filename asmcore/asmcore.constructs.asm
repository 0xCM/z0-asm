------------------------------------------------------------------------------------------------------------------------
; Span<byte> alloc<byte>(int len), hex://asmcore/AsmConstructs?alloc#alloc_g[8u](32i)
; alloc_g[8u](32i)[48] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x63,0xd2,0x48,0xb9,0x10,0xea,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x36,0xdd,0x3e,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x89,0x16,0x89,0x46,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c773ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 73 c7 f7 7f 00 00}
0015h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 dd 3e 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> alloc<sbyte>(int len), hex://asmcore/AsmConstructs?alloc#alloc_g[8i](32i)
; alloc_g[8i](32i)[48] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x63,0xd2,0x48,0xb9,0x98,0xf0,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x66,0xb3,0x3e,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x89,0x16,0x89,0x46,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c773f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 73 c7 f7 7f 00 00}
0015h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 b3 3e 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> alloc<ushort>(int len), hex://asmcore/AsmConstructs?alloc#alloc_g[16u](32i)
; alloc_g[16u](32i)[48] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x63,0xd2,0x48,0xb9,0xe0,0xe6,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x16,0xaf,0x3e,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x89,0x16,0x89,0x46,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c805e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 05 c8 f7 7f 00 00}
0015h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 af 3e 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> alloc<short>(int len), hex://asmcore/AsmConstructs?alloc#alloc_g[16i](32i)
; alloc_g[16i](32i)[48] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x63,0xd2,0x48,0xb9,0xe0,0xec,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xc6,0xae,0x3e,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x89,0x16,0x89,0x46,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c805ece0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ec 05 c8 f7 7f 00 00}
0015h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 ae 3e 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> alloc<uint>(int len), hex://asmcore/AsmConstructs?alloc#alloc_g[32u](32i)
; alloc_g[32u](32i)[48] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x63,0xd2,0x48,0xb9,0xc0,0xef,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x76,0xae,0x3e,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x89,0x16,0x89,0x46,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c805efc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ef 05 c8 f7 7f 00 00}
0015h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 ae 3e 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> alloc<int>(int len), hex://asmcore/AsmConstructs?alloc#alloc_g[32i](32i)
; alloc_g[32i](32i)[48] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x63,0xd2,0x48,0xb9,0x48,0x5f,0x80,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x06,0xad,0x3e,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x89,0x16,0x89,0x46,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c7805f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 80 c7 f7 7f 00 00}
0015h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 ad 3e 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> alloc<ulong>(int len), hex://asmcore/AsmConstructs?alloc#alloc_g[64u](32i)
; alloc_g[64u](32i)[48] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x63,0xd2,0x48,0xb9,0x08,0xf5,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb6,0xac,0x3e,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x89,0x16,0x89,0x46,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c7a2f508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f5 a2 c7 f7 7f 00 00}
0015h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ac 3e 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> alloc<long>(int len), hex://asmcore/AsmConstructs?alloc#alloc_g[64i](32i)
; alloc_g[64i](32i)[48] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x63,0xd2,0x48,0xb9,0x60,0xf8,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x26,0xaa,0x3e,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x89,0x16,0x89,0x46,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c805f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 05 c8 f7 7f 00 00}
0015h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 aa 3e 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<float> alloc<float>(int len), hex://asmcore/AsmConstructs?alloc#alloc_g[32f](32i)
; alloc_g[32f](32i)[48] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x63,0xd2,0x48,0xb9,0x40,0x32,0xba,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xc6,0xa4,0x3e,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x89,0x16,0x89,0x46,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c7ba3240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 32 ba c7 f7 7f 00 00}
0015h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 a4 3e 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<double> alloc<double>(int len), hex://asmcore/AsmConstructs?alloc#alloc_g[64f](32i)
; alloc_g[64f](32i)[48] = {0x56,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x63,0xd2,0x48,0xb9,0x48,0x34,0xba,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x56,0xa3,0x3e,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x89,0x16,0x89,0x46,0x08,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c7ba3448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 34 ba c7 f7 7f 00 00}
0015h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 a3 3e 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Type type<byte>(), hex://asmcore/AsmConstructs?type#type_g[8u]()
; type_g[8u]()[26] = {0x48,0x83,0xec,0x28,0x90,0x48,0xb9,0xf8,0x25,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x5c,0x23,0x39,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rcx,7ff7c77325f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 25 73 c7 f7 7f 00 00}
000fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 23 39 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Type type<sbyte>(), hex://asmcore/AsmConstructs?type#type_g[8i]()
; type_g[8i]()[26] = {0x48,0x83,0xec,0x28,0x90,0x48,0xb9,0xf8,0x25,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2c,0x23,0x39,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rcx,7ff7c77325f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 25 73 c7 f7 7f 00 00}
000fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 23 39 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Type type<ushort>(), hex://asmcore/AsmConstructs?type#type_g[16u]()
; type_g[16u]()[26] = {0x48,0x83,0xec,0x28,0x90,0x48,0xb9,0xf8,0x25,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xfc,0x22,0x39,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rcx,7ff7c77325f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 25 73 c7 f7 7f 00 00}
000fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 22 39 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Type type<short>(), hex://asmcore/AsmConstructs?type#type_g[16i]()
; type_g[16i]()[26] = {0x48,0x83,0xec,0x28,0x90,0x48,0xb9,0xf8,0x25,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xcc,0x22,0x39,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rcx,7ff7c77325f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 25 73 c7 f7 7f 00 00}
000fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 22 39 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Type type<uint>(), hex://asmcore/AsmConstructs?type#type_g[32u]()
; type_g[32u]()[26] = {0x48,0x83,0xec,0x28,0x90,0x48,0xb9,0xf8,0x25,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x9c,0x22,0x39,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rcx,7ff7c77325f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 25 73 c7 f7 7f 00 00}
000fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 22 39 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Type type<int>(), hex://asmcore/AsmConstructs?type#type_g[32i]()
; type_g[32i]()[26] = {0x48,0x83,0xec,0x28,0x90,0x48,0xb9,0xf8,0x25,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6c,0x22,0x39,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rcx,7ff7c77325f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 25 73 c7 f7 7f 00 00}
000fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 22 39 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Type type<ulong>(), hex://asmcore/AsmConstructs?type#type_g[64u]()
; type_g[64u]()[26] = {0x48,0x83,0xec,0x28,0x90,0x48,0xb9,0xf8,0x25,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x3c,0x22,0x39,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rcx,7ff7c77325f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 25 73 c7 f7 7f 00 00}
000fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 22 39 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Type type<long>(), hex://asmcore/AsmConstructs?type#type_g[64i]()
; type_g[64i]()[26] = {0x48,0x83,0xec,0x28,0x90,0x48,0xb9,0xf8,0x25,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x0c,0x22,0x39,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rcx,7ff7c77325f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 25 73 c7 f7 7f 00 00}
000fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 22 39 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Type type<float>(), hex://asmcore/AsmConstructs?type#type_g[32f]()
; type_g[32f]()[26] = {0x48,0x83,0xec,0x28,0x90,0x48,0xb9,0xf8,0x25,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xdc,0x21,0x39,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rcx,7ff7c77325f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 25 73 c7 f7 7f 00 00}
000fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 21 39 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Type type<double>(), hex://asmcore/AsmConstructs?type#type_g[64f]()
; type_g[64f]()[26] = {0x48,0x83,0xec,0x28,0x90,0x48,0xb9,0xf8,0x25,0x73,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xac,0x21,0x39,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rcx,7ff7c77325f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 25 73 c7 f7 7f 00 00}
000fh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 21 39 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void for_min_max(int i0, int i1, Action<int> f), hex://asmcore/AsmConstructs?for_min_max#for_min_max_(32i,32i)
; for_min_max_(32i,32i)[44] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x8b,0xf2,0x49,0x8b,0xf8,0x8b,0xd9,0x3b,0xde,0x7d,0x12,0x48,0x8b,0xc7,0x48,0x8b,0x48,0x08,0x8b,0xd3,0xff,0x50,0x18,0xff,0xc3,0x3b,0xde,0x7c,0xee,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
000ch mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
000eh cmp ebx,esi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b de}
0010h jge short 0024h                         ; JGE rel8 || 7D cb || encoded[2]{7d 12}
0012h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0015h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
0019h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001bh call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
001eh inc ebx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c3}
0020h cmp ebx,esi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b de}
0022h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c ee}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0029h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int for_min_max(), hex://asmcore/AsmConstructs?for_min_max#for_min_max_()
; for_min_max_()[98] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0xb9,0x70,0x7c,0xbf,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x5b,0x93,0x3e,0x5f,0x48,0x8b,0xf0,0x33,0xc9,0x89,0x4e,0x08,0x48,0xb9,0x58,0x10,0x07,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x44,0x93,0x3e,0x5f,0x48,0x8b,0xf8,0x48,0x8d,0x4f,0x08,0x48,0x8b,0xd6,0xe8,0x75,0x84,0x3e,0x5f,0x49,0xb8,0x30,0x85,0xa4,0xc7,0xf7,0x7f,0x00,0x00,0x4c,0x89,0x47,0x18,0x4c,0x8b,0xc7,0x33,0xc9,0xba,0x08,0x00,0x00,0x00,0xe8,0xf8,0xf7,0xff,0xff,0x8b,0x46,0x08,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rcx,7ff7c7bf7c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 7c bf c7 f7 7f 00 00}
0010h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 93 3e 5f}
0015h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0018h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
001ah mov [rsi+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 4e 08}
001dh mov rcx,7ff7c8071058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 10 07 c8 f7 7f 00 00}
0027h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 93 3e 5f}
002ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
002fh lea rcx,[rdi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4f 08}
0033h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0036h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 84 3e 5f}
003bh mov r8,7ff7c7a48530h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 30 85 a4 c7 f7 7f 00 00}
0045h mov [rdi+18h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 47 18}
0049h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
004ch xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
004eh mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0053h call 7ff7c7e7d190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 f7 ff ff}
0058h mov eax,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 46 08}
005bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0060h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0061h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint compute_32u(BinaryBitLogicKind:byte op, uint a, uint b), hex://asmcore/AsmConstructs?compute_32u#compute_32u_(BinaryBitLogicKind~8u,32u,32u)
; compute_32u_(BinaryBitLogicKind~8u,32u,32u)[157] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc9,0x83,0xf9,0x0f,0x0f,0x87,0x89,0x00,0x00,0x00,0x8b,0xc1,0x48,0x8d,0x0d,0x86,0x00,0x00,0x00,0x8b,0x0c,0x81,0x4c,0x8d,0x0d,0xe1,0xff,0xff,0xff,0x49,0x03,0xc9,0xff,0xe1,0x33,0xc0,0xeb,0x6f,0x8b,0xc2,0x41,0x23,0xc0,0xeb,0x68,0xc4,0xe2,0x38,0xf2,0xc2,0xeb,0x61,0x8b,0xc2,0xeb,0x5d,0xc4,0xc2,0x68,0xf2,0xc0,0xeb,0x56,0x41,0x8b,0xc0,0xeb,0x51,0x8b,0xc2,0x41,0x33,0xc0,0xeb,0x4a,0x8b,0xc2,0x41,0x0b,0xc0,0xeb,0x43,0x8b,0xc2,0x41,0x0b,0xc0,0xf7,0xd0,0xeb,0x3a,0x8b,0xc2,0x41,0x33,0xc0,0xf7,0xd0,0xeb,0x31,0x41,0x8b,0xc0,0xf7,0xd0,0xeb,0x2a,0x41,0x8b,0xc0,0xf7,0xd0,0x0b,0xc2,0xeb,0x21,0x8b,0xc2,0xf7,0xd0,0xeb,0x1b,0x8b,0xc2,0xf7,0xd0,0x41,0x0b,0xc0,0xeb,0x12,0x8b,0xc2,0x41,0x23,0xc0,0xf7,0xd0,0xeb,0x09,0xb8,0xff,0xff,0xff,0xff,0xeb,0x02,0x33,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
000bh ja near ptr 009ah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 89 00 00 00}
0011h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0013h lea rcx,[rip+86h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 86 00 00 00}
001ah mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
001dh lea r9,[rip-1fh]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e1 ff ff ff}
0024h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0027h jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0029h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
002bh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 6f}
002dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002fh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0032h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 68}
0034h andn eax,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 c2}
0039h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 61}
003bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003dh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
003fh andn eax,edx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 68 f2 c0}
0044h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 56}
0046h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0049h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 51}
004bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
004dh xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0050h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 4a}
0052h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0054h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0057h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
0059h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
005bh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
005eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0060h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0062h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0064h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0067h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0069h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
006bh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
006eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0070h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0072h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0075h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0077h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0079h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 21}
007bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
007fh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0081h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0083h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0085h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0088h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
008ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
008ch and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
008fh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0091h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0093h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0098h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
009ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
