------------------------------------------------------------------------------------------------------------------------
; void SpanClear<byte>(Span<byte> dst)
; SpanClear_g[8u](span8u)[31] = {48 83 ec 28 90 48 8b 11 8b 49 08 48 63 c1 48 8b ca 48 8b d0 e8 07 c9 ec 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0008h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
000bh movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
000eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0011h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0014h call 7ff816d35940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 c9 ec 4e}
0019h nop                                     ; NOP || o32 90 || encoded[1]{90}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<sbyte>(Span<sbyte> dst)
; SpanClear_g[8i](span8i)[31] = {48 83 ec 28 90 48 8b 11 8b 49 08 48 63 c1 48 8b ca 48 8b d0 e8 c7 c8 ec 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0008h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
000bh movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
000eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0011h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0014h call 7ff816d35940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 c8 ec 4e}
0019h nop                                     ; NOP || o32 90 || encoded[1]{90}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<ushort>(Span<ushort> dst)
; SpanClear_g[16u](span16u)[31] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 d1 e2 48 8b c8 e8 87 c8 ec 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e2}
0011h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0014h call 7ff816d35940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 c8 ec 4e}
0019h nop                                     ; NOP || o32 90 || encoded[1]{90}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<short>(Span<short> dst)
; SpanClear_g[16i](span16i)[31] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 d1 e2 48 8b c8 e8 47 c8 ec 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e2}
0011h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0014h call 7ff816d35940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 c8 ec 4e}
0019h nop                                     ; NOP || o32 90 || encoded[1]{90}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<uint>(Span<uint> dst)
; SpanClear_g[32u](span32u)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 02 48 8b c8 e8 06 c8 ec 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 02}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff816d35940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 c8 ec 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<int>(Span<int> dst)
; SpanClear_g[32i](span32i)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 02 48 8b c8 e8 c6 c7 ec 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 02}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff816d35940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 c7 ec 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<ulong>(Span<ulong> dst)
; SpanClear_g[64u](span64u)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 03 48 8b c8 e8 86 c7 ec 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 03}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff816d35940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 c7 ec 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<long>(Span<long> dst)
; SpanClear_g[64i](span64i)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 03 48 8b c8 e8 46 c7 ec 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 03}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff816d35940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 c7 ec 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<float>(Span<float> dst)
; SpanClear_g[32f](span32f)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 02 48 8b c8 e8 06 c7 ec 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 02}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff816d35940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 c7 ec 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<double>(Span<double> dst)
; SpanClear_g[64f](span64f)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 03 48 8b c8 e8 c6 c6 ec 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 03}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff816d35940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 c6 ec 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
