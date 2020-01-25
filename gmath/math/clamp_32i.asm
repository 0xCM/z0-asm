; int clamp(int src, int max)
; clamp_32i[7ff7c719b940h, 7ff7c719b94fh][15] = {0f 1f 44 00 00 3b ca 7f 03 8b c1 c3 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:615
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jg short 000ch                          ; JG rel8 || 7F cb || encoded[2]{7f 03}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
