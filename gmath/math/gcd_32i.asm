; int gcd(int a, int b)
; gcd_32i[7ff7c71893d0h, 7ff7c71893fah][42] = {0f 1f 44 00 00 8b c1 c1 f8 1f 03 c8 33 c1 8b ca c1 f9 1f 44 8d 04 0a 41 33 c8 85 c9 74 0b 99 f7 f9 8b c1 8b ca 85 c9 75 f5 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:407
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
000ch xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h lea r8d,[rdx+rcx]                       ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 04 0a}
0017h xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
001ah test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
001ch je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
001eh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
001fh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0021h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0023h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0025h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0027h jne short 001eh                         ; JNE rel8 || 75 cb || encoded[2]{75 f5}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
