; int ntz(byte src)
; ntz_8u[7ff7c6e7c740h, 7ff7c6e7c757h][23] = {0f 1f 44 00 00 0f b6 c1 85 c0 74 05 f3 0f bc c0 c3 b8 08 00 00 00 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:51:933
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah je short 0011h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000ch tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
0011h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
