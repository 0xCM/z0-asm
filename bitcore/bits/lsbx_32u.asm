; uint lsbx(uint src)
; lsbx_32u[7ff7c6e85a70h, 7ff7c6e85a7bh][11] = {0f 1f 44 00 00 c4 e2 78 f3 d9 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:52:339
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h blsi eax,ecx                            ; BLSI r32, r/m32 || VEX.LZ.0F38.W0 F3 /3 || encoded[5]{c4 e2 78 f3 d9}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
