; bit negative(Int16 x)
; negative_16i[7ff7c7197f40h, 7ff7c7197f52h][18] = {0f 1f 44 00 00 48 0f bf c1 85 c0 0f 9c c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:118
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
