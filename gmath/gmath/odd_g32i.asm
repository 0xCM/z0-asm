; bit odd<int>(int a)
; odd_g32i[7ff7c7194b80h, 7ff7c7194b8fh][15] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:39:237
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
