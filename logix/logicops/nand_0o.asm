; bit nand(bit a, bit b)
; nand_0o[7ff7c6a1efa0h, 7ff7c6a1efafh][15] = {0f 1f 44 00 00 23 d1 8b c2 f7 d0 83 e0 01 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:42:798
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
