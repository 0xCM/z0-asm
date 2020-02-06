------------------------------------------------------------------------------------------------------------------------
; byte zerohi<byte>(byte src, int index)
; zerohi_g8u_32i[17] = {0f 1f 44 00 00 0f b6 c1 c4 e2 68 f5 c0 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h bzhi eax,eax,edx                        ; BZHI r32a, r/m32, r32b || VEX.LZ.0F38.W0 F5 /r || encoded[5]{c4 e2 68 f5 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort zerohi<ushort>(ushort src, int index)
; zerohi_g16u_32i[17] = {0f 1f 44 00 00 0f b7 c1 c4 e2 68 f5 c0 0f b7 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h bzhi eax,eax,edx                        ; BZHI r32a, r/m32, r32b || VEX.LZ.0F38.W0 F5 /r || encoded[5]{c4 e2 68 f5 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint zerohi<uint>(uint src, int index)
; zerohi_g32u_32i[11] = {0f 1f 44 00 00 c4 e2 68 f5 c1 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h bzhi eax,ecx,edx                        ; BZHI r32a, r/m32, r32b || VEX.LZ.0F38.W0 F5 /r || encoded[5]{c4 e2 68 f5 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong zerohi<ulong>(ulong src, int index)
; zerohi_g64u_32i[13] = {0f 1f 44 00 00 8b c2 c4 e2 f8 f5 c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h bzhi rax,rcx,rax                        ; BZHI r64a, r/m64, r64b || VEX.LZ.0F38.W1 F5 /r || encoded[5]{c4 e2 f8 f5 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
