; Int16 gcd(Int16 a, Int16 b)
; gcd_16i[7ff7c719c150h, 7ff7c719c196h][70] = {0f 1f 44 00 00 48 0f bf c1 8b c8 c1 f9 0f 03 c1 33 c1 48 0f bf c0 48 0f bf d2 8b ca c1 f9 0f 03 d1 33 d1 48 0f bf ca 85 c9 74 16 99 f7 f9 48 0f bf c2 8b d1 8b c8 85 c9 75 03 8b c2 c3 8b c2 eb ea 8b d0 eb f5 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:56:664
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000bh sar ecx,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 0f}
000eh add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0010h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0012h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0016h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
001ah mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ch sar ecx,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 0f}
001fh add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0021h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0023h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0027h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0029h je short 0041h                          ; JE rel8 || 74 cb || encoded[2]{74 16}
002bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
002ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
002eh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0032h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0034h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0036h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0038h jne short 003dh                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
003ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
003dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003fh jmp short 002bh                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
0041h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0043h jmp short 003ah                         ; JMP rel8 || EB cb || encoded[2]{eb f5}
0045h (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
