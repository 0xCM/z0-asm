; uint equals<uint>(uint a, uint b)
; eq_g32u[7ff7c6ca1900h, 7ff7c6ca191bh][27] = {0f 1f 44 00 00 3b ca 0f 94 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:49:554
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000fh jne short 0015h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0011h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0013h jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0015h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
