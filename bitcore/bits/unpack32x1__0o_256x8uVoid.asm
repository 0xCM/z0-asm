; void unpack32x1(uint src, in Block256<byte> dst)
; unpack32x1__0o_256x8uVoid[7ff7c6e679c0h, 7ff7c6e67a39h][121] = {48 83 ec 28 90 48 8b 02 0f b7 d1 44 8b c2 49 b9 01 01 01 01 01 01 01 01 c4 42 bb f5 c1 4c 89 00 4c 8d 40 08 c1 fa 08 89 54 24 24 0f b7 54 24 24 c4 c2 eb f5 d1 49 89 10 c1 e9 10 0f b7 d1 48 83 c0 10 8b ca c4 c2 f3 f5 c9 48 89 08 48 83 c0 08 c1 fa 08 89 54 24 20 0f b7 54 24 20 c4 c2 eb f5 d1 48 89 10 48 83 c4 28 c3 e8 f2 81 16 5f cc 00 19 04 01 00 04 42 00 00 40}
; Capture completion code, ZEDx6
; 2020-01-24 01:44:31:617
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
000eh mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
0018h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
001dh mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
0020h lea r8,[rax+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 08}
0024h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0027h mov [rsp+24h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 24}
002bh movzx edx,word ptr [rsp+24h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 24}
0030h pdep rdx,rdx,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d1}
0035h mov [r8],rdx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 10}
0038h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
003bh movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
003eh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0042h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0044h pdep rcx,rcx,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c9}
0049h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
004ch add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
0050h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0053h mov [rsp+20h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 20}
0057h movzx edx,word ptr [rsp+20h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 20}
005ch pdep rdx,rdx,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d1}
0061h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
0064h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0068h ret                                     ; RET || C3 || encoded[1]{c3}
0069h call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 81 16 5f}
006eh int 3                                   ; INT3 || CC || encoded[1]{cc}
006fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0071h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0073h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0076h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
