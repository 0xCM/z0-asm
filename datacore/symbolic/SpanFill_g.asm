------------------------------------------------------------------------------------------------------------------------
; void SpanFill<byte>(byte src, Span<byte> dst)
; SpanFill_g[8u](8u,span8u)[25] = {48 83 ec 28 90 48 8b c2 0f b6 d1 48 8b c8 e8 cd b7 89 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000eh call 7ff7c7781830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd b7 89 ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<sbyte>(sbyte src, Span<sbyte> dst)
; SpanFill_g[8i](8i,span8i)[26] = {48 83 ec 28 90 48 8b c2 48 0f be d1 48 8b c8 e8 fc 5d ff ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
000ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000fh call 7ff7c7edbe90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 5d ff ff}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<ushort>(ushort src, Span<ushort> dst)
; SpanFill_g[16u](16u,span16u)[25] = {48 83 ec 28 90 48 8b c2 0f b7 d1 48 8b c8 e8 a5 97 e8 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000eh call 7ff7c7d6f868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 97 e8 ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<short>(short src, Span<short> dst)
; SpanFill_g[16i](16i,span16i)[26] = {48 83 ec 28 90 48 8b c2 48 0f bf d1 48 8b c8 e8 f4 60 ff ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
000ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000fh call 7ff7c7edc5f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 60 ff ff}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<uint>(uint src, Span<uint> dst)
; SpanFill_g[32u](32u,span32u)[23] = {48 83 ec 28 90 8b c1 48 8b ca 8b d0 e8 87 a5 e8 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ch call 7ff7c7d70ab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 a5 e8 ff}
0011h nop                                     ; NOP || o32 90 || encoded[1]{90}
0012h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<int>(int src, Span<int> dst)
; SpanFill_g[32i](32i,span32i)[23] = {48 83 ec 28 90 8b c1 48 8b ca 8b d0 e8 bf c9 89 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ch call 7ff7c7782f20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf c9 89 ff}
0011h nop                                     ; NOP || o32 90 || encoded[1]{90}
0012h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<ulong>(ulong src, Span<ulong> dst)
; SpanFill_g[64u](64u,span64u)[25] = {48 83 ec 28 90 48 8b c1 48 8b ca 48 8b d0 e8 2d 9b e8 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000eh call 7ff7c7d700c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 9b e8 ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<long>(long src, Span<long> dst)
; SpanFill_g[64i](64i,span64i)[25] = {48 83 ec 28 90 48 8b c1 48 8b ca 48 8b d0 e8 4d 62 ff ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000eh call 7ff7c7edc810h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 62 ff ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<float>(float src, Span<float> dst)
; SpanFill_g[32f](32f,span32f)[25] = {48 83 ec 28 c5 f8 77 48 8b ca c5 f8 28 c8 e8 f5 64 ff ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000ah vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000eh call 7ff7c7edcae8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 64 ff ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void SpanFill<double>(double src, Span<double> dst)
; SpanFill_g[64f](64f,span64f)[25] = {48 83 ec 28 c5 f8 77 48 8b ca c5 f8 28 c8 e8 45 66 ff ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000ah vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000eh call 7ff7c7edcc68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 66 ff ff}
0013h nop                                     ; NOP || o32 90 || encoded[1]{90}
0014h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
