; Int16 true<Int16>(Int16 a, Int16 b, Int16 c)
; true_g16i[7ff7c6ba59f0h, 7ff7c6ba59fbh][11] = {0f 1f 44 00 00 b8 ff ff ff ff c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:42:121
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
