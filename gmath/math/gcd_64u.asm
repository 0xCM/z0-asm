; ulong gcd(ulong a, ulong b)
; gcd_64u[7ff7c719c2b0h, 7ff7c719c2cch][28] = {48 8b c1 4c 8b c2 4d 85 c0 74 10 33 d2 49 f7 f0 49 8b c0 4c 8b c2 4d 85 c0 75 f0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:56:673
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0006h test r8,r8                              ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{4d 85 c0}
0009h je short 001bh                          ; JE rel8 || 74 cb || encoded[2]{74 10}
000bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000dh div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0010h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0013h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0016h test r8,r8                              ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{4d 85 c0}
0019h jne short 000bh                         ; JNE rel8 || 75 cb || encoded[2]{75 f0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
