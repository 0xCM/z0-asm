; ushort hi(uint src)
; hi_32u[7ff7c6e857f0h, 7ff7c6e857fch][12] = {0f 1f 44 00 00 c1 e9 10 0f b7 c1 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:52:324
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
0008h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
