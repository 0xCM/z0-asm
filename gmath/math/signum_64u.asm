; Sign:int signum(ulong src)
; signum_64u[7ff7c7187b20h, 7ff7c7187b36h][22] = {0f 1f 44 00 00 48 85 c9 75 06 b8 ff ff ff ff c3 b8 01 00 00 00 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:226
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
000ah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
