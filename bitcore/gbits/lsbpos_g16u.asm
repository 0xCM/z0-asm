; int lsbpos<ushort>(ushort src)
; lsbpos_g16u[7ff7c6e99530h, 7ff7c6e99548h][24] = {0f 1f 44 00 00 0f b7 c1 85 c0 74 06 f3 0f bc c0 eb 05 b8 10 00 00 00 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:53:903
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah je short 0012h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
000ch tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0010h jmp short 0017h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0012h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
