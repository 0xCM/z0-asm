------------------------------------------------------------------------------------------------------------------------
; void unpack16x1(ushort src, Span<byte> dst)
; unpack16x1_16u_span8u[60] = {48 83 ec 28 90 48 8b 02 0f b7 d1 8b ca 49 b8 01 01 01 01 01 01 01 01 c4 c2 f3 f5 c8 48 89 08 48 83 c0 08 c1 fa 08 89 54 24 24 0f b7 54 24 24 c4 c2 eb f5 d0 48 89 10 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000dh mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0017h pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
001ch mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
001fh add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
0023h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0026h mov [rsp+24h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 24}
002ah movzx edx,word ptr [rsp+24h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 24}
002fh pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
0034h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
0037h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack16x1(ushort src, in Block128<byte> dst)
; unpack16x1_16u_b128x8u~in[60] = {48 83 ec 28 90 48 8b 02 0f b7 d1 8b ca 49 b8 01 01 01 01 01 01 01 01 c4 c2 f3 f5 c8 48 89 08 48 83 c0 08 c1 fa 08 89 54 24 24 0f b7 54 24 24 c4 c2 eb f5 d0 48 89 10 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000dh mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0017h pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
001ch mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
001fh add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
0023h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0026h mov [rsp+24h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 24}
002ah movzx edx,word ptr [rsp+24h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 24}
002fh pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
0034h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
0037h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack16x1(ushort src, ref ulong dst)
; unpack16x1_16u_64u~ref[57] = {50 0f 1f 40 00 0f b7 c1 8b c8 49 b8 01 01 01 01 01 01 01 01 c4 c2 f3 f5 c8 48 89 0a 48 83 c2 08 c1 f8 08 89 44 24 04 0f b7 44 24 04 c4 c2 fb f5 c0 48 89 02 48 83 c4 08 c3}
; TermCode = RET_ZEDx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000ah mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0014h pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
0019h mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
001ch add rdx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 08}
0020h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
0023h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
0027h movzx eax,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 04}
002ch pdep rax,rax,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c0}
0031h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0034h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
