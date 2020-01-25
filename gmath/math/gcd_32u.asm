; uint gcd(uint a, uint b)
; gcd_32u[7ff7c719c230h, 7ff7c719c24bh][27] = {8b c1 44 8b c2 45 85 c0 74 10 33 d2 41 f7 f0 41 8b c0 44 8b c2 45 85 c0 75 f0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:671
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0005h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0008h je short 001ah                          ; JE rel8 || 74 cb || encoded[2]{74 10}
000ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000ch div r8d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f0}
000fh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0012h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0015h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0018h jne short 000ah                         ; JNE rel8 || 75 cb || encoded[2]{75 f0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
