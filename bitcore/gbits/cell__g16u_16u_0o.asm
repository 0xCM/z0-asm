; ref ushort cell<ushort>(ReadOnlySpan<ushort> src, BitPos<ushort> pos)
; cell__g16u_16u_0o[7ff7c6e839f0h, 7ff7c6e83a03h][19] = {0f 1f 44 00 00 48 8b 01 0f b7 12 48 63 d2 48 8d 04 50 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:34:169
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movzx edx,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 12}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
