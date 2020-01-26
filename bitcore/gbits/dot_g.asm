------------------------------------------------------------------------------------------------------------------------
; bit dot<byte>(byte x, byte y)
; dot_g8u[29] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 23 c2 0f b6 c0 f3 0f b8 c0 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0014h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0016h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<sbyte>(sbyte x, sbyte y)
; dot_g8i[32] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 23 c2 48 0f be c0 f3 0f b8 c0 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0017h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0019h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<ushort>(ushort x, ushort y)
; dot_g16u[29] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 23 c2 0f b7 c0 f3 0f b8 c0 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0014h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0016h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<short>(short x, short y)
; dot_g16i[32] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 23 c2 48 0f bf c0 f3 0f b8 c0 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0017h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0019h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<uint>(uint x, uint y)
; dot_g32u[22] = {0f 1f 44 00 00 23 d1 33 c0 f3 0f b8 c2 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h popcnt eax,edx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c2}
000dh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<int>(int x, int y)
; dot_g32i[22] = {0f 1f 44 00 00 23 d1 33 c0 f3 0f b8 c2 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h popcnt eax,edx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c2}
000dh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<ulong>(ulong x, ulong y)
; dot_g64u[24] = {0f 1f 44 00 00 48 23 d1 33 c0 f3 48 0f b8 c2 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah popcnt rax,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c2}
000fh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<long>(long x, long y)
; dot_g64i[24] = {0f 1f 44 00 00 48 23 d1 33 c0 f3 48 0f b8 c2 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah popcnt rax,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c2}
000fh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
