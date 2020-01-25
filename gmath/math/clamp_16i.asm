; Int16 clamp(Int16 src, Int16 max)
; clamp_16i[7ff7c719b8e0h, 7ff7c719b8f5h][21] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 7f 01 c3 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:612
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jg short 0012h                          ; JG rel8 || 7F cb || encoded[2]{7f 01}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
