------------------------------------------------------------------------------------------------------------------------
; Block16<byte> cellalloc<byte>(N16 n, int cellcount)
; cellalloc_gn16_32i[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 0d fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
003eh call 7ff7c7e674d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d fa ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<sbyte> cellalloc<sbyte>(N16 n, int cellcount)
; cellalloc_gn16_32i[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 1d f6 ff ff 48 8b c6 48 83 c4 20 5e c3}
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
003eh call 7ff7c7e67530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d f6 ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<ushort> cellalloc<ushort>(N16 n, int cellcount)
; cellalloc_gn16_32i[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 77 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0034h call 7ff7c7e679e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 fa ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<short> cellalloc<short>(N16 n, int cellcount)
; cellalloc_gn16_32i[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 47 f6 ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0034h call 7ff7c7e67a10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f6 ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<byte> cellalloc<byte>(N32 n, int cellcount)
; cellalloc_gn32_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 ae fd ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e681e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fd ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<sbyte> cellalloc<sbyte>(N32 n, int cellcount)
; cellalloc_gn32_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 26 fe ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e682d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 fe ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<ushort> cellalloc<ushort>(N32 n, int cellcount)
; cellalloc_gn32_32i[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 fd fd ff ff 48 8b c6 48 83 c4 20 5e c3}
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
003eh call 7ff7c7e68310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd fd ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<short> cellalloc<short>(N32 n, int cellcount)
; cellalloc_gn32_32i[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 bd f9 ff ff 48 8b c6 48 83 c4 20 5e c3}
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
003eh call 7ff7c7e68340h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd f9 ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<uint> cellalloc<uint>(N32 n, int cellcount)
; cellalloc_gn32_32i[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 ef fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0034h call 7ff7c7e685c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef fb ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<int> cellalloc<int>(N32 n, int cellcount)
; cellalloc_gn32_32i[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 57 fc ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0034h call 7ff7c7e68690h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 fc ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<float> cellalloc<float>(N32 n, int cellcount)
; cellalloc_gn32_32i[70] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 db fc ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0038h call 7ff7c7e68778h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fc ff ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<byte> cellalloc<byte>(N64 n, int cellcount)
; cellalloc_gn64_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 be f9 ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e688d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f9 ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<sbyte> cellalloc<sbyte>(N64 n, int cellcount)
; cellalloc_gn64_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 ce fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e68b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ushort> cellalloc<ushort>(N64 n, int cellcount)
; cellalloc_gn64_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 9e fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e68b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<short> cellalloc<short>(N64 n, int cellcount)
; cellalloc_gn64_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 5e fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e68bc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<uint> cellalloc<uint>(N64 n, int cellcount)
; cellalloc_gn64_32i[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 35 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
003eh call 7ff7c7e68c08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 fb ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<int> cellalloc<int>(N64 n, int cellcount)
; cellalloc_gn64_32i[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 05 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
003eh call 7ff7c7e68c38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 fb ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ulong> cellalloc<ulong>(N64 n, int cellcount)
; cellalloc_gn64_32i[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 ef fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0034h call 7ff7c7e68c78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef fa ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<long> cellalloc<long>(N64 n, int cellcount)
; cellalloc_gn64_32i[66] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 bf fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0034h call 7ff7c7e68ca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf fa ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<float> cellalloc<float>(N64 n, int cellcount)
; cellalloc_gn64_32i[80] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 a1 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0042h call 7ff7c7e68cf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 fa ff ff}
0047h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<double> cellalloc<double>(N64 n, int cellcount)
; cellalloc_gn64_32i[70] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 00 41 03 c8 83 e1 ff 41 8b d0 2b d1 74 05 41 ff c0 eb 00 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 7b fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0038h call 7ff7c7e68d38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b fa ff ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<byte> cellalloc<byte>(N128 n, int cellcount)
; cellalloc_gn128_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 5e f7 ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e68e98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e f7 ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<sbyte> cellalloc<sbyte>(N128 n, int cellcount)
; cellalloc_gn128_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 06 fc ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e693b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ushort> cellalloc<ushort>(N128 n, int cellcount)
; cellalloc_gn128_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 d6 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e693f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<short> cellalloc<short>(N128 n, int cellcount)
; cellalloc_gn128_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 96 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e69420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<uint> cellalloc<uint>(N128 n, int cellcount)
; cellalloc_gn128_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 66 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e69460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<int> cellalloc<int>(N128 n, int cellcount)
; cellalloc_gn128_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 26 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e69490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ulong> cellalloc<ulong>(N128 n, int cellcount)
; cellalloc_gn128_32i[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 fd fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
003eh call 7ff7c7e694d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd fa ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<long> cellalloc<long>(N128 n, int cellcount)
; cellalloc_gn128_32i[76] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 cd fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
003eh call 7ff7c7e69500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd fa ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<float> cellalloc<float>(N128 n, int cellcount)
; cellalloc_gn128_32i[87] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 a2 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0049h call 7ff7c7e69540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<double> cellalloc<double>(N128 n, int cellcount)
; cellalloc_gn128_32i[80] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 e9 1f 41 03 c8 d1 f9 41 8b d0 c1 ea 1f 41 03 d0 83 e2 fe 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 79 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0042h call 7ff7c7e69580h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fa ff ff}
0047h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<byte> cellalloc<byte>(N256 n, int cellcount)
; cellalloc_gn256_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 1f 41 03 c8 c1 f9 05 41 8b d0 c1 fa 1f 83 e2 1f 41 03 d0 83 e2 e0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 56 f7 ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e696d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 f7 ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<sbyte> cellalloc<sbyte>(N256 n, int cellcount)
; cellalloc_gn256_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 1f 41 03 c8 c1 f9 05 41 8b d0 c1 fa 1f 83 e2 1f 41 03 d0 83 e2 e0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 26 fc ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e69c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ushort> cellalloc<ushort>(N256 n, int cellcount)
; cellalloc_gn256_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 f6 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e69c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<short> cellalloc<short>(N256 n, int cellcount)
; cellalloc_gn256_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 b6 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e69c80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<uint> cellalloc<uint>(N256 n, int cellcount)
; cellalloc_gn256_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 86 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e69cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<int> cellalloc<int>(N256 n, int cellcount)
; cellalloc_gn256_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 46 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e69cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ulong> cellalloc<ulong>(N256 n, int cellcount)
; cellalloc_gn256_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 16 fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e69d30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<long> cellalloc<long>(N256 n, int cellcount)
; cellalloc_gn256_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 d6 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e69d60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fa ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<float> cellalloc<float>(N256 n, int cellcount)
; cellalloc_gn256_32i[87] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 a2 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0049h call 7ff7c7e69da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<double> cellalloc<double>(N256 n, int cellcount)
; cellalloc_gn256_32i[87] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 03 41 03 c8 c1 f9 02 41 8b d0 c1 fa 1f 83 e2 03 41 03 d0 83 e2 fc 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 72 fa ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0049h call 7ff7c7e69de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<byte> cellalloc<byte>(N512 n, int cellcount)
; cellalloc_gn512_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 3f 41 03 c8 c1 f9 06 41 8b d0 c1 fa 1f 83 e2 3f 41 03 d0 83 e2 c0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 9e fc ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e6a4a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<sbyte> cellalloc<sbyte>(N512 n, int cellcount)
; cellalloc_gn512_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 3f 41 03 c8 c1 f9 06 41 8b d0 c1 fa 1f 83 e2 3f 41 03 d0 83 e2 c0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 9e fc ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e6a518h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ushort> cellalloc<ushort>(N512 n, int cellcount)
; cellalloc_gn512_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 1f 41 03 c8 c1 f9 05 41 8b d0 c1 fa 1f 83 e2 1f 41 03 d0 83 e2 e0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 6e fc ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e6a558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<short> cellalloc<short>(N512 n, int cellcount)
; cellalloc_gn512_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 1f 41 03 c8 c1 f9 05 41 8b d0 c1 fa 1f 83 e2 1f 41 03 d0 83 e2 e0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 3e fc ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e6a598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<uint> cellalloc<uint>(N512 n, int cellcount)
; cellalloc_gn512_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 0e fc ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e6a5d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<int> cellalloc<int>(N512 n, int cellcount)
; cellalloc_gn512_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 de fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e6a618h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ulong> cellalloc<ulong>(N512 n, int cellcount)
; cellalloc_gn512_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 ae fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e6a658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<long> cellalloc<long>(N512 n, int cellcount)
; cellalloc_gn512_32i[83] = {56 48 83 ec 20 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 45 33 c9 e8 7e fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0045h call 7ff7c7e6a698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<float> cellalloc<float>(N512 n, int cellcount)
; cellalloc_gn512_32i[87] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 0f 41 03 c8 c1 f9 04 41 8b d0 c1 fa 1f 83 e2 0f 41 03 d0 83 e2 f0 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 4a fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0049h call 7ff7c7e6a6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a fb ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<double> cellalloc<double>(N512 n, int cellcount)
; cellalloc_gn512_32i[87] = {56 48 83 ec 20 c5 f8 77 48 89 54 24 38 48 8b f1 41 8b c8 c1 f9 1f 83 e1 07 41 03 c8 c1 f9 03 41 8b d0 c1 fa 1f 83 e2 07 41 03 d0 83 e2 f8 44 2b c2 74 06 44 8d 41 01 eb 03 44 8b c1 48 8b ce 48 0f be 54 24 38 c5 e0 57 db e8 1a fb ff ff 48 8b c6 48 83 c4 20 5e c3}
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
0049h call 7ff7c7e6a718h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a fb ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
