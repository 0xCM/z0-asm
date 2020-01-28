------------------------------------------------------------------------------------------------------------------------
; byte lsbx(byte src)
; lsbx_8u[17] = {0f 1f 44 00 00 0f b6 c1 c4 e2 78 f3 d8 0f b6 c0 c3}
; TermCode = RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h blsi eax,eax                            ; BLSI r32, r/m32 || VEX.LZ.0F38.W0 F3 /3 || encoded[5]{c4 e2 78 f3 d8}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsbx(ushort src)
; lsbx_16u[17] = {0f 1f 44 00 00 0f b7 c1 c4 e2 78 f3 d8 0f b7 c0 c3}
; TermCode = RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h blsi eax,eax                            ; BLSI r32, r/m32 || VEX.LZ.0F38.W0 F3 /3 || encoded[5]{c4 e2 78 f3 d8}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsbx(uint src)
; lsbx_32u[11] = {0f 1f 44 00 00 c4 e2 78 f3 d9 c3}
; TermCode = RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h blsi eax,ecx                            ; BLSI r32, r/m32 || VEX.LZ.0F38.W0 F3 /3 || encoded[5]{c4 e2 78 f3 d9}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsbx(ulong src)
; lsbx_64u[11] = {0f 1f 44 00 00 c4 e2 f8 f3 d9 c3}
; TermCode = RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h blsi rax,rcx                            ; BLSI r64, r/m64 || VEX.LZ.0F38.W1 F3 /3 || encoded[5]{c4 e2 f8 f3 d9}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
