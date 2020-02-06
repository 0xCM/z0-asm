------------------------------------------------------------------------------------------------------------------------
; ref byte cell<byte>(Span<byte> src, BitPos<byte> pos)
; cell_gspan8u[18] = {0f 1f 44 00 00 48 8b 01 0f b7 12 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movzx edx,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 12}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort cell<ushort>(Span<ushort> src, BitPos<ushort> pos)
; cell_gspan16u[19] = {0f 1f 44 00 00 48 8b 01 0f b7 12 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movzx edx,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 12}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint cell<uint>(Span<uint> src, BitPos<uint> pos)
; cell_gspan32u[19] = {0f 1f 44 00 00 48 8b 01 0f b7 12 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movzx edx,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 12}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong cell<ulong>(Span<ulong> src, BitPos<ulong> pos)
; cell_gspan64u[19] = {0f 1f 44 00 00 48 8b 01 0f b7 12 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movzx edx,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 12}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte cell<byte>(ReadOnlySpan<byte> src, BitPos<byte> pos)
; cell_gimspan8u[18] = {0f 1f 44 00 00 48 8b 01 0f b7 12 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movzx edx,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 12}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort cell<ushort>(ReadOnlySpan<ushort> src, BitPos<ushort> pos)
; cell_gimspan16u[19] = {0f 1f 44 00 00 48 8b 01 0f b7 12 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movzx edx,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 12}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint cell<uint>(ReadOnlySpan<uint> src, BitPos<uint> pos)
; cell_gimspan32u[19] = {0f 1f 44 00 00 48 8b 01 0f b7 12 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movzx edx,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 12}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong cell<ulong>(ReadOnlySpan<ulong> src, BitPos<ulong> pos)
; cell_gimspan64u[19] = {0f 1f 44 00 00 48 8b 01 0f b7 12 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movzx edx,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 12}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
