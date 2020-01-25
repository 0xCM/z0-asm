; sbyte pow<sbyte>(sbyte b, uint exp)
; pow_g8i[7ff7c71a8fe0h, 7ff7c71a9017h][55] = {0f 1f 44 00 00 48 0f be c1 85 d2 75 07 b9 01 00 00 00 eb 20 b9 01 00 00 00 f6 c2 01 74 07 0f af c8 48 0f be c9 d1 ea 85 d2 74 09 0f af c0 48 0f be c0 eb e5 8b c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:58:390
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000bh jne short 0014h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000dh mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0012h jmp short 0034h                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
0014h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0019h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
001ch je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 07}
001eh imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
0021h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0025h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0027h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0029h je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 09}
002bh imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
002eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0032h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb e5}
0034h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
