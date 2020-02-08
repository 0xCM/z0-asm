------------------------------------------------------------------------------------------------------------------------
; void unpack8x1(byte src, ref ulong dst)
; unpack8x1_8u_64u~ref[27] = {0f 1f 44 00 00 0f b6 c1 48 b9 01 01 01 01 01 01 01 01 c4 e2 fb f5 c1 48 89 02 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0012h pdep rax,rax,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 fb f5 c1}
0017h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack8x1(byte src, Span<byte> dst)
; unpack8x1_8u_span8u[34] = {48 83 ec 28 90 48 8b 02 0f b6 d1 48 b9 01 01 01 01 01 01 01 01 c4 e2 eb f5 d1 48 89 10 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0015h pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
001ah mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
001dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
