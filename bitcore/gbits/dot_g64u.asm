; bit dot<ulong>(ulong x, ulong y)
; dot_g64u[7ff7c6e98b00h, 7ff7c6e98b18h][24] = {0f 1f 44 00 00 48 23 d1 33 c0 f3 48 0f b8 c2 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:53:866
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah popcnt rax,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c2}
000fh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
