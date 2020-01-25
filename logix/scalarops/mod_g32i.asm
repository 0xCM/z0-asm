; int mod<int>(int a, int b)
; mod_g32i[7ff7c6ca4380h, 7ff7c6ca4391h][17] = {0f 1f 44 00 00 44 8b c2 8b c1 99 41 f7 f8 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:50:067
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000bh idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
000eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
