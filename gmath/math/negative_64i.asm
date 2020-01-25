; bit negative(long x)
; negative_64i[7ff7c7185330h, 7ff7c718533fh][15] = {0f 1f 44 00 00 48 85 c9 0f 9c c0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:36:975
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
