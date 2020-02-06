------------------------------------------------------------------------------------------------------------------------
; ref byte cell<byte>(ref byte src, int bitpos)
; cell_g8u~ref_32i[25] = {0f 1f 44 00 00 8b c2 c1 f8 1f 83 e0 07 03 c2 c1 f8 03 48 63 c0 48 03 c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh sar eax,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 03}
0012h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0015h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort cell<ushort>(ref ushort src, int bitpos)
; cell_g16u~ref_32i[26] = {0f 1f 44 00 00 8b c2 c1 f8 1f 83 e0 0f 03 c2 c1 f8 04 48 63 c0 48 8d 04 41 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
0012h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0015h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint cell<uint>(ref uint src, int bitpos)
; cell_g32u~ref_32i[26] = {0f 1f 44 00 00 8b c2 c1 f8 1f 83 e0 1f 03 c2 c1 f8 05 48 63 c0 48 8d 04 81 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 1f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh sar eax,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 05}
0012h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0015h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong cell<ulong>(ref ulong src, int bitpos)
; cell_g64u~ref_32i[26] = {0f 1f 44 00 00 8b c2 c1 f8 1f 83 e0 3f 03 c2 c1 f8 06 48 63 c0 48 8d 04 c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 3f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh sar eax,6                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 06}
0012h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0015h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte cell<byte>(in BitGrid<byte> src, int bitpos)
; cell_gbg8u~in_32i[28] = {0f 1f 44 00 00 48 8b 01 8b ca c1 f9 1f 83 e1 07 03 d1 c1 fa 03 48 63 d2 48 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
000dh and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0010h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0012h sar edx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 03}
0015h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0018h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort cell<ushort>(in BitGrid<ushort> src, int bitpos)
; cell_gbg16u~in_32i[29] = {0f 1f 44 00 00 48 8b 01 8b ca c1 f9 1f 83 e1 0f 03 d1 c1 fa 04 48 63 d2 48 8d 04 50 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
000dh and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0010h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0012h sar edx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 04}
0015h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0018h lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint cell<uint>(in BitGrid<uint> src, int bitpos)
; cell_gbg32u~in_32i[29] = {0f 1f 44 00 00 48 8b 01 8b ca c1 f9 1f 83 e1 1f 03 d1 c1 fa 05 48 63 d2 48 8d 04 90 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
000dh and ecx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 1f}
0010h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0012h sar edx,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 05}
0015h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0018h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong cell<ulong>(in BitGrid<ulong> src, int bitpos)
; cell_gbg64u~in_32i[29] = {0f 1f 44 00 00 48 8b 01 8b ca c1 f9 1f 83 e1 3f 03 d1 c1 fa 06 48 63 d2 48 8d 04 d0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
000dh and ecx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 3f}
0010h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0012h sar edx,6                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 06}
0015h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0018h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
