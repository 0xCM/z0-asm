------------------------------------------------------------------------------------------------------------------------
; sbyte pow(sbyte b, uint exp)
; pow_8i_32u[61] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 0c 4c 0f be c1 41 0f af c0 48 0f be c0 d1 ea 85 d2 74 11 4c 0f be c1 41 8b c8 41 0f af c8 48 0f be c9 eb d8 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0019h movsx r8,cl                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c1}
001dh imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
0021h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0025h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0027h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0029h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 11}
002bh movsx r8,cl                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c1}
002fh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0032h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0036h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
003ah jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb d8}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pow(byte b, uint exp)
; pow_8u_32u[59] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 0b 44 0f b6 c1 41 0f af c0 0f b6 c0 d1 ea 85 d2 74 10 44 0f b6 c1 41 8b c8 41 0f af c8 0f b6 c9 eb da c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 0024h                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
0019h movzx r8d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c1}
001dh imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0026h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0028h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 10}
002ah movzx r8d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c1}
002eh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0031h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0035h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0038h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb da}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short pow(short b, uint exp)
; pow_16i_32u[61] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 0c 4c 0f bf c1 41 0f af c0 48 0f bf c0 d1 ea 85 d2 74 11 4c 0f bf c1 41 8b c8 41 0f af c8 48 0f bf c9 eb d8 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0019h movsx r8,cx                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c1}
001dh imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
0021h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0025h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0027h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0029h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 11}
002bh movsx r8,cx                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c1}
002fh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0032h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0036h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
003ah jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb d8}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pow(ushort b, uint exp)
; pow_16u_32u[59] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 0b 44 0f b7 c1 41 0f af c0 0f b7 c0 d1 ea 85 d2 74 10 44 0f b7 c1 41 8b c8 41 0f af c8 0f b7 c9 eb da c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 0024h                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
0019h movzx r8d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c1}
001dh imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
0021h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0024h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0026h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0028h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 10}
002ah movzx r8d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c1}
002eh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0031h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0035h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0038h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb da}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int pow(int b, uint exp)
; pow_32i_32u[40] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 03 0f af c1 d1 ea 85 d2 74 05 0f af c9 eb ed c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 001ch                          ; JE rel8 || 74 cb || encoded[2]{74 03}
0019h imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
001ch shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0020h je short 0027h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0022h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0025h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb ed}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pow(uint b, uint exp)
; pow_32u_32u[40] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 03 0f af c1 d1 ea 85 d2 74 05 0f af c9 eb ed c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 001ch                          ; JE rel8 || 74 cb || encoded[2]{74 03}
0019h imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
001ch shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0020h je short 0027h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0022h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0025h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb ed}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long pow(long b, uint exp)
; pow_64i_32u[42] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 04 48 0f af c1 d1 ea 85 d2 74 06 48 0f af c9 eb eb c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 001dh                          ; JE rel8 || 74 cb || encoded[2]{74 04}
0019h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
001dh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0021h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0023h imul rcx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c9}
0027h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb eb}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pow(ulong b, uint exp)
; pow_64u_32u[42] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 04 48 0f af c1 d1 ea 85 d2 74 06 48 0f af c9 eb eb c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 001dh                          ; JE rel8 || 74 cb || encoded[2]{74 04}
0019h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
001dh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0021h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0023h imul rcx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c9}
0027h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb eb}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
