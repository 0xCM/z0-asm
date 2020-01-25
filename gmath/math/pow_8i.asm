; sbyte pow(sbyte b, uint exp)
; pow_8i[7ff7c7187740h, 7ff7c718777dh][61] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 0c 4c 0f be c1 41 0f af c0 48 0f be c0 d1 ea 85 d2 74 11 4c 0f be c1 41 8b c8 41 0f af c8 48 0f be c9 eb d8 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:207
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
