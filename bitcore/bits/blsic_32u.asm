; uint blsic(uint src)
; blsic_32u[7ff7c6e70050h, 7ff7c6e7005eh][14] = {0f 1f 44 00 00 8b c1 f7 d0 ff c9 0b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:748
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000bh or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
