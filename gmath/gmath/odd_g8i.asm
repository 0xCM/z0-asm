; bit odd<sbyte>(sbyte a)
; odd_g8i[7ff7c71a7480h, 7ff7c71a7492h][18] = {0f 1f 44 00 00 48 0f be c1 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:58:280
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
