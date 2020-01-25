; int true<int>(int a, int b, int c)
; true_g32i[7ff7c71a4380h, 7ff7c71a438bh][11] = {0f 1f 44 00 00 b8 ff ff ff ff c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:57:730
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
