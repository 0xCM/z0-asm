; byte gcd<byte>(byte a, byte b)
; gcd_g8u[7ff7c71952d0h, 7ff7c7195301h][49] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca 0f b6 c0 85 c9 74 15 99 f7 f9 0f b6 c2 8b d1 8b c8 85 c9 75 03 8b c2 c3 8b c2 eb eb 8b d0 eb f5 00 19 00 00 00 40}
; Capture completion code, ZEDx6
; 2020-01-24 01:44:39:260
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0010h je short 0027h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
0012h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0013h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0015h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0018h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
001ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
001ch test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
001eh jne short 0023h                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
0020h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
0023h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0025h jmp short 0012h                         ; JMP rel8 || EB cb || encoded[2]{eb eb}
0027h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0029h jmp short 0020h                         ; JMP rel8 || EB cb || encoded[2]{eb f5}
002bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
002dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
002fh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
