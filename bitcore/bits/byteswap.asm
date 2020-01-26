------------------------------------------------------------------------------------------------------------------------
; ushort byteswap(ushort src)
; byteswap_16u[27] = {0f 1f 44 00 00 0f b7 c1 8b d0 c1 fa 08 25 ff 00 00 00 c1 e0 08 0b d0 0f b7 c2 c3}
; Capture completion code = RET_ZED_SBB
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
; uint byteswap(uint src)
; byteswap_32u[48] = {0f 1f 44 00 00 8b c1 c1 e8 18 0f b6 c0 8b d1 c1 ea 10 0f b6 d2 c1 e2 08 0b c2 8b d1 c1 ea 08 0f b6 d2 c1 e2 10 0b c2 0f b6 d1 c1 e2 18 0b c2 c3}
; Capture completion code = RET_SBB
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
; ulong byteswap(ulong src)
; byteswap_64u[128] = {0f 1f 44 00 00 48 8b c1 48 c1 e8 38 0f b6 c0 48 8b d1 48 c1 ea 30 0f b6 d2 48 c1 e2 08 48 0b c2 48 8b d1 48 c1 ea 28 0f b6 d2 48 c1 e2 10 48 0b c2 48 8b d1 48 c1 ea 20 0f b6 d2 48 c1 e2 18 48 0b c2 48 8b d1 48 c1 ea 18 0f b6 d2 48 c1 e2 20 48 0b c2 48 8b d1 48 c1 ea 10 0f b6 d2 48 c1 e2 28 48 0b c2 48 8b d1 48 c1 ea 08 0f b6 d2 48 c1 e2 30 48 0b c2 0f b6 d1 48 c1 e2 38 48 0b c2 c3}
; Capture completion code = RET_SBB
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
