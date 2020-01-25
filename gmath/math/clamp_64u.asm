; ulong clamp(ulong src, ulong max)
; clamp_64u[7ff7c719b9b0h, 7ff7c719b9c2h][18] = {0f 1f 44 00 00 48 3b ca 77 04 48 8b c1 c3 48 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:618
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h ja short 000eh                          ; JA rel8 || 77 cb || encoded[2]{77 04}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
