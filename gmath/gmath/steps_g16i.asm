; void steps<Int16>(Int16 first, Int16 step, int count, ref Int16 dst)
; steps_g16i[7ff7c718c1b0h, 7ff7c718c1efh][63] = {56 0f 1f 40 00 33 c0 45 85 c0 7e 31 48 0f bf d2 48 0f bf c9 4c 63 d0 4f 8d 14 51 4c 0f bf d8 8b f2 44 0f af de 4d 0f bf db 8b f1 44 03 de 4d 0f bf db 66 45 89 1a ff c0 41 3b c0 7c d7 5e c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:38:215
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
