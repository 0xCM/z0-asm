------------------------------------------------------------------------------------------------------------------------
; ref byte head<byte>(Byte[] src)
; head_g[8u]()[233] = {48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 d7 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 30 dd 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 a7 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 f0 e1 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 77 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 b0 e6 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 47 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 70 eb 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 17 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 a7 e1 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add [rax],dh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 30}
0029h fst qword ptr [rax-39h]                 ; FST m64fp || DD /2 || encoded[3]{dd 50 c7}
002ch idiv dword ptr [rdi]                    ; IDIV r/m32 || o32 F7 /7 || encoded[3]{f7 7f 00}
002fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0032h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0033h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0039h jbe short 0044h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
003bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
003fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
0044h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a7 e1 5e}
0049h int 3                                   ; INT3 || CC || encoded[1]{cc}
004ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
004fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0052h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0054h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0057h add al,dh                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 f0}
0059h loope 00abh                             ; LOOPE rel8 || E1 cb || encoded[2]{e1 50}
005bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
005dh jg short 005fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
005fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0062h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0063h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0069h jbe short 0074h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
006bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
006fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a7 e1 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
007ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
007fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0082h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0084h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0087h add [rax-838af1ah],dh                   ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b0 e6 50 c7 f7}
008dh jg short 008fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
008fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0092h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0093h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0099h jbe short 00a4h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
009bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
009fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a3h ret                                     ; RET || C3 || encoded[1]{c3}
00a4h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a7 e1 5e}
00a9h int 3                                   ; INT3 || CC || encoded[1]{cc}
00aah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00ach sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
00afh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
00b2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00b4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
00b7h add [rax-15h],dh                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 70 eb}
00bah push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
00bbh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
00bdh jg short 00bfh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
00bfh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
00c2h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
00c3h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
00c9h jbe short 00d4h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
00cbh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
00cfh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00d3h ret                                     ; RET || C3 || encoded[1]{c3}
00d4h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a7 e1 5e}
00d9h int 3                                   ; INT3 || CC || encoded[1]{cc}
00dah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00dch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
00dfh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
00e2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00e4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
00e7h add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 02}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte head<sbyte>(SByte[] src)
; head_g[8i]()[185] = {48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 a7 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 f0 e1 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 77 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 b0 e6 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 47 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 70 eb 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 17 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a7 e1 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add al,dh                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 f0}
0029h loope 007bh                             ; LOOPE rel8 || E1 cb || encoded[2]{e1 50}
002bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
002dh jg short 002fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
002fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0032h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0033h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0039h jbe short 0044h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
003bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
003fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
0044h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a7 e1 5e}
0049h int 3                                   ; INT3 || CC || encoded[1]{cc}
004ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
004fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0052h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0054h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0057h add [rax-838af1ah],dh                   ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b0 e6 50 c7 f7}
005dh jg short 005fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
005fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0062h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0063h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0069h jbe short 0074h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
006bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
006fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a7 e1 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
007ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
007fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0082h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0084h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0087h add [rax-15h],dh                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 70 eb}
008ah push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
008bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
008dh jg short 008fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
008fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0092h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0093h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0099h jbe short 00a4h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
009bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
009fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a3h ret                                     ; RET || C3 || encoded[1]{c3}
00a4h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a7 e1 5e}
00a9h int 3                                   ; INT3 || CC || encoded[1]{cc}
00aah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00ach sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
00afh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
00b2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00b4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
00b7h add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 02}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head<ushort>(UInt16[] src)
; head_g[16u]()[137] = {48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 77 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 b0 e6 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 47 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 70 eb 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 17 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a7 e1 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add [rax-838af1ah],dh                   ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b0 e6 50 c7 f7}
002dh jg short 002fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
002fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0032h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0033h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0039h jbe short 0044h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
003bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
003fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
0044h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a7 e1 5e}
0049h int 3                                   ; INT3 || CC || encoded[1]{cc}
004ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
004fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0052h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0054h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0057h add [rax-15h],dh                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 70 eb}
005ah push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
005bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
005dh jg short 005fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
005fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0062h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0063h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0069h jbe short 0074h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
006bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
006fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a7 e1 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
007ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
007fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0082h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0084h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0087h add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 02}
------------------------------------------------------------------------------------------------------------------------
; ref short head<short>(Int16[] src)
; head_g[16i]()[89] = {48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 47 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 70 eb 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 17 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a7 e1 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add [rax-15h],dh                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 70 eb}
002ah push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
002bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
002dh jg short 002fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
002fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0032h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0033h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0039h jbe short 0044h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
003bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
003fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
0044h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a7 e1 5e}
0049h int 3                                   ; INT3 || CC || encoded[1]{cc}
004ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
004fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0052h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0054h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0057h add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 02}
------------------------------------------------------------------------------------------------------------------------
; ref uint head<uint>(UInt32[] src)
; head_g[32u]()[41] = {48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 17 a7 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a7 e1 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 02}
------------------------------------------------------------------------------------------------------------------------
; ref int head<int>(Int32[] src)
; head_g[32i]()[185] = {48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 d7 a2 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 f0 f4 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 a7 a2 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 b0 f9 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 77 a2 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 70 fe 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 47 a2 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 a2 e1 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add al,dh                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 f0}
0029h hlt                                     ; HLT || F4 || encoded[1]{f4}
002ah push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
002bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
002dh jg short 002fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
002fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0032h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0033h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0039h jbe short 0044h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
003bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
003fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
0044h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a2 e1 5e}
0049h int 3                                   ; INT3 || CC || encoded[1]{cc}
004ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
004fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0052h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0054h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0057h add [rax-838af07h],dh                   ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b0 f9 50 c7 f7}
005dh jg short 005fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
005fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0062h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0063h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0069h jbe short 0074h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
006bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
006fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a2 e1 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
007ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
007fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0082h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0084h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0087h add [rax-2],dh                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 70 fe}
008ah push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
008bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
008dh jg short 008fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
008fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0092h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0093h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0099h jbe short 00a4h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
009bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
009fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a3h ret                                     ; RET || C3 || encoded[1]{c3}
00a4h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a2 e1 5e}
00a9h int 3                                   ; INT3 || CC || encoded[1]{cc}
00aah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00ach sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
00afh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
00b2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00b4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
00b7h add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 02}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head<ulong>(UInt64[] src)
; head_g[64u]()[137] = {48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 a7 a2 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 b0 f9 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 77 a2 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 70 fe 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 47 a2 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a2 e1 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add [rax-838af07h],dh                   ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b0 f9 50 c7 f7}
002dh jg short 002fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
002fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0032h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0033h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0039h jbe short 0044h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
003bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
003fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
0044h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a2 e1 5e}
0049h int 3                                   ; INT3 || CC || encoded[1]{cc}
004ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
004fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0052h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0054h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0057h add [rax-2],dh                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 70 fe}
005ah push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
005bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
005dh jg short 005fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
005fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0062h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0063h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0069h jbe short 0074h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
006bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
006fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a2 e1 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
007ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
007fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0082h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0084h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0087h add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 02}
------------------------------------------------------------------------------------------------------------------------
; ref long head<long>(Int64[] src)
; head_g[64i]()[89] = {48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 77 a2 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 70 fe 50 c7 f7 7f 00 00 48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 47 a2 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a2 e1 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add [rax-2],dh                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 70 fe}
002ah push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
002bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
002dh jg short 002fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
002fh add [rax-7dh],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 83}
0032h in al,dx                                ; IN AL, DX || EC || encoded[1]{ec}
0033h sub [rax+87983h],dl                     ; SUB r/m8, r8 || 28 /r || encoded[6]{28 90 83 79 08 00}
0039h jbe short 0044h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
003bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
003fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
0044h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a2 e1 5e}
0049h int 3                                   ; INT3 || CC || encoded[1]{cc}
004ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
004fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0052h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0054h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0057h add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 02}
------------------------------------------------------------------------------------------------------------------------
; ref float head<float>(Single[] src)
; head_g[32f]()[41] = {48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 47 a2 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a2 e1 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 02}
------------------------------------------------------------------------------------------------------------------------
; ref double head<double>(Double[] src)
; head_g[64f]()[57] = {48 83 ec 28 90 83 79 08 00 76 09 48 8d 41 10 48 83 c4 28 c3 e8 07 9e e1 5e cc 00 00 19 04 01 00 04 42 00 00 40 00 00 00 58 09 52 c7 f7 7f 00 00 0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 9e e1 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add [rax+9],bl                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 58 09}
002ah push rdx                                ; PUSH r64 || 50+ro || encoded[1]{52}
002bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
002dh jg short 002fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
002fh add [rdi],cl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 0f}
0031h (bad)                                   ; <invalid> || <invalid> || encoded[2]{1f 44}
0033h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0035h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head<byte>(Span<byte> src)
; head_g[8u](span8u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte head<sbyte>(Span<sbyte> src)
; head_g[8i](span8i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head<ushort>(Span<ushort> src)
; head_g[16u](span16u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short head<short>(Span<short> src)
; head_g[16i](span16i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head<uint>(Span<uint> src)
; head_g[32u](span32u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int head<int>(Span<int> src)
; head_g[32i](span32i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head<ulong>(Span<ulong> src)
; head_g[64u](span64u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long head<long>(Span<long> src)
; head_g[64i](span64i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float head<float>(Span<float> src)
; head_g[32f](span32f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double head<double>(Span<double> src)
; head_g[64f](span64f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head<byte>(Span<byte> src, int offset)
; head_g[8u](span8u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte head<sbyte>(Span<sbyte> src, int offset)
; head_g[8i](span8i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head<ushort>(Span<ushort> src, int offset)
; head_g[16u](span16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short head<short>(Span<short> src, int offset)
; head_g[16i](span16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head<uint>(Span<uint> src, int offset)
; head_g[32u](span32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int head<int>(Span<int> src, int offset)
; head_g[32i](span32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head<ulong>(Span<ulong> src, int offset)
; head_g[64u](span64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long head<long>(Span<long> src, int offset)
; head_g[64i](span64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float head<float>(Span<float> src, int offset)
; head_g[32f](span32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double head<double>(Span<double> src, int offset)
; head_g[64f](span64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head<byte>(ReadOnlySpan<byte> src)
; head_g[8u](uspan8u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte head<sbyte>(ReadOnlySpan<sbyte> src)
; head_g[8i](uspan8i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head<ushort>(ReadOnlySpan<ushort> src)
; head_g[16u](uspan16u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short head<short>(ReadOnlySpan<short> src)
; head_g[16i](uspan16i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head<uint>(ReadOnlySpan<uint> src)
; head_g[32u](uspan32u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int head<int>(ReadOnlySpan<int> src)
; head_g[32i](uspan32i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head<ulong>(ReadOnlySpan<ulong> src)
; head_g[64u](uspan64u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long head<long>(ReadOnlySpan<long> src)
; head_g[64i](uspan64i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float head<float>(ReadOnlySpan<float> src)
; head_g[32f](uspan32f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double head<double>(ReadOnlySpan<double> src)
; head_g[64f](uspan64f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head<byte>(ReadOnlySpan<byte> src, int offset)
; head_g[8u](uspan8u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte head<sbyte>(ReadOnlySpan<sbyte> src, int offset)
; head_g[8i](uspan8i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head<ushort>(ReadOnlySpan<ushort> src, int offset)
; head_g[16u](uspan16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short head<short>(ReadOnlySpan<short> src, int offset)
; head_g[16i](uspan16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head<uint>(ReadOnlySpan<uint> src, int offset)
; head_g[32u](uspan32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int head<int>(ReadOnlySpan<int> src, int offset)
; head_g[32i](uspan32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head<ulong>(ReadOnlySpan<ulong> src, int offset)
; head_g[64u](uspan64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long head<long>(ReadOnlySpan<long> src, int offset)
; head_g[64i](uspan64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float head<float>(ReadOnlySpan<float> src, int offset)
; head_g[32f](uspan32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double head<double>(ReadOnlySpan<double> src, int offset)
; head_g[64f](uspan64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<byte>(Span<byte> src)
; head8_g[8u](span8u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<sbyte>(Span<sbyte> src)
; head8_g[8i](span8i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<ushort>(Span<ushort> src)
; head8_g[16u](span16u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<short>(Span<short> src)
; head8_g[16i](span16i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<uint>(Span<uint> src)
; head8_g[32u](span32u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<int>(Span<int> src)
; head8_g[32i](span32i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<ulong>(Span<ulong> src)
; head8_g[64u](span64u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<long>(Span<long> src)
; head8_g[64i](span64i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<float>(Span<float> src)
; head8_g[32f](span32f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<double>(Span<double> src)
; head8_g[64f](span64f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<byte>(Span<byte> src)
; head16_g[8u](span8u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<sbyte>(Span<sbyte> src)
; head16_g[8i](span8i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<ushort>(Span<ushort> src)
; head16_g[16u](span16u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<short>(Span<short> src)
; head16_g[16i](span16i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<uint>(Span<uint> src)
; head16_g[32u](span32u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<int>(Span<int> src)
; head16_g[32i](span32i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<ulong>(Span<ulong> src)
; head16_g[64u](span64u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<long>(Span<long> src)
; head16_g[64i](span64i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<float>(Span<float> src)
; head16_g[32f](span32f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<double>(Span<double> src)
; head16_g[64f](span64f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<byte>(Span<byte> src)
; head32_g[8u](span8u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<sbyte>(Span<sbyte> src)
; head32_g[8i](span8i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<ushort>(Span<ushort> src)
; head32_g[16u](span16u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<short>(Span<short> src)
; head32_g[16i](span16i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<uint>(Span<uint> src)
; head32_g[32u](span32u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<int>(Span<int> src)
; head32_g[32i](span32i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<ulong>(Span<ulong> src)
; head32_g[64u](span64u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<long>(Span<long> src)
; head32_g[64i](span64i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<float>(Span<float> src)
; head32_g[32f](span32f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<double>(Span<double> src)
; head32_g[64f](span64f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<byte>(Span<byte> src)
; head64_g[8u](span8u)[29] = {48 83 ec 28 90 48 8b 01 48 83 c4 28 c3 e8 3e 87 e1 5e cc 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
000dh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 87 e1 5e}
0012h int 3                                   ; INT3 || CC || encoded[1]{cc}
0013h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0015h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0017h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<sbyte>(Span<sbyte> src)
; head64_g[8i](span8i)[29] = {48 83 ec 28 90 48 8b 01 48 83 c4 28 c3 e8 0e 87 e1 5e cc 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
000dh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 87 e1 5e}
0012h int 3                                   ; INT3 || CC || encoded[1]{cc}
0013h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0015h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0017h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<ushort>(Span<ushort> src)
; head64_g[16u](span16u)[49] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 d1 e2 48 c1 ea 03 48 81 fa ff ff ff 7f 77 05 48 83 c4 28 c3 e8 cb 86 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh shl rdx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e2}
000eh shr rdx,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 03}
0012h cmp rdx,7fffffffh                       ; CMP r/m64, imm32 || REX.W 81 /7 id || encoded[7]{48 81 fa ff ff ff 7f}
0019h ja short 0020h                          ; JA rel8 || 77 cb || encoded[2]{77 05}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
0020h call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 86 e1 5e}
0025h int 3                                   ; INT3 || CC || encoded[1]{cc}
0026h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0028h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
002bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<short>(Span<short> src)
; head64_g[16i](span16i)[49] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 d1 e2 48 c1 ea 03 48 81 fa ff ff ff 7f 77 05 48 83 c4 28 c3 e8 8b 86 e1 5e cc 00 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh shl rdx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e2}
000eh shr rdx,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 03}
0012h cmp rdx,7fffffffh                       ; CMP r/m64, imm32 || REX.W 81 /7 id || encoded[7]{48 81 fa ff ff ff 7f}
0019h ja short 0020h                          ; JA rel8 || 77 cb || encoded[2]{77 05}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
0020h call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 86 e1 5e}
0025h int 3                                   ; INT3 || CC || encoded[1]{cc}
0026h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0028h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
002bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<uint>(Span<uint> src)
; head64_g[32u](span32u)[49] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 c1 e2 02 48 c1 ea 03 48 81 fa ff ff ff 7f 77 05 48 83 c4 28 c3 e8 4a 86 e1 5e cc 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh shl rdx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 02}
000fh shr rdx,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 03}
0013h cmp rdx,7fffffffh                       ; CMP r/m64, imm32 || REX.W 81 /7 id || encoded[7]{48 81 fa ff ff ff 7f}
001ah ja short 0021h                          ; JA rel8 || 77 cb || encoded[2]{77 05}
001ch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
0021h call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 86 e1 5e}
0026h int 3                                   ; INT3 || CC || encoded[1]{cc}
0027h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0029h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
002bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<int>(Span<int> src)
; head64_g[32i](span32i)[49] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 c1 e2 02 48 c1 ea 03 48 81 fa ff ff ff 7f 77 05 48 83 c4 28 c3 e8 0a 86 e1 5e cc 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh shl rdx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 02}
000fh shr rdx,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 03}
0013h cmp rdx,7fffffffh                       ; CMP r/m64, imm32 || REX.W 81 /7 id || encoded[7]{48 81 fa ff ff ff 7f}
001ah ja short 0021h                          ; JA rel8 || 77 cb || encoded[2]{77 05}
001ch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
0021h call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 86 e1 5e}
0026h int 3                                   ; INT3 || CC || encoded[1]{cc}
0027h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0029h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
002bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<ulong>(Span<ulong> src)
; head64_g[64u](span64u)[29] = {48 83 ec 28 90 48 8b 01 48 83 c4 28 c3 e8 de 85 e1 5e cc 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
000dh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 85 e1 5e}
0012h int 3                                   ; INT3 || CC || encoded[1]{cc}
0013h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0015h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0017h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<long>(Span<long> src)
; head64_g[64i](span64i)[29] = {48 83 ec 28 90 48 8b 01 48 83 c4 28 c3 e8 ae 85 e1 5e cc 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
000dh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 85 e1 5e}
0012h int 3                                   ; INT3 || CC || encoded[1]{cc}
0013h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0015h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0017h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<float>(Span<float> src)
; head64_g[32f](span32f)[49] = {48 83 ec 28 90 48 8b 01 8b 51 08 48 c1 e2 02 48 c1 ea 03 48 81 fa ff ff ff 7f 77 05 48 83 c4 28 c3 e8 6a 85 e1 5e cc 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh shl rdx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 02}
000fh shr rdx,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 03}
0013h cmp rdx,7fffffffh                       ; CMP r/m64, imm32 || REX.W 81 /7 id || encoded[7]{48 81 fa ff ff ff 7f}
001ah ja short 0021h                          ; JA rel8 || 77 cb || encoded[2]{77 05}
001ch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
0021h call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 85 e1 5e}
0026h int 3                                   ; INT3 || CC || encoded[1]{cc}
0027h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0029h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
002bh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
002eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0030h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<double>(Span<double> src)
; head64_g[64f](span64f)[33] = {48 83 ec 28 90 48 8b 01 48 83 c4 28 c3 e8 3e 85 e1 5e cc 00 19 04 01 00 04 42 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
000dh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 85 e1 5e}
0012h int 3                                   ; INT3 || CC || encoded[1]{cc}
0013h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0015h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0017h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
001fh add [rdx],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 02}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<byte>(ReadOnlySpan<byte> src)
; head8_g[8u](uspan8u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<sbyte>(ReadOnlySpan<sbyte> src)
; head8_g[8i](uspan8i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<ushort>(ReadOnlySpan<ushort> src)
; head8_g[16u](uspan16u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<short>(ReadOnlySpan<short> src)
; head8_g[16i](uspan16i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<uint>(ReadOnlySpan<uint> src)
; head8_g[32u](uspan32u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<int>(ReadOnlySpan<int> src)
; head8_g[32i](uspan32i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<ulong>(ReadOnlySpan<ulong> src)
; head8_g[64u](uspan64u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<long>(ReadOnlySpan<long> src)
; head8_g[64i](uspan64i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<float>(ReadOnlySpan<float> src)
; head8_g[32f](uspan32f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<double>(ReadOnlySpan<double> src)
; head8_g[64f](uspan64f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<byte>(ReadOnlySpan<byte> src)
; head16_g[8u](uspan8u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<sbyte>(ReadOnlySpan<sbyte> src)
; head16_g[8i](uspan8i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<ushort>(ReadOnlySpan<ushort> src)
; head16_g[16u](uspan16u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<short>(ReadOnlySpan<short> src)
; head16_g[16i](uspan16i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<uint>(ReadOnlySpan<uint> src)
; head16_g[32u](uspan32u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<int>(ReadOnlySpan<int> src)
; head16_g[32i](uspan32i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<ulong>(ReadOnlySpan<ulong> src)
; head16_g[64u](uspan64u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<long>(ReadOnlySpan<long> src)
; head16_g[64i](uspan64i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<float>(ReadOnlySpan<float> src)
; head16_g[32f](uspan32f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<double>(ReadOnlySpan<double> src)
; head16_g[64f](uspan64f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<byte>(ReadOnlySpan<byte> src)
; head32_g[8u](uspan8u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<sbyte>(ReadOnlySpan<sbyte> src)
; head32_g[8i](uspan8i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<ushort>(ReadOnlySpan<ushort> src)
; head32_g[16u](uspan16u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<short>(ReadOnlySpan<short> src)
; head32_g[16i](uspan16i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<uint>(ReadOnlySpan<uint> src)
; head32_g[32u](uspan32u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<int>(ReadOnlySpan<int> src)
; head32_g[32i](uspan32i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<ulong>(ReadOnlySpan<ulong> src)
; head32_g[64u](uspan64u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<long>(ReadOnlySpan<long> src)
; head32_g[64i](uspan64i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<float>(ReadOnlySpan<float> src)
; head32_g[32f](uspan32f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<double>(ReadOnlySpan<double> src)
; head32_g[64f](uspan64f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<byte>(ReadOnlySpan<byte> src)
; head64_g[8u](uspan8u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<sbyte>(ReadOnlySpan<sbyte> src)
; head64_g[8i](uspan8i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<ushort>(ReadOnlySpan<ushort> src)
; head64_g[16u](uspan16u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<short>(ReadOnlySpan<short> src)
; head64_g[16i](uspan16i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<uint>(ReadOnlySpan<uint> src)
; head64_g[32u](uspan32u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<int>(ReadOnlySpan<int> src)
; head64_g[32i](uspan32i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<ulong>(ReadOnlySpan<ulong> src)
; head64_g[64u](uspan64u)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<long>(ReadOnlySpan<long> src)
; head64_g[64i](uspan64i)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<float>(ReadOnlySpan<float> src)
; head64_g[32f](uspan32f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<double>(ReadOnlySpan<double> src)
; head64_g[64f](uspan64f)[9] = {0f 1f 44 00 00 48 8b 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek<byte>(Span<byte> src, int count)
; seek_g[8u](span8u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte seek<sbyte>(Span<sbyte> src, int count)
; seek_g[8i](span8i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek<ushort>(Span<ushort> src, int count)
; seek_g[16u](span16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short seek<short>(Span<short> src, int count)
; seek_g[16i](span16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek<uint>(Span<uint> src, int count)
; seek_g[32u](span32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int seek<int>(Span<int> src, int count)
; seek_g[32i](span32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek<ulong>(Span<ulong> src, int count)
; seek_g[64u](span64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long seek<long>(Span<long> src, int count)
; seek_g[64i](span64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float seek<float>(Span<float> src, int count)
; seek_g[32f](span32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double seek<double>(Span<double> src, int count)
; seek_g[64f](span64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seekb<byte>(Span<byte> src, long count)
; seekb_g[8u](span8u,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte seekb<sbyte>(Span<sbyte> src, long count)
; seekb_g[8i](span8i,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seekb<ushort>(Span<ushort> src, long count)
; seekb_g[16u](span16u,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short seekb<short>(Span<short> src, long count)
; seekb_g[16i](span16i,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seekb<uint>(Span<uint> src, long count)
; seekb_g[32u](span32u,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int seekb<int>(Span<int> src, long count)
; seekb_g[32i](span32i,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seekb<ulong>(Span<ulong> src, long count)
; seekb_g[64u](span64u,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long seekb<long>(Span<long> src, long count)
; seekb_g[64i](span64i,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float seekb<float>(Span<float> src, long count)
; seekb_g[32f](span32f,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double seekb<double>(Span<double> src, long count)
; seekb_g[64f](span64f,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<byte>(Span<byte> src, int count)
; seek8_g[8u](span8u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<sbyte>(Span<sbyte> src, int count)
; seek8_g[8i](span8i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<ushort>(Span<ushort> src, int count)
; seek8_g[16u](span16u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<short>(Span<short> src, int count)
; seek8_g[16i](span16i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<uint>(Span<uint> src, int count)
; seek8_g[32u](span32u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<int>(Span<int> src, int count)
; seek8_g[32i](span32i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<ulong>(Span<ulong> src, int count)
; seek8_g[64u](span64u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<long>(Span<long> src, int count)
; seek8_g[64i](span64i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<float>(Span<float> src, int count)
; seek8_g[32f](span32f,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<double>(Span<double> src, int count)
; seek8_g[64f](span64f,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<byte>(Span<byte> src, int count)
; seek16_g[8u](span8u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<sbyte>(Span<sbyte> src, int count)
; seek16_g[8i](span8i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<ushort>(Span<ushort> src, int count)
; seek16_g[16u](span16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<short>(Span<short> src, int count)
; seek16_g[16i](span16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<uint>(Span<uint> src, int count)
; seek16_g[32u](span32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<int>(Span<int> src, int count)
; seek16_g[32i](span32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<ulong>(Span<ulong> src, int count)
; seek16_g[64u](span64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<long>(Span<long> src, int count)
; seek16_g[64i](span64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<float>(Span<float> src, int count)
; seek16_g[32f](span32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<double>(Span<double> src, int count)
; seek16_g[64f](span64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<byte>(Span<byte> src, int count)
; seek32_g[8u](span8u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<sbyte>(Span<sbyte> src, int count)
; seek32_g[8i](span8i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<ushort>(Span<ushort> src, int count)
; seek32_g[16u](span16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<short>(Span<short> src, int count)
; seek32_g[16i](span16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<uint>(Span<uint> src, int count)
; seek32_g[32u](span32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<int>(Span<int> src, int count)
; seek32_g[32i](span32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<ulong>(Span<ulong> src, int count)
; seek32_g[64u](span64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<long>(Span<long> src, int count)
; seek32_g[64i](span64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<float>(Span<float> src, int count)
; seek32_g[32f](span32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<double>(Span<double> src, int count)
; seek32_g[64f](span64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<byte>(Span<byte> src, int count)
; seek64_g[8u](span8u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<sbyte>(Span<sbyte> src, int count)
; seek64_g[8i](span8i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<ushort>(Span<ushort> src, int count)
; seek64_g[16u](span16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<short>(Span<short> src, int count)
; seek64_g[16i](span16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<uint>(Span<uint> src, int count)
; seek64_g[32u](span32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<int>(Span<int> src, int count)
; seek64_g[32i](span32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<ulong>(Span<ulong> src, int count)
; seek64_g[64u](span64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<long>(Span<long> src, int count)
; seek64_g[64i](span64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<float>(Span<float> src, int count)
; seek64_g[32f](span32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<double>(Span<double> src, int count)
; seek64_g[64f](span64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip<byte>(Span<byte> src, int count)
; skip_g[8u](span8u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte skip<sbyte>(Span<sbyte> src, int count)
; skip_g[8i](span8i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip<ushort>(Span<ushort> src, int count)
; skip_g[16u](span16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short skip<short>(Span<short> src, int count)
; skip_g[16i](span16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip<uint>(Span<uint> src, int count)
; skip_g[32u](span32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int skip<int>(Span<int> src, int count)
; skip_g[32i](span32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip<ulong>(Span<ulong> src, int count)
; skip_g[64u](span64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long skip<long>(Span<long> src, int count)
; skip_g[64i](span64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float skip<float>(Span<float> src, int count)
; skip_g[32f](span32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double skip<double>(Span<double> src, int count)
; skip_g[64f](span64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<byte>(ReadOnlySpan<byte> src, int count)
; skip8_g[8u](uspan8u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<sbyte>(ReadOnlySpan<sbyte> src, int count)
; skip8_g[8i](uspan8i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<ushort>(ReadOnlySpan<ushort> src, int count)
; skip8_g[16u](uspan16u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<short>(ReadOnlySpan<short> src, int count)
; skip8_g[16i](uspan16i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<uint>(ReadOnlySpan<uint> src, int count)
; skip8_g[32u](uspan32u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<int>(ReadOnlySpan<int> src, int count)
; skip8_g[32i](uspan32i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<ulong>(ReadOnlySpan<ulong> src, int count)
; skip8_g[64u](uspan64u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<long>(ReadOnlySpan<long> src, int count)
; skip8_g[64i](uspan64i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<float>(ReadOnlySpan<float> src, int count)
; skip8_g[32f](uspan32f,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<double>(ReadOnlySpan<double> src, int count)
; skip8_g[64f](uspan64f,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<byte>(ReadOnlySpan<byte> src, int count)
; skip16_g[8u](uspan8u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<sbyte>(ReadOnlySpan<sbyte> src, int count)
; skip16_g[8i](uspan8i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<ushort>(ReadOnlySpan<ushort> src, int count)
; skip16_g[16u](uspan16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<short>(ReadOnlySpan<short> src, int count)
; skip16_g[16i](uspan16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<uint>(ReadOnlySpan<uint> src, int count)
; skip16_g[32u](uspan32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<int>(ReadOnlySpan<int> src, int count)
; skip16_g[32i](uspan32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<ulong>(ReadOnlySpan<ulong> src, int count)
; skip16_g[64u](uspan64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<long>(ReadOnlySpan<long> src, int count)
; skip16_g[64i](uspan64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<float>(ReadOnlySpan<float> src, int count)
; skip16_g[32f](uspan32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<double>(ReadOnlySpan<double> src, int count)
; skip16_g[64f](uspan64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<byte>(ReadOnlySpan<byte> src, int count)
; skip32_g[8u](uspan8u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<sbyte>(ReadOnlySpan<sbyte> src, int count)
; skip32_g[8i](uspan8i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<ushort>(ReadOnlySpan<ushort> src, int count)
; skip32_g[16u](uspan16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<short>(ReadOnlySpan<short> src, int count)
; skip32_g[16i](uspan16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<uint>(ReadOnlySpan<uint> src, int count)
; skip32_g[32u](uspan32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<int>(ReadOnlySpan<int> src, int count)
; skip32_g[32i](uspan32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<ulong>(ReadOnlySpan<ulong> src, int count)
; skip32_g[64u](uspan64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<long>(ReadOnlySpan<long> src, int count)
; skip32_g[64i](uspan64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<float>(ReadOnlySpan<float> src, int count)
; skip32_g[32f](uspan32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<double>(ReadOnlySpan<double> src, int count)
; skip32_g[64f](uspan64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<byte>(ReadOnlySpan<byte> src, int count)
; skip64_g[8u](uspan8u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<sbyte>(ReadOnlySpan<sbyte> src, int count)
; skip64_g[8i](uspan8i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<ushort>(ReadOnlySpan<ushort> src, int count)
; skip64_g[16u](uspan16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<short>(ReadOnlySpan<short> src, int count)
; skip64_g[16i](uspan16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<uint>(ReadOnlySpan<uint> src, int count)
; skip64_g[32u](uspan32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<int>(ReadOnlySpan<int> src, int count)
; skip64_g[32i](uspan32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<ulong>(ReadOnlySpan<ulong> src, int count)
; skip64_g[64u](uspan64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<long>(ReadOnlySpan<long> src, int count)
; skip64_g[64i](uspan64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<float>(ReadOnlySpan<float> src, int count)
; skip64_g[32f](uspan32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<double>(ReadOnlySpan<double> src, int count)
; skip64_g[64f](uspan64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip<byte>(ReadOnlySpan<byte> src, int count)
; skip_g[8u](uspan8u,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte skip<sbyte>(ReadOnlySpan<sbyte> src, int count)
; skip_g[8i](uspan8i,32i)[15] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip<ushort>(ReadOnlySpan<ushort> src, int count)
; skip_g[16u](uspan16u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short skip<short>(ReadOnlySpan<short> src, int count)
; skip_g[16i](uspan16i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip<uint>(ReadOnlySpan<uint> src, int count)
; skip_g[32u](uspan32u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int skip<int>(ReadOnlySpan<int> src, int count)
; skip_g[32i](uspan32i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip<ulong>(ReadOnlySpan<ulong> src, int count)
; skip_g[64u](uspan64u,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long skip<long>(ReadOnlySpan<long> src, int count)
; skip_g[64i](uspan64i,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float skip<float>(ReadOnlySpan<float> src, int count)
; skip_g[32f](uspan32f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double skip<double>(ReadOnlySpan<double> src, int count)
; skip_g[64f](uspan64f,32i)[16] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skipb<byte>(ReadOnlySpan<byte> src, long count)
; skipb_g[8u](uspan8u,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte skipb<sbyte>(ReadOnlySpan<sbyte> src, long count)
; skipb_g[8i](uspan8i,64i)[12] = {0f 1f 44 00 00 48 8b 01 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skipb<ushort>(ReadOnlySpan<ushort> src, long count)
; skipb_g[16u](uspan16u,64i)[13] = {0f 1f 44 00 00 48 8b 01 48 8d 04 50 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short skipb<short>(ReadOnlySpan<short> src, long count)
; skipb_g[16i](uspan16i,64i)[13] = {0f 1f 44 00 00 48 8b 01 48 8d 04 50 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skipb<uint>(ReadOnlySpan<uint> src, long count)
; skipb_g[32u](uspan32u,64i)[13] = {0f 1f 44 00 00 48 8b 01 48 8d 04 90 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int skipb<int>(ReadOnlySpan<int> src, long count)
; skipb_g[32i](uspan32i,64i)[13] = {0f 1f 44 00 00 48 8b 01 48 8d 04 90 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skipb<ulong>(ReadOnlySpan<ulong> src, long count)
; skipb_g[64u](uspan64u,64i)[13] = {0f 1f 44 00 00 48 8b 01 48 8d 04 d0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long skipb<long>(ReadOnlySpan<long> src, long count)
; skipb_g[64i](uspan64i,64i)[13] = {0f 1f 44 00 00 48 8b 01 48 8d 04 d0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float skipb<float>(ReadOnlySpan<float> src, long count)
; skipb_g[32f](uspan32f,64i)[13] = {0f 1f 44 00 00 48 8b 01 48 8d 04 90 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double skipb<double>(ReadOnlySpan<double> src, long count)
; skipb_g[64f](uspan64f,64i)[13] = {0f 1f 44 00 00 48 8b 01 48 8d 04 d0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int head32i(ReadOnlySpan<byte> src)
; head32i_(uspan8u)[29] = {48 83 ec 28 90 48 8b 01 48 83 c4 28 c3 e8 5e 4f e1 5e cc 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
000dh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 4f e1 5e}
0012h int 3                                   ; INT3 || CC || encoded[1]{cc}
0013h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0015h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0017h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; ref long head64i(ReadOnlySpan<byte> src)
; head64i_(uspan8u)[29] = {48 83 ec 28 90 48 8b 01 48 83 c4 28 c3 e8 2e 4f e1 5e cc 00 19 04 01 00 04 42 00 00 40}
; TermCode = CTC_Zx7
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
000dh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 4f e1 5e}
0012h int 3                                   ; INT3 || CC || encoded[1]{cc}
0013h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0015h add al,1                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 01}
0017h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}