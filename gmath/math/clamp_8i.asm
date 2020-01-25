; sbyte clamp(sbyte src, sbyte max)
; clamp_8i[7ff7c7188a60h, 7ff7c7188a75h][21] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 7f 01 c3 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:343
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jg short 0012h                          ; JG rel8 || 7F cb || encoded[2]{7f 01}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
