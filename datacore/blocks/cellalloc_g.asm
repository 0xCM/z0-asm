------------------------------------------------------------------------------------------------------------------------
; Block16<byte> cellalloc<byte>(N16 n, int cellcount)
; cellalloc_g[8u](n16,32i)[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 5d fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c7d7c020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d fa ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<sbyte> cellalloc<sbyte>(N16 n, int cellcount)
; cellalloc_g[8i](n16,32i)[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 ed f0 ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c7d7bb00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f0 ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<ushort> cellalloc<ushort>(N16 n, int cellcount)
; cellalloc_g[16u](n16,32i)[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 e7 f0 ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c7d7bb50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f0 ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<short> cellalloc<short>(N16 n, int cellcount)
; cellalloc_g[16i](n16,32i)[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 ef f9 ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c7d7c4b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef f9 ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<byte> cellalloc<byte>(N32 n, int cellcount)
; cellalloc_g[8u](n32,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 f6 f5 ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7c530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 f5 ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<sbyte> cellalloc<sbyte>(N32 n, int cellcount)
; cellalloc_g[8i](n32,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 66 fd ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7cd10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 fd ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<ushort> cellalloc<ushort>(N32 n, int cellcount)
; cellalloc_g[16u](n32,32i)[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 3d fd ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c7d7cd50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d fd ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<short> cellalloc<short>(N32 n, int cellcount)
; cellalloc_g[16i](n32,32i)[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 a5 fd ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c7d7ce18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 fd ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<uint> cellalloc<uint>(N32 n, int cellcount)
; cellalloc_g[32u](n32,32i)[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 8f fd ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c7d7ce58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f fd ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<int> cellalloc<int>(N32 n, int cellcount)
; cellalloc_g[32i](n32,32i)[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 5f f9 ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c7d7ce88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f9 ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<float> cellalloc<float>(N32 n, int cellcount)
; cellalloc_g[32f](n32,32i)[70] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 4b f9 ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0024h je short 002bh                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0026h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0029h jmp short 002bh                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0034h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0038h call 7ff7c7d7ced8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b f9 ff ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<byte> cellalloc<byte>(N64 n, int cellcount)
; cellalloc_g[8u](n64,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 06 fe ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7d400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 fe ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<sbyte> cellalloc<sbyte>(N64 n, int cellcount)
; cellalloc_g[8i](n64,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 e6 fd ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7d450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 fd ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ushort> cellalloc<ushort>(N64 n, int cellcount)
; cellalloc_g[16u](n64,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 b6 fd ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7d490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 fd ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<short> cellalloc<short>(N64 n, int cellcount)
; cellalloc_g[16i](n64,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 76 fd ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7d4c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fd ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<uint> cellalloc<uint>(N64 n, int cellcount)
; cellalloc_g[32u](n64,32i)[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 d5 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c7d7d788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 fb ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<int> cellalloc<int>(N64 n, int cellcount)
; cellalloc_g[32i](n64,32i)[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 a5 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c7d7d7b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 fb ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ulong> cellalloc<ulong>(N64 n, int cellcount)
; cellalloc_g[64u](n64,32i)[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 8f fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c7d7d7f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f fb ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<long> cellalloc<long>(N64 n, int cellcount)
; cellalloc_g[64i](n64,32i)[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 5f fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c7d7d828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f fb ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<float> cellalloc<float>(N64 n, int cellcount)
; cellalloc_g[32f](n64,32i)[80] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 41 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
001bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001eh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0021h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0024h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0027h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002ah je short 0032h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
002ch lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0030h jmp short 0035h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0032h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0035h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0038h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003eh vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0042h call 7ff7c7d7d878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 fb ff ff}
0047h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<double> cellalloc<double>(N64 n, int cellcount)
; cellalloc_g[64f](n64,32i)[70] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 1b fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0024h je short 002bh                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0026h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0029h jmp short 002bh                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0034h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0038h call 7ff7c7d7d8b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fb ff ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<byte> cellalloc<byte>(N128 n, int cellcount)
; cellalloc_g[8u](n128,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 ae fc ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7dab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<sbyte> cellalloc<sbyte>(N128 n, int cellcount)
; cellalloc_g[8i](n128,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 8e fc ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7db08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ushort> cellalloc<ushort>(N128 n, int cellcount)
; cellalloc_g[16u](n128,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 5e fc ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7db48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<short> cellalloc<short>(N128 n, int cellcount)
; cellalloc_g[16i](n128,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 be fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7df18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<uint> cellalloc<uint>(N128 n, int cellcount)
; cellalloc_g[32u](n128,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 8e fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7df58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<int> cellalloc<int>(N128 n, int cellcount)
; cellalloc_g[32i](n128,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 4e fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7df88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ulong> cellalloc<ulong>(N128 n, int cellcount)
; cellalloc_g[64u](n128,32i)[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 25 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c7d7dfc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 fb ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<long> cellalloc<long>(N128 n, int cellcount)
; cellalloc_g[64i](n128,32i)[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 f5 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c7d7dff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 fa ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<float> cellalloc<float>(N128 n, int cellcount)
; cellalloc_g[32f](n128,32i)[87] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 ca fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0025h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0028h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
002bh and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002eh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0031h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0033h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0037h jmp short 003ch                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0039h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
003ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003fh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0045h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0049h call 7ff7c7d7e038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<double> cellalloc<double>(N128 n, int cellcount)
; cellalloc_g[64f](n128,32i)[80] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 a1 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
001bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001eh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0021h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0024h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0027h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002ah je short 0032h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
002ch lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0030h jmp short 0035h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0032h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0035h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0038h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003eh vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0042h call 7ff7c7d7e078h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 fa ff ff}
0047h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<byte> cellalloc<byte>(N256 n, int cellcount)
; cellalloc_g[8u](n256,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 1f 41 03 c8 c1 f9 05 41 8b d0 c1 fa 1f 83 e2 1f 41 03 d0 83 e2 e0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 26 fc ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 05}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 e0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7e270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<sbyte> cellalloc<sbyte>(N256 n, int cellcount)
; cellalloc_g[8i](n256,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 1f 41 03 c8 c1 f9 05 41 8b d0 c1 fa 1f 83 e2 1f 41 03 d0 83 e2 e0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 06 fc ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 05}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 e0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7e2c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ushort> cellalloc<ushort>(N256 n, int cellcount)
; cellalloc_g[16u](n256,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 ae fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7e6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<short> cellalloc<short>(N256 n, int cellcount)
; cellalloc_g[16i](n256,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 6e fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7e708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<uint> cellalloc<uint>(N256 n, int cellcount)
; cellalloc_g[32u](n256,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 3e fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7e748h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<int> cellalloc<int>(N256 n, int cellcount)
; cellalloc_g[32i](n256,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 fe fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7e778h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fa ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ulong> cellalloc<ulong>(N256 n, int cellcount)
; cellalloc_g[64u](n256,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 ce fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7e7b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fa ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<long> cellalloc<long>(N256 n, int cellcount)
; cellalloc_g[64i](n256,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 8e fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7e7e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e fa ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<float> cellalloc<float>(N256 n, int cellcount)
; cellalloc_g[32f](n256,32i)[87] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 5a fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0025h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0028h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
002bh and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002eh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0031h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0033h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0037h jmp short 003ch                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0039h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
003ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003fh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0045h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0049h call 7ff7c7d7e828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<double> cellalloc<double>(N256 n, int cellcount)
; cellalloc_g[64f](n256,32i)[87] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 2a fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0025h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0028h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
002bh and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002eh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0031h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0033h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0037h jmp short 003ch                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0039h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
003ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003fh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0045h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0049h call 7ff7c7d7e868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<byte> cellalloc<byte>(N512 n, int cellcount)
; cellalloc_g[8u](n512,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 3f 41 03 c8 c1 f9 06 41 8b d0 c1 fa 1f 83 e2 3f 41 03 d0 83 e2 c0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 e6 f7 ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 3f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,6                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 06}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffc0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 c0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7eac0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f7 ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<sbyte> cellalloc<sbyte>(N512 n, int cellcount)
; cellalloc_g[8i](n512,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 3f 41 03 c8 c1 f9 06 41 8b d0 c1 fa 1f 83 e2 3f 41 03 d0 83 e2 c0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 96 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 3f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,6                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 06}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffc0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 c0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7eee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ushort> cellalloc<ushort>(N512 n, int cellcount)
; cellalloc_g[16u](n512,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 1f 41 03 c8 c1 f9 05 41 8b d0 c1 fa 1f 83 e2 1f 41 03 d0 83 e2 e0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 66 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 05}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 e0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7ef20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<short> cellalloc<short>(N512 n, int cellcount)
; cellalloc_g[16i](n512,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 1f 41 03 c8 c1 f9 05 41 8b d0 c1 fa 1f 83 e2 1f 41 03 d0 83 e2 e0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 36 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 05}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 e0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7ef60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<uint> cellalloc<uint>(N512 n, int cellcount)
; cellalloc_g[32u](n512,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 06 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7efa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<int> cellalloc<int>(N512 n, int cellcount)
; cellalloc_g[32i](n512,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 d6 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7efe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fa ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ulong> cellalloc<ulong>(N512 n, int cellcount)
; cellalloc_g[64u](n512,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 a6 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7f020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 fa ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<long> cellalloc<long>(N512 n, int cellcount)
; cellalloc_g[64i](n512,32i)[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 76 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c7d7f060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fa ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<float> cellalloc<float>(N512 n, int cellcount)
; cellalloc_g[32f](n512,32i)[87] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 42 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0025h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0028h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
002bh and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002eh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0031h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0033h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0037h jmp short 003ch                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0039h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
003ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003fh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0045h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0049h call 7ff7c7d7f0a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<double> cellalloc<double>(N512 n, int cellcount)
; cellalloc_g[64f](n512,32i)[87] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 12 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0025h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0028h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
002bh and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002eh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0031h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0033h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0037h jmp short 003ch                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0039h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
003ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003fh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0045h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0049h call 7ff7c7d7f0e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
