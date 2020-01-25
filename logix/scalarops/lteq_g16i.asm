; Int16 lteq<Int16>(Int16 a, Int16 b)
; lteq_g16i[7ff7c6cc0fb0h, 7ff7c6cc0fd3h][35] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9e c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:42:418
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0017h jne short 001dh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh jmp short 0022h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001dh mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
