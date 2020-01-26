------------------------------------------------------------------------------------------------------------------------
; byte gt<byte>(byte a, byte b)
; gt_g8u[33] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 97 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h jne short 001bh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h jmp short 0020h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001bh mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte gt<sbyte>(sbyte a, sbyte b)
; gt_g8i[35] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9f c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0017h jne short 001dh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh jmp short 0022h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001dh mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort gt<ushort>(ushort a, ushort b)
; gt_g16u[33] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 97 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h jne short 001bh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h jmp short 0020h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001bh mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short gt<short>(short a, short b)
; gt_g16i[35] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9f c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0017h jne short 001dh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh jmp short 0022h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001dh mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint gt<uint>(uint a, uint b)
; gt_g32u[27] = {0f 1f 44 00 00 3b ca 0f 97 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000fh jne short 0015h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0011h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0013h jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0015h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int gt<int>(int a, int b)
; gt_g32i[27] = {0f 1f 44 00 00 3b ca 0f 9f c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000fh jne short 0015h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0011h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0013h jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0015h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong gt<ulong>(ulong a, ulong b)
; gt_g64u[33] = {0f 1f 44 00 00 48 3b ca 0f 97 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h jne short 0016h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0012h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0014h jmp short 0020h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0016h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long gt<long>(long a, long b)
; gt_g64i[33] = {0f 1f 44 00 00 48 3b ca 0f 9f c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h jne short 0016h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0012h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0014h jmp short 0020h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0016h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
