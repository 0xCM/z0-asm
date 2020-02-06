------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> right<byte>(BitVector<byte> x, BitVector<byte> y)
; right_g[13] = {0f 1f 44 00 00 89 4c 24 08 0f b6 c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> right<ushort>(BitVector<ushort> x, BitVector<ushort> y)
; right_g[13] = {0f 1f 44 00 00 89 4c 24 08 0f b7 c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> right<uint>(BitVector<uint> x, BitVector<uint> y)
; right_g[12] = {0f 1f 44 00 00 89 4c 24 08 8b c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> right<ulong>(BitVector<ulong> x, BitVector<ulong> y)
; right_g[14] = {0f 1f 44 00 00 48 89 4c 24 08 48 8b c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
