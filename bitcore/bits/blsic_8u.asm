; byte blsic(byte src)
; blsic_8u[7ff7c6e6fff0h, 7ff7c6e70004h][20] = {0f 1f 44 00 00 0f b6 c1 8b d0 f7 d2 ff c8 0b c2 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:746
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000ch dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
