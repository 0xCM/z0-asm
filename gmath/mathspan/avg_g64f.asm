; double avg<double>(ReadOnlySpan<double> src)
; avg_g64f[7ff7c71be790h, 7ff7c71be7c6h][54] = {48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b 01 8b 49 08 48 8d 54 24 28 48 89 02 89 4a 08 48 8d 4c 24 28 e8 c7 75 fd ff 90 48 83 c4 38 c3 e8 5c 14 e1 5e cc 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:11:00:357
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000eh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0011h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0014h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0019h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
001ch mov [rdx+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 4a 08}
001fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0024h call 7ff7c7195d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 75 fd ff}
0029h nop                                     ; NOP || o32 90 || encoded[1]{90}
002ah add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
002fh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 14 e1 5e}
0034h int 3                                   ; INT3 || CC || encoded[1]{cc}
0035h (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
