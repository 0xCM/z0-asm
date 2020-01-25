; void part64x1(ulong src, Span<bit> dst)
; part64x1__0obitVoid[7ff7c6e7ce30h, 7ff7c6e7ce8dh][93] = {48 83 ec 28 48 8b c1 4c 8b 02 8b 4a 08 48 c1 e1 02 48 c1 e9 03 48 81 f9 ff ff ff 7f 77 2f 33 d2 48 63 ca 4d 8d 0c c8 8b ca 4c 8b d0 49 d3 ea 48 b9 01 00 00 00 01 00 00 00 c4 e2 ab f5 c9 49 89 09 ff c2 83 fa 20 7c d8 48 83 c4 28 c3 e8 9e 2d 15 5f cc 00 19 04 01 00 04 42 00 00 40}
; Capture completion code, ZEDx6
; 2020-01-25 02:10:51:969
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0007h mov r8,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 02}
000ah mov ecx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4a 08}
000dh shl rcx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 02}
0011h shr rcx,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 03}
0015h cmp rcx,7fffffffh                       ; CMP r/m64, imm32 || REX.W 81 /7 id || encoded[7]{48 81 f9 ff ff ff 7f}
001ch ja short 004dh                          ; JA rel8 || 77 cb || encoded[2]{77 2f}
001eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0020h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0023h lea r9,[r8+rcx*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4d 8d 0c c8}
0027h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0029h mov r10,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d0}
002ch shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
002fh mov rcx,100000001h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 00 00 00 01 00 00 00}
0039h pdep rcx,r10,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 ab f5 c9}
003eh mov [r9],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 09}
0041h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0043h cmp edx,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 20}
0046h jl short 0020h                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0048h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
004dh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 2d 15 5f}
0052h int 3                                   ; INT3 || CC || encoded[1]{cc}
0053h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0055h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0057h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
005ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
005ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
