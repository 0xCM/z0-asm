; ulong modmul<ulong>(ulong a, ulong b, ulong m)
; modmul_g64u[7ff7c71a8cf0h, 7ff7c71a8d05h][21] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 33 d2 49 f7 f0 48 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:58:365
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000eh div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0011h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
