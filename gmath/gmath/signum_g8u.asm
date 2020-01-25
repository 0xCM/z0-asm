; Sign:int signum<byte>(byte a)
; signum_g8u[7ff7c71a91d0h, 7ff7c71a91e9h][25] = {0f 1f 44 00 00 0f b6 c1 85 c0 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:58:407
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0013h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ch mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0011h jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0013h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
