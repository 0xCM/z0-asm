------------------------------------------------------------------------------------------------------------------------
; bool unsigned(Object value)
; unsigned_[133] = {0f 1f 44 00 00 48 8b c1 48 85 c0 74 11 48 ba 58 77 35 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 5c 48 8b c1 48 85 c0 74 11 48 ba 38 87 35 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 3e 48 8b c1 48 85 c0 74 11 48 ba d8 96 35 c6 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 20 48 85 c9 74 11 48 b8 78 a6 35 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 0f 95 c0 0f b6 c0 c3 b8 01 00 00 00 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
000bh je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
000dh mov rdx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 35 c6 f7 7f 00 00}
0017h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
001ah je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
001ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0021h jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 5c}
0023h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0026h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0029h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 11}
002bh mov rdx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 35 c6 f7 7f 00 00}
0035h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0038h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 02}
003ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
003fh jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 3e}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0047h je short 005ah                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0049h mov rdx,7ff7c63596d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 35 c6 f7 7f 00 00}
0053h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
0056h je short 005ah                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0058h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
005fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0062h je short 0075h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0064h mov rax,7ff7c635a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a6 35 c6 f7 7f 00 00}
006eh cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
0071h je short 0075h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0073h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0075h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0078h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
007bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007eh ret                                     ; RET || C3 || encoded[1]{c3}
007fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
