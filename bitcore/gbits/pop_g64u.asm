; uint pop<ulong>(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5, ulong x6, ulong x7)
; pop_g64u[7ff7c6e86710h, 7ff7c6e8676bh][91] = {56 0f 1f 40 00 48 8b 44 24 30 4c 8b 54 24 38 4c 8b 5c 24 40 48 8b 74 24 48 f3 48 0f b8 c9 f3 48 0f b8 d2 03 d1 33 c9 f3 49 0f b8 c8 03 d1 33 c9 f3 49 0f b8 c9 03 d1 f3 48 0f b8 c0 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:34:341
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
