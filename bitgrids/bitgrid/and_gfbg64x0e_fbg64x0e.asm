------------------------------------------------------------------------------------------------------------------------
; BitGrid64<byte> and<byte>(BitGrid64<byte> gx, BitGrid64<byte> gy)
; and_gfbg64x8u_fbg64x8u[29] = {0f 1f 44 00 00 48 8b 02 49 8b 10 48 23 c2 33 d2 48 89 01 88 51 08 88 51 09 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0010h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0013h mov [rcx+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 08}
0016h mov [rcx+9],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 09}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<ushort> and<ushort>(BitGrid64<ushort> gx, BitGrid64<ushort> gy)
; and_gfbg64x16u_fbg64x16u[29] = {0f 1f 44 00 00 48 8b 02 49 8b 10 48 23 c2 33 d2 48 89 01 88 51 08 88 51 09 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0010h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0013h mov [rcx+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 08}
0016h mov [rcx+9],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 09}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<uint> and<uint>(BitGrid64<uint> gx, BitGrid64<uint> gy)
; and_gfbg64x32u_fbg64x32u[29] = {0f 1f 44 00 00 48 8b 02 49 8b 10 48 23 c2 33 d2 48 89 01 88 51 08 88 51 09 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0010h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0013h mov [rcx+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 08}
0016h mov [rcx+9],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 09}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<ulong> and<ulong>(BitGrid64<ulong> gx, BitGrid64<ulong> gy)
; and_gfbg64x64u_fbg64x64u[29] = {0f 1f 44 00 00 48 8b 02 49 8b 10 48 23 c2 33 d2 48 89 01 88 51 08 88 51 09 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0010h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0013h mov [rcx+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 08}
0016h mov [rcx+9],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 09}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
