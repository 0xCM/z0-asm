; int clamp<int>(int a, int b)
; clamp_g32i[7ff7c7193120h, 7ff7c7193130h][16] = {0f 1f 44 00 00 3b ca 7f 02 eb 02 8b ca 8b c1 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:115
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jg short 000bh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000dh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
