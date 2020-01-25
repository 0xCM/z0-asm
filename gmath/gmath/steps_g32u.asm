; void steps<uint>(uint first, uint step, int count, ref uint dst)
; steps_g32u[7ff7c718c210h, 7ff7c718c238h][40] = {0f 1f 44 00 00 33 c0 45 85 c0 7e 1b 4c 63 d0 4f 8d 14 91 44 8b d8 44 0f af da 44 03 d9 45 89 1a ff c0 41 3b c0 7c e5 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:38:217
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ah jle short 0027h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
000ch movsxd r10,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d0}
000fh lea r10,[r9+r10*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 91}
0013h mov r11d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d8}
0016h imul r11d,edx                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{44 0f af da}
001ah add r11d,ecx                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 d9}
001dh mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
0020h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0022h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0025h jl short 000ch                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
