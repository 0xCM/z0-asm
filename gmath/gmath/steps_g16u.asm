; void steps<ushort>(ushort first, ushort step, int count, ref ushort dst)
; steps_g16u[7ff7c719eef0h, 7ff7c719ef2dh][61] = {56 0f 1f 40 00 33 c0 45 85 c0 7e 2f 0f b7 d2 0f b7 c9 4c 63 d0 4f 8d 14 51 44 0f b7 d8 8b f2 44 0f af de 45 0f b7 db 8b f1 44 03 de 45 0f b7 db 66 45 89 1a ff c0 41 3b c0 7c d7 5e c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:57:251
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
