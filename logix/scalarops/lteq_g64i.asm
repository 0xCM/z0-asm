; long lteq<long>(long a, long b)
; lteq_g64i[7ff7c6ca1f40h, 7ff7c6ca1f61h][33] = {0f 1f 44 00 00 48 3b ca 0f 9e c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:610
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h jne short 0016h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0012h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0014h jmp short 0020h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0016h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
