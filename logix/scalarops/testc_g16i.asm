; bit testc<Int16>(Int16 a)
; testc_g16i[7ff7c6ba6d00h, 7ff7c6ba6d18h][24] = {0f 1f 44 00 00 48 0f bf c1 f3 0f b8 c0 48 83 f8 10 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:42:168
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000dh cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
