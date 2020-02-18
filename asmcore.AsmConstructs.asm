------------------------------------------------------------------------------------------------------------------------
; Span<byte> alloc<byte>(int len)
; alloc_g[8u](32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 10 ea 34 c6 f7 7f 00 00 e8 06 bc 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c634ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 34 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 bc 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> alloc<sbyte>(int len)
; alloc_g[8i](32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 98 f0 34 c6 f7 7f 00 00 e8 e6 82 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c634f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 34 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 82 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> alloc<ushort>(int len)
; alloc_g[16u](32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 d0 69 85 c6 f7 7f 00 00 e8 96 7e 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c68569d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 69 85 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 7e 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> alloc<short>(int len)
; alloc_g[16i](32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 00 d0 62 c6 f7 7f 00 00 e8 46 7e 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c662d000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d0 62 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 7e 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> alloc<uint>(int len)
; alloc_g[32u](32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 10 d4 62 c6 f7 7f 00 00 e8 f6 7d 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c662d410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d4 62 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 7d 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> alloc<int>(int len)
; alloc_g[32i](32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 48 5f 41 c6 f7 7f 00 00 e8 86 7c 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c6415f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 41 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 7c 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> alloc<ulong>(int len)
; alloc_g[64u](32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 08 d2 62 c6 f7 7f 00 00 e8 36 78 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c662d208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d2 62 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 78 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> alloc<long>(int len)
; alloc_g[64i](32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 b0 7d 85 c6 f7 7f 00 00 e8 a6 75 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c6857db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7d 85 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 75 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<float> alloc<float>(int len)
; alloc_g[32f](32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 b0 83 85 c6 f7 7f 00 00 e8 56 74 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c68583b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 83 85 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 74 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<double> alloc<double>(int len)
; alloc_g[64f](32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 10 8a 85 c6 f7 7f 00 00 e8 e6 6e 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c6858a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8a 85 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 6e 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void for_min_max(int i0, int i1, Action<int> f)
; for_min_max_(32i,32i)[44] = {57 56 53 48 83 ec 20 8b f2 49 8b f8 8b d9 3b de 7d 12 48 8b c7 48 8b 48 08 8b d3 ff 50 18 ff c3 3b de 7c ee 48 83 c4 20 5b 5e 5f c3}
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
; int for_min_max()
; for_min_max_()[98] = {57 56 48 83 ec 28 48 b9 18 c9 85 c6 f7 7f 00 00 e8 cb 50 7b 5f 48 8b f0 33 c9 89 4e 08 48 b9 08 8d 85 c6 f7 7f 00 00 e8 b4 50 7b 5f 48 8b f8 48 8d 4f 08 48 8b d6 e8 e5 41 7b 5f 49 b8 c0 12 6f c6 f7 7f 00 00 4c 89 47 18 4c 8b c7 33 c9 ba 08 00 00 00 e8 d8 e7 ff ff 8b 46 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rcx,7ff7c685c918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c9 85 c6 f7 7f 00 00}
0010h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 50 7b 5f}
0015h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0018h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
001ah mov [rsi+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 4e 08}
001dh mov rcx,7ff7c6858d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8d 85 c6 f7 7f 00 00}
0027h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 50 7b 5f}
002ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
002fh lea rcx,[rdi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4f 08}
0033h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0036h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 41 7b 5f}
003bh mov r8,7ff7c66f12c0h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 c0 12 6f c6 f7 7f 00 00}
0045h mov [rdi+18h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 47 18}
0049h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
004ch xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
004eh mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0053h call 7ff7c66f0400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e7 ff ff}
0058h mov eax,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 46 08}
005bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0060h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0061h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> alloc_32u(int len)
; alloc_32u_(32i)[48] = {56 48 83 ec 20 48 8b f1 48 63 d2 48 b9 10 d4 62 c6 f7 7f 00 00 e8 76 51 7b 5f 48 8d 50 10 8b 40 08 48 89 16 89 46 08 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rcx,7ff7c662d410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d4 62 c6 f7 7f 00 00}
0015h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 51 7b 5f}
001ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
001eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0021h mov [rsi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 16}
0024h mov [rsi+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 46 08}
0027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint compute_32u(BinaryBitLogicKind:byte op, uint a, uint b)
; compute_32u_(BinaryBitLogicKind~8u,32u,32u)[157] = {0f 1f 44 00 00 0f b6 c9 83 f9 0f 0f 87 89 00 00 00 8b c1 48 8d 0d 86 00 00 00 8b 0c 81 4c 8d 0d e1 ff ff ff 49 03 c9 ff e1 8b c2 41 23 c0 eb 6c 8b c2 41 0b c0 eb 65 8b c2 41 33 c0 eb 5e 8b c2 41 23 c0 f7 d0 eb 55 8b c2 41 0b c0 f7 d0 eb 4c 8b c2 41 33 c0 f7 d0 eb 43 41 8b c0 f7 d0 0b c2 eb 3a c4 c2 68 f2 c0 eb 33 8b c2 f7 d0 41 0b c0 eb 2a c4 e2 38 f2 c2 eb 23 8b c2 f7 d0 eb 1d 41 8b c0 f7 d0 eb 16 8b c2 eb 12 41 8b c0 eb 0d b8 ff ff ff ff eb 06 33 c0 eb 02 33 c0 c3}
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
0029h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002bh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
002eh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 6c}
0030h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0032h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0035h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 65}
0037h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0039h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
003ch jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
003eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0040h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0043h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0045h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0047h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0049h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
004ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
004eh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0050h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0052h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0055h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0057h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
0059h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
005ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
005eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0060h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0062h andn eax,edx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 68 f2 c0}
0067h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 33}
0069h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
006bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
006dh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0070h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0072h andn eax,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 c2}
0077h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 23}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
007dh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1d}
007fh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0082h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0084h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 16}
0086h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0088h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
008ah mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
008dh jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 0d}
008fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0094h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
0096h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0098h jmp short 009ch                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
009ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
