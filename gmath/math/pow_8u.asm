; byte pow(byte b, uint exp)
; pow_8u[7ff7c719a5b0h, 7ff7c719a5ebh][59] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 0b 44 0f b6 c1 41 0f af c0 0f b6 c0 d1 ea 85 d2 74 10 44 0f b6 c1 41 8b c8 41 0f af c8 0f b6 c9 eb da c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:454
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
