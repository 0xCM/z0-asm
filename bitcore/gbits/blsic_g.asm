------------------------------------------------------------------------------------------------------------------------
; byte blsic<byte>(byte src)
; blsic_g8u[20] = {0f 1f 44 00 00 0f b6 c1 8b d0 f7 d2 ff c8 0b c2 0f b6 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000ch dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort blsic<ushort>(ushort src)
; blsic_g16u[20] = {0f 1f 44 00 00 0f b7 c1 8b d0 f7 d2 ff c8 0b c2 0f b7 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000ch dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint blsic<uint>(uint src)
; blsic_g32u[14] = {0f 1f 44 00 00 8b c1 f7 d0 ff c9 0b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000bh or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong blsic<ulong>(ulong src)
; blsic_g64u[18] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 ff c9 48 0b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh dec rcx                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff c9}
000eh or rax,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
