------------------------------------------------------------------------------------------------------------------------
; ulong project(ulong src, ulong spec), hex://bitcore/bits?project#project_(64u,64u)
; project_(64u,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf3,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pdep rax,rcx,rdx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 f3 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong select(ulong src, ulong spec), hex://bitcore/bits?select#select_(64u,64u)
; select_(64u,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf2,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext rax,rcx,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 f2 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte setif(byte src, int srcpos, byte dst, int dstpos), hex://bitcore/bits?setif#setif_(8u,32i,8u,32i)
; setif_(8u,32i,8u,32i)[49] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xca,0xd3,0xe8,0x83,0xe0,0x01,0x85,0xc0,0x74,0x19,0x41,0x0f,0xb6,0xc0,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3,0x41,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h je short 002ch                          ; JE rel8 || 74 cb || encoded[2]{74 19}
0013h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0017h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
001dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0022h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0026h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
002ch movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort setif(ushort src, int srcpos, ushort dst, int dstpos), hex://bitcore/bits?setif#setif_(16u,32i,16u,32i)
; setif_(16u,32i,16u,32i)[50] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xca,0xd3,0xe8,0x83,0xe0,0x01,0x85,0xc0,0x74,0x1a,0x41,0x0f,0xb7,0xc0,0x41,0xb8,0x01,0x00,0x00,0x00,0x41,0x8b,0xc9,0x41,0xd3,0xe0,0x41,0x0f,0xb7,0xd0,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3,0x41,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h je short 002dh                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
0013h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0017h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
001dh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0020h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0023h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0027h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0029h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
002dh movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint setif(uint src, int srcpos, uint dst, int dstpos), hex://bitcore/bits?setif#setif_(32u,32i,32u,32i)
; setif_(32u,32i,32u,32i)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x8b,0xca,0xd3,0xe8,0x83,0xe0,0x01,0x85,0xc0,0x74,0x0e,0xb8,0x01,0x00,0x00,0x00,0x41,0x8b,0xc9,0xd3,0xe0,0x41,0x0b,0xc0,0xc3,0x41,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h je short 0020h                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
0012h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0017h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
001ch or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
0020h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong setif(ulong src, int srcpos, ulong dst, int dstpos), hex://bitcore/bits?setif#setif_(64u,32i,64u,32i)
; setif_(64u,32i,64u,32i)[41] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x8b,0xca,0x48,0xd3,0xe8,0x8b,0xc8,0x83,0xe1,0x01,0x85,0xc9,0x74,0x0f,0xb8,0x01,0x00,0x00,0x00,0x41,0x8b,0xc9,0x48,0xd3,0xe0,0x49,0x0b,0xc0,0xc3,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000fh and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
0012h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0014h je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
0016h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
001bh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001eh shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
0021h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
0025h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ushort src, out byte x0, out byte x1), hex://bitcore/bits?split#split_(16u,8u~out,8u~out)
; split_(16u,8u~out,8u~out)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x88,0x0a,0x0f,0xb7,0xc1,0xc1,0xf8,0x08,0x41,0x88,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
0007h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000ah sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
000dh mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte split(ushort src, out byte x0), hex://bitcore/bits?split#split_(16u,8u~out)
; split_(16u,8u~out)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x88,0x0a,0x0f,0xb7,0xc1,0xc1,0xf8,0x08,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
0007h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000ah sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(uint src, out ushort x0, out ushort x1), hex://bitcore/bits?split#split_(32u,16u~out,16u~out)
; split_(32u,16u~out,16u~out)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x66,0x89,0x0a,0xc1,0xe9,0x10,0x66,0x41,0x89,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0a}
0008h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
000bh mov [r8],cx                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 08}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort split(uint src, out ushort x0), hex://bitcore/bits?split#split_(32u,16u~out)
; split_(32u,16u~out)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x66,0x89,0x0a,0xc1,0xe9,0x10,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0a}
0008h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
000bh movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ulong src, out uint x0, out uint x1), hex://bitcore/bits?split#split_(64u,32u~out,32u~out)
; split_(64u,32u~out,32u~out)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x0a,0x48,0xc1,0xe9,0x20,0x8b,0xc1,0x41,0x89,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 0a}
0007h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
000bh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000dh mov [r8],eax                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 00}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint split(ulong src, out uint x0), hex://bitcore/bits?split#split_(64u,32u~out)
; split_(64u,32u~out)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x0a,0x48,0xc1,0xe9,0x20,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 0a}
0007h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
000bh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ulong src, out ushort x0, out ushort x1, out ushort x2, out ushort x3), hex://bitcore/bits?split#split_(64u,16u~out,16u~out,16u~out,16u~out)
; split_(64u,16u~out,16u~out,16u~out,16u~out)[43] = {0x0f,0x1f,0x44,0x00,0x00,0x66,0x89,0x0a,0x48,0x8b,0xc1,0x48,0xc1,0xe8,0x10,0x66,0x41,0x89,0x00,0x48,0x8b,0xc1,0x48,0xc1,0xe8,0x20,0x66,0x41,0x89,0x01,0x48,0xc1,0xe9,0x30,0x48,0x8b,0x44,0x24,0x28,0x66,0x89,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0a}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
000fh mov [r8],ax                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 00}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
001ah mov [r9],ax                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 01}
001eh shr rcx,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 30}
0022h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
0027h mov [rax],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 08}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(uint src, out byte x0, out byte x1, out byte x2, out byte x3), hex://bitcore/bits?split#split_(32u,8u~out,8u~out,8u~out,8u~out)
; split_(32u,8u~out,8u~out,8u~out,8u~out)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x88,0x0a,0x8b,0xc1,0xc1,0xe8,0x08,0x41,0x88,0x00,0x8b,0xc1,0xc1,0xe8,0x10,0x41,0x88,0x01,0xc1,0xe9,0x18,0x48,0x8b,0x44,0x24,0x28,0x88,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
000ch mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
000fh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0011h shr eax,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 10}
0014h mov [r9],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 01}
0017h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
001ah mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
001fh mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ulong src, out byte x0, out byte x1, out byte x2, out byte x3, out byte x4, out byte x5, out byte x6, out byte x7), hex://bitcore/bits?split#split_(64u,8u~out,8u~out,8u~out,8u~out,8u~out,8u~out,8u~out,8u~out)
; split_(64u,8u~out,8u~out,8u~out,8u~out,8u~out,8u~out,8u~out,8u~out)[95] = {0x0f,0x1f,0x44,0x00,0x00,0x88,0x0a,0x48,0x8b,0xc1,0x48,0xc1,0xe8,0x08,0x41,0x88,0x00,0x48,0x8b,0xc1,0x48,0xc1,0xe8,0x10,0x41,0x88,0x01,0x48,0x8b,0xc1,0x48,0xc1,0xe8,0x18,0x48,0x8b,0x54,0x24,0x28,0x88,0x02,0x48,0x8b,0xc1,0x48,0xc1,0xe8,0x20,0x48,0x8b,0x54,0x24,0x30,0x88,0x02,0x48,0x8b,0xc1,0x48,0xc1,0xe8,0x28,0x48,0x8b,0x54,0x24,0x38,0x88,0x02,0x48,0x8b,0xc1,0x48,0xc1,0xe8,0x30,0x48,0x8b,0x54,0x24,0x40,0x88,0x02,0x48,0xc1,0xe9,0x38,0x48,0x8b,0x44,0x24,0x48,0x88,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
0007h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000ah shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
000eh mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
0018h mov [r9],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh shr rax,18h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 18}
0022h mov rdx,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 28}
0027h mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
0029h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002ch shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0030h mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
0035h mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah shr rax,28h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 28}
003eh mov rdx,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 38}
0043h mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
0045h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0048h shr rax,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 30}
004ch mov rdx,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 40}
0051h mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
0053h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0057h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
005ch mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte stitch(byte left, int ldx, byte right, int rdx), hex://bitcore/bits?stitch#stitch_(8u,32i,8u,32i)
; stitch_(8u,32i,8u,32i)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xca,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0x41,0x83,0xe1,0x1f,0x41,0x8b,0xc9,0xd3,0xea,0x0b,0xc2,0x41,0x8b,0xc9,0xd3,0xe8,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000ch movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0010h and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
0014h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0017h shr edx,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ea}
0019h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001bh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001eh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort stitch(ushort left, int ldx, ushort right, int rdx), hex://bitcore/bits?stitch#stitch_(16u,32i,16u,32i)
; stitch_(16u,32i,16u,32i)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xca,0xd3,0xe0,0x41,0x0f,0xb7,0xd0,0x41,0x83,0xe1,0x1f,0x41,0x8b,0xc9,0xd3,0xea,0x0b,0xc2,0x41,0x8b,0xc9,0xd3,0xe8,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000ch movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0010h and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
0014h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0017h shr edx,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ea}
0019h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001bh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001eh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint stitch(uint left, int ldx, uint right, int rdx), hex://bitcore/bits?stitch#stitch_(32u,32i,32u,32i)
; stitch_(32u,32i,32u,32i)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x8b,0xca,0xd3,0xe0,0x41,0x83,0xe1,0x1f,0x41,0x8b,0xc9,0x41,0xd3,0xe8,0x41,0x0b,0xc0,0x41,0x8b,0xc9,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000bh and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
000fh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0012h shr r8d,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 e8}
0015h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0018h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001bh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong stitch(ulong left, int ldx, ulong right, int rdx), hex://bitcore/bits?stitch#stitch_(64u,32i,64u,32i)
; stitch_(64u,32i,64u,32i)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x8b,0xca,0x48,0xd3,0xe0,0x41,0x83,0xe1,0x3f,0x41,0x8b,0xc9,0x49,0xd3,0xe8,0x49,0x0b,0xc0,0x41,0x8b,0xc9,0x48,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000dh and r9d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 3f}
0011h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0014h shr r8,cl                               ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 e8}
0017h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
001ah mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001dh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte toggle(sbyte src, int pos), hex://bitcore/bits?toggle#toggle_(8i,32i)
; toggle_(8i,32i)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x49,0x0f,0xbe,0xd0,0x33,0xc2,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000fh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0011h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0014h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0018h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte toggle(byte src, int pos), hex://bitcore/bits?toggle#toggle_(8u,32i)
; toggle_(8u,32i)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0x33,0xc2,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0017h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short toggle(short src, int pos), hex://bitcore/bits?toggle#toggle_(16i,32i)
; toggle_(16i,32i)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x49,0x0f,0xbf,0xd0,0x33,0xc2,0x48,0x0f,0xbf,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000fh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0011h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0014h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0018h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort toggle(ushort src, int pos), hex://bitcore/bits?toggle#toggle_(16u,32i)
; toggle_(16u,32i)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb7,0xd0,0x33,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0017h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0019h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int toggle(int src, int pos), hex://bitcore/bits?toggle#toggle_(32i,32i)
; toggle_(32i,32i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x33,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint toggle(uint src, int pos), hex://bitcore/bits?toggle#toggle_(32u,32i)
; toggle_(32u,32i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x33,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long toggle(long src, int pos), hex://bitcore/bits?toggle#toggle_(64i,32i)
; toggle_(64i,32i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x33,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong toggle(ulong src, int pos), hex://bitcore/bits?toggle#toggle_(64u,32i)
; toggle_(64u,32i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x33,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float toggle(float src, int pos), hex://bitcore/bits?toggle#toggle_(32f,32i)
; toggle_(32f,32i)[37] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x11,0x44,0x24,0x08,0x48,0x8d,0x44,0x24,0x08,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x44,0x31,0x00,0xc5,0xfa,0x10,0x44,0x24,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 08}
000bh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0010h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
001bh xor [rax],r8d                           ; XOR r/m32, r32 || o32 31 /r || encoded[3]{44 31 00}
001eh vmovss xmm0,dword ptr [rsp+8]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 08}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double toggle(double src, int pos), hex://bitcore/bits?toggle#toggle_(64f,32i)
; toggle_(64f,32i)[37] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x11,0x44,0x24,0x08,0x48,0x8d,0x44,0x24,0x08,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x4c,0x31,0x00,0xc5,0xfb,0x10,0x44,0x24,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
000bh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0010h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
001bh xor [rax],r8                            ; XOR r/m64, r64 || REX.W 31 /r || encoded[3]{4c 31 00}
001eh vmovsd xmm0,qword ptr [rsp+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 08}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack8x1(byte src, ref ulong dst), hex://bitcore/bits?unpack8x1#unpack8x1_(8u,64u~ref)
; unpack8x1_(8u,64u~ref)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x48,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfb,0xf5,0xc1,0x48,0x89,0x02,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0012h pdep rax,rax,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 fb f5 c1}
0017h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack16x1(ushort src, ref ulong dst), hex://bitcore/bits?unpack16x1#unpack16x1_(16u,64u~ref)
; unpack16x1_(16u,64u~ref)[57] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0x8b,0xc8,0x49,0xb8,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xc2,0xf3,0xf5,0xc8,0x48,0x89,0x0a,0x48,0x83,0xc2,0x08,0xc1,0xf8,0x08,0x89,0x44,0x24,0x04,0x0f,0xb7,0x44,0x24,0x04,0xc4,0xc2,0xfb,0xf5,0xc0,0x48,0x89,0x02,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000ah mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0014h pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
0019h mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
001ch add rdx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 08}
0020h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
0023h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
0027h movzx eax,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 04}
002ch pdep rax,rax,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c0}
0031h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0034h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack32x1(uint src, ref ulong dst), hex://bitcore/bits?unpack32x1#unpack32x1_(32u,64u~ref)
; unpack32x1_(32u,64u~ref)[100] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0x44,0x8b,0xc0,0x49,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xbb,0xf5,0xc1,0x4c,0x89,0x02,0x4c,0x8d,0x42,0x08,0xc1,0xf8,0x08,0x89,0x44,0x24,0x04,0x0f,0xb7,0x44,0x24,0x04,0xc4,0xc2,0xfb,0xf5,0xc1,0x49,0x89,0x00,0xc1,0xe9,0x10,0x0f,0xb7,0xc1,0x48,0x83,0xc2,0x10,0x8b,0xc8,0xc4,0xc2,0xf3,0xf5,0xc9,0x48,0x89,0x0a,0x48,0x83,0xc2,0x08,0xc1,0xf8,0x08,0x89,0x04,0x24,0x0f,0xb7,0x04,0x24,0xc4,0xc2,0xfb,0xf5,0xc1,0x48,0x89,0x02,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000bh mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
0015h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
001ah mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
001dh lea r8,[rdx+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 42 08}
0021h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
0024h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
0028h movzx eax,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 04}
002dh pdep rax,rax,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c1}
0032h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0035h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
0038h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
003bh add rdx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 10}
003fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0041h pdep rcx,rcx,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c9}
0046h mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
0049h add rdx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 08}
004dh sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
0050h mov [rsp],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 04 24}
0053h movzx eax,word ptr [rsp]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 04 24}
0057h pdep rax,rax,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c1}
005ch mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
005fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack64x1(ulong src, ref ulong dst), hex://bitcore/bits?unpack64x1#unpack64x1_(64u,64u~ref)
; unpack64x1_(64u,64u~ref)[201] = {0x48,0x83,0xec,0x18,0x90,0x8b,0xc1,0x44,0x0f,0xb7,0xc0,0x45,0x8b,0xc8,0x49,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xb3,0xf5,0xca,0x4c,0x89,0x0a,0x4c,0x8d,0x4a,0x08,0x41,0xc1,0xf8,0x08,0x44,0x89,0x44,0x24,0x14,0x44,0x0f,0xb7,0x44,0x24,0x14,0xc4,0x42,0xbb,0xf5,0xc2,0x4d,0x89,0x01,0xc1,0xe8,0x10,0x0f,0xb7,0xc0,0x4c,0x8d,0x42,0x10,0x44,0x8b,0xc8,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x49,0x83,0xc0,0x08,0xc1,0xf8,0x08,0x89,0x44,0x24,0x10,0x0f,0xb7,0x44,0x24,0x10,0xc4,0xc2,0xfb,0xf5,0xc2,0x49,0x89,0x00,0x48,0xc1,0xe9,0x20,0x8b,0xc1,0x48,0x83,0xc2,0x20,0x0f,0xb7,0xc8,0x44,0x8b,0xc1,0xc4,0x42,0xbb,0xf5,0xc2,0x4c,0x89,0x02,0x4c,0x8d,0x42,0x08,0xc1,0xf9,0x08,0x89,0x4c,0x24,0x0c,0x0f,0xb7,0x4c,0x24,0x0c,0xc4,0xc2,0xf3,0xf5,0xca,0x49,0x89,0x08,0xc1,0xe8,0x10,0x0f,0xb7,0xc0,0x48,0x83,0xc2,0x10,0x8b,0xc8,0xc4,0xc2,0xf3,0xf5,0xca,0x48,0x89,0x0a,0x48,0x83,0xc2,0x08,0xc1,0xf8,0x08,0x89,0x44,0x24,0x08,0x0f,0xb7,0x44,0x24,0x08,0xc4,0xc2,0xfb,0xf5,0xc2,0x48,0x89,0x02,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
000bh mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000eh mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
0018h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
001dh mov [rdx],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 0a}
0020h lea r9,[rdx+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 4a 08}
0024h sar r8d,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 08}
0028h mov [rsp+14h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 14}
002dh movzx r8d,word ptr [rsp+14h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 44 24 14}
0033h pdep r8,r8,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c2}
0038h mov [r9],r8                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 01}
003bh shr eax,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 10}
003eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0041h lea r8,[rdx+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 42 10}
0045h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0048h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
004dh mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
0050h add r8,8                                ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{49 83 c0 08}
0054h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
0057h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
005bh movzx eax,word ptr [rsp+10h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 10}
0060h pdep rax,rax,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c2}
0065h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0068h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
006ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
006eh add rdx,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 20}
0072h movzx ecx,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c8}
0075h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0078h pdep r8,r8,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c2}
007dh mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
0080h lea r8,[rdx+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 42 08}
0084h sar ecx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 08}
0087h mov [rsp+0ch],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 0c}
008bh movzx ecx,word ptr [rsp+0ch]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 4c 24 0c}
0090h pdep rcx,rcx,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 ca}
0095h mov [r8],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 08}
0098h shr eax,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 10}
009bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
009eh add rdx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 10}
00a2h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a4h pdep rcx,rcx,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 ca}
00a9h mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
00ach add rdx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 08}
00b0h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
00b3h mov [rsp+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 08}
00b7h movzx eax,word ptr [rsp+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 08}
00bch pdep rax,rax,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c2}
00c1h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
00c4h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
00c8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int width(byte src), hex://bitcore/bits?width#width_(8u)
; width_(8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf3,0x0f,0xbd,0xc0,0x83,0xc0,0xe8,0xf7,0xd8,0x83,0xc0,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0ffffffe8h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 e8}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 08}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int width(ushort src), hex://bitcore/bits?width#width_(16u)
; width_(16u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf3,0x0f,0xbd,0xc0,0x83,0xc0,0xf0,0xf7,0xd8,0x83,0xc0,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0fffffff0h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 f0}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 10}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int width(uint src), hex://bitcore/bits?width#width_(32u)
; width_(32u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x0f,0xbd,0xc1,0xf7,0xd8,0x83,0xc0,0x20,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt eax,ecx                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c1}
000bh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000dh add eax,20h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 20}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int width(ulong src), hex://bitcore/bits?width#width_(64u)
; width_(64u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x48,0x0f,0xbd,0xc1,0xf7,0xd8,0x83,0xc0,0x40,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt rax,rcx                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c1}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,40h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 40}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte zerohi(byte src, int index), hex://bitcore/bits?zerohi#zerohi_(8u,32i)
; zerohi_(8u,32i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc4,0xe2,0x68,0xf5,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h bzhi eax,eax,edx                        ; BZHI r32a, r/m32, r32b || VEX.LZ.0F38.W0 F5 /r || encoded[5]{c4 e2 68 f5 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort zerohi(ushort src, int index), hex://bitcore/bits?zerohi#zerohi_(16u,32i)
; zerohi_(16u,32i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc4,0xe2,0x68,0xf5,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h bzhi eax,eax,edx                        ; BZHI r32a, r/m32, r32b || VEX.LZ.0F38.W0 F5 /r || encoded[5]{c4 e2 68 f5 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint zerohi(uint src, int index), hex://bitcore/bits?zerohi#zerohi_(32u,32i)
; zerohi_(32u,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x68,0xf5,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h bzhi eax,ecx,edx                        ; BZHI r32a, r/m32, r32b || VEX.LZ.0F38.W0 F5 /r || encoded[5]{c4 e2 68 f5 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong zerohi(ulong src, int index), hex://bitcore/bits?zerohi#zerohi_(64u,32i)
; zerohi_(64u,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc4,0xe2,0xf8,0xf5,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h bzhi rax,rcx,rax                        ; BZHI r64a, r/m64, r64b || VEX.LZ.0F38.W1 F5 /r || encoded[5]{c4 e2 f8 f5 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int msbpos(ushort src), hex://bitcore/bits?msbpos#msbpos_(16u)
; msbpos_(16u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf3,0x0f,0xbd,0xc0,0x83,0xc0,0xf0,0xf7,0xd8,0x83,0xc0,0x0f,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0fffffff0h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 f0}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,0fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 0f}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int msbpos(uint src), hex://bitcore/bits?msbpos#msbpos_(32u)
; msbpos_(32u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x0f,0xbd,0xc1,0xf7,0xd8,0x83,0xc0,0x1f,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt eax,ecx                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c1}
000bh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000dh add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int msbpos(ulong src), hex://bitcore/bits?msbpos#msbpos_(64u)
; msbpos_(64u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x48,0x0f,0xbd,0xc1,0xf7,0xd8,0x83,0xc0,0x3f,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt rax,rcx                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c1}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 3f}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int nlz(byte src), hex://bitcore/bits?nlz#nlz_(8u)
; nlz_(8u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf3,0x0f,0xbd,0xc0,0x83,0xc0,0xe8,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0ffffffe8h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 e8}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int nlz(ushort src), hex://bitcore/bits?nlz#nlz_(16u)
; nlz_(16u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf3,0x0f,0xbd,0xc0,0x83,0xc0,0xf0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0fffffff0h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 f0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int nlz(uint src), hex://bitcore/bits?nlz#nlz_(32u)
; nlz_(32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x0f,0xbd,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt eax,ecx                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int nlz(ulong src), hex://bitcore/bits?nlz#nlz_(64u)
; nlz_(64u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x48,0x0f,0xbd,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt rax,rcx                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(sbyte src), hex://bitcore/bits?ntz#ntz_(8i)
; ntz_(8i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x85,0xc0,0x74,0x05,0xf3,0x0f,0xbc,0xc0,0xc3,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh je short 0012h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000dh tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(byte src), hex://bitcore/bits?ntz#ntz_(8u)
; ntz_(8u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x85,0xc0,0x74,0x05,0xf3,0x0f,0xbc,0xc0,0xc3,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah je short 0011h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000ch tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
0011h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(short src), hex://bitcore/bits?ntz#ntz_(16i)
; ntz_(16i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x85,0xc0,0x74,0x05,0xf3,0x0f,0xbc,0xc0,0xc3,0xb8,0x10,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh je short 0012h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000dh tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(ushort src), hex://bitcore/bits?ntz#ntz_(16u)
; ntz_(16u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x85,0xc0,0x74,0x05,0xf3,0x0f,0xbc,0xc0,0xc3,0xb8,0x10,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah je short 0011h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000ch tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
0011h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(int src), hex://bitcore/bits?ntz#ntz_(32i)
; ntz_(32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x0f,0xbc,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h tzcnt eax,ecx                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(uint src), hex://bitcore/bits?ntz#ntz_(32u)
; ntz_(32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x0f,0xbc,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h tzcnt eax,ecx                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(long src), hex://bitcore/bits?ntz#ntz_(64i)
; ntz_(64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x48,0x0f,0xbc,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h tzcnt rax,rcx                           ; TZCNT r64, r/m64 || F3 REX.W 0F BC /r || encoded[5]{f3 48 0f bc c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(ulong src), hex://bitcore/bits?ntz#ntz_(64u)
; ntz_(64u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x48,0x0f,0xbc,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h tzcnt rax,rcx                           ; TZCNT r64, r/m64 || F3 REX.W 0F BC /r || encoded[5]{f3 48 0f bc c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack(bit b0, bit b1), hex://bitcore/bits?pack#pack_(1u,1u)
; pack_(1u,1u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0xd1,0xe2,0x8b,0xc1,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack(bit b0, bit b1, bit b2), hex://bitcore/bits?pack#pack_(1u,1u,1u)
; pack_(1u,1u,1u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0xd1,0xe2,0x8b,0xc1,0x0b,0xc2,0x41,0xc1,0xe0,0x02,0x41,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000bh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
000fh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack(bit b0, bit b1, bit b2, bit b3), hex://bitcore/bits?pack#pack_(1u,1u,1u,1u)
; pack_(1u,1u,1u,1u)[26] = {0x0f,0x1f,0x44,0x00,0x00,0xd1,0xe2,0x8b,0xc1,0x0b,0xc2,0x41,0xc1,0xe0,0x02,0x41,0x0b,0xc0,0x41,0xc1,0xe1,0x03,0x41,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000bh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
000fh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0012h shl r9d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 03}
0016h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack(bit b0, bit b1, bit b2, bit b3, bit b4), hex://bitcore/bits?pack#pack_(1u,1u,1u,1u,1u)
; pack_(1u,1u,1u,1u,1u)[35] = {0x0f,0x1f,0x44,0x00,0x00,0xd1,0xe2,0x8b,0xc1,0x0b,0xc2,0x41,0xc1,0xe0,0x02,0x41,0x0b,0xc0,0x41,0xc1,0xe1,0x03,0x41,0x0b,0xc1,0x8b,0x54,0x24,0x28,0xc1,0xe2,0x04,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000bh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
000fh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0012h shl r9d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 03}
0016h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0019h mov edx,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 28}
001dh shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0020h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack(bit b0, bit b1, bit b2, bit b3, bit b4, bit b5, bit b6, bit b7), hex://bitcore/bits?pack#pack_(1u,1u,1u,1u,1u,1u,1u,1u)
; pack_(1u,1u,1u,1u,1u,1u,1u,1u)[57] = {0x0f,0x1f,0x44,0x00,0x00,0xd1,0xe2,0x0b,0xd1,0x41,0xc1,0xe0,0x02,0x41,0x0b,0xd0,0x41,0xc1,0xe1,0x03,0x41,0x0b,0xd1,0x8b,0x44,0x24,0x30,0xd1,0xe0,0x0b,0x44,0x24,0x28,0x8b,0x4c,0x24,0x38,0xc1,0xe1,0x02,0x0b,0xc1,0x8b,0x4c,0x24,0x40,0xc1,0xe1,0x03,0x0b,0xc1,0xc1,0xe0,0x04,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
0007h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0009h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
000dh or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0010h shl r9d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 03}
0014h or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
0017h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
001bh shl eax,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e0}
001dh or eax,[rsp+28h]                        ; OR r32, r/m32 || o32 0B /r || encoded[4]{0b 44 24 28}
0021h mov ecx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 38}
0025h shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
0028h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
002ah mov ecx,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 40}
002eh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0031h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0033h shl eax,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 04}
0036h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part8x2(uint src, ref byte dst), hex://bitcore/bits?part8x2#part8x2_(32u,8u~ref)
; part8x2_(32u,8u~ref)[44] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x83,0xe0,0x03,0x88,0x02,0x8b,0xc1,0xc1,0xe8,0x02,0x83,0xe0,0x03,0x88,0x42,0x01,0x8b,0xc1,0xc1,0xe8,0x04,0x83,0xe0,0x03,0x88,0x42,0x02,0xc1,0xe9,0x06,0x83,0xe1,0x03,0x88,0x4a,0x03,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0011h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
0014h mov [rdx+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 01}
0017h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0019h shr eax,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 04}
001ch and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
001fh mov [rdx+2],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 02}
0022h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
0025h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0028h mov [rdx+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 03}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part8x2(byte src, ref byte dst), hex://bitcore/bits?part8x2#part8x2_(8u,8u~ref)
; part8x2_(8u,8u~ref)[47] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xc8,0x83,0xe1,0x03,0x88,0x0a,0x8b,0xc8,0xc1,0xe9,0x02,0x83,0xe1,0x03,0x88,0x4a,0x01,0x8b,0xc8,0xc1,0xe9,0x04,0x83,0xe1,0x03,0x88,0x4a,0x02,0xc1,0xe8,0x06,0x83,0xe0,0x03,0x88,0x42,0x03,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000ah and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
000dh mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
000fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0011h shr ecx,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 02}
0014h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0017h mov [rdx+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 01}
001ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
001ch shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
001fh and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0022h mov [rdx+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 02}
0025h shr eax,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 06}
0028h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
002bh mov [rdx+3],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 03}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part16x2(ushort src, ref byte dst), hex://bitcore/bits?part16x2#part16x2_(16u,8u~ref)
; part16x2_(16u,8u~ref)[109] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xc8,0x44,0x8b,0xc1,0x41,0x83,0xe0,0x03,0x44,0x88,0x02,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x02,0x41,0x83,0xe0,0x03,0x44,0x88,0x42,0x01,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x04,0x41,0x83,0xe0,0x03,0x44,0x88,0x42,0x02,0xc1,0xe9,0x06,0x83,0xe1,0x03,0x88,0x4a,0x03,0xc1,0xf8,0x08,0x0f,0xb6,0xc0,0x48,0x83,0xc2,0x04,0x8b,0xc8,0x83,0xe1,0x03,0x88,0x0a,0x8b,0xc8,0xc1,0xe9,0x02,0x83,0xe1,0x03,0x88,0x4a,0x01,0x8b,0xc8,0xc1,0xe9,0x04,0x83,0xe1,0x03,0x88,0x4a,0x02,0xc1,0xe8,0x06,0x83,0xe0,0x03,0x88,0x42,0x03,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
000bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
000eh and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0012h mov [rdx],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 02}
0015h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0018h shr r8d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 02}
001ch and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0020h mov [rdx+1],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 42 01}
0024h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0027h shr r8d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 04}
002bh and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
002fh mov [rdx+2],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 42 02}
0033h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
0036h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0039h mov [rdx+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 03}
003ch sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
003fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0042h add rdx,4                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 04}
0046h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0048h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
004bh mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
004dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004fh shr ecx,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 02}
0052h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0055h mov [rdx+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 01}
0058h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005ah shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
005dh and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0060h mov [rdx+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 02}
0063h shr eax,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 06}
0066h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
0069h mov [rdx+3],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 03}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part16x2(ushort src, Block64<byte> dst), hex://bitcore/bits?part16x2#part16x2_(16u,b64x8u)
; part16x2_(16u,b64x8u)[112] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x0f,0xb7,0xd1,0x0f,0xb6,0xca,0x44,0x8b,0xc1,0x41,0x83,0xe0,0x03,0x44,0x88,0x00,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x02,0x41,0x83,0xe0,0x03,0x44,0x88,0x40,0x01,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x04,0x41,0x83,0xe0,0x03,0x44,0x88,0x40,0x02,0xc1,0xe9,0x06,0x83,0xe1,0x03,0x88,0x48,0x03,0xc1,0xfa,0x08,0x0f,0xb6,0xd2,0x48,0x83,0xc0,0x04,0x8b,0xca,0x83,0xe1,0x03,0x88,0x08,0x8b,0xca,0xc1,0xe9,0x02,0x83,0xe1,0x03,0x88,0x48,0x01,0x8b,0xca,0xc1,0xe9,0x04,0x83,0xe1,0x03,0x88,0x48,0x02,0xc1,0xea,0x06,0x83,0xe2,0x03,0x88,0x50,0x03,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000eh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0011h and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0015h mov [rax],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 00}
0018h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001bh shr r8d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 02}
001fh and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0023h mov [rax+1],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 40 01}
0027h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
002ah shr r8d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 04}
002eh and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0032h mov [rax+2],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 40 02}
0036h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
0039h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
003ch mov [rax+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 03}
003fh sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0042h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0045h add rax,4                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 04}
0049h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
004bh and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
004eh mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
0050h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0052h shr ecx,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 02}
0055h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0058h mov [rax+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 01}
005bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
005dh shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
0060h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0063h mov [rax+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 02}
0066h shr edx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 06}
0069h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
006ch mov [rax+3],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 03}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part32x2(uint src, ref byte dst), hex://bitcore/bits?part32x2#part32x2_(32u,8u~ref)
; part32x2_(32u,8u~ref)[235] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x44,0x0f,0xb6,0xc0,0x45,0x8b,0xc8,0x41,0x83,0xe1,0x03,0x44,0x88,0x0a,0x45,0x8b,0xc8,0x41,0xc1,0xe9,0x02,0x41,0x83,0xe1,0x03,0x44,0x88,0x4a,0x01,0x45,0x8b,0xc8,0x41,0xc1,0xe9,0x04,0x41,0x83,0xe1,0x03,0x44,0x88,0x4a,0x02,0x41,0xc1,0xe8,0x06,0x41,0x83,0xe0,0x03,0x44,0x88,0x42,0x03,0xc1,0xf8,0x08,0x0f,0xb6,0xc0,0x4c,0x8d,0x42,0x04,0x44,0x8b,0xc8,0x41,0x83,0xe1,0x03,0x45,0x88,0x08,0x44,0x8b,0xc8,0x41,0xc1,0xe9,0x02,0x41,0x83,0xe1,0x03,0x45,0x88,0x48,0x01,0x44,0x8b,0xc8,0x41,0xc1,0xe9,0x04,0x41,0x83,0xe1,0x03,0x45,0x88,0x48,0x02,0xc1,0xe8,0x06,0x83,0xe0,0x03,0x41,0x88,0x40,0x03,0xc1,0xe9,0x10,0x0f,0xb7,0xc1,0x48,0x83,0xc2,0x08,0x0f,0xb6,0xc8,0x44,0x8b,0xc1,0x41,0x83,0xe0,0x03,0x44,0x88,0x02,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x02,0x41,0x83,0xe0,0x03,0x44,0x88,0x42,0x01,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x04,0x41,0x83,0xe0,0x03,0x44,0x88,0x42,0x02,0xc1,0xe9,0x06,0x83,0xe1,0x03,0x88,0x4a,0x03,0xc1,0xf8,0x08,0x0f,0xb6,0xc0,0x48,0x83,0xc2,0x04,0x8b,0xc8,0x83,0xe1,0x03,0x88,0x0a,0x8b,0xc8,0xc1,0xe9,0x02,0x83,0xe1,0x03,0x88,0x4a,0x01,0x8b,0xc8,0xc1,0xe9,0x04,0x83,0xe1,0x03,0x88,0x4a,0x02,0xc1,0xe8,0x06,0x83,0xe0,0x03,0x88,0x42,0x03,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
000ch mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000fh and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0013h mov [rdx],r9b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 0a}
0016h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
0019h shr r9d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 02}
001dh and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0021h mov [rdx+1],r9b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 4a 01}
0025h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
0028h shr r9d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 04}
002ch and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0030h mov [rdx+2],r9b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 4a 02}
0034h shr r8d,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 06}
0038h and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
003ch mov [rdx+3],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 42 03}
0040h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
0043h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0046h lea r8,[rdx+4]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 42 04}
004ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
004dh and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0051h mov [r8],r9b                            ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 08}
0054h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0057h shr r9d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 02}
005bh and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
005fh mov [r8+1],r9b                          ; MOV r/m8, r8 || 88 /r || encoded[4]{45 88 48 01}
0063h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0066h shr r9d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 04}
006ah and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
006eh mov [r8+2],r9b                          ; MOV r/m8, r8 || 88 /r || encoded[4]{45 88 48 02}
0072h shr eax,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 06}
0075h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
0078h mov [r8+3],al                           ; MOV r/m8, r8 || 88 /r || encoded[4]{41 88 40 03}
007ch shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
007fh movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0082h add rdx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 08}
0086h movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
0089h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
008ch and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0090h mov [rdx],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 02}
0093h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0096h shr r8d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 02}
009ah and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
009eh mov [rdx+1],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 42 01}
00a2h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
00a5h shr r8d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 04}
00a9h and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
00adh mov [rdx+2],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 42 02}
00b1h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
00b4h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
00b7h mov [rdx+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 03}
00bah sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
00bdh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c0h add rdx,4                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 04}
00c4h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00c6h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
00c9h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
00cbh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00cdh shr ecx,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 02}
00d0h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
00d3h mov [rdx+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 01}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
00dbh and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
00deh mov [rdx+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 02}
00e1h shr eax,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 06}
00e4h and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
00e7h mov [rdx+3],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 03}
00eah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part32x2(ushort src, Block128<byte> dst), hex://bitcore/bits?part32x2#part32x2_(16u,b128x8u)
; part32x2_(16u,b128x8u)[112] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x0f,0xb7,0xd1,0x0f,0xb6,0xca,0x44,0x8b,0xc1,0x41,0x83,0xe0,0x03,0x44,0x88,0x00,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x02,0x41,0x83,0xe0,0x03,0x44,0x88,0x40,0x01,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x04,0x41,0x83,0xe0,0x03,0x44,0x88,0x40,0x02,0xc1,0xe9,0x06,0x83,0xe1,0x03,0x88,0x48,0x03,0xc1,0xfa,0x08,0x0f,0xb6,0xd2,0x48,0x83,0xc0,0x04,0x8b,0xca,0x83,0xe1,0x03,0x88,0x08,0x8b,0xca,0xc1,0xe9,0x02,0x83,0xe1,0x03,0x88,0x48,0x01,0x8b,0xca,0xc1,0xe9,0x04,0x83,0xe1,0x03,0x88,0x48,0x02,0xc1,0xea,0x06,0x83,0xe2,0x03,0x88,0x50,0x03,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000eh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0011h and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0015h mov [rax],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 00}
0018h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001bh shr r8d,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 02}
001fh and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0023h mov [rax+1],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 40 01}
0027h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
002ah shr r8d,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 04}
002eh and r8d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 03}
0032h mov [rax+2],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 40 02}
0036h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
0039h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
003ch mov [rax+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 03}
003fh sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0042h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0045h add rax,4                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 04}
0049h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
004bh and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
004eh mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
0050h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0052h shr ecx,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 02}
0055h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0058h mov [rax+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 01}
005bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
005dh shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
0060h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0063h mov [rax+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 02}
0066h shr edx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 06}
0069h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
006ch mov [rax+3],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 03}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part6x3(uint src, ref byte dst), hex://bitcore/bits?part6x3#part6x3_(32u,8u~ref)
; part6x3_(32u,8u~ref)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x83,0xe0,0x07,0x88,0x02,0xc1,0xe9,0x03,0x83,0xe1,0x07,0x88,0x4a,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch shr ecx,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 03}
000fh and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0012h mov [rdx+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part6x3(uint src, Span<byte> dst), hex://bitcore/bits?part6x3#part6x3_(32u,span8u)
; part6x3_(32u,span8u)[25] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x8b,0xd1,0x83,0xe2,0x07,0x88,0x10,0xc1,0xe9,0x03,0x83,0xe1,0x07,0x88,0x48,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
000dh mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
000fh shr ecx,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 03}
0012h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0015h mov [rax+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 01}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part9x3(uint src, ref byte dst), hex://bitcore/bits?part9x3#part9x3_(32u,8u~ref)
; part9x3_(32u,8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x83,0xe0,0x07,0x88,0x02,0x8b,0xc1,0xc1,0xe8,0x03,0x83,0xe0,0x07,0x88,0x42,0x01,0xc1,0xe9,0x06,0x83,0xe1,0x07,0x88,0x4a,0x02,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0011h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
0014h mov [rdx+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 01}
0017h shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
001ah and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
001dh mov [rdx+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 02}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part9x3(uint src, Span<byte> dst), hex://bitcore/bits?part9x3#part9x3_(32u,span8u)
; part9x3_(32u,span8u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x8b,0xd1,0x83,0xe2,0x07,0x88,0x10,0x8b,0xd1,0xc1,0xea,0x03,0x83,0xe2,0x07,0x88,0x50,0x01,0xc1,0xe9,0x06,0x83,0xe1,0x07,0x88,0x48,0x02,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
000dh mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
000fh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0011h shr edx,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 03}
0014h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0017h mov [rax+1],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 01}
001ah shr ecx,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 06}
001dh and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0020h mov [rax+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 02}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part12x3(uint src, ref byte dst), hex://bitcore/bits?part12x3#part12x3_(32u,8u~ref)
; part12x3_(32u,8u~ref)[44] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x83,0xe0,0x07,0x88,0x02,0x8b,0xc1,0xc1,0xe8,0x03,0x83,0xe0,0x07,0x88,0x42,0x01,0x8b,0xc1,0xc1,0xe8,0x06,0x83,0xe0,0x07,0x88,0x42,0x02,0xc1,0xe9,0x09,0x83,0xe1,0x07,0x88,0x4a,0x03,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0011h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
0014h mov [rdx+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 01}
0017h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0019h shr eax,6                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 06}
001ch and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
001fh mov [rdx+2],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 02}
0022h shr ecx,9                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 09}
0025h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0028h mov [rdx+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 03}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part15x3(ushort src, in NatSpan<N5,byte> dst), hex://bitcore/bits?part15x3#part15x3_(16u,nspan5x8u~in)
; part15x3_(16u,nspan5x8u~in)[51] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x0f,0xb7,0xc9,0x41,0xb8,0x07,0x07,0x07,0x07,0xc4,0x42,0x73,0xf5,0xc0,0x44,0x89,0x00,0x48,0x8b,0x02,0x48,0x83,0xc0,0x04,0xc1,0xf9,0x0c,0x0f,0xb6,0xd1,0xb9,0x07,0x00,0x00,0x00,0xc4,0xe2,0x6b,0xf5,0xd1,0x88,0x10,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
000bh mov r8d,7070707h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 07 07 07 07}
0011h pdep r8d,ecx,r8d                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 42 73 f5 c0}
0016h mov [rax],r8d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 00}
0019h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ch add rax,4                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 04}
0020h sar ecx,0ch                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 0c}
0023h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0026h mov ecx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 07 00 00 00}
002bh pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0030h mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part24x3(uint src, in NatSpan<N8,byte> dst), hex://bitcore/bits?part24x3#part24x3_(32u,nspan8x8u~in)
; part24x3_(32u,nspan8x8u~in)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x8b,0xd1,0x48,0xb9,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0xc4,0xe2,0xeb,0xf5,0xd1,0x48,0x89,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah mov rcx,707070707070707h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 07 07 07 07 07 07 07 07}
0014h pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
0019h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part27x3(uint src, in NatSpan<N9,byte> dst), hex://bitcore/bits?part27x3#part27x3_(32u,nspan9x8u~in)
; part27x3_(32u,nspan9x8u~in)[53] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x44,0x8b,0xc1,0x49,0xb9,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0xc4,0x42,0xbb,0xf5,0xc1,0x4c,0x89,0x00,0x48,0x8b,0x02,0x48,0x83,0xc0,0x08,0xc1,0xe9,0x18,0x8b,0xd1,0xc4,0xc2,0xeb,0xf5,0xd1,0x0f,0xb6,0xd2,0x66,0x89,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
000bh mov r9,707070707070707h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 07 07 07 07 07 07 07 07}
0015h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
001ah mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
001dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0020h add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
0024h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
0027h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0029h pdep rdx,rdx,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d1}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h mov [rax],dx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 10}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part30x3(uint src, in NatSpan<N10,byte> dst), hex://bitcore/bits?part30x3#part30x3_(32u,nspan10x8u~in)
; part30x3_(32u,nspan10x8u~in)[50] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x44,0x8b,0xc1,0x49,0xb9,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0xc4,0x42,0xbb,0xf5,0xc1,0x4c,0x89,0x00,0x48,0x8b,0x02,0x48,0x83,0xc0,0x08,0xc1,0xe9,0x18,0x8b,0xd1,0xc4,0xc2,0xeb,0xf5,0xd1,0x66,0x89,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
000bh mov r9,707070707070707h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 07 07 07 07 07 07 07 07}
0015h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
001ah mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
001dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0020h add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
0024h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
0027h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0029h pdep rdx,rdx,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d1}
002eh mov [rax],dx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 10}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part63x3(ulong src, in NatSpan<N21,byte> dst), hex://bitcore/bits?part63x3#part63x3_(64u,nspan21x8u~in)
; part63x3_(64u,nspan21x8u~in)[91] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x48,0x23,0xc1,0x48,0x8b,0x0a,0x49,0xb8,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0xc4,0x42,0xfb,0xf5,0xc0,0x4c,0x89,0x01,0x48,0x8b,0x0a,0x48,0x83,0xc1,0x08,0x4c,0x8b,0xc0,0x49,0xc1,0xe8,0x18,0x49,0xb9,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0xc4,0x42,0xbb,0xf5,0xc1,0x4c,0x89,0x01,0x48,0x8b,0x12,0x48,0x83,0xc2,0x10,0x48,0xc1,0xe8,0x30,0xc4,0xc2,0xfb,0xf5,0xc1,0x48,0x89,0x02,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
000fh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0012h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
0015h mov r8,707070707070707h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 07 07 07 07 07 07 07 07}
001fh pdep r8,rax,r8                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 fb f5 c0}
0024h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0027h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
002ah add rcx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 08}
002eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0031h shr r8,18h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 18}
0035h mov r9,707070707070707h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 07 07 07 07 07 07 07 07}
003fh pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
0044h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0047h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
004ah add rdx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 10}
004eh shr rax,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 30}
0052h pdep rax,rax,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c1}
0057h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part4x2(uint src, ref byte dst), hex://bitcore/bits?part4x2#part4x2_(32u,8u~ref)
; part4x2_(32u,8u~ref)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x83,0xe0,0x0f,0x88,0x02,0xc1,0xe9,0x04,0x83,0xe1,0x0f,0x88,0x4a,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
000fh and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0012h mov [rdx+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part4x2(uint src, NatSpan<N2,byte> dst), hex://bitcore/bits?part4x2#part4x2_(32u,nspan2x8u)
; part4x2_(32u,nspan2x8u)[25] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x8b,0xd1,0x83,0xe2,0x0f,0x88,0x10,0xc1,0xe9,0x04,0x83,0xe1,0x0f,0x88,0x48,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
000dh mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
000fh shr ecx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 04}
0012h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0015h mov [rax+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 01}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part4x3(uint src, ref byte dst), hex://bitcore/bits?part4x3#part4x3_(32u,8u~ref)
; part4x3_(32u,8u~ref)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x83,0xe0,0x0f,0x88,0x02,0x8b,0xc1,0xc1,0xe8,0x04,0x83,0xe0,0x0f,0x88,0x42,0x01,0xc1,0xe9,0x08,0x83,0xe1,0x0f,0x88,0x4a,0x02,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh shr eax,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 04}
0011h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0014h mov [rdx+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 42 01}
0017h shr ecx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 08}
001ah and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
001dh mov [rdx+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 02}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part4x3(uint src, NatSpan<N3,byte> dst), hex://bitcore/bits?part4x3#part4x3_(32u,nspan3x8u)
; part4x3_(32u,nspan3x8u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x8b,0xd1,0x83,0xe2,0x0f,0x88,0x10,0x8b,0xd1,0xc1,0xea,0x04,0x83,0xe2,0x0f,0x88,0x50,0x01,0xc1,0xe9,0x08,0x83,0xe1,0x0f,0x88,0x48,0x02,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
000dh mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
000fh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0011h shr edx,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 04}
0014h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0017h mov [rax+1],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 01}
001ah shr ecx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 08}
001dh and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0020h mov [rax+2],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 48 02}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part4x4(ushort src, NatSpan<N4,byte> dst), hex://bitcore/bits?part4x4#part4x4_(16u,nspan4x8u)
; part4x4_(16u,nspan4x8u)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x0f,0xb7,0xd1,0xb9,0x0f,0x0f,0x0f,0x0f,0xc4,0xe2,0x6b,0xf5,0xd1,0x89,0x10,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh mov ecx,0f0f0f0fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0f 0f 0f 0f}
0010h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0015h mov [rax],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 10}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part8x4(uint src, NatSpan<N8,byte> dst), hex://bitcore/bits?part8x4#part8x4_(32u,nspan8x8u)
; part8x4_(32u,nspan8x8u)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x8b,0xd1,0x48,0xb9,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0xc4,0xe2,0xeb,0xf5,0xd1,0x48,0x89,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah mov rcx,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 0f 0f 0f 0f 0f 0f 0f 0f}
0014h pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
0019h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void Part4x5(uint src, NatSpan<N4,byte> dst), hex://bitcore/bits?Part4x5#Part4x5_(32u,nspan4x8u)
; Part4x5_(32u,nspan4x8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0xba,0x1f,0x1f,0x1f,0x1f,0xc4,0xe2,0x73,0xf5,0xd2,0x89,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,1f1f1f1fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 1f 1f 1f 1f}
000dh pdep edx,ecx,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 73 f5 d2}
0012h mov [rax],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 10}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part2x8(ushort src, NatSpan<N2,byte> dst), hex://bitcore/bits?part2x8#part2x8_(16u,nspan2x8u)
; part2x8_(16u,nspan2x8u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x66,0x89,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov [rax],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 08}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part4x8(uint src, NatSpan<N4,byte> dst), hex://bitcore/bits?part4x8#part4x8_(32u,nspan4x8u)
; part4x8_(32u,nspan4x8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x89,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov [rax],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 08}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part8x8(ulong src, NatSpan<N8,byte> dst), hex://bitcore/bits?part8x8#part8x8_(64u,nspan8x8u)
; part8x8_(64u,nspan8x8u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x48,0x89,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part32x16(uint src, NatSpan<N2,ushort> dst), hex://bitcore/bits?part32x16#part32x16_(32u,nspan2x16u)
; part32x16_(32u,nspan2x16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x89,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov [rax],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 08}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part64x16(ulong src, NatSpan<N4,ushort> dst), hex://bitcore/bits?part64x16#part64x16_(64u,nspan4x16u)
; part64x16_(64u,nspan4x16u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x48,0x89,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void part64x32(ulong src, NatSpan<N2,uint> dst), hex://bitcore/bits?part64x32#part64x32_(64u,nspan2x32u)
; part64x32_(64u,nspan2x32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x48,0x89,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(sbyte src), hex://bitcore/bits?pop#pop_(8i)
; pop_(8i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xf3,0x0f,0xb8,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(byte src), hex://bitcore/bits?pop#pop_(8u)
; pop_(8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf3,0x0f,0xb8,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(short src), hex://bitcore/bits?pop#pop_(16i)
; pop_(16i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xf3,0x0f,0xb8,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ushort src), hex://bitcore/bits?pop#pop_(16u)
; pop_(16u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf3,0x0f,0xb8,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(int src), hex://bitcore/bits?pop#pop_(32i)
; pop_(32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x0f,0xb8,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt eax,ecx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(uint src), hex://bitcore/bits?pop#pop_(32u)
; pop_(32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x0f,0xb8,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt eax,ecx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(long src), hex://bitcore/bits?pop#pop_(64i)
; pop_(64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x48,0x0f,0xb8,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong src), hex://bitcore/bits?pop#pop_(64u)
; pop_(64u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x48,0x0f,0xb8,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong x0, ulong x1), hex://bitcore/bits?pop#pop_(64u,64u)
; pop_(64u,64u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x48,0x0f,0xb8,0xc1,0xf3,0x48,0x0f,0xb8,0xd2,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
0011h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong x, ulong y, ulong z), hex://bitcore/bits?pop#pop_(64u,64u,64u)
; pop_(64u,64u,64u)[187] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x33,0xc2,0x4c,0x8b,0xc8,0x4d,0x23,0xc8,0x48,0x23,0xd1,0x49,0x0b,0xd1,0x49,0x33,0xc0,0x48,0x8b,0xca,0x48,0xd1,0xe9,0x49,0xb8,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x49,0x23,0xc8,0x48,0x2b,0xd1,0x48,0x8b,0xc8,0x48,0xd1,0xe9,0x49,0x23,0xc8,0x48,0x2b,0xc1,0x48,0xb9,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x48,0x23,0xca,0x48,0xc1,0xea,0x02,0x49,0xb8,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x49,0x23,0xd0,0x48,0x03,0xd1,0x4c,0x23,0xc0,0x48,0xc1,0xe8,0x02,0x48,0xb9,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x48,0x23,0xc1,0x49,0x03,0xc0,0x48,0x8b,0xca,0x48,0xc1,0xe9,0x04,0x48,0x03,0xca,0x48,0xba,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x48,0x23,0xd1,0x48,0x8b,0xc8,0x48,0xc1,0xe9,0x04,0x48,0x03,0xc8,0x48,0xb8,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x48,0x23,0xc1,0x48,0x03,0xd2,0x48,0x03,0xd0,0x48,0xb8,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x48,0x0f,0xaf,0xc2,0x48,0xc1,0xe8,0x38,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
000bh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
000eh and r9,r8                               ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 c8}
0011h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0014h or rdx,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d1}
0017h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
001ah mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
001dh shr rcx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e9}
0020h mov r8,5555555555555555h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 55 55 55 55 55 55 55 55}
002ah and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
002dh sub rdx,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b d1}
0030h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0033h shr rcx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e9}
0036h and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
0039h sub rax,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c1}
003ch mov rcx,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 33 33 33 33 33 33 33 33}
0046h and rcx,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 ca}
0049h shr rdx,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 02}
004dh mov r8,3333333333333333h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 33 33 33 33 33 33 33 33}
0057h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
005ah add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
005dh and r8,rax                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c0}
0060h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0064h mov rcx,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 33 33 33 33 33 33 33 33}
006eh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0071h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0074h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0077h shr rcx,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 04}
007bh add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
007eh mov rdx,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 0f 0f 0f 0f 0f 0f 0f 0f}
0088h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
008bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008eh shr rcx,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 04}
0092h add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
0095h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
009fh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
00a2h add rdx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d2}
00a5h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
00a8h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
00b2h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
00b6h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong x0, ulong x1, ulong x2, ulong x3), hex://bitcore/bits?pop#pop_(64u,64u,64u,64u)
; pop_(64u,64u,64u,64u)[38] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x48,0x0f,0xb8,0xc1,0xf3,0x48,0x0f,0xb8,0xd2,0x03,0xc2,0x33,0xd2,0xf3,0x49,0x0f,0xb8,0xd0,0x03,0xc2,0x33,0xd2,0xf3,0x49,0x0f,0xb8,0xd1,0x03,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
0011h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0013h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0015h popcnt rdx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d0}
001ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
001ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
001eh popcnt rdx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d1}
0023h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5, ulong x6, ulong x7), hex://bitcore/bits?pop#pop_(64u,64u,64u,64u,64u,64u,64u,64u)
; pop_(64u,64u,64u,64u,64u,64u,64u,64u)[82] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xf3,0x48,0x0f,0xb8,0xc1,0xf3,0x48,0x0f,0xb8,0xd2,0x03,0xc2,0x33,0xd2,0xf3,0x49,0x0f,0xb8,0xd0,0x03,0xc2,0x33,0xd2,0xf3,0x49,0x0f,0xb8,0xd1,0x03,0xc2,0x33,0xd2,0xf3,0x48,0x0f,0xb8,0x54,0x24,0x28,0x03,0xc2,0x33,0xd2,0xf3,0x48,0x0f,0xb8,0x54,0x24,0x30,0x03,0xc2,0x33,0xd2,0xf3,0x48,0x0f,0xb8,0x54,0x24,0x38,0x03,0xc2,0x33,0xd2,0xf3,0x48,0x0f,0xb8,0x54,0x24,0x40,0x03,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
0011h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0013h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0015h popcnt rdx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d0}
001ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
001ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
001eh popcnt rdx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d1}
0023h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0025h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0027h popcnt rdx,[rsp+28h]                    ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[7]{f3 48 0f b8 54 24 28}
002eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0030h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0032h popcnt rdx,[rsp+30h]                    ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[7]{f3 48 0f b8 54 24 30}
0039h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
003bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
003dh popcnt rdx,[rsp+38h]                    ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[7]{f3 48 0f b8 54 24 38}
0044h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0046h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0048h popcnt rdx,[rsp+40h]                    ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[7]{f3 48 0f b8 54 24 40}
004fh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5), hex://bitcore/bits?pop#pop_(64u,64u,64u,64u,64u,64u)
; pop_(64u,64u,64u,64u,64u,64u)[385] = {0x56,0x0f,0x1f,0x40,0x00,0x48,0x8b,0x44,0x24,0x30,0x4c,0x8b,0x54,0x24,0x38,0x4c,0x8b,0xd9,0x4c,0x33,0xda,0x49,0x8b,0xf3,0x49,0x23,0xf0,0x48,0x23,0xd1,0x48,0x0b,0xd6,0x4d,0x33,0xc3,0x48,0x8b,0xca,0x48,0xd1,0xe9,0x49,0xbb,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x49,0x23,0xcb,0x48,0x2b,0xd1,0x49,0x8b,0xc8,0x48,0xd1,0xe9,0x49,0x23,0xcb,0x4c,0x2b,0xc1,0x48,0xb9,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x48,0x23,0xca,0x48,0xc1,0xea,0x02,0x49,0xbb,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x49,0x23,0xd3,0x48,0x03,0xd1,0x4d,0x23,0xd8,0x49,0xc1,0xe8,0x02,0x48,0xb9,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x4c,0x23,0xc1,0x4d,0x03,0xc3,0x48,0x8b,0xca,0x48,0xc1,0xe9,0x04,0x48,0x03,0xca,0x48,0xba,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x48,0x23,0xd1,0x49,0x8b,0xc8,0x48,0xc1,0xe9,0x04,0x49,0x03,0xc8,0x49,0xb8,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x4c,0x23,0xc1,0x48,0x03,0xd2,0x49,0x03,0xd0,0x49,0xb8,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x4c,0x0f,0xaf,0xc2,0x49,0xc1,0xe8,0x38,0x41,0x8b,0xd0,0x49,0x8b,0xc9,0x48,0x33,0xc8,0x4c,0x8b,0xc1,0x4d,0x23,0xc2,0x49,0x23,0xc1,0x49,0x0b,0xc0,0x49,0x33,0xca,0x4c,0x8b,0xc0,0x49,0xd1,0xe8,0x49,0xb9,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x4d,0x23,0xc1,0x49,0x2b,0xc0,0x4c,0x8b,0xc1,0x49,0xd1,0xe8,0x4d,0x23,0xc1,0x49,0x2b,0xc8,0x49,0xb8,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x4c,0x23,0xc0,0x48,0xc1,0xe8,0x02,0x49,0xb9,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x49,0x23,0xc1,0x49,0x03,0xc0,0x4c,0x23,0xc9,0x48,0xc1,0xe9,0x02,0x49,0xb8,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x33,0x49,0x23,0xc8,0x49,0x03,0xc9,0x4c,0x8b,0xc0,0x49,0xc1,0xe8,0x04,0x4c,0x03,0xc0,0x48,0xb8,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x49,0x23,0xc0,0x4c,0x8b,0xc1,0x49,0xc1,0xe8,0x04,0x4c,0x03,0xc1,0x48,0xb9,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x49,0x23,0xc8,0x48,0x03,0xc0,0x48,0x03,0xc1,0x48,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x48,0x0f,0xaf,0xc8,0x48,0xc1,0xe9,0x38,0x8d,0x04,0x0a,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 30}
000ah mov r10,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 54 24 38}
000fh mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
0012h xor r11,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4c 33 da}
0015h mov rsi,r11                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f3}
0018h and rsi,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 f0}
001bh and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
001eh or rdx,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d6}
0021h xor r8,r11                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4d 33 c3}
0024h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0027h shr rcx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e9}
002ah mov r11,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 55 55 55 55 55 55 55 55}
0034h and rcx,r11                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 cb}
0037h sub rdx,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b d1}
003ah mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
003dh shr rcx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e9}
0040h and rcx,r11                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 cb}
0043h sub r8,rcx                              ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{4c 2b c1}
0046h mov rcx,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 33 33 33 33 33 33 33 33}
0050h and rcx,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 ca}
0053h shr rdx,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 02}
0057h mov r11,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 33 33 33 33 33 33 33 33}
0061h and rdx,r11                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d3}
0064h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0067h and r11,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 d8}
006ah shr r8,2                                ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 02}
006eh mov rcx,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 33 33 33 33 33 33 33 33}
0078h and r8,rcx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c1}
007bh add r8,r11                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c3}
007eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0081h shr rcx,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 04}
0085h add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
0088h mov rdx,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 0f 0f 0f 0f 0f 0f 0f 0f}
0092h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0095h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
0098h shr rcx,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 04}
009ch add rcx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c8}
009fh mov r8,0f0f0f0f0f0f0f0fh                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 0f 0f 0f 0f 0f 0f 0f 0f}
00a9h and r8,rcx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c1}
00ach add rdx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d2}
00afh add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
00b2h mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
00bch imul r8,rdx                             ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4c 0f af c2}
00c0h shr r8,38h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 38}
00c4h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00c7h mov rcx,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c9}
00cah xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
00cdh mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
00d0h and r8,r10                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 c2}
00d3h and rax,r9                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c1}
00d6h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
00d9h xor rcx,r10                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 ca}
00dch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00dfh shr r8,1                                ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{49 d1 e8}
00e2h mov r9,5555555555555555h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 55 55 55 55 55 55 55 55}
00ech and r8,r9                               ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 c1}
00efh sub rax,r8                              ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{49 2b c0}
00f2h mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
00f5h shr r8,1                                ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{49 d1 e8}
00f8h and r8,r9                               ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 c1}
00fbh sub rcx,r8                              ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{49 2b c8}
00feh mov r8,3333333333333333h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 33 33 33 33 33 33 33 33}
0108h and r8,rax                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c0}
010bh shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
010fh mov r9,3333333333333333h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 33 33 33 33 33 33 33 33}
0119h and rax,r9                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c1}
011ch add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
011fh and r9,rcx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c9}
0122h shr rcx,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 02}
0126h mov r8,3333333333333333h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 33 33 33 33 33 33 33 33}
0130h and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
0133h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0136h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0139h shr r8,4                                ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 04}
013dh add r8,rax                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c0}
0140h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
014ah and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
014dh mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
0150h shr r8,4                                ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 04}
0154h add r8,rcx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c1}
0157h mov rcx,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 0f 0f 0f 0f 0f 0f 0f 0f}
0161h and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
0164h add rax,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c0}
0167h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
016ah mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0174h imul rcx,rax                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c8}
0178h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
017ch lea eax,[rdx+rcx]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 04 0a}
017fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte project(byte src, byte spec), hex://bitcore/bits?project#project_(8u,8u)
; project_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc4,0xe2,0x7b,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte select(byte src, byte spec), hex://bitcore/bits?select#select_(8u,8u)
; select_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort project(ushort src, ushort spec), hex://bitcore/bits?project#project_(16u,16u)
; project_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0xc4,0xe2,0x7b,0xf5,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort select(ushort src, ushort spec), hex://bitcore/bits?select#select_(16u,16u)
; select_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rank(byte src, int pos), hex://bitcore/bits?rank#rank_(8u,32i)
; rank_(8u,32i)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0x0f,0xb6,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb6,0xc0,0xf3,0x0f,0xb8,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0016h bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rank(ushort src, int pos), hex://bitcore/bits?rank#rank_(16u,32i)
; rank_(16u,32i)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0x0f,0xb7,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb7,0xc0,0xf3,0x0f,0xb8,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0016h bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rank(uint src, int pos), hex://bitcore/bits?rank#rank_(32u,32i)
; rank_(32u,32i)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0xf3,0x0f,0xb8,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0018h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rank(ulong src, int pos), hex://bitcore/bits?rank#rank_(64u,32i)
; rank_(64u,32i)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0xc4,0xe2,0xf8,0xf7,0xc1,0xf3,0x48,0x0f,0xb8,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0018h popcnt rax,rax                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte replicate(byte src, byte from, byte to, int reps), hex://bitcore/bits?replicate#replicate_(8u,8u,8u,32i)
; replicate_(8u,8u,8u,32i)[80] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x44,0x8b,0xc0,0x44,0x2b,0xc2,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb6,0xc9,0xc4,0xe2,0x78,0xf7,0xc9,0x0f,0xb6,0xc1,0x33,0xd2,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x1e,0x41,0x8b,0xca,0x41,0x0f,0xaf,0xc8,0x44,0x8b,0xd8,0x41,0xd3,0xe3,0x41,0x0f,0xb6,0xcb,0x0b,0xd1,0x0f,0xb6,0xd2,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe2,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000fh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ah movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
001dh bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0022h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0025h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0027h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
002ah test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
002dh jle short 004dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
002fh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0032h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0036h mov r11d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d8}
0039h shl r11d,cl                             ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e3}
003ch movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0040h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0042h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0045h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0048h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004bh jl short 002fh                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
004dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort replicate(ushort src, byte from, byte to, int reps), hex://bitcore/bits?replicate#replicate_(16u,8u,8u,32i)
; replicate_(16u,8u,8u,32i)[80] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x44,0x8b,0xc0,0x44,0x2b,0xc2,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xc9,0xc4,0xe2,0x78,0xf7,0xc9,0x0f,0xb7,0xc1,0x33,0xd2,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x1e,0x41,0x8b,0xca,0x41,0x0f,0xaf,0xc8,0x44,0x8b,0xd8,0x41,0xd3,0xe3,0x41,0x0f,0xb7,0xcb,0x0b,0xd1,0x0f,0xb7,0xd2,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe2,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000fh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
001dh bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0022h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0025h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0027h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
002ah test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
002dh jle short 004dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
002fh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0032h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0036h mov r11d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d8}
0039h shl r11d,cl                             ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e3}
003ch movzx ecx,r11w                          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 cb}
0040h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0042h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0045h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0048h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004bh jl short 002fh                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
004dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint replicate(uint src, byte from, byte to, int reps), hex://bitcore/bits?replicate#replicate_(32u,8u,8u,32i)
; replicate_(32u,8u,8u,32i)[68] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x44,0x8b,0xc0,0x44,0x2b,0xc2,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0x33,0xd2,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x18,0x41,0x8b,0xca,0x41,0x0f,0xaf,0xc8,0x44,0x8b,0xd8,0x41,0xd3,0xe3,0x41,0x0b,0xd3,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe8,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000fh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ah bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
001fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0021h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0024h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0027h jle short 0041h                         ; JLE rel8 || 7E cb || encoded[2]{7e 18}
0029h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
002ch imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0030h mov r11d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d8}
0033h shl r11d,cl                             ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e3}
0036h or edx,r11d                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d3}
0039h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ch cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003fh jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
0041h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong replicate(ulong src, byte from, byte to, int reps), hex://bitcore/bits?replicate#replicate_(64u,8u,8u,32i)
; replicate_(64u,8u,8u,32i)[79] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x2b,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0x44,0x8b,0xc0,0x41,0xc1,0xe0,0x08,0x41,0x0b,0xd0,0x0f,0xb7,0xd2,0xc4,0xe2,0xe8,0xf7,0xd1,0x4c,0x8b,0xc2,0x41,0xba,0x01,0x00,0x00,0x00,0x41,0x83,0xf9,0x01,0x7e,0x17,0x41,0x8b,0xca,0x0f,0xaf,0xc8,0x4c,0x8b,0xda,0x49,0xd3,0xe3,0x4d,0x0b,0xc3,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe9,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0016h shl r8d,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 08}
001ah or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
001dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0020h bextr rdx,rcx,rdx                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 e8 f7 d1}
0025h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0028h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
002eh cmp r9d,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 01}
0032h jle short 004bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0034h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0037h imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
003ah mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
003dh shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
0040h or r8,r11                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4d 0b c3}
0043h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0046h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0049h jl short 0034h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
004bh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte rev(byte src), hex://bitcore/bits?rev#rev_(8u)
; rev_(8u)[52] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xba,0x02,0x08,0x20,0x80,0x48,0x0f,0xaf,0xc2,0x48,0xba,0x10,0x21,0x42,0x84,0x08,0x00,0x00,0x00,0x48,0x23,0xc2,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x00,0x00,0x00,0x48,0x0f,0xaf,0xc2,0x48,0xc1,0xe8,0x20,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov edx,80200802h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 08 20 80}
000dh imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
0011h mov rdx,884422110h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 10 21 42 84 08 00 00 00}
001bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
001eh mov rdx,101010101h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 00 00 00}
0028h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
002ch shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0030h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort rev(ushort src), hex://bitcore/bits?rev#rev_(16u)
; rev_(16u)[114] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xd0,0xc1,0xfa,0x08,0x0f,0xb6,0xd2,0xb9,0x02,0x08,0x20,0x80,0x48,0x0f,0xaf,0xd1,0x48,0xb9,0x10,0x21,0x42,0x84,0x08,0x00,0x00,0x00,0x48,0x23,0xd1,0x48,0xb9,0x01,0x01,0x01,0x01,0x01,0x00,0x00,0x00,0x48,0x0f,0xaf,0xd1,0x48,0xc1,0xea,0x20,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0xb9,0x02,0x08,0x20,0x80,0x48,0x0f,0xaf,0xc1,0x48,0xb9,0x10,0x21,0x42,0x84,0x08,0x00,0x00,0x00,0x48,0x23,0xc1,0x48,0xb9,0x01,0x01,0x01,0x01,0x01,0x00,0x00,0x00,0x48,0x0f,0xaf,0xc1,0x48,0xc1,0xe8,0x20,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
000dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0010h mov ecx,80200802h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 02 08 20 80}
0015h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0019h mov rcx,884422110h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 21 42 84 08 00 00 00}
0023h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0026h mov rcx,101010101h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 00 00 00}
0030h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0034h shr rdx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 20}
0038h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003eh mov ecx,80200802h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 02 08 20 80}
0043h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
0047h mov rcx,884422110h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 21 42 84 08 00 00 00}
0051h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0054h mov rcx,101010101h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 00 00 00}
005eh imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
0062h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0066h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0069h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
006ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
006eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rev(uint x), hex://bitcore/bits?rev#rev_(32u)
; rev_(32u)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x25,0xaa,0xaa,0xaa,0xaa,0xd1,0xe8,0x81,0xe1,0x55,0x55,0x55,0x55,0xd1,0xe1,0x0b,0xc8,0x8b,0xc1,0x25}
; TermCode = CTC_INTRx2
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,0aaaaaaaah                      ; AND EAX, imm32 || o32 25 id || encoded[5]{25 aa aa aa aa}
000ch shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
000eh and ecx,55555555h                       ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 e1 55 55 55 55}
0014h shl ecx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e1}
0016h or ecx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c8}
0018h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
001ah (bad)                                   ; <invalid> || <invalid> || encoded[1]{25}
------------------------------------------------------------------------------------------------------------------------
; ulong rev(ulong src), hex://bitcore/bits?rev#rev_(64u)
; rev_(64u)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xc1,0xe8,0x20,0x8b,0xd0,0x81,0xe2,0xaa,0xaa,0xaa,0xaa,0xd1,0xea,0x25,0x55,0x55,0x55,0x55,0xd1,0xe0,0x0b,0xc2,0x8b,0xd0,0x81,0xe2}
; TermCode = CTC_INTRx2
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
000ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000eh and edx,0aaaaaaaah                      ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 e2 aa aa aa aa}
0014h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0016h and eax,55555555h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 55 55 55 55}
001bh shl eax,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e0}
001dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001fh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0021h (bad)                                   ; <invalid> || <invalid> || encoded[2]{81 e2}
------------------------------------------------------------------------------------------------------------------------
; byte rotl(byte src, int shift), hex://bitcore/bits?rotl#rotl_(8u,32i)
; rotl_(8u,32i)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xca,0x44,0x8b,0xc0,0x41,0xd3,0xe0,0x8b,0xca,0xf7,0xd9,0x83,0xc1,0x08,0xd3,0xf8,0x41,0x0b,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000dh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0010h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0012h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0014h add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
0017h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0019h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort rotl(ushort src, int shift), hex://bitcore/bits?rotl#rotl_(16u,32i)
; rotl_(16u,32i)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xca,0x44,0x8b,0xc0,0x41,0xd3,0xe0,0x8b,0xca,0xf7,0xd9,0x83,0xc1,0x10,0xd3,0xf8,0x41,0x0b,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000dh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0010h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0012h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0014h add ecx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 10}
0017h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0019h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rotl(uint src, int shift), hex://bitcore/bits?rotl#rotl_(32u,32i)
; rotl_(32u,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x8b,0xca,0xd3,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h rol eax,cl                              ; ROL r/m32, CL || o32 D3 /0 || encoded[2]{d3 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong rotl(ulong src, int shift), hex://bitcore/bits?rotl#rotl_(64u,32i)
; rotl_(64u,32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x8b,0xca,0x48,0xd3,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah rol rax,cl                              ; ROL r/m64, CL || REX.W D3 /0 || encoded[3]{48 d3 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte rotl(byte src, int shift, int width), hex://bitcore/bits?rotl#rotl_(8u,32i,32i)
; rotl_(8u,32i,32i)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xe1,0x44,0x2b,0xc2,0x41,0x8b,0xc8,0xd3,0xf8,0x41,0x0b,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort rotl(ushort src, int shift, int width), hex://bitcore/bits?rotl#rotl_(16u,32i,32i)
; rotl_(16u,32i,32i)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xe1,0x44,0x2b,0xc2,0x41,0x8b,0xc8,0xd3,0xf8,0x41,0x0b,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rotl(uint src, int shift, int width), hex://bitcore/bits?rotl#rotl_(32u,32i,32i)
; rotl_(32u,32i,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xe1,0x44,0x2b,0xc2,0x41,0x8b,0xc8,0xd3,0xe8,0x41,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
000fh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0012h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0015h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
0017h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong rotl(ulong src, int shift, int width), hex://bitcore/bits?rotl#rotl_(64u,32i,32i)
; rotl_(64u,32i,32i)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x8b,0xca,0x4c,0x8b,0xc8,0x49,0xd3,0xe1,0x44,0x2b,0xc2,0x41,0x8b,0xc8,0x48,0xd3,0xe8,0x49,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
000dh shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
0019h or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte rotr(byte src, int shift), hex://bitcore/bits?rotr#rotr_(8u,32i)
; rotr_(8u,32i)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xca,0x44,0x8b,0xc0,0x41,0xd3,0xf8,0x8b,0xca,0xf7,0xd9,0x83,0xc1,0x08,0xd3,0xe0,0x41,0x0b,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000dh sar r8d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f8}
0010h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0012h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0014h add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
0017h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0019h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort rotr(ushort src, int shift), hex://bitcore/bits?rotr#rotr_(16u,32i)
; rotr_(16u,32i)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xca,0x44,0x8b,0xc0,0x41,0xd3,0xf8,0x8b,0xca,0xf7,0xd9,0x83,0xc1,0x10,0xd3,0xe0,0x41,0x0b,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000dh sar r8d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f8}
0010h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0012h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0014h add ecx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 10}
0017h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0019h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rotr(uint src, int shift), hex://bitcore/bits?rotr#rotr_(32u,32i)
; rotr_(32u,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x8b,0xca,0xd3,0xc8,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h ror eax,cl                              ; ROR r/m32, CL || o32 D3 /1 || encoded[2]{d3 c8}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong rotr(ulong src, int shift), hex://bitcore/bits?rotr#rotr_(64u,32i)
; rotr_(64u,32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x8b,0xca,0x48,0xd3,0xc8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah ror rax,cl                              ; ROR r/m64, CL || REX.W D3 /1 || encoded[3]{48 d3 c8}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte rotr(byte src, int shift, int width), hex://bitcore/bits?rotr#rotr_(8u,32i,32i)
; rotr_(8u,32i,32i)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xf9,0x44,0x2b,0xc2,0x41,0x8b,0xc8,0xd3,0xe0,0x41,0x0b,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort rotr(ushort src, int shift, int width), hex://bitcore/bits?rotr#rotr_(16u,32i,32i)
; rotr_(16u,32i,32i)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xf9,0x44,0x2b,0xc2,0x41,0x8b,0xc8,0xd3,0xe0,0x41,0x0b,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rotr(uint src, int shift, int width), hex://bitcore/bits?rotr#rotr_(32u,32i,32i)
; rotr_(32u,32i,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xe9,0x44,0x2b,0xc2,0x41,0x8b,0xc8,0xd3,0xe0,0x41,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch shr r9d,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 e9}
000fh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0012h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0015h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0017h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong rotr(ulong src, int shift, int width), hex://bitcore/bits?rotr#rotr_(64u,32i,32i)
; rotr_(64u,32i,32i)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x8b,0xca,0x4c,0x8b,0xc8,0x49,0xd3,0xe9,0x44,0x2b,0xc2,0x41,0x8b,0xc8,0x48,0xd3,0xe0,0x49,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
000dh shr r9,cl                               ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 e9}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
0019h or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte scatter(byte src, byte mask), hex://bitcore/bits?scatter#scatter_(8u,8u)
; scatter_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc4,0xe2,0x7b,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort scatter(ushort src, ushort mask), hex://bitcore/bits?scatter#scatter_(16u,16u)
; scatter_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0xc4,0xe2,0x7b,0xf5,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint scatter(uint src, uint mask), hex://bitcore/bits?scatter#scatter_(32u,32u)
; scatter_(32u,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x73,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pdep eax,ecx,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 73 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong scatter(ulong src, ulong mask), hex://bitcore/bits?scatter#scatter_(64u,64u)
; scatter_(64u,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf3,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pdep rax,rcx,rdx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 f3 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint project(uint src, uint spec), hex://bitcore/bits?project#project_(32u,32u)
; project_(32u,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x73,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pdep eax,ecx,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 73 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint select(uint src, uint spec), hex://bitcore/bits?select#select_(32u,32u)
; select_(32u,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x72,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext eax,ecx,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 72 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ConstPair<byte> split(ushort src, N2 n), hex://bitcore/bits?split#split_(16u,n2)
; split_(16u,n2)[49] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xd0,0xc1,0xf8,0x08,0x0f,0xb6,0xc0,0xc6,0x04,0x24,0x00,0xc6,0x44,0x24,0x01,0x00,0x0f,0xb6,0xd2,0x88,0x14,0x24,0x0f,0xb6,0xc0,0x88,0x44,0x24,0x01,0x48,0x0f,0xbf,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
000bh sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h mov byte ptr [rsp],0                    ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 04 24 00}
0015h mov byte ptr [rsp+1],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 01 00}
001ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001dh mov [rsp],dl                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 14 24}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h mov [rsp+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 01}
0027h movsx rax,word ptr [rsp]                ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 04 24}
002ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ConstPair<ushort> split(uint src, N2 n), hex://bitcore/bits?split#split_(32u,n2)
; split_(32u,n2)[50] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0xc1,0xe9,0x10,0x0f,0xb7,0xd1,0x66,0xc7,0x04,0x24,0x00,0x00,0x66,0xc7,0x44,0x24,0x02,0x00,0x00,0x0f,0xb7,0xc0,0x66,0x89,0x04,0x24,0x0f,0xb7,0xc2,0x66,0x89,0x44,0x24,0x02,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
000bh movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000eh mov word ptr [rsp],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 c7 04 24 00 00}
0014h mov word ptr [rsp+2],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 02 00 00}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0022h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0025h mov [rsp+2],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 02}
002ah mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
002dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ConstQuad<byte> split(uint src, N4 n), hex://bitcore/bits?split#split_(32u,n4)
; split_(32u,n4)[89] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb6,0xc1,0x8b,0xd1,0xc1,0xea,0x08,0x0f,0xb6,0xd2,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x10,0x45,0x0f,0xb6,0xc0,0xc1,0xe9,0x18,0x0f,0xb6,0xc9,0xc6,0x04,0x24,0x00,0xc6,0x44,0x24,0x01,0x00,0xc6,0x44,0x24,0x02,0x00,0xc6,0x44,0x24,0x03,0x00,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x45,0x0f,0xb6,0xc0,0x0f,0xb6,0xc9,0x88,0x04,0x24,0x88,0x54,0x24,0x01,0x44,0x88,0x44,0x24,0x02,0x88,0x4c,0x24,0x03,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah shr edx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 08}
000dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0010h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0013h shr r8d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 10}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
001eh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0021h mov byte ptr [rsp],0                    ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 04 24 00}
0025h mov byte ptr [rsp+1],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 01 00}
002ah mov byte ptr [rsp+2],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 02 00}
002fh mov byte ptr [rsp+3],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 03 00}
0034h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0037h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ah movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
003eh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0041h mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
0044h mov [rsp+1],dl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 54 24 01}
0048h mov [rsp+2],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 02}
004dh mov [rsp+3],cl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 03}
0051h mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
0054h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0058h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ConstPair<uint> split(ulong src, N2 n), hex://bitcore/bits?split#split_(64u,n2)
; split_(64u,n2)[38] = {0x50,0x0f,0x1f,0x40,0x00,0x8b,0xc1,0x48,0xc1,0xe9,0x20,0x8b,0xd1,0x33,0xc9,0x89,0x0c,0x24,0x89,0x4c,0x24,0x04,0x89,0x04,0x24,0x89,0x54,0x24,0x04,0x48,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000fh mov [rsp],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 0c 24}
0012h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
0016h mov [rsp],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 04 24}
0019h mov [rsp+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 04}
001dh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0021h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ConstQuad<ushort> split(ulong src, N4 n), hex://bitcore/bits?split#split_(64u,n4)
; split_(64u,n4)[105] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0x48,0x8b,0xd1,0x48,0xc1,0xea,0x10,0x0f,0xb7,0xd2,0x4c,0x8b,0xc1,0x49,0xc1,0xe8,0x20,0x45,0x0f,0xb7,0xc0,0x48,0xc1,0xe9,0x30,0x0f,0xb7,0xc9,0x66,0xc7,0x04,0x24,0x00,0x00,0x66,0xc7,0x44,0x24,0x02,0x00,0x00,0x66,0xc7,0x44,0x24,0x04,0x00,0x00,0x66,0xc7,0x44,0x24,0x06,0x00,0x00,0x0f,0xb7,0xc0,0x0f,0xb7,0xd2,0x45,0x0f,0xb7,0xc0,0x0f,0xb7,0xc9,0x66,0x89,0x04,0x24,0x66,0x89,0x54,0x24,0x02,0x66,0x44,0x89,0x44,0x24,0x04,0x66,0x89,0x4c,0x24,0x06,0x48,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000bh shr rdx,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 10}
000fh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0012h mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
0015h shr r8,20h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 20}
0019h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
001dh shr rcx,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 30}
0021h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0024h mov word ptr [rsp],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 c7 04 24 00 00}
002ah mov word ptr [rsp+2],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 02 00 00}
0031h mov word ptr [rsp+4],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 04 00 00}
0038h mov word ptr [rsp+6],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 06 00 00}
003fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0042h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0045h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0049h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
004ch mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0050h mov [rsp+2],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 54 24 02}
0055h mov [rsp+4],r8w                         ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 44 24 04}
005bh mov [rsp+6],cx                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 06}
0060h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0064h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0068h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(byte src, int index, out byte x0, out byte x1), hex://bitcore/bits?split#split_(8u,32i,8u~out,8u~out)
; split_(8u,32i,8u~out,8u~out)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xca,0x44,0x8b,0xd0,0x41,0xd3,0xfa,0x45,0x88,0x11,0x41,0xb9,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe1,0x41,0x0f,0xb6,0xd1,0xff,0xca,0x23,0xc2,0x41,0x88,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
000dh sar r10d,cl                             ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 fa}
0010h mov [r9],r10b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 11}
0013h mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0019h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001bh shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
001eh movzx edx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d1}
0022h dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
0024h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0026h mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ushort src, int index, out ushort x0, out ushort x1), hex://bitcore/bits?split#split_(16u,32i,16u~out,16u~out)
; split_(16u,32i,16u~out,16u~out)[44] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xca,0x44,0x8b,0xd0,0x41,0xd3,0xfa,0x66,0x45,0x89,0x11,0x41,0xb9,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe1,0x41,0x0f,0xb7,0xd1,0xff,0xca,0x23,0xc2,0x66,0x41,0x89,0x00,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
000dh sar r10d,cl                             ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 fa}
0010h mov [r9],r10w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 11}
0014h mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
001ah mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ch shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
001fh movzx edx,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d1}
0023h dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
0025h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0027h mov [r8],ax                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 00}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(uint src, int index, out uint x0, out uint x1), hex://bitcore/bits?split#split_(32u,32i,32u~out,32u~out)
; split_(32u,32i,32u~out,32u~out)[40] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x8b,0xca,0x44,0x8b,0xd0,0x41,0xd3,0xea,0x45,0x89,0x11,0x41,0xb9,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe1,0x41,0x8b,0xd1,0xff,0xca,0x23,0xc2,0x41,0x89,0x00,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
000ch shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
000fh mov [r9],r10d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 11}
0012h mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0018h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ah shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
001dh mov edx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d1}
0020h dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
0022h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0024h mov [r8],eax                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 00}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ulong src, int index, out ulong x0, out ulong x1), hex://bitcore/bits?split#split_(64u,32i,64u~out,64u~out)
; split_(64u,32i,64u~out,64u~out)[43] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x83,0xe2,0x3f,0x8b,0xca,0x4c,0x8b,0xd0,0x49,0xd3,0xea,0x4d,0x89,0x11,0x41,0xb9,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe1,0x49,0xff,0xc9,0x49,0x23,0xc1,0x49,0x89,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
000bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000dh mov r10,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d0}
0010h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0013h mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
0016h mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
001ch mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001eh shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0021h dec r9                                  ; DEC r/m64 || REX.W FF /1 || encoded[3]{49 ff c9}
0024h and rax,r9                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c1}
0027h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(byte src, out byte x0, out byte x1), hex://bitcore/bits?split#split_(8u,8u~out,8u~out)
; split_(8u,8u~out,8u~out)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xc8,0x83,0xe1,0x0f,0x88,0x0a,0xc1,0xf8,0x04,0x41,0x88,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000ah and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
000dh mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
000fh sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
0012h mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte split(byte src, out byte x0), hex://bitcore/bits?split#split_(8u,8u~out)
; split_(8u,8u~out)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xc8,0x83,0xe1,0x0f,0x88,0x0a,0xc1,0xf8,0x04,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000ah and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
000dh mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
000fh sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte between(sbyte src, byte k0, byte k1), hex://bitcore/bits?between#between_(8i,8u,8u)
; between_(8i,8u,8u)[41] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x2b,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x48,0x0f,0xbe,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
001fh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0024h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte between(byte src, byte k0, byte k1), hex://bitcore/bits?between#between_(8u,8u,8u)
; between_(8u,8u,8u)[39] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x2b,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb6,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
001eh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0023h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short between(short src, byte k0, byte k1), hex://bitcore/bits?between#between_(16i,8u,8u)
; between_(16i,8u,8u)[41] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x2b,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x48,0x0f,0xbf,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
001fh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0024h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort between(ushort src, byte k0, byte k1), hex://bitcore/bits?between#between_(16u,8u,8u)
; between_(16u,8u,8u)[39] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x2b,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
001eh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0023h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint between(uint src, byte k0, byte k1), hex://bitcore/bits?between#between_(32u,8u,8u)
; between_(32u,8u,8u)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x2b,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int between(int src, byte k0, byte k1), hex://bitcore/bits?between#between_(32i,8u,8u)
; between_(32i,8u,8u)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x2b,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong between(ulong src, byte k0, byte k1), hex://bitcore/bits?between#between_(64u,8u,8u)
; between_(64u,8u,8u)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x2b,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0xf8,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long between(long src, byte k0, byte k1), hex://bitcore/bits?between#between_(64i,8u,8u)
; between_(64i,8u,8u)[33] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x2b,0xc2,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0xf8,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float between(float src, byte k0, byte k1), hex://bitcore/bits?between#between_(32f,8u,8u)
; between_(32f,8u,8u)[55] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x41,0x0f,0xb6,0xc8,0x0f,0xb6,0xd2,0x2b,0xca,0xff,0xc1,0x0f,0xb6,0xc9,0xc1,0xe1,0x08,0x0b,0xd1,0x0f,0xb7,0xd2,0xc4,0xe2,0x68,0xf7,0xc0,0x89,0x04,0x24,0xc5,0xfa,0x10,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
000fh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0013h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0016h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0018h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
001ah movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
001dh shl ecx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 08}
0020h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0022h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0025h bextr eax,eax,edx                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 68 f7 c0}
002ah mov [rsp],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 04 24}
002dh vmovss xmm0,dword ptr [rsp]             ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 24}
0032h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double between(double src, byte k0, byte k1), hex://bitcore/bits?between#between_(64f,8u,8u)
; between_(64f,8u,8u)[61] = {0x48,0x83,0xec,0x18,0xc5,0xf8,0x77,0xc5,0xfb,0x11,0x44,0x24,0x10,0x48,0x8b,0x44,0x24,0x10,0x41,0x0f,0xb6,0xc8,0x0f,0xb6,0xd2,0x2b,0xca,0xff,0xc1,0x0f,0xb6,0xc9,0xc1,0xe1,0x08,0x0b,0xd1,0x0f,0xb7,0xd2,0xc4,0xe2,0xe8,0xf7,0xc0,0x48,0x89,0x44,0x24,0x08,0xc5,0xfb,0x10,0x44,0x24,0x08,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovsd qword ptr [rsp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 10}
000dh mov rax,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 10}
0012h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0016h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0019h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
001bh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
001dh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0020h shl ecx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 08}
0023h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0025h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0028h bextr rax,rax,rdx                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 e8 f7 c0}
002dh mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0032h vmovsd xmm0,qword ptr [rsp+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 08}
0038h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte bfly(N1 n, byte x), hex://bitcore/bits?bfly#bfly_(n1,8u)
; bfly_(n1,8u)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x83,0xe0,0x66,0x0f,0xb6,0xc0,0x8b,0xc8,0xd1,0xe1,0x33,0xc8,0xd1,0xe8,0x33,0xc1,0x0f,0xb6,0xc0,0x83,0xe0,0x66,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x33,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h and eax,66h                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 66}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0010h shl ecx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e1}
0012h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0014h shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0016h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh and eax,66h                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 66}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0024h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0026h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort bfly(N1 n, ushort x), hex://bitcore/bits?bfly#bfly_(n1,16u)
; bfly_(n1,16u)[46] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x25,0x66,0x66,0x00,0x00,0x0f,0xb7,0xc0,0x8b,0xc8,0xd1,0xe1,0x33,0xc8,0xd1,0xe8,0x33,0xc1,0x0f,0xb7,0xc0,0x25,0x66,0x66,0x00,0x00,0x0f,0xb7,0xc0,0x0f,0xb7,0xd2,0x33,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h and eax,6666h                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 66 66 00 00}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0012h shl ecx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e1}
0014h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0016h shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0018h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh and eax,6666h                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 66 66 00 00}
0022h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0025h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0028h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
002ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bfly(N1 n, uint x), hex://bitcore/bits?bfly#bfly_(n1,32u)
; bfly_(n1,32u)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0x25,0x66,0x66,0x66,0x66,0x8b,0xc8,0xd1,0xe1,0x33,0xc8,0xd1,0xe8,0x33,0xc1,0x25,0x66,0x66,0x66,0x66,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h and eax,66666666h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 66 66 66 66}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl ecx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e1}
0010h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0012h shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0014h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0016h and eax,66666666h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 66 66 66 66}
001bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bfly(N1 n, ulong x), hex://bitcore/bits?bfly#bfly_(n1,64u)
; bfly_(n1,64u)[50] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x66,0x66,0x66,0x66,0x66,0x66,0x66,0x66,0x48,0x23,0xc2,0x48,0x8b,0xc8,0x48,0xd1,0xe1,0x48,0x33,0xc8,0x48,0xd1,0xe8,0x48,0x33,0xc1,0x48,0xb9,0x66,0x66,0x66,0x66,0x66,0x66,0x66,0x66,0x48,0x23,0xc1,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,6666666666666666h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 66 66 66 66 66 66 66 66}
000fh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e1}
0018h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
001bh shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
001eh xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0021h mov rcx,6666666666666666h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 66 66 66 66 66 66 66 66}
002bh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
002eh xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte bfly(N2 n, byte x), hex://bitcore/bits?bfly#bfly_(n2,8u)
; bfly_(n2,8u)[44] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x83,0xe0,0x3c,0x0f,0xb6,0xc0,0x8b,0xc8,0xc1,0xe1,0x02,0x33,0xc8,0xc1,0xe8,0x02,0x33,0xc1,0x0f,0xb6,0xc0,0x83,0xe0,0x3c,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x33,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h and eax,3ch                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 3c}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0010h shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
0013h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0015h shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0018h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh and eax,3ch                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 3c}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0026h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort bfly(N2 n, ushort x), hex://bitcore/bits?bfly#bfly_(n2,16u)
; bfly_(n2,16u)[48] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x25,0x3c,0x3c,0x00,0x00,0x0f,0xb7,0xc0,0x8b,0xc8,0xc1,0xe1,0x02,0x33,0xc8,0xc1,0xe8,0x02,0x33,0xc1,0x0f,0xb7,0xc0,0x25,0x3c,0x3c,0x00,0x00,0x0f,0xb7,0xc0,0x0f,0xb7,0xd2,0x33,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h and eax,3c3ch                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 3c 3c 00 00}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0012h shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
0015h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0017h shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
001ah xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh and eax,3c3ch                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 3c 3c 00 00}
0024h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0027h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002ah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
002ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bfly(N2 n, uint x), hex://bitcore/bits?bfly#bfly_(n2,32u)
; bfly_(n2,32u)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0x25,0x3c,0x3c,0x3c,0x3c,0x8b,0xc8,0xc1,0xe1,0x02,0x33,0xc8,0xc1,0xe8,0x02,0x33,0xc1,0x25,0x3c,0x3c,0x3c,0x3c,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h and eax,3c3c3c3ch                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 3c 3c 3c 3c}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
0011h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0013h shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0016h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0018h and eax,3c3c3c3ch                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 3c 3c 3c 3c}
001dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bfly(N2 n, ulong x), hex://bitcore/bits?bfly#bfly_(n2,64u)
; bfly_(n2,64u)[52] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x3c,0x3c,0x3c,0x3c,0x3c,0x3c,0x3c,0x3c,0x48,0x23,0xc2,0x48,0x8b,0xc8,0x48,0xc1,0xe1,0x02,0x48,0x33,0xc8,0x48,0xc1,0xe8,0x02,0x48,0x33,0xc1,0x48,0xb9,0x3c,0x3c,0x3c,0x3c,0x3c,0x3c,0x3c,0x3c,0x48,0x23,0xc1,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,3c3c3c3c3c3c3c3ch               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3c 3c 3c 3c 3c 3c 3c 3c}
000fh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 02}
0019h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
001ch shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0020h xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0023h mov rcx,3c3c3c3c3c3c3c3ch               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 3c 3c 3c 3c 3c 3c 3c 3c}
002dh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0030h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort bfly(N4 n, ushort x), hex://bitcore/bits?bfly#bfly_(n4,16u)
; bfly_(n4,16u)[48] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x25,0xf0,0x0f,0x00,0x00,0x0f,0xb7,0xc0,0x8b,0xc8,0xc1,0xe1,0x04,0x33,0xc8,0xc1,0xe8,0x04,0x33,0xc1,0x0f,0xb7,0xc0,0x25,0xf0,0x0f,0x00,0x00,0x0f,0xb7,0xc0,0x0f,0xb7,0xd2,0x33,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h and eax,0ff0h                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 f0 0f 00 00}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0012h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0015h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0017h shr eax,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 04}
001ah xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh and eax,0ff0h                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 f0 0f 00 00}
0024h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0027h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002ah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
002ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bfly(N4 n, uint x), hex://bitcore/bits?bfly#bfly_(n4,32u)
; bfly_(n4,32u)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0x25,0xf0,0x0f,0xf0,0x0f,0x8b,0xc8,0xc1,0xe1,0x04,0x33,0xc8,0xc1,0xe8,0x04,0x33,0xc1,0x25,0xf0,0x0f,0xf0,0x0f,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h and eax,0ff00ff0h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 f0 0f f0 0f}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0011h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0013h shr eax,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 04}
0016h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0018h and eax,0ff00ff0h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 f0 0f f0 0f}
001dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bfly(N4 n, ulong x), hex://bitcore/bits?bfly#bfly_(n4,64u)
; bfly_(n4,64u)[52] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf0,0x0f,0xf0,0x0f,0xf0,0x0f,0xf0,0x0f,0x48,0x23,0xc2,0x48,0x8b,0xc8,0x48,0xc1,0xe1,0x04,0x48,0x33,0xc8,0x48,0xc1,0xe8,0x04,0x48,0x33,0xc1,0x48,0xb9,0xf0,0x0f,0xf0,0x0f,0xf0,0x0f,0xf0,0x0f,0x48,0x23,0xc1,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0ff00ff00ff00ff0h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0f f0 0f f0 0f f0 0f}
000fh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,4                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 04}
0019h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
001ch shr rax,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 04}
0020h xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0023h mov rcx,0ff00ff00ff00ff0h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0f f0 0f f0 0f f0 0f}
002dh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0030h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bfly(N8 n, uint x), hex://bitcore/bits?bfly#bfly_(n8,32u)
; bfly_(n8,32u)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0x25,0x00,0xff,0xff,0x00,0x8b,0xc8,0xc1,0xe1,0x08,0x33,0xc8,0xc1,0xe8,0x08,0x33,0xc1,0x25,0x00,0xff,0xff,0x00,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h and eax,0ffff00h                        ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 ff ff 00}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl ecx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 08}
0011h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0013h shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
0016h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0018h and eax,0ffff00h                        ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 ff ff 00}
001dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bfly(N8 n, ulong x), hex://bitcore/bits?bfly#bfly_(n8,64u)
; bfly_(n8,64u)[52] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0xff,0xff,0x00,0x00,0xff,0xff,0x00,0x48,0x23,0xc2,0x48,0x8b,0xc8,0x48,0xc1,0xe1,0x08,0x48,0x33,0xc8,0x48,0xc1,0xe8,0x08,0x48,0x33,0xc1,0x48,0xb9,0x00,0xff,0xff,0x00,0x00,0xff,0xff,0x00,0x48,0x23,0xc1,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0ffff0000ffff00h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ff ff 00 00 ff ff 00}
000fh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,8                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 08}
0019h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
001ch shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
0020h xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0023h mov rcx,0ffff0000ffff00h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ff ff 00 00 ff ff 00}
002dh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0030h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bfly(N16 n, ulong x), hex://bitcore/bits?bfly#bfly_(n16,64u)
; bfly_(n16,64u)[52] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x00,0xff,0xff,0xff,0xff,0x00,0x00,0x48,0x23,0xc2,0x48,0x8b,0xc8,0x48,0xc1,0xe1,0x10,0x48,0x33,0xc8,0x48,0xc1,0xe8,0x10,0x48,0x33,0xc1,0x48,0xb9,0x00,0x00,0xff,0xff,0xff,0xff,0x00,0x00,0x48,0x23,0xc1,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0ffffffff0000h                  ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 00 ff ff ff ff 00 00}
000fh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,10h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 10}
0019h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
001ch shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
0020h xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0023h mov rcx,0ffffffff0000h                  ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 00 ff ff ff ff 00 00}
002dh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0030h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte bitclear(byte src, byte index, byte count), hex://bitcore/bits?bitclear#bitclear_(8u,8u,8u)
; bitclear_(8u,8u,8u)[53] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x81,0xf0,0xff,0xff,0x00,0x00,0x0f,0xb6,0xc0,0x41,0x23,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h xor r8d,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff ff 00 00}
002bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002eh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0031h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte bitclear(sbyte src, byte index, byte count), hex://bitcore/bits?bitclear#bitclear_(8i,8u,8u)
; bitclear_(8i,8u,8u)[55] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x81,0xf0,0xff,0xff,0x00,0x00,0x48,0x0f,0xbe,0xc0,0x41,0x23,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h xor r8d,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff ff 00 00}
002bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002fh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0032h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort bitclear(ushort src, byte index, byte count), hex://bitcore/bits?bitclear#bitclear_(16u,8u,8u)
; bitclear_(16u,8u,8u)[53] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x81,0xf0,0xff,0xff,0x00,0x00,0x0f,0xb7,0xc0,0x41,0x23,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h xor r8d,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff ff 00 00}
002bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002eh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0031h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short bitclear(short src, byte index, byte count), hex://bitcore/bits?bitclear#bitclear_(16i,8u,8u)
; bitclear_(16i,8u,8u)[55] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x81,0xf0,0xff,0xff,0x00,0x00,0x48,0x0f,0xbf,0xc0,0x41,0x23,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h xor r8d,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff ff 00 00}
002bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
002fh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0032h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bitclear(uint src, byte index, byte count), hex://bitcore/bits?bitclear#bitclear_(32u,8u,8u)
; bitclear_(32u,8u,8u)[44] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x8b,0xd0,0xf7,0xd2,0x23,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0027h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0029h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int bitclear(int src, byte index, byte count), hex://bitcore/bits?bitclear#bitclear_(32i,8u,8u)
; bitclear_(32i,8u,8u)[44] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x8b,0xd0,0xf7,0xd2,0x23,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0027h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0029h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long bitclear(long src, byte index, byte count), hex://bitcore/bits?bitclear#bitclear_(64i,8u,8u)
; bitclear_(64i,8u,8u)[44] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xb8,0xf3,0xd0,0x0f,0xb6,0xca,0x49,0xd3,0xe0,0x49,0x8b,0xd0,0x48,0xf7,0xd2,0x48,0x23,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0014h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0017h blsmsk r8,r8                            ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b8 f3 d0}
001ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
001fh shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0022h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0025h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0028h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bitclear(ulong src, byte index, byte count), hex://bitcore/bits?bitclear#bitclear_(64u,8u,8u)
; bitclear_(64u,8u,8u)[44] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xb8,0xf3,0xd0,0x0f,0xb6,0xca,0x49,0xd3,0xe0,0x49,0x8b,0xd0,0x48,0xf7,0xd2,0x48,0x23,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0014h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0017h blsmsk r8,r8                            ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b8 f3 d0}
001ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
001fh shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0022h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0025h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0028h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort clearbyte(ushort src, byte index), hex://bitcore/bits?clearbyte#clearbyte_(16u,8u)
; clearbyte_(16u,8u)[28] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xba,0xff,0x00,0x00,0x00,0xd3,0xe2,0xf7,0xd2,0x0f,0xb7,0xc0,0x23,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah mov edx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff 00 00 00}
000fh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0011h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint clearbyte(uint src, byte index), hex://bitcore/bits?clearbyte#clearbyte_(32u,8u)
; clearbyte_(32u,8u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xba,0xff,0x00,0x00,0x00,0xd3,0xe2,0xf7,0xd2,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah mov edx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff 00 00 00}
000fh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0011h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0013h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong clearbyte(ulong src, byte index), hex://bitcore/bits?clearbyte#clearbyte_(64u,8u)
; clearbyte_(64u,8u)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0xba,0xff,0x00,0x00,0x00,0x48,0xd3,0xe2,0x48,0xf7,0xd2,0x48,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov edx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff 00 00 00}
0010h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0013h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0016h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte bitfill(byte src, byte index, byte count), hex://bitcore/bits?bitfill#bitfill_(8u,8u,8u)
; bitfill_(8u,8u,8u)[55] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x81,0xf0,0xff,0xff,0x00,0x00,0x0f,0xb6,0xc0,0x41,0x0b,0xc0,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h xor r8d,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff ff 00 00}
002bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002eh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0031h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte bitfill(sbyte src, byte index, byte count), hex://bitcore/bits?bitfill#bitfill_(8i,8u,8u)
; bitfill_(8i,8u,8u)[57] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x81,0xf0,0xff,0xff,0x00,0x00,0x48,0x0f,0xbe,0xc0,0x41,0x0b,0xc0,0xf7,0xd0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h xor r8d,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff ff 00 00}
002bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002fh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0032h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0034h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort bitfill(ushort src, byte index, byte count), hex://bitcore/bits?bitfill#bitfill_(16u,8u,8u)
; bitfill_(16u,8u,8u)[55] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x81,0xf0,0xff,0xff,0x00,0x00,0x0f,0xb7,0xc0,0x41,0x0b,0xc0,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h xor r8d,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff ff 00 00}
002bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002eh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0031h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0033h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short bitfill(short src, byte index, byte count), hex://bitcore/bits?bitfill#bitfill_(16i,8u,8u)
; bitfill_(16i,8u,8u)[57] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x81,0xf0,0xff,0xff,0x00,0x00,0x48,0x0f,0xbf,0xc0,0x41,0x0b,0xc0,0xf7,0xd0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h xor r8d,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff ff 00 00}
002bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
002fh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0032h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0034h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bitfill(uint src, byte index, byte count), hex://bitcore/bits?bitfill#bitfill_(32u,8u,8u)
; bitfill_(32u,8u,8u)[46] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x8b,0xd0,0xf7,0xd2,0x0b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0027h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0029h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int bitfill(int src, byte index, byte count), hex://bitcore/bits?bitfill#bitfill_(32i,8u,8u)
; bitfill_(32i,8u,8u)[46] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xf0,0xf3,0xd0,0x44,0x8b,0xc1,0x0f,0xb6,0xca,0x41,0xd3,0xe0,0x41,0x8b,0xd0,0xf7,0xd2,0x0b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0027h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0029h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bitfill(ulong src, byte index, byte count), hex://bitcore/bits?bitfill#bitfill_(64u,8u,8u)
; bitfill_(64u,8u,8u)[47] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xb8,0xf3,0xd0,0x0f,0xb6,0xca,0x49,0xd3,0xe0,0x49,0x8b,0xd0,0x48,0xf7,0xd2,0x48,0x0b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0014h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0017h blsmsk r8,r8                            ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b8 f3 d0}
001ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
001fh shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0022h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0025h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0028h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
002bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long bitfill(long src, byte index, byte count), hex://bitcore/bits?bitfill#bitfill_(64i,8u,8u)
; bitfill_(64i,8u,8u)[47] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0x0f,0xb6,0xc8,0xff,0xc9,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xd3,0xe0,0xc4,0xc2,0xb8,0xf3,0xd0,0x0f,0xb6,0xca,0x49,0xd3,0xe0,0x49,0x8b,0xd0,0x48,0xf7,0xd2,0x48,0x0b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0014h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0017h blsmsk r8,r8                            ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b8 f3 d0}
001ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
001fh shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0022h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0025h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0028h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
002bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte bitslice(sbyte src, byte start, byte length), hex://bitcore/bits?bitslice#bitslice_(8i,8u,8u)
; bitslice_(8i,8u,8u)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x48,0x0f,0xbe,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0018h bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
001dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte bitslice(byte src, byte start, byte length), hex://bitcore/bits?bitslice#bitslice_(8u,8u,8u)
; bitslice_(8u,8u,8u)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb6,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0017h bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short bitslice(short src, byte start, byte length), hex://bitcore/bits?bitslice#bitslice_(16i,8u,8u)
; bitslice_(16i,8u,8u)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x48,0x0f,0xbf,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0018h bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
001dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort bitslice(ushort src, byte start, byte length), hex://bitcore/bits?bitslice#bitslice_(16u,8u,8u)
; bitslice_(16u,8u,8u)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0017h bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int bitslice(int src, byte start, byte length), hex://bitcore/bits?bitslice#bitslice_(32i,8u,8u)
; bitslice_(32i,8u,8u)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bitslice(uint src, byte start, byte length), hex://bitcore/bits?bitslice#bitslice_(32u,8u,8u)
; bitslice_(32u,8u,8u)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long bitslice(long src, byte start, byte length), hex://bitcore/bits?bitslice#bitslice_(64i,8u,8u)
; bitslice_(64i,8u,8u)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0xf8,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bitslice(ulong src, byte start, byte length), hex://bitcore/bits?bitslice#bitslice_(64u,8u,8u)
; bitslice_(64u,8u,8u)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0xf8,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte blsic(byte src), hex://bitcore/bits?blsic#blsic_(8u)
; blsic_(8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xd0,0xf7,0xd2,0xff,0xc8,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000ch dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort blsic(ushort src), hex://bitcore/bits?blsic#blsic_(16u)
; blsic_(16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xd0,0xf7,0xd2,0xff,0xc8,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000ch dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint blsic(uint src), hex://bitcore/bits?blsic#blsic_(32u)
; blsic_(32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0xff,0xc9,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000bh or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong blsic(ulong src), hex://bitcore/bits?blsic#blsic_(64u)
; blsic_(64u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0x48,0xff,0xc9,0x48,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh dec rcx                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff c9}
000eh or rax,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort broadcast(byte src, N16 w), hex://bitcore/bits?broadcast#broadcast_(8u,n16)
; broadcast_(8u,n16)[34] = {0x50,0xc5,0xf8,0x77,0x90,0x0f,0xb6,0xc1,0x88,0x44,0x24,0x04,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x79,0x78,0x44,0x24,0x04,0xc5,0xf9,0xc5,0xc0,0x00,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000ch lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0011h vpbroadcastb xmm0,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 04}
0018h vpextrw eax,xmm0,0                      ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 f9 c5 c0 00}
001dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint broadcast(byte src, N32 w), hex://bitcore/bits?broadcast#broadcast_(8u,n32)
; broadcast_(8u,n32)[33] = {0x50,0xc5,0xf8,0x77,0x90,0x0f,0xb6,0xc1,0x88,0x44,0x24,0x04,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x79,0x78,0x44,0x24,0x04,0xc5,0xf9,0x7e,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000ch lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0011h vpbroadcastb xmm0,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 04}
0018h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
001ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong broadcast(byte src, N64 w), hex://bitcore/bits?broadcast#broadcast_(8u,n64)
; broadcast_(8u,n64)[34] = {0x50,0xc5,0xf8,0x77,0x90,0x0f,0xb6,0xc1,0x88,0x44,0x24,0x04,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x79,0x78,0x44,0x24,0x04,0xc4,0xe1,0xf9,0x7e,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000ch lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0011h vpbroadcastb xmm0,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 04}
0018h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
001dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint broadcast(ushort src, N32 w), hex://bitcore/bits?broadcast#broadcast_(16u,n32)
; broadcast_(16u,n32)[34] = {0x50,0xc5,0xf8,0x77,0x90,0x0f,0xb7,0xc1,0x66,0x89,0x44,0x24,0x04,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x79,0x79,0x44,0x24,0x04,0xc5,0xf9,0x7e,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
000dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0012h vpbroadcastw xmm0,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 04}
0019h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
001dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong broadcast(ushort src, N64 w), hex://bitcore/bits?broadcast#broadcast_(16u,n64)
; broadcast_(16u,n64)[35] = {0x50,0xc5,0xf8,0x77,0x90,0x0f,0xb7,0xc1,0x66,0x89,0x44,0x24,0x04,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x79,0x79,0x44,0x24,0x04,0xc4,0xe1,0xf9,0x7e,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
000dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0012h vpbroadcastw xmm0,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 04}
0019h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
001eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong broadcast(uint src, N64 w), hex://bitcore/bits?broadcast#broadcast_(32u,n64)
; broadcast_(32u,n64)[31] = {0x50,0xc5,0xf8,0x77,0x90,0x89,0x4c,0x24,0x04,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x79,0x58,0x44,0x24,0x04,0xc4,0xe1,0xf9,0x7e,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
0009h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
000eh vpbroadcastd xmm0,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 44 24 04}
0015h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
001ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vbroadcast(byte src), hex://bitcore/bits?vbroadcast#vbroadcast_(8u)
; vbroadcast_(8u)[29] = {0xc5,0xf8,0x77,0x66,0x90,0x89,0x54,0x24,0x10,0x48,0x8d,0x44,0x24,0x10,0xc4,0xe2,0x79,0x78,0x44,0x24,0x10,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
000eh vpbroadcastb xmm0,byte ptr [rsp+10h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 10}
0015h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vbroadcast(ushort src), hex://bitcore/bits?vbroadcast#vbroadcast_(16u)
; vbroadcast_(16u)[29] = {0xc5,0xf8,0x77,0x66,0x90,0x89,0x54,0x24,0x10,0x48,0x8d,0x44,0x24,0x10,0xc4,0xe2,0x79,0x79,0x44,0x24,0x10,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
000eh vpbroadcastw xmm0,word ptr [rsp+10h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 10}
0015h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vbroadcast(uint src), hex://bitcore/bits?vbroadcast#vbroadcast_(32u)
; vbroadcast_(32u)[29] = {0xc5,0xf8,0x77,0x66,0x90,0x89,0x54,0x24,0x10,0x48,0x8d,0x44,0x24,0x10,0xc4,0xe2,0x79,0x58,0x44,0x24,0x10,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
000eh vpbroadcastd xmm0,dword ptr [rsp+10h]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 44 24 10}
0015h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort byteswap(ushort src), hex://bitcore/bits?byteswap#byteswap_(16u)
; byteswap_(16u)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xd0,0xc1,0xfa,0x08,0x25,0xff,0x00,0x00,0x00,0xc1,0xe0,0x08,0x0b,0xd0,0x0f,0xb7,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
000dh and eax,0ffh                            ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff 00 00 00}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h or edx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d0}
0017h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint byteswap(uint src), hex://bitcore/bits?byteswap#byteswap_(32u)
; byteswap_(32u)[48] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc1,0xe8,0x18,0x0f,0xb6,0xc0,0x8b,0xd1,0xc1,0xea,0x10,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x8b,0xd1,0xc1,0xea,0x08,0x0f,0xb6,0xd2,0xc1,0xe2,0x10,0x0b,0xc2,0x0f,0xb6,0xd1,0xc1,0xe2,0x18,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h shr eax,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 18}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000fh shr edx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 10}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
001ch shr edx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 08}
001fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0022h shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
0025h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0027h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
002ah shl edx,18h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 18}
002dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong byteswap(ulong src), hex://bitcore/bits?byteswap#byteswap_(64u)
; byteswap_(64u)[128] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xc1,0xe8,0x38,0x0f,0xb6,0xc0,0x48,0x8b,0xd1,0x48,0xc1,0xea,0x30,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x08,0x48,0x0b,0xc2,0x48,0x8b,0xd1,0x48,0xc1,0xea,0x28,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x10,0x48,0x0b,0xc2,0x48,0x8b,0xd1,0x48,0xc1,0xea,0x20,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x18,0x48,0x0b,0xc2,0x48,0x8b,0xd1,0x48,0xc1,0xea,0x18,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x20,0x48,0x0b,0xc2,0x48,0x8b,0xd1,0x48,0xc1,0xea,0x10,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x28,0x48,0x0b,0xc2,0x48,0x8b,0xd1,0x48,0xc1,0xea,0x08,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x30,0x48,0x0b,0xc2,0x0f,0xb6,0xd1,0x48,0xc1,0xe2,0x38,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0012h shr rdx,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 30}
0016h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0019h shl rdx,8                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 08}
001dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0020h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0023h shr rdx,28h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 28}
0027h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002ah shl rdx,10h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 10}
002eh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0031h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0034h shr rdx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 20}
0038h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003bh shl rdx,18h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 18}
003fh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0042h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0045h shr rdx,18h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 18}
0049h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
004ch shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
0050h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0053h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0056h shr rdx,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 10}
005ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
005dh shl rdx,28h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 28}
0061h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0064h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0067h shr rdx,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 08}
006bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
006eh shl rdx,30h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 30}
0072h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0075h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0078h shl rdx,38h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 38}
007ch or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
007fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort concat(byte x0, byte x1), hex://bitcore/bits?concat#concat_(8u,8u)
; concat_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint concat(ushort x0, ushort x1), hex://bitcore/bits?concat#concat_(16u,16u)
; concat_(16u,16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0xc1,0xe2,0x10,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong concat(in uint x0, in uint x1), hex://bitcore/bits?concat#concat_(32u~in,32u~in)
; concat_(32u~in,32u~in)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x01,0x8b,0x12,0x48,0xc1,0xe2,0x20,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 01}
0007h mov edx,[rdx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 12}
0009h shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
000dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint concat(byte x0, byte x1, byte x2, byte x3), hex://bitcore/bits?concat#concat_(8u,8u,8u,8u)
; concat_(8u,8u,8u,8u)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x10,0x0b,0xc2,0x41,0x0f,0xb6,0xd1,0xc1,0xe2,0x18,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0014h shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx edx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d1}
001dh shl edx,18h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 18}
0020h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong concat(ushort x0, ushort x1, ushort x2, ushort x3), hex://bitcore/bits?concat#concat_(16u,16u,16u,16u)
; concat_(16u,16u,16u,16u)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0xc1,0xe2,0x10,0x0b,0xc2,0x41,0x0f,0xb7,0xd0,0x0b,0xc2,0x41,0x0f,0xb7,0xd1,0xc1,0xe2,0x10,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0014h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0016h movzx edx,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d1}
001ah shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
001dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong concat(byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7), hex://bitcore/bits?concat#concat_(8u,8u,8u,8u,8u,8u,8u,8u)
; concat_(8u,8u,8u,8u,8u,8u,8u,8u)[97] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x08,0x48,0x0b,0xc2,0x41,0x0f,0xb6,0xd0,0x48,0xc1,0xe2,0x10,0x48,0x0b,0xc2,0x41,0x0f,0xb6,0xd1,0x48,0xc1,0xe2,0x18,0x48,0x0b,0xc2,0x8b,0x54,0x24,0x28,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x20,0x48,0x0b,0xc2,0x8b,0x54,0x24,0x30,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x28,0x48,0x0b,0xc2,0x8b,0x54,0x24,0x38,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x30,0x48,0x0b,0xc2,0x8b,0x54,0x24,0x40,0x0f,0xb6,0xd2,0x48,0xc1,0xe2,0x38,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh shl rdx,8                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 08}
000fh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0012h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0016h shl rdx,10h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 10}
001ah or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001dh movzx edx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d1}
0021h shl rdx,18h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 18}
0025h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0028h mov edx,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 28}
002ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002fh shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
0033h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0036h mov edx,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 30}
003ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003dh shl rdx,28h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 28}
0041h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0044h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
0048h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
004bh shl rdx,30h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 30}
004fh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0052h mov edx,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 40}
0056h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0059h shl rdx,38h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 38}
005dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0060h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte enable(sbyte src, int pos), hex://bitcore/bits?enable#enable_(8i,32i)
; enable_(8i,32i)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x49,0x0f,0xbe,0xd0,0x0b,0xc2,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000fh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0011h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0014h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte enable(byte src, int pos), hex://bitcore/bits?enable#enable_(8u,32i)
; enable_(8u,32i)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0x0b,0xc2,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short enable(short src, int pos), hex://bitcore/bits?enable#enable_(16i,32i)
; enable_(16i,32i)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x49,0x0f,0xbf,0xd0,0x0b,0xc2,0x48,0x0f,0xbf,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000fh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0011h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0014h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort enable(ushort src, int pos), hex://bitcore/bits?enable#enable_(16u,32i)
; enable_(16u,32i)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb7,0xd0,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int enable(int src, int pos), hex://bitcore/bits?enable#enable_(32i,32i)
; enable_(32i,32i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint enable(uint src, int pos), hex://bitcore/bits?enable#enable_(32u,32i)
; enable_(32u,32i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long enable(long src, int pos), hex://bitcore/bits?enable#enable_(64i,32i)
; enable_(64i,32i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong enable(ulong src, int pos), hex://bitcore/bits?enable#enable_(64u,32i)
; enable_(64u,32i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float enable(float src, int pos), hex://bitcore/bits?enable#enable_(32f,32i)
; enable_(32f,32i)[42] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0b,0xc0,0x89,0x04,0x24,0xc5,0xfa,0x10,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
000fh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0015h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0017h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
001ah or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001dh mov [rsp],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 04 24}
0020h vmovss xmm0,dword ptr [rsp]             ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 24}
0025h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double enable(double src, int pos), hex://bitcore/bits?enable#enable_(64f,32i)
; enable_(64f,32i)[48] = {0x48,0x83,0xec,0x18,0xc5,0xf8,0x77,0xc5,0xfb,0x11,0x44,0x24,0x10,0x48,0x8b,0x44,0x24,0x10,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x0b,0xc0,0x48,0x89,0x44,0x24,0x08,0xc5,0xfb,0x10,0x44,0x24,0x08,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovsd qword ptr [rsp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 10}
000dh mov rax,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 10}
0012h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0018h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ah shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
001dh or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0020h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0025h vmovsd xmm0,qword ptr [rsp+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 08}
002bh add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte disable(sbyte src, int pos), hex://bitcore/bits?disable#disable_(8i,32i)
; disable_(8i,32i)[38] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x49,0x0f,0xbe,0xd0,0xf7,0xd2,0x0f,0xb6,0xd2,0x48,0x0f,0xbe,0xc0,0x23,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0016h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0018h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001fh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0021h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte disable(byte src, int pos), hex://bitcore/bits?disable#disable_(8u,32i)
; disable_(8u,32i)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0xf7,0xd2,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x23,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0016h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0018h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short disable(short src, int pos), hex://bitcore/bits?disable#disable_(16i,32i)
; disable_(16i,32i)[39] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x49,0x0f,0xbf,0xd0,0xf7,0xd2,0x48,0x0f,0xbf,0xd2,0x48,0x0f,0xbf,0xc0,0x23,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0016h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0018h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
001ch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0020h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0022h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort disable(ushort src, int pos), hex://bitcore/bits?disable#disable_(16u,32i)
; disable_(16u,32i)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb7,0xd0,0xf7,0xd2,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0x23,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0016h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0018h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int disable(int src, int pos), hex://bitcore/bits?disable#disable_(32i,32i)
; disable_(32i,32i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x8b,0xd0,0xf7,0xd2,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0015h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint disable(uint src, int pos), hex://bitcore/bits?disable#disable_(32u,32i)
; disable_(32u,32i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x8b,0xd0,0xf7,0xd2,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0015h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long disable(long src, int pos), hex://bitcore/bits?disable#disable_(64i,32i)
; disable_(64i,32i)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x8b,0xd0,0x48,0xf7,0xd2,0x48,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0016h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0019h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong disable(ulong src, int pos), hex://bitcore/bits?disable#disable_(64u,32i)
; disable_(64u,32i)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x8b,0xd0,0x48,0xf7,0xd2,0x48,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0016h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0019h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float disable(float src, int pos), hex://bitcore/bits?disable#disable_(32f,32i)
; disable_(32f,32i)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x11,0x44,0x24,0x08,0x48,0x8d,0x44,0x24,0x08,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x8b,0xd0,0xf7,0xd2,0x21,0x10,0xc5,0xfa,0x10,0x44,0x24,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 08}
000bh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0010h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
001bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001eh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0020h and [rax],edx                           ; AND r/m32, r32 || o32 21 /r || encoded[2]{21 10}
0022h vmovss xmm0,dword ptr [rsp+8]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 08}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double disable(double src, int pos), hex://bitcore/bits?disable#disable_(64f,32i)
; disable_(64f,32i)[43] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x11,0x44,0x24,0x08,0x48,0x8d,0x44,0x24,0x08,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x8b,0xd0,0x48,0xf7,0xd2,0x48,0x21,0x10,0xc5,0xfb,0x10,0x44,0x24,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
000bh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0010h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
001bh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
001eh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0021h and [rax],rdx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 10}
0024h vmovsd xmm0,qword ptr [rsp+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 08}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte gather(byte src, byte mask), hex://bitcore/bits?gather#gather_(8u,8u)
; gather_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort gather(ushort src, ushort mask), hex://bitcore/bits?gather#gather_(16u,16u)
; gather_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint gather(uint src, uint mask), hex://bitcore/bits?gather#gather_(32u,32u)
; gather_(32u,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x72,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext eax,ecx,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 72 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong gather(ulong src, ulong mask), hex://bitcore/bits?gather#gather_(64u,64u)
; gather_(64u,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf2,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext rax,rcx,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 f2 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte hi(byte src), hex://bitcore/bits?hi#hi_(8u)
; hi_(8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc1,0xf8,0x04,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte hi(ushort src), hex://bitcore/bits?hi#hi_(16u)
; hi_(16u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc1,0xf8,0x08,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort hi(uint src), hex://bitcore/bits?hi#hi_(32u)
; hi_(32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0xc1,0xe9,0x10,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
0008h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint hi(ulong src), hex://bitcore/bits?hi#hi_(64u)
; hi_(64u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xc1,0xe9,0x20,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lo(byte src), hex://bitcore/bits?lo#lo_(8u)
; lo_(8u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x83,0xe0,0x0f,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lo(ushort src), hex://bitcore/bits?lo#lo_(16u)
; lo_(16u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lo(uint src), hex://bitcore/bits?lo#lo_(32u)
; lo_(32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lo(ulong src), hex://bitcore/bits?lo#lo_(64u)
; lo_(64u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2(byte src), hex://bitcore/bits?log2#log2_(8u)
; log2_(8u)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x85,0xc0,0x75,0x04,0x33,0xc0,0xeb,0x09,0xf3,0x0f,0xbd,0xc0,0xf7,0xd8,0x83,0xc0,0x1f,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000eh jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0010h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
0014h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0016h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2(ushort src), hex://bitcore/bits?log2#log2_(16u)
; log2_(16u)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x85,0xc0,0x75,0x04,0x33,0xc0,0xeb,0x09,0xf3,0x0f,0xbd,0xc0,0xf7,0xd8,0x83,0xc0,0x1f,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000eh jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0010h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
0014h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0016h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2(uint src), hex://bitcore/bits?log2#log2_(32u)
; log2_(32u)[25] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x75,0x04,0x33,0xc0,0xeb,0x0b,0x33,0xc0,0xf3,0x0f,0xbd,0xc1,0xf7,0xd8,0x83,0xc0,0x1f,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000dh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh lzcnt eax,ecx                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c1}
0013h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0015h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2(ulong src), hex://bitcore/bits?log2#log2_(64u)
; log2_(64u)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x85,0xc9,0x75,0x04,0x33,0xc0,0xeb,0x0c,0x33,0xc0,0xf3,0x48,0x0f,0xbd,0xc1,0xf7,0xd8,0x83,0xc0,0x3f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h jne short 000eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb 0c}
000eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0010h lzcnt rax,rcx                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c1}
0015h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0017h add eax,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 3f}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsboff(byte src), hex://bitcore/bits?lsboff#lsboff_(8u)
; lsboff_(8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc4,0xe2,0x78,0xf3,0xc8,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h blsr eax,eax                            ; BLSR r32, r/m32 || VEX.LZ.0F38.W0 F3 /1 || encoded[5]{c4 e2 78 f3 c8}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsboff(ushort src), hex://bitcore/bits?lsboff#lsboff_(16u)
; lsboff_(16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc4,0xe2,0x78,0xf3,0xc8,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h blsr eax,eax                            ; BLSR r32, r/m32 || VEX.LZ.0F38.W0 F3 /1 || encoded[5]{c4 e2 78 f3 c8}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsboff(uint src), hex://bitcore/bits?lsboff#lsboff_(32u)
; lsboff_(32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x78,0xf3,0xc9,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h blsr eax,ecx                            ; BLSR r32, r/m32 || VEX.LZ.0F38.W0 F3 /1 || encoded[5]{c4 e2 78 f3 c9}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsboff(ulong src), hex://bitcore/bits?lsboff#lsboff_(64u)
; lsboff_(64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf8,0xf3,0xc9,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h blsr rax,rcx                            ; BLSR r64, r/m64 || VEX.LZ.0F38.W1 F3 /1 || encoded[5]{c4 e2 f8 f3 c9}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsbx(byte src), hex://bitcore/bits?lsbx#lsbx_(8u)
; lsbx_(8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc4,0xe2,0x78,0xf3,0xd8,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h blsi eax,eax                            ; BLSI r32, r/m32 || VEX.LZ.0F38.W0 F3 /3 || encoded[5]{c4 e2 78 f3 d8}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsbx(ushort src), hex://bitcore/bits?lsbx#lsbx_(16u)
; lsbx_(16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc4,0xe2,0x78,0xf3,0xd8,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h blsi eax,eax                            ; BLSI r32, r/m32 || VEX.LZ.0F38.W0 F3 /3 || encoded[5]{c4 e2 78 f3 d8}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsbx(uint src), hex://bitcore/bits?lsbx#lsbx_(32u)
; lsbx_(32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x78,0xf3,0xd9,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h blsi eax,ecx                            ; BLSI r32, r/m32 || VEX.LZ.0F38.W0 F3 /3 || encoded[5]{c4 e2 78 f3 d9}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsbx(ulong src), hex://bitcore/bits?lsbx#lsbx_(64u)
; lsbx_(64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf8,0xf3,0xd9,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h blsi rax,rcx                            ; BLSI r64, r/m64 || VEX.LZ.0F38.W1 F3 /3 || encoded[5]{c4 e2 f8 f3 d9}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mix(N0 parity, byte x, byte y), hex://bitcore/bits?mix#mix_(n0,8u,8u)
; mix_(n0,8u,8u)[65] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xba,0x55,0x00,0x00,0x00,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc4,0xe2,0x7b,0xf5,0xc2,0x0f,0xb6,0xc0,0x41,0x0f,0xb6,0xd0,0xb9,0x55,0x00,0x00,0x00,0xc4,0xe2,0x6a,0xf5,0xd1,0x0f,0xb6,0xd2,0xb9,0xaa,0x00,0x00,0x00,0xc4,0xe2,0x6b,0xf5,0xd1,0x0f,0xb6,0xd2,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h mov edx,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 00 00 00}
000dh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0021h mov ecx,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 55 00 00 00}
0026h pext edx,edx,ecx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 d1}
002bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002eh mov ecx,0aah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa 00 00 00}
0033h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0038h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mix(N1 parity, byte x, byte y), hex://bitcore/bits?mix#mix_(n1,8u,8u)
; mix_(n1,8u,8u)[65] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xba,0xaa,0x00,0x00,0x00,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xba,0x55,0x00,0x00,0x00,0xc4,0xe2,0x7b,0xf5,0xc2,0x0f,0xb6,0xc0,0x41,0x0f,0xb6,0xd0,0xb9,0xaa,0x00,0x00,0x00,0xc4,0xe2,0x6a,0xf5,0xd1,0x0f,0xb6,0xd2,0xc4,0xe2,0x6b,0xf5,0xd1,0x0f,0xb6,0xd2,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h mov edx,0aah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba aa 00 00 00}
000dh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h mov edx,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 00 00 00}
001ah pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0026h mov ecx,0aah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa 00 00 00}
002bh pext edx,edx,ecx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 d1}
0030h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0033h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0038h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mix(N0 parity, ushort x, ushort y), hex://bitcore/bits?mix#mix_(n0,16u,16u)
; mix_(n0,16u,16u)[65] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0xba,0x55,0x55,0x00,0x00,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0x7b,0xf5,0xc2,0x0f,0xb7,0xc0,0x41,0x0f,0xb7,0xd0,0xb9,0x55,0x55,0x00,0x00,0xc4,0xe2,0x6a,0xf5,0xd1,0x0f,0xb7,0xd2,0xb9,0xaa,0xaa,0x00,0x00,0xc4,0xe2,0x6b,0xf5,0xd1,0x0f,0xb7,0xd2,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h mov edx,5555h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 55 00 00}
000dh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0021h mov ecx,5555h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 55 55 00 00}
0026h pext edx,edx,ecx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 d1}
002bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002eh mov ecx,0aaaah                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa aa 00 00}
0033h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0038h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
003bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mix(N1 parity, ushort x, ushort y), hex://bitcore/bits?mix#mix_(n1,16u,16u)
; mix_(n1,16u,16u)[65] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0xba,0xaa,0xaa,0x00,0x00,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb7,0xc0,0xba,0x55,0x55,0x00,0x00,0xc4,0xe2,0x7b,0xf5,0xc2,0x0f,0xb7,0xc0,0x41,0x0f,0xb7,0xd0,0xb9,0xaa,0xaa,0x00,0x00,0xc4,0xe2,0x6a,0xf5,0xd1,0x0f,0xb7,0xd2,0xc4,0xe2,0x6b,0xf5,0xd1,0x0f,0xb7,0xd2,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h mov edx,0aaaah                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba aa aa 00 00}
000dh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h mov edx,5555h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 55 00 00}
001ah pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0026h mov ecx,0aaaah                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa aa 00 00}
002bh pext edx,edx,ecx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 d1}
0030h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0033h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0038h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
003bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mix(N0 parity, uint x, uint y), hex://bitcore/bits?mix#mix_(n0,32u,32u)
; mix_(n0,32u,32u)[43] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x55,0x55,0x55,0x55,0xc4,0xe2,0x6a,0xf5,0xc0,0xba,0x55,0x55,0x55,0x55,0xc4,0xe2,0x7b,0xf5,0xc2,0xc4,0xe2,0x3a,0xf5,0xd2,0xb9,0xaa,0xaa,0xaa,0xaa,0xc4,0xe2,0x6b,0xf5,0xd1,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,55555555h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 55 55 55}
000ah pext eax,edx,eax                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 c0}
000fh mov edx,55555555h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 55 55 55}
0014h pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
0019h pext edx,r8d,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 3a f5 d2}
001eh mov ecx,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa aa aa aa}
0023h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0028h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mix(N1 parity, uint x, uint y), hex://bitcore/bits?mix#mix_(n1,32u,32u)
; mix_(n1,32u,32u)[48] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xaa,0xaa,0xaa,0xaa,0xc4,0xe2,0x6a,0xf5,0xc0,0xba,0x55,0x55,0x55,0x55,0xc4,0xe2,0x7b,0xf5,0xc2,0xba,0xaa,0xaa,0xaa,0xaa,0xc4,0xe2,0x3a,0xf5,0xd2,0xb9,0xaa,0xaa,0xaa,0xaa,0xc4,0xe2,0x6b,0xf5,0xd1,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa aa aa aa}
000ah pext eax,edx,eax                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 c0}
000fh mov edx,55555555h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 55 55 55}
0014h pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
0019h mov edx,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba aa aa aa aa}
001eh pext edx,r8d,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 3a f5 d2}
0023h mov ecx,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa aa aa aa}
0028h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
002dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mix(N0 parity, ulong x, ulong y), hex://bitcore/bits?mix#mix_(n0,64u,64u)
; mix_(n0,64u,64u)[59] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0xc4,0xe2,0xea,0xf5,0xc0,0x48,0xba,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0xc4,0xe2,0xfb,0xf5,0xc2,0xc4,0xe2,0xba,0xf5,0xd2,0x48,0xb9,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xc4,0xe2,0xeb,0xf5,0xd1,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
000fh pext rax,rdx,rax                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 ea f5 c0}
0014h mov rdx,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 55 55 55 55 55 55 55 55}
001eh pdep rax,rax,rdx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 fb f5 c2}
0023h pext rdx,r8,rdx                         ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 ba f5 d2}
0028h mov rcx,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 aa aa aa aa aa aa aa aa}
0032h pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
0037h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mix(N1 parity, ulong x, ulong y), hex://bitcore/bits?mix#mix_(n1,64u,64u)
; mix_(n1,64u,64u)[69] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xc4,0xe2,0xea,0xf5,0xc0,0x48,0xba,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0xc4,0xe2,0xfb,0xf5,0xc2,0x48,0xba,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xc4,0xe2,0xba,0xf5,0xd2,0x48,0xb9,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xc4,0xe2,0xeb,0xf5,0xd1,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 aa aa aa aa aa aa aa aa}
000fh pext rax,rdx,rax                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 ea f5 c0}
0014h mov rdx,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 55 55 55 55 55 55 55 55}
001eh pdep rax,rax,rdx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 fb f5 c2}
0023h mov rdx,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba aa aa aa aa aa aa aa aa}
002dh pext rdx,r8,rdx                         ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 ba f5 d2}
0032h mov rcx,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 aa aa aa aa aa aa aa aa}
003ch pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
0041h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int msbpos(byte src), hex://bitcore/bits?msbpos#msbpos_(8u)
; msbpos_(8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf3,0x0f,0xbd,0xc0,0x83,0xc0,0xe8,0xf7,0xd8,0x83,0xc0,0x07,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0ffffffe8h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 e8}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
