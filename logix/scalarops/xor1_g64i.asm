; long xor1<long>(long a)
; xor1_g64i[7ff7c6b96940h, 7ff7c6b969adh][109] = {57 56 53 48 83 ec 30 be 57 00 00 00 bf 01 00 00 00 b9 78 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 4b 9c 43 5f 48 8b d8 b9 82 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 34 9c 43 5f 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 b1 ef fd ff 48 8b c8 e8 61 4f 28 5f cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code, ZEDx6
; 2020-01-24 02:54:49:366
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,57h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 57 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,478h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 78 04 00 00}
0016h mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 9c 43 5f}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,482h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 82 04 00 00}
002dh mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 9c 43 5f}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6b75948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 ef fd ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 4f 28 5f}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
