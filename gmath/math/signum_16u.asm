; Sign:int signum(ushort src)
; signum_16u[7ff7c7187a60h, 7ff7c7187a78h][24] = {0f 1f 44 00 00 0f b7 c1 85 c0 75 06 b8 ff ff ff ff c3 b8 01 00 00 00 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:37:222
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0012h                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
000ch mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
