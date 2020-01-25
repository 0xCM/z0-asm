; uint pop<Int16>(Int16 x0, Int16 x1, Int16 x2, Int16 x3, Int16 x4, Int16 x5, Int16 x6, Int16 x7)
; pop_g16i[7ff7c6e86550h, 7ff7c6e865e4h][148] = {56 0f 1f 40 00 48 0f bf c1 48 63 c0 48 0f bf d2 48 63 d2 49 0f bf c8 48 63 c9 4d 0f bf c1 4d 63 c0 44 8b 4c 24 30 4d 0f bf c9 4d 63 c9 44 8b 54 24 38 4d 0f bf d2 4d 63 d2 44 8b 5c 24 40 4d 0f bf db 4d 63 db 8b 74 24 48 48 0f bf f6 48 63 f6 f3 48 0f b8 c0 f3 48 0f b8 d2 03 c2 33 d2 f3 48 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:34:334
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
