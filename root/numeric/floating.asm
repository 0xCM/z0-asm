------------------------------------------------------------------------------------------------------------------------
; bool floating(Object value)
; floating_[73] = {0f 1f 44 00 00 48 8b c1 48 85 c0 74 11 48 ba 58 af 72 c7 f7 7f 00 00 48 39 10 74 02 33 c0 48 85 c0 75 20 48 85 c9 74 11 48 b8 38 b8 72 c7 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 0f 95 c0 0f b6 c0 c3 b8 01 00 00 00 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
000bh je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
000dh mov rdx,7ff7c772af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 72 c7 f7 7f 00 00}
0017h cmp [rax],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 10}
001ah je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
001ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0021h jne short 0043h                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
0023h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0026h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0028h mov rax,7ff7c772b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 b8 72 c7 f7 7f 00 00}
0032h cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
0035h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0037h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0039h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
003ch setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
003fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
0043h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
