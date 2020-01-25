; uint pow(uint b, uint exp)
; pow_32u[7ff7c719a6e0h, 7ff7c719a708h][40] = {0f 1f 44 00 00 85 d2 75 06 b8 01 00 00 00 c3 b8 01 00 00 00 f6 c2 01 74 03 0f af c1 d1 ea 85 d2 74 05 0f af c9 eb ed c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:56:459
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
