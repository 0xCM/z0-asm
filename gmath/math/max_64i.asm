; long max(long a, long b)
; max_64i[7ff7c7197d50h, 7ff7c7197d62h][18] = {0f 1f 44 00 00 48 3b ca 7f 04 48 8b c2 c3 48 8b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:106
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jg short 000eh                          ; JG rel8 || 7F cb || encoded[2]{7f 04}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
