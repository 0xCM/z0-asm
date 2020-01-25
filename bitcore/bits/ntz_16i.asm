; int ntz(Int16 src)
; ntz_16i[7ff7c6e7c770h, 7ff7c6e7c788h][24] = {0f 1f 44 00 00 48 0f bf c1 85 c0 74 05 f3 0f bc c0 c3 b8 10 00 00 00 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:51:934
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh je short 0012h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000dh tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
