; int div(int a, int b)
; div_32i[7ff7c7188f40h, 7ff7c7188f4fh][15] = {0f 1f 44 00 00 44 8b c2 8b c1 99 41 f7 f8 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:377
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000bh idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
