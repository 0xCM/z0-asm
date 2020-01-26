------------------------------------------------------------------------------------------------------------------------
; sbyte gcd(sbyte a, sbyte b)
; gcd_8i[61] = {0f 1f 44 00 00 48 0f be c1 8b c8 c1 f9 07 03 c1 33 c1 48 0f be c0 48 0f be d2 8b ca c1 f9 07 03 d1 33 d1 48 0f be ca 85 c9 74 16 99 f7 f9 48 0f be c2 8b d1 8b c8 85 c9 75 03 8b c2 c3}
; Capture completion code = ZEDx6_RET
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000bh sar ecx,7                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 07}
000eh add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0010h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
001ah mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ch sar ecx,7                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 07}
001fh add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0021h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0023h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0027h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0029h je short 0041h                          ; JE rel8 || 74 cb || encoded[2]{74 16}
002bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
002ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
002eh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0032h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0034h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0036h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0038h jne short 003dh                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
003ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte gcd(byte a, byte b)
; gcd_8u[29] = {0f 1f 44 00 00 84 d2 74 10 0f b6 c1 0f b6 ca 99 f7 f9 0f b6 d2 84 d2 75 f0 0f b6 c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test dl,dl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 d2}
0007h je short 0019h                          ; JE rel8 || 74 cb || encoded[2]{74 10}
0009h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
000ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000fh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0010h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h test dl,dl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 d2}
0017h jne short 0009h                         ; JNE rel8 || 75 cb || encoded[2]{75 f0}
0019h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Int16 gcd(Int16 a, Int16 b)
; gcd_16i[61] = {0f 1f 44 00 00 48 0f bf c1 8b c8 c1 f9 0f 03 c1 33 c1 48 0f bf c0 48 0f bf d2 8b ca c1 f9 0f 03 d1 33 d1 48 0f bf ca 85 c9 74 16 99 f7 f9 48 0f bf c2 8b d1 8b c8 85 c9 75 03 8b c2 c3}
; Capture completion code = ZEDx6_RET
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
------------------------------------------------------------------------------------------------------------------------
; ushort gcd(ushort a, ushort b)
; gcd_16u[35] = {0f 1f 44 00 00 0f b7 c2 85 c0 74 13 0f b7 c1 0f b7 ca 99 f7 f9 0f b7 d2 0f b7 c2 85 c0 75 ed 0f b7 c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah je short 001fh                          ; JE rel8 || 74 cb || encoded[2]{74 13}
000ch movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000fh movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0012h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0013h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0015h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0018h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 ed}
001fh movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int gcd(int a, int b)
; gcd_32i[42] = {0f 1f 44 00 00 8b c1 c1 f8 1f 03 c8 33 c1 8b ca c1 f9 1f 44 8d 04 0a 41 33 c8 85 c9 74 0b 99 f7 f9 8b c1 8b ca 85 c9 75 f5 c3}
; Capture completion code = RET_ZEDx3
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
------------------------------------------------------------------------------------------------------------------------
; uint gcd(uint a, uint b)
; gcd_32u[27] = {8b c1 44 8b c2 45 85 c0 74 10 33 d2 41 f7 f0 41 8b c0 44 8b c2 45 85 c0 75 f0 c3}
; Capture completion code = RET_ZED_SBB
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0005h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0008h je short 001ah                          ; JE rel8 || 74 cb || encoded[2]{74 10}
000ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000ch div r8d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f0}
000fh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0012h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0015h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0018h jne short 000ah                         ; JNE rel8 || 75 cb || encoded[2]{75 f0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long gcd(long a, long b)
; gcd_64i[54] = {0f 1f 44 00 00 48 8b c1 48 c1 f8 3f 48 03 c8 48 33 c1 48 8b ca 48 c1 f9 3f 4c 8d 04 0a 49 33 c8 48 85 c9 74 10 48 99 48 f7 f9 48 8b c1 48 8b ca 48 85 c9 75 f0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sar rax,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f8 3f}
000ch add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
000fh xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0012h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0015h sar rcx,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f9 3f}
0019h lea r8,[rdx+rcx]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 04 0a}
001dh xor rcx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c8}
0020h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0023h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 10}
0025h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0027h idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0030h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0033h jne short 0025h                         ; JNE rel8 || 75 cb || encoded[2]{75 f0}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong gcd(ulong a, ulong b)
; gcd_64u[28] = {48 8b c1 4c 8b c2 4d 85 c0 74 10 33 d2 49 f7 f0 49 8b c0 4c 8b c2 4d 85 c0 75 f0 c3}
; Capture completion code = RET_SBB
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0006h test r8,r8                              ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{4d 85 c0}
0009h je short 001bh                          ; JE rel8 || 74 cb || encoded[2]{74 10}
000bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000dh div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0010h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0013h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0016h test r8,r8                              ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{4d 85 c0}
0019h jne short 000bh                         ; JNE rel8 || 75 cb || encoded[2]{75 f0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
