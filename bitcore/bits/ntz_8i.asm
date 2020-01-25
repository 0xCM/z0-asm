; int ntz(sbyte src)
; ntz_8i[7ff7c6e716d0h, 7ff7c6e716e8h][24] = {0f 1f 44 00 00 48 0f be c1 85 c0 74 05 f3 0f bc c0 c3 b8 08 00 00 00 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:933
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh je short 0012h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000dh tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
