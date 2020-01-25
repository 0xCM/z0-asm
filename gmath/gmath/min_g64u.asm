; ulong min<ulong>(ulong a, ulong b)
; min_g64u[7ff7c71a1200h, 7ff7c71a1213h][19] = {0f 1f 44 00 00 48 3b ca 72 02 eb 03 48 8b d1 48 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:57:440
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jb short 000ch                          ; JB rel8 || 72 cb || encoded[2]{72 02}
000ah jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000ch mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
