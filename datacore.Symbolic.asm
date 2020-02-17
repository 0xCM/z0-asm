------------------------------------------------------------------------------------------------------------------------
; void SpanFill<byte>(byte src, Span<byte> dst)
; SpanFill_g[8u](8u,span8u)[25] = {48 83 ec 28 90 48 8b c2 0f b6 d1 48 8b c8 e8 d5 81 1c ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000eh call 7ff7c63b0738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 81 1c ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<sbyte>(sbyte src, Span<sbyte> dst)
; SpanFill_g[8i](8i,span8i)[26] = {48 83 ec 28 90 48 8b c2 48 0f be d1 48 8b c8 e8 6c ec 79 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
000ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000fh call 7ff7c6987200h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c ec 79 ff}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<ushort>(ushort src, Span<ushort> dst)
; SpanFill_g[16u](16u,span16u)[25] = {48 83 ec 28 90 48 8b c2 0f b7 d1 48 8b c8 e8 8d f1 79 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000eh call 7ff7c6987750h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f1 79 ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<short>(short src, Span<short> dst)
; SpanFill_g[16i](16i,span16i)[26] = {48 83 ec 28 90 48 8b c2 48 0f bf d1 48 8b c8 e8 3c f3 79 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
000ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000fh call 7ff7c6987930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c f3 79 ff}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<uint>(uint src, Span<uint> dst)
; SpanFill_g[32u](32u,span32u)[23] = {48 83 ec 28 90 8b c1 48 8b ca 8b d0 e8 8f f5 79 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ch call 7ff7c6987bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f f5 79 ff}
0011h nop                                     ; NOP || o32 90 || encoded[1]{90}
0012h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<int>(int src, Span<int> dst)
; SpanFill_g[32i](32i,span32i)[23] = {48 83 ec 28 90 8b c1 48 8b ca 8b d0 e8 e7 ae 1c ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ch call 7ff7c63b3538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 ae 1c ff}
0011h nop                                     ; NOP || o32 90 || encoded[1]{90}
0012h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<ulong>(ulong src, Span<ulong> dst)
; SpanFill_g[64u](64u,span64u)[25] = {48 83 ec 28 90 48 8b c1 48 8b ca 48 8b d0 e8 ed f7 79 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000eh call 7ff7c6987e70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f7 79 ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<long>(long src, Span<long> dst)
; SpanFill_g[64i](64i,span64i)[25] = {48 83 ec 28 90 48 8b c1 48 8b ca 48 8b d0 e8 8d fa 79 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000eh call 7ff7c6988140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d fa 79 ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<float>(float src, Span<float> dst)
; SpanFill_g[32f](32f,span32f)[25] = {48 83 ec 28 c5 f8 77 48 8b ca c5 f8 28 c8 e8 c5 4c 7c ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000ah vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000eh call 7ff7c69ad3a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 4c 7c ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<double>(double src, Span<double> dst)
; SpanFill_g[64f](64f,span64f)[25] = {48 83 ec 28 c5 f8 77 48 8b ca c5 f8 28 c8 e8 dd 52 7c ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000ah vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000eh call 7ff7c69ad9f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 52 7c ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<byte>(Span<byte> dst)
; SpanClear_g[8u](span8u)[31] = {48 83 ec 28 90 48 8b 11 8b 49 08 48 63 c1 48 8b ca 48 8b d0 e8 e7 cd d3 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0008h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
000bh movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
000eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0011h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0014h call 7ff815f25940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 cd d3 4e}
0019h nop                                     ; NOP || o32 90 || encoded[1]{90}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<sbyte>(Span<sbyte> dst)
; SpanClear_g[8i](span8i)[31] = {48 83 ec 28 90 48 8b 11 8b 49 08 48 63 c1 48 8b ca 48 8b d0 e8 a7 cd d3 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0008h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
000bh movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
000eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0011h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0014h call 7ff815f25940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 cd d3 4e}
0019h nop                                     ; NOP || o32 90 || encoded[1]{90}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<ushort>(Span<ushort> dst)
; SpanClear_g[16u](span16u)[31] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 d1 e2 48 8b c8 e8 67 cd d3 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e2}
0011h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0014h call 7ff815f25940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 cd d3 4e}
0019h nop                                     ; NOP || o32 90 || encoded[1]{90}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<short>(Span<short> dst)
; SpanClear_g[16i](span16i)[31] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 d1 e2 48 8b c8 e8 27 cd d3 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e2}
0011h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0014h call 7ff815f25940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 cd d3 4e}
0019h nop                                     ; NOP || o32 90 || encoded[1]{90}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<uint>(Span<uint> dst)
; SpanClear_g[32u](span32u)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 02 48 8b c8 e8 e6 cc d3 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 02}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff815f25940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 cc d3 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<int>(Span<int> dst)
; SpanClear_g[32i](span32i)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 02 48 8b c8 e8 a6 cc d3 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 02}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff815f25940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 cc d3 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<ulong>(Span<ulong> dst)
; SpanClear_g[64u](span64u)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 03 48 8b c8 e8 66 cc d3 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 03}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff815f25940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 cc d3 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<long>(Span<long> dst)
; SpanClear_g[64i](span64i)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 03 48 8b c8 e8 26 cc d3 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 03}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff815f25940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 cc d3 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<float>(Span<float> dst)
; SpanClear_g[32f](span32f)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 02 48 8b c8 e8 e6 cb d3 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 02}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff815f25940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 cb d3 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanClear<double>(Span<double> dst)
; SpanClear_g[64f](span64f)[32] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 63 d2 48 c1 e2 03 48 8b c8 e8 a6 cb d3 4e 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh shl rdx,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 03}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h call 7ff815f25940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 cb d3 4e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> SpanSlice<byte>(Span<byte> src, int start)
; SpanSlice_g[8u](span8u,32i)[57] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 17 41 2b d0 4d 63 c0 49 03 c0 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3 e8 7c c9 1a ff cc 00 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0027h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c c9 1a ff}
002ch int 3                                   ; INT3 || CC || encoded[1]{cc}
002dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
002fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0031h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0033h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> SpanSlice<sbyte>(Span<sbyte> src, int start)
; SpanSlice_g[8i](span8i,32i)[57] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 17 41 2b d0 4d 63 c0 49 03 c0 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3 e8 2c c9 1a ff cc 00 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0027h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c c9 1a ff}
002ch int 3                                   ; INT3 || CC || encoded[1]{cc}
002dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
002fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0031h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0033h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> SpanSlice<ushort>(Span<ushort> src, int start)
; SpanSlice_g[16u](span16u,32i)[57] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 40 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3 e8 db c8 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0028h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db c8 1a ff}
002dh int 3                                   ; INT3 || CC || encoded[1]{cc}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0033h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<short> SpanSlice<short>(Span<short> src, int start)
; SpanSlice_g[16i](span16i,32i)[57] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 40 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3 e8 8b c8 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0028h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b c8 1a ff}
002dh int 3                                   ; INT3 || CC || encoded[1]{cc}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0033h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> SpanSlice<uint>(Span<uint> src, int start)
; SpanSlice_g[32u](span32u,32i)[57] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 80 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3 e8 3b c8 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0028h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b c8 1a ff}
002dh int 3                                   ; INT3 || CC || encoded[1]{cc}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0033h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<int> SpanSlice<int>(Span<int> src, int start)
; SpanSlice_g[32i](span32i,32i)[57] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 80 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3 e8 eb c7 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0028h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb c7 1a ff}
002dh int 3                                   ; INT3 || CC || encoded[1]{cc}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0033h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> SpanSlice<ulong>(Span<ulong> src, int start)
; SpanSlice_g[64u](span64u,32i)[57] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 c0 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3 e8 9b c7 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0028h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b c7 1a ff}
002dh int 3                                   ; INT3 || CC || encoded[1]{cc}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0033h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<long> SpanSlice<long>(Span<long> src, int start)
; SpanSlice_g[64i](span64i,32i)[57] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 c0 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3 e8 4b c7 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0028h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b c7 1a ff}
002dh int 3                                   ; INT3 || CC || encoded[1]{cc}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0033h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<float> SpanSlice<float>(Span<float> src, int start)
; SpanSlice_g[32f](span32f,32i)[57] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 80 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3 e8 fb c6 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0028h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb c6 1a ff}
002dh int 3                                   ; INT3 || CC || encoded[1]{cc}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0033h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<double> SpanSlice<double>(Span<double> src, int start)
; SpanSlice_g[64f](span64f,32i)[57] = {48 83 ec 28 90 48 8b 02 8b 52 08 44 3b c2 77 18 41 2b d0 4d 63 c0 4a 8d 04 c0 48 89 01 89 51 08 48 8b c1 48 83 c4 28 c3 e8 ab c6 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0028h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab c6 1a ff}
002dh int 3                                   ; INT3 || CC || encoded[1]{cc}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0033h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> SpanSlice<byte>(Span<byte> src, int start, int length)
; SpanSlice_g[8u](span8u,32i,32i)[65] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 18 48 8b 02 49 63 d0 48 03 c2 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3 e8 54 c2 1a ff cc 00 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
002fh call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 c2 1a ff}
0034h int 3                                   ; INT3 || CC || encoded[1]{cc}
0035h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0037h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0039h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
003bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> SpanSlice<sbyte>(Span<sbyte> src, int start, int length)
; SpanSlice_g[8i](span8i,32i,32i)[65] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 18 48 8b 02 49 63 d0 48 03 c2 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3 e8 04 c2 1a ff cc 00 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
002fh call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 c2 1a ff}
0034h int 3                                   ; INT3 || CC || encoded[1]{cc}
0035h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0037h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0039h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
003bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> SpanSlice<ushort>(Span<ushort> src, int start, int length)
; SpanSlice_g[16u](span16u,32i,32i)[65] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 50 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3 e8 b3 c1 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0030h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 c1 1a ff}
0035h int 3                                   ; INT3 || CC || encoded[1]{cc}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
003bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<short> SpanSlice<short>(Span<short> src, int start, int length)
; SpanSlice_g[16i](span16i,32i,32i)[65] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 50 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3 e8 63 c1 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0030h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 c1 1a ff}
0035h int 3                                   ; INT3 || CC || encoded[1]{cc}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
003bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> SpanSlice<uint>(Span<uint> src, int start, int length)
; SpanSlice_g[32u](span32u,32i,32i)[65] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 90 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3 e8 13 c1 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0030h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 c1 1a ff}
0035h int 3                                   ; INT3 || CC || encoded[1]{cc}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
003bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<int> SpanSlice<int>(Span<int> src, int start, int length)
; SpanSlice_g[32i](span32i,32i,32i)[65] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 90 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3 e8 c3 c0 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0030h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 c0 1a ff}
0035h int 3                                   ; INT3 || CC || encoded[1]{cc}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
003bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> SpanSlice<ulong>(Span<ulong> src, int start, int length)
; SpanSlice_g[64u](span64u,32i,32i)[65] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 d0 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3 e8 73 c0 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0030h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 c0 1a ff}
0035h int 3                                   ; INT3 || CC || encoded[1]{cc}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
003bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<long> SpanSlice<long>(Span<long> src, int start, int length)
; SpanSlice_g[64i](span64i,32i,32i)[65] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 d0 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3 e8 23 c0 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0030h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 c0 1a ff}
0035h int 3                                   ; INT3 || CC || encoded[1]{cc}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
003bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<float> SpanSlice<float>(Span<float> src, int start, int length)
; SpanSlice_g[32f](span32f,32i,32i)[65] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 90 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3 e8 d3 bf 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0030h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 bf 1a ff}
0035h int 3                                   ; INT3 || CC || encoded[1]{cc}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
003bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Span<double> SpanSlice<double>(Span<double> src, int start, int length)
; SpanSlice_g[64f](span64f,32i,32i)[65] = {48 83 ec 28 90 41 8b c0 45 8b d1 49 03 c2 44 8b 52 08 49 3b c2 77 19 48 8b 02 49 63 d0 48 8d 04 d0 48 89 01 44 89 49 08 48 8b c1 48 83 c4 28 c3 e8 83 bf 1a ff cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
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
0030h call 7ff7c6395768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 bf 1a ff}
0035h int 3                                   ; INT3 || CC || encoded[1]{cc}
0036h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0038h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
003bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
003eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0040h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
