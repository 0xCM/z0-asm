------------------------------------------------------------------------------------------------------------------------
; byte neq<byte>(byte a, byte b)
; neq_g8u[36] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f b6 c0 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0018h jne short 001eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch jmp short 0023h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001eh mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte neq<sbyte>(sbyte a, sbyte b)
; neq_g8i[39] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 48 0f be c0 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001bh jne short 0021h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh jmp short 0026h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0021h mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort neq<ushort>(ushort a, ushort b)
; neq_g16u[36] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f b7 c0 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0018h jne short 001eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch jmp short 0023h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001eh mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Int16 neq<Int16>(Int16 a, Int16 b)
; neq_g16i[39] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 48 0f bf c0 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001bh jne short 0021h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh jmp short 0026h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0021h mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint neq<uint>(uint a, uint b)
; neq_g32u[27] = {0f 1f 44 00 00 3b ca 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000fh jne short 0015h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0011h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0013h jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0015h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int neq<int>(int a, int b)
; neq_g32i[27] = {0f 1f 44 00 00 3b ca 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000fh jne short 0015h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0011h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0013h jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0015h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong neq<ulong>(ulong a, ulong b)
; neq_g64u[33] = {0f 1f 44 00 00 48 3b ca 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h jne short 0016h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0012h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0014h jmp short 0020h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0016h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long neq<long>(long a, long b)
; neq_g64i[33] = {0f 1f 44 00 00 48 3b ca 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h jne short 0016h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0012h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0014h jmp short 0020h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0016h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
