; ulong clamp<ulong>(ulong a, ulong b)
; clamp_g64u[7ff7c71a5f00h, 7ff7c71a5f13h][19] = {0f 1f 44 00 00 48 3b ca 77 05 48 8b c1 eb 03 48 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:58:134
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h ja short 000fh                          ; JA rel8 || 77 cb || encoded[2]{77 05}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh jmp short 0012h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
