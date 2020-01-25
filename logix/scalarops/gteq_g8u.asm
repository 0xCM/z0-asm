; byte gteq<byte>(byte a, byte b)
; gteq_g8u[7ff7c6cc12b0h, 7ff7c6cc12d1h][33] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 93 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:438
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h jne short 001bh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h jmp short 0020h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001bh mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
