; void steps<sbyte>(sbyte first, sbyte step, int count, ref sbyte dst)
; steps_g8i[7ff7c718bcf0h, 7ff7c718bd2dh][61] = {56 0f 1f 40 00 33 c0 45 85 c0 7e 2f 48 0f be d2 48 0f be c9 4c 63 d0 4d 03 d1 4c 0f be d8 8b f2 44 0f af de 4d 0f be db 8b f1 44 03 de 4d 0f be db 45 88 1a ff c0 41 3b c0 7c d9 5e c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:38:211
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ah jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
000ch movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0010h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0014h movsxd r10,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d0}
0017h add r10,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d1}
001ah movsx r11,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be d8}
001eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0020h imul r11d,esi                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{44 0f af de}
0024h movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
0028h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
002ah add r11d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 de}
002dh movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
0031h mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0034h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0036h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0039h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d9}
003bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
