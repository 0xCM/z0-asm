; ulong lsbx(ulong src)
; lsbx_64u[7ff7c6e85a90h, 7ff7c6e85a9bh][11] = {0f 1f 44 00 00 c4 e2 f8 f3 d9 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:52:340
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h blsi rax,rcx                            ; BLSI r64, r/m64 || VEX.LZ.0F38.W1 F3 /3 || encoded[5]{c4 e2 f8 f3 d9}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
