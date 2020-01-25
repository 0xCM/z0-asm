; Int16 gcd<Int16>(Int16 a, Int16 b)
; gcd_g16i[7ff7c71953b0h, 7ff7c71953fah][74] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 48 0f bf c0 8b c8 c1 f9 0f 03 c1 33 c1 48 0f bf c0 8b ca c1 f9 0f 03 d1 33 d1 48 0f bf ca 85 c9 74 16 99 f7 f9 48 0f bf c2 8b d1 8b c8 85 c9 75 03 8b c2 c3 8b c2 eb ea 8b d0 eb f5 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 01:44:39:265
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0013h sar ecx,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 0f}
0016h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0018h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
001ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0020h sar ecx,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 0f}
0023h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0025h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0027h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
002bh test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
002dh je short 0045h                          ; JE rel8 || 74 cb || encoded[2]{74 16}
002fh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0030h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0032h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
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
