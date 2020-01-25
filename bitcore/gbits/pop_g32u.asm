; uint pop<uint>(uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7)
; pop_g32u[7ff7c6e9b310h, 7ff7c6e9b376h][102] = {56 0f 1f 40 00 8b c1 8b d2 41 8b c8 45 8b c1 44 8b 4c 24 30 44 8b 54 24 38 44 8b 5c 24 40 8b 74 24 48 f3 48 0f b8 c0 f3 48 0f b8 d2 03 c2 33 d2 f3 48 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 49 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d3 03 c2 33 d2 f3 48 0f b8 d6 03 c2 5e c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:54:007
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
