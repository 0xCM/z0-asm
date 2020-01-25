; long clamp<long>(long a, long b)
; clamp_g64i[7ff7c7193170h, 7ff7c7193183h][19] = {0f 1f 44 00 00 48 3b ca 7f 02 eb 03 48 8b ca 48 8b c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:39:117
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jg short 000ch                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000ah jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000ch mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
