; ulong gcd<ulong>(ulong a, ulong b)
; gcd_g64u[7ff7c7195490h, 7ff7c71954c1h][49] = {0f 1f 44 00 00 4c 8b c2 48 8b d1 4d 85 c0 74 16 48 8b c2 33 d2 49 f7 f0 48 85 d2 75 04 49 8b c0 c3 49 87 d0 eb ea 4c 8b c2 eb f2 00 19 00 00 00 40}
; Capture completion code, ZEDx6
; 2020-01-24 01:44:39:270
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000bh test r8,r8                              ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{4d 85 c0}
000eh je short 0026h                          ; JE rel8 || 74 cb || encoded[2]{74 16}
0010h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0013h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0015h div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0018h test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
001bh jne short 0021h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
001dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
0021h xchg rdx,r8                             ; XCHG r/m64, r64 || REX.W 87 /r || encoded[3]{49 87 d0}
0024h jmp short 0010h                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
0026h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0029h jmp short 001dh                         ; JMP rel8 || EB cb || encoded[2]{eb f2}
002bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
002dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
002fh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
