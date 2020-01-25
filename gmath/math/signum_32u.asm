; Sign:int signum(uint src)
; signum_32u[7ff7c7187ac0h, 7ff7c7187ad5h][21] = {0f 1f 44 00 00 85 c9 75 06 b8 ff ff ff ff c3 b8 01 00 00 00 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:224
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
