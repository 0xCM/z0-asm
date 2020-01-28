------------------------------------------------------------------------------------------------------------------------
; ushort concat(byte x0, byte x1)
; concat_8u[20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 c1 e2 08 0b c2 0f b7 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint concat(ushort x0, ushort x1)
; concat_16u[17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 c1 e2 10 0b c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong concat(in uint x0, in uint x1)
; concat_32u[17] = {0f 1f 44 00 00 8b 01 8b 12 48 c1 e2 20 48 0b c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 01}
0007h mov edx,[rdx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 12}
0009h shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
000dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint concat(byte x0, byte x1, byte x2, byte x3)
; concat_8u[35] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 c1 e2 08 0b c2 41 0f b6 d0 c1 e2 10 0b c2 41 0f b6 d1 c1 e2 18 0b c2 c3}
; TermCode = RET_ZED_SBB
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
; ulong concat(ushort x0, ushort x1, ushort x2, ushort x3)
; concat_16u[32] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 c1 e2 10 0b c2 41 0f b7 d0 0b c2 41 0f b7 d1 c1 e2 10 0b c2 c3}
; TermCode = RET_SBB
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
; ulong concat(byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7)
; concat_8u[97] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 48 c1 e2 08 48 0b c2 41 0f b6 d0 48 c1 e2 10 48 0b c2 41 0f b6 d1 48 c1 e2 18 48 0b c2 8b 54 24 28 0f b6 d2 48 c1 e2 20 48 0b c2 8b 54 24 30 0f b6 d2 48 c1 e2 28 48 0b c2 8b 54 24 38 0f b6 d2 48 c1 e2 30 48 0b c2 8b 54 24 40 0f b6 d2 48 c1 e2 38 48 0b c2 c3}
; TermCode = RET_ZEDx3
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
