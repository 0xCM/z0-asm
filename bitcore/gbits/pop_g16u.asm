; uint pop<ushort>(ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7)
; pop_g16u[7ff7c6e9b1d0h, 7ff7c6e9b249h][121] = {56 0f 1f 40 00 0f b7 c1 0f b7 d2 41 0f b7 c8 45 0f b7 c1 44 8b 4c 24 30 45 0f b7 c9 44 8b 54 24 38 45 0f b7 d2 44 8b 5c 24 40 45 0f b7 db 8b 74 24 48 0f b7 f6 f3 48 0f b8 c0 f3 48 0f b8 d2 03 c2 33 d2 f3 48 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:54:002
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh movzx r8d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c1}
0013h mov r9d,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 30}
0018h movzx r9d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c9}
001ch mov r10d,[rsp+38h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 54 24 38}
0021h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0025h mov r11d,[rsp+40h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 5c 24 40}
002ah movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
002eh mov esi,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 48}
0032h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0035h popcnt rax,rax                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c0}
003ah popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
003fh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0041h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0043h popcnt rdx,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d1}
0048h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
004ch popcnt rdx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d0}
0051h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0053h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0055h popcnt rdx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d1}
005ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
005ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
005eh popcnt rdx,r10                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d2}
0063h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0065h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0067h popcnt rdx,r11                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d3}
006ch add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
006eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0070h popcnt rdx,rsi                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d6}
0075h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
