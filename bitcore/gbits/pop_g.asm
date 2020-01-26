------------------------------------------------------------------------------------------------------------------------
; uint pop<byte>(byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7)
; pop_g8u[122] = {56 0f 1f 40 00 0f b6 c1 0f b6 d2 41 0f b6 c8 45 0f b6 c1 44 8b 4c 24 30 45 0f b6 c9 44 8b 54 24 38 45 0f b6 d2 44 8b 5c 24 40 45 0f b6 db 8b 74 24 48 40 0f b6 f6 f3 48 0f b8 c0 f3 48 0f b8 d2 03 c2 33 d2 f3 48 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code = RET_ZEDx3
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
------------------------------------------------------------------------------------------------------------------------
; uint pop<sbyte>(sbyte x0, sbyte x1, sbyte x2, sbyte x3, sbyte x4, sbyte x5, sbyte x6, sbyte x7)
; pop_g8i[148] = {56 0f 1f 40 00 48 0f be c1 48 63 c0 48 0f be d2 48 63 d2 49 0f be c8 48 63 c9 4d 0f be c1 4d 63 c0 44 8b 4c 24 30 4d 0f be c9 4d 63 c9 44 8b 54 24 38 4d 0f be d2 4d 63 d2 44 8b 5c 24 40 4d 0f be db 4d 63 db 8b 74 24 48 48 0f be f6 48 63 f6 f3 48 0f b8 c0 f3 48 0f b8 d2 03 c2 33 d2 f3 48 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code = RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0010h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0013h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0017h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
001ah movsx r8,r9b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c1}
001eh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0021h mov r9d,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 30}
0026h movsx r9,r9b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c9}
002ah movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
002dh mov r10d,[rsp+38h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 54 24 38}
0032h movsx r10,r10b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d2}
0036h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0039h mov r11d,[rsp+40h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 5c 24 40}
003eh movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
0042h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0045h mov esi,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 48}
0049h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
004dh movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0050h popcnt rax,rax                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c0}
0055h popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
005ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
005ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
005eh popcnt rdx,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d1}
0063h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0065h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0067h popcnt rdx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d0}
006ch add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
006eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0070h popcnt rdx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d1}
0075h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0077h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0079h popcnt rdx,r10                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d2}
007eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0080h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0082h popcnt rdx,r11                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d3}
0087h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0089h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
008bh popcnt rdx,rsi                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d6}
0090h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0092h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0093h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop<ushort>(ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7)
; pop_g16u[121] = {56 0f 1f 40 00 0f b7 c1 0f b7 d2 41 0f b7 c8 45 0f b7 c1 44 8b 4c 24 30 45 0f b7 c9 44 8b 54 24 38 45 0f b7 d2 44 8b 5c 24 40 45 0f b7 db 8b 74 24 48 0f b7 f6 f3 48 0f b8 c0 f3 48 0f b8 d2 03 c2 33 d2 f3 48 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code = RET_ZEDx3
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
------------------------------------------------------------------------------------------------------------------------
; uint pop<Int16>(Int16 x0, Int16 x1, Int16 x2, Int16 x3, Int16 x4, Int16 x5, Int16 x6, Int16 x7)
; pop_g16i[148] = {56 0f 1f 40 00 48 0f bf c1 48 63 c0 48 0f bf d2 48 63 d2 49 0f bf c8 48 63 c9 4d 0f bf c1 4d 63 c0 44 8b 4c 24 30 4d 0f bf c9 4d 63 c9 44 8b 54 24 38 4d 0f bf d2 4d 63 d2 44 8b 5c 24 40 4d 0f bf db 4d 63 db 8b 74 24 48 48 0f bf f6 48 63 f6 f3 48 0f b8 c0 f3 48 0f b8 d2 03 c2 33 d2 f3 48 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code = RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0010h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0013h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0017h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
001ah movsx r8,r9w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c1}
001eh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0021h mov r9d,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 30}
0026h movsx r9,r9w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c9}
002ah movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
002dh mov r10d,[rsp+38h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 54 24 38}
0032h movsx r10,r10w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d2}
0036h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0039h mov r11d,[rsp+40h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 5c 24 40}
003eh movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
0042h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0045h mov esi,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 48}
0049h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
004dh movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0050h popcnt rax,rax                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c0}
0055h popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
005ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
005ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
005eh popcnt rdx,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d1}
0063h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0065h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0067h popcnt rdx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d0}
006ch add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
006eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0070h popcnt rdx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d1}
0075h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0077h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0079h popcnt rdx,r10                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d2}
007eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0080h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0082h popcnt rdx,r11                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d3}
0087h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0089h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
008bh popcnt rdx,rsi                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d6}
0090h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0092h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0093h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop<uint>(uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7)
; pop_g32u[102] = {56 0f 1f 40 00 8b c1 8b d2 41 8b c8 45 8b c1 44 8b 4c 24 30 44 8b 54 24 38 44 8b 5c 24 40 8b 74 24 48 f3 48 0f b8 c0 f3 48 0f b8 d2 03 c2 33 d2 f3 48 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0009h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
000ch mov r8d,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c1}
000fh mov r9d,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 30}
0014h mov r10d,[rsp+38h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 54 24 38}
0019h mov r11d,[rsp+40h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 5c 24 40}
001eh mov esi,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 48}
0022h popcnt rax,rax                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c0}
0027h popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
002ch add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
002eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0030h popcnt rdx,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d1}
0035h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0037h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0039h popcnt rdx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d0}
003eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0040h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0042h popcnt rdx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d1}
0047h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0049h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
004bh popcnt rdx,r10                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d2}
0050h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0052h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0054h popcnt rdx,r11                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d3}
0059h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
005bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
005dh popcnt rdx,rsi                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d6}
0062h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop<int>(int x0, int x1, int x2, int x3, int x4, int x5, int x6, int x7)
; pop_g32i[116] = {56 0f 1f 40 00 48 63 c1 48 63 d2 49 63 c8 4d 63 c1 44 8b 4c 24 30 4d 63 c9 44 8b 54 24 38 4d 63 d2 44 8b 5c 24 40 4d 63 db 8b 74 24 48 48 63 f6 f3 48 0f b8 c0 f3 48 0f b8 d2 03 c2 33 d2 f3 48 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code = RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
000eh movsxd r8,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c1}
0011h mov r9d,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 4c 24 30}
0016h movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
0019h mov r10d,[rsp+38h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 54 24 38}
001eh movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0021h mov r11d,[rsp+40h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 5c 24 40}
0026h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0029h mov esi,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 74 24 48}
002dh movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0030h popcnt rax,rax                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c0}
0035h popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
003ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
003ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
003eh popcnt rdx,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d1}
0043h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0045h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0047h popcnt rdx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d0}
004ch add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0050h popcnt rdx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d1}
0055h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0057h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0059h popcnt rdx,r10                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d2}
005eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0060h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0062h popcnt rdx,r11                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d3}
0067h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0069h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
006bh popcnt rdx,rsi                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d6}
0070h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop<ulong>(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5, ulong x6, ulong x7)
; pop_g64u[91] = {56 0f 1f 40 00 48 8b 44 24 30 4c 8b 54 24 38 4c 8b 5c 24 40 48 8b 74 24 48 f3 48 0f b8 c9 f3 48 0f b8 d2 03 d1 33 c9 f3 49 0f b8 c8 03 d1 33 c9 f3 49 0f b8 c9 03 d1 f3 48 0f b8 c0 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 30}
000ah mov r10,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 54 24 38}
000fh mov r11,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 5c 24 40}
0014h mov rsi,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 74 24 48}
0019h popcnt rcx,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c9}
001eh popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
0023h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0025h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0027h popcnt rcx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 c8}
002ch add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
002eh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0030h popcnt rcx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 c9}
0035h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0037h popcnt rax,rax                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c0}
003ch add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
003eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0040h popcnt rdx,r10                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d2}
0045h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0047h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0049h popcnt rdx,r11                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d3}
004eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0050h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0052h popcnt rdx,rsi                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d6}
0057h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop<long>(long x0, long x1, long x2, long x3, long x4, long x5, long x6, long x7)
; pop_g64i[91] = {56 0f 1f 40 00 48 8b 44 24 30 4c 8b 54 24 38 4c 8b 5c 24 40 48 8b 74 24 48 f3 48 0f b8 c9 f3 48 0f b8 d2 03 d1 33 c9 f3 49 0f b8 c8 03 d1 33 c9 f3 49 0f b8 c9 03 d1 f3 48 0f b8 c0 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 30}
000ah mov r10,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 54 24 38}
000fh mov r11,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 5c 24 40}
0014h mov rsi,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 74 24 48}
0019h popcnt rcx,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c9}
001eh popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
0023h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0025h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0027h popcnt rcx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 c8}
002ch add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
002eh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0030h popcnt rcx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 c9}
0035h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0037h popcnt rax,rax                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c0}
003ch add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
003eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0040h popcnt rdx,r10                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d2}
0045h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0047h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0049h popcnt rdx,r11                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d3}
004eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0050h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0052h popcnt rdx,rsi                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d6}
0057h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
