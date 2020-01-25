; Sign:int signum<ulong>(ulong a)
; signum_g64u[7ff7c71a9700h, 7ff7c71a9717h][23] = {0f 1f 44 00 00 48 85 c9 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:58:416
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h jne short 0011h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000fh jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0011h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
