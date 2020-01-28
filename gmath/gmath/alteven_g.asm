------------------------------------------------------------------------------------------------------------------------
; byte alteven<byte>()
; alteven[11] = {0f 1f 44 00 00 b8 aa 00 00 00 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0aah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort alteven<ushort>()
; alteven[11] = {0f 1f 44 00 00 b8 aa aa 00 00 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0aaaah                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa aa 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint alteven<uint>()
; alteven[11] = {0f 1f 44 00 00 b8 aa aa aa aa c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa aa aa aa}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong alteven<ulong>()
; alteven[16] = {0f 1f 44 00 00 48 b8 aa aa aa aa aa aa aa aa c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 aa aa aa aa aa aa aa aa}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
