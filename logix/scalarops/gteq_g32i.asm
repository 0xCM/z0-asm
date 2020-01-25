; int gteq<int>(int a, int b)
; gteq_g32i[7ff7c6ca2290h, 7ff7c6ca22abh][27] = {0f 1f 44 00 00 3b ca 0f 9d c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:49:635
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000fh jne short 0015h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0011h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0013h jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0015h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
