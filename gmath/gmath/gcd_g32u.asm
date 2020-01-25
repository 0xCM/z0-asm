; uint gcd<uint>(uint a, uint b)
; gcd_g32u[7ff7c7195410h, 7ff7c719543dh][45] = {0f 1f 44 00 00 44 8b c2 8b d1 45 85 c0 74 14 8b c2 33 d2 41 f7 f0 85 d2 75 04 41 8b c0 c3 49 87 d0 eb ec 44 8b c2 eb f2 19 00 00 00 40}
; Capture completion code, ZEDx6
; 2020-01-24 01:44:39:267
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000dh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 14}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0013h div r8d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f0}
0016h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0018h jne short 001eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
001ah mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
001eh xchg rdx,r8                             ; XCHG r/m64, r64 || REX.W 87 /r || encoded[3]{49 87 d0}
0021h jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb ec}
0023h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0026h jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb f2}
0028h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
002ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
002ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
