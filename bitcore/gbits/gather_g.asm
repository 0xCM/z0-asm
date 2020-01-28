------------------------------------------------------------------------------------------------------------------------
; byte gather<byte>(byte src, byte mask)
; gather_g8u[23] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f b6 c0 c4 e2 7a f5 c2 0f b6 c0 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort gather<ushort>(ushort src, ushort mask)
; gather_g16u[23] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f b7 c0 c4 e2 7a f5 c2 0f b7 c0 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint gather<uint>(uint src, uint mask)
; gather_g32u[11] = {0f 1f 44 00 00 c4 e2 72 f5 c2 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext eax,ecx,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 72 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong gather<ulong>(ulong src, ulong mask)
; gather_g64u[11] = {0f 1f 44 00 00 c4 e2 f2 f5 c2 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext rax,rcx,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 f2 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
