; int lsbpos<byte>(byte src)
; lsbpos_g8u[7ff7c6e99500h, 7ff7c6e99518h][24] = {0f 1f 44 00 00 0f b6 c1 85 c0 74 06 f3 0f bc c0 eb 05 b8 08 00 00 00 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:53:902
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah je short 0012h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
000ch tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0010h jmp short 0017h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0012h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
