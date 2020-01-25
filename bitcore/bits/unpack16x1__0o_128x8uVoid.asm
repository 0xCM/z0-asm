; void unpack16x1(ushort src, in Block128<byte> dst)
; unpack16x1__0o_128x8uVoid[7ff7c6e67960h, 7ff7c6e679a2h][66] = {48 83 ec 28 90 48 8b 02 0f b7 d1 8b ca 49 b8 01 01 01 01 01 01 01 01 c4 c2 f3 f5 c8 48 89 08 48 83 c0 08 c1 fa 08 89 54 24 24 0f b7 54 24 24 c4 c2 eb f5 d0 48 89 10 48 83 c4 28 c3 e8 7f 82 16 5f cc}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 01:44:31:615
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
003ch call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 82 16 5f}
0041h int 3                                   ; INT3 || CC || encoded[1]{cc}
