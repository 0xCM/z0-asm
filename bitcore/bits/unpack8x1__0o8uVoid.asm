; void unpack8x1(byte src, Span<byte> dst)
; unpack8x1__0o8uVoid[7ff7c6e7beb0h, 7ff7c6e7bee1h][49] = {48 83 ec 28 90 48 8b 02 0f b6 d1 48 b9 01 01 01 01 01 01 01 01 c4 e2 eb f5 d1 48 89 10 48 83 c4 28 c3 e8 49 3d 15 5f cc 19 04 01 00 04 42 00 00 40}
; Capture completion code, ZEDx6
; 2020-01-25 02:10:51:893
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0015h pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
001ah mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
001dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
0022h call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 3d 15 5f}
0027h int 3                                   ; INT3 || CC || encoded[1]{cc}
0028h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
002bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
