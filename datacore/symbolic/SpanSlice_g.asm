------------------------------------------------------------------------------------------------------------------------
; Span<byte> SpanSlice<byte>(Span<byte> src, int start)
; SpanSlice_g[8u](span8u,32i)[39] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 17 41 2b d0 4d 63 c0 49 03 c0 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
000eh ja short 0027h                          ; JA rel8 || 77 cb || encoded[2]{77 17}
0010h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
0013h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0016h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0019h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ch mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> SpanSlice<sbyte>(Span<sbyte> src, int start)
; SpanSlice_g[8i](span8i,32i)[39] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 17 41 2b d0 4d 63 c0 49 03 c0 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
000eh ja short 0027h                          ; JA rel8 || 77 cb || encoded[2]{77 17}
0010h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
0013h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0016h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0019h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ch mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> SpanSlice<ushort>(Span<ushort> src, int start)
; SpanSlice_g[16u](span16u,32i)[40] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 40 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
000eh ja short 0028h                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0010h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
0013h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0016h lea rax,[rax+r8*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 40}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> SpanSlice<short>(Span<short> src, int start)
; SpanSlice_g[16i](span16i,32i)[40] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 40 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
000eh ja short 0028h                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0010h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
0013h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0016h lea rax,[rax+r8*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 40}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> SpanSlice<uint>(Span<uint> src, int start)
; SpanSlice_g[32u](span32u,32i)[40] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 80 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
000eh ja short 0028h                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0010h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
0013h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0016h lea rax,[rax+r8*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 80}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> SpanSlice<int>(Span<int> src, int start)
; SpanSlice_g[32i](span32i,32i)[40] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 80 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
000eh ja short 0028h                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0010h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
0013h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0016h lea rax,[rax+r8*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 80}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> SpanSlice<ulong>(Span<ulong> src, int start)
; SpanSlice_g[64u](span64u,32i)[40] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 c0 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
000eh ja short 0028h                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0010h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
0013h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0016h lea rax,[rax+r8*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 c0}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> SpanSlice<long>(Span<long> src, int start)
; SpanSlice_g[64i](span64i,32i)[40] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 c0 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
000eh ja short 0028h                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0010h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
0013h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0016h lea rax,[rax+r8*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 c0}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<float> SpanSlice<float>(Span<float> src, int start)
; SpanSlice_g[32f](span32f,32i)[40] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 80 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
000eh ja short 0028h                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0010h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
0013h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0016h lea rax,[rax+r8*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 80}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<double> SpanSlice<double>(Span<double> src, int start)
; SpanSlice_g[64f](span64f,32i)[40] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 c0 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
000eh ja short 0028h                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0010h sub edx,r8d                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{41 2b d0}
0013h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0016h lea rax,[rax+r8*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 c0}
001ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> SpanSlice<byte>(Span<byte> src, int start, int length)
; SpanSlice_g[8u](span8u,32i,32i)[47] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 18 48 8b 02 49 63 d0 48 03 c2 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h cmp rax,r10                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c2}
0015h ja short 002fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0017h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0020h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0023h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0027h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> SpanSlice<sbyte>(Span<sbyte> src, int start, int length)
; SpanSlice_g[8i](span8i,32i,32i)[47] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 18 48 8b 02 49 63 d0 48 03 c2 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h cmp rax,r10                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c2}
0015h ja short 002fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0017h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0020h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0023h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0027h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> SpanSlice<ushort>(Span<ushort> src, int start, int length)
; SpanSlice_g[16u](span16u,32i,32i)[48] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 50 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h cmp rax,r10                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c2}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0021h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0024h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0028h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> SpanSlice<short>(Span<short> src, int start, int length)
; SpanSlice_g[16i](span16i,32i,32i)[48] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 50 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h cmp rax,r10                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c2}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0021h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0024h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0028h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> SpanSlice<uint>(Span<uint> src, int start, int length)
; SpanSlice_g[32u](span32u,32i,32i)[48] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 90 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h cmp rax,r10                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c2}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0021h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0024h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0028h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> SpanSlice<int>(Span<int> src, int start, int length)
; SpanSlice_g[32i](span32i,32i,32i)[48] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 90 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h cmp rax,r10                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c2}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0021h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0024h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0028h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> SpanSlice<ulong>(Span<ulong> src, int start, int length)
; SpanSlice_g[64u](span64u,32i,32i)[48] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 d0 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h cmp rax,r10                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c2}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0021h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0024h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0028h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> SpanSlice<long>(Span<long> src, int start, int length)
; SpanSlice_g[64i](span64i,32i,32i)[48] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 d0 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h cmp rax,r10                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c2}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0021h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0024h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0028h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<float> SpanSlice<float>(Span<float> src, int start, int length)
; SpanSlice_g[32f](span32f,32i,32i)[48] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 90 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h cmp rax,r10                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c2}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0021h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0024h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0028h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<double> SpanSlice<double>(Span<double> src, int start, int length)
; SpanSlice_g[64f](span64f,32i,32i)[48] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 d0 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h cmp rax,r10                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c2}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0021h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0024h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0028h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
