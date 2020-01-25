; uint pop<byte>(byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7)
; pop_g8u[7ff7c6e86380h, 7ff7c6e863fah][122] = {56 0f 1f 40 00 0f b6 c1 0f b6 d2 41 0f b6 c8 45 0f b6 c1 44 8b 4c 24 30 45 0f b6 c9 44 8b 54 24 38 45 0f b6 d2 44 8b 5c 24 40 45 0f b6 db 8b 74 24 48 40 0f b6 f6 f3 48 0f b8 c0 f3 48 0f b8 d2 03 c2 33 d2 f3 48 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:34:328
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh movzx r8d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c1}
0013h mov r9d,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 30}
0018h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
001ch mov r10d,[rsp+38h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 54 24 38}
0021h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
0025h mov r11d,[rsp+40h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 5c 24 40}
002ah movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
002eh mov esi,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 48}
0032h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0036h popcnt rax,rax                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c0}
003bh popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
0040h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0042h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0044h popcnt rdx,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d1}
0049h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
004dh popcnt rdx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d0}
0052h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0054h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0056h popcnt rdx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d1}
005bh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
005dh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
005fh popcnt rdx,r10                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d2}
0064h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0066h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0068h popcnt rdx,r11                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d3}
006dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
006fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0071h popcnt rdx,rsi                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d6}
0076h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h ret                                     ; RET || C3 || encoded[1]{c3}
