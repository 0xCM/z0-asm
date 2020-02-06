------------------------------------------------------------------------------------------------------------------------
; void steps<byte>(byte first, byte step, int count, ref byte dst)
; steps_g8u_8u_32i_8u~ref[59] = {56 0f 1f 40 00 33 c0 45 85 c0 7e 2d 0f b6 d2 0f b6 c9 4c 63 d0 4d 03 d1 44 0f b6 d8 8b f2 44 0f af de 45 0f b6 db 8b f1 44 03 de 45 0f b6 db 45 88 1a ff c0 41 3b c0 7c d9 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ah jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
000ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000fh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0012h movsxd r10,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d0}
0015h add r10,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d1}
0018h movzx r11d,al                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 d8}
001ch mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
001eh imul r11d,esi                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{44 0f af de}
0022h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0026h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0028h add r11d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 de}
002bh movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
002fh mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0032h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0034h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0037h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c d9}
0039h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void steps<sbyte>(sbyte first, sbyte step, int count, ref sbyte dst)
; steps_g8i_8i_32i_8i~ref[61] = {56 0f 1f 40 00 33 c0 45 85 c0 7e 2f 48 0f be d2 48 0f be c9 4c 63 d0 4d 03 d1 4c 0f be d8 8b f2 44 0f af de 4d 0f be db 8b f1 44 03 de 4d 0f be db 45 88 1a ff c0 41 3b c0 7c d9 5e c3}
; TermCode = CTC_RET_Zx3
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
------------------------------------------------------------------------------------------------------------------------
; void steps<ushort>(ushort first, ushort step, int count, ref ushort dst)
; steps_g16u_16u_32i_16u~ref[61] = {56 0f 1f 40 00 33 c0 45 85 c0 7e 2f 0f b7 d2 0f b7 c9 4c 63 d0 4f 8d 14 51 44 0f b7 d8 8b f2 44 0f af de 45 0f b7 db 8b f1 44 03 de 45 0f b7 db 66 45 89 1a ff c0 41 3b c0 7c d7 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ah jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
000ch movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000fh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0012h movsxd r10,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d0}
0015h lea r10,[r9+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 51}
0019h movzx r11d,ax                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 d8}
001dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
001fh imul r11d,esi                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{44 0f af de}
0023h movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
0027h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0029h add r11d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 de}
002ch movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
0030h mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0034h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0036h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0039h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
003bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void steps<short>(short first, short step, int count, ref short dst)
; steps_g16i_16i_32i_16i~ref[63] = {56 0f 1f 40 00 33 c0 45 85 c0 7e 31 48 0f bf d2 48 0f bf c9 4c 63 d0 4f 8d 14 51 4c 0f bf d8 8b f2 44 0f af de 4d 0f bf db 8b f1 44 03 de 4d 0f bf db 66 45 89 1a ff c0 41 3b c0 7c d7 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ah jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 31}
000ch movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0010h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0014h movsxd r10,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d0}
0017h lea r10,[r9+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 51}
001bh movsx r11,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf d8}
001fh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0021h imul r11d,esi                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{44 0f af de}
0025h movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
0029h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
002bh add r11d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 de}
002eh movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
0032h mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0036h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0038h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
003bh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
003dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void steps<uint>(uint first, uint step, int count, ref uint dst)
; steps_g32u_32u_32i_32u~ref[40] = {0f 1f 44 00 00 33 c0 45 85 c0 7e 1b 4c 63 d0 4f 8d 14 91 44 8b d8 44 0f af da 44 03 d9 45 89 1a ff c0 41 3b c0 7c e5 c3}
; TermCode = CTC_RET_SBB
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
------------------------------------------------------------------------------------------------------------------------
; void steps<int>(int first, int step, int count, ref int dst)
; steps_g32i_32i_32i_32i~ref[40] = {0f 1f 44 00 00 33 c0 45 85 c0 7e 1b 4c 63 d0 4f 8d 14 91 44 8b d8 44 0f af da 44 03 d9 45 89 1a ff c0 41 3b c0 7c e5 c3}
; TermCode = CTC_RET_SBB
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
------------------------------------------------------------------------------------------------------------------------
; void steps<ulong>(ulong first, ulong step, int count, ref ulong dst)
; steps_g64u_64u_32i_64u~ref[40] = {0f 1f 44 00 00 33 c0 45 85 c0 7e 1b 4c 63 d0 4f 8d 14 d1 4c 63 d8 4c 0f af da 4c 03 d9 4d 89 1a ff c0 41 3b c0 7c e5 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ah jle short 0027h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
000ch movsxd r10,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d0}
000fh lea r10,[r9+r10*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 d1}
0013h movsxd r11,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d8}
0016h imul r11,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4c 0f af da}
001ah add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
001dh mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
0020h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0022h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0025h jl short 000ch                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void steps<long>(long first, long step, int count, ref long dst)
; steps_g64i_64i_32i_64i~ref[40] = {0f 1f 44 00 00 33 c0 45 85 c0 7e 1b 4c 63 d0 4f 8d 14 d1 4c 63 d8 4c 0f af da 4c 03 d9 4d 89 1a ff c0 41 3b c0 7c e5 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ah jle short 0027h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
000ch movsxd r10,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d0}
000fh lea r10,[r9+r10*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 d1}
0013h movsxd r11,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d8}
0016h imul r11,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4c 0f af da}
001ah add r11,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d9}
001dh mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
0020h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0022h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0025h jl short 000ch                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
