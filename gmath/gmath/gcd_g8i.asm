; sbyte gcd<sbyte>(sbyte a, sbyte b)
; gcd_g8i[7ff7c71a80c0h, 7ff7c71a810ah][74] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 48 0f be c0 8b c8 c1 f9 07 03 c1 33 c1 48 0f be c0 8b ca c1 f9 07 03 d1 33 d1 48 0f be ca 85 c9 74 16 99 f7 f9 48 0f be c2 8b d1 8b c8 85 c9 75 03 8b c2 c3 8b c2 eb ea 8b d0 eb f5 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:58:310
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0013h sar ecx,7                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 07}
0016h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0018h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
001ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0020h sar ecx,7                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 07}
0023h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0025h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0027h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
002bh test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
002dh je short 0045h                          ; JE rel8 || 74 cb || encoded[2]{74 16}
002fh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0030h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0032h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0036h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0038h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
003ah test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
003ch jne short 0041h                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
003eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
0041h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0043h jmp short 002fh                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
0045h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0047h jmp short 003eh                         ; JMP rel8 || EB cb || encoded[2]{eb f5}
0049h (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
