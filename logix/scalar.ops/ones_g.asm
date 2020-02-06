------------------------------------------------------------------------------------------------------------------------
; byte ones<byte>()
; ones_g[11] = {0f 1f 44 00 00 b8 ff 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte ones<sbyte>()
; ones_g[11] = {0f 1f 44 00 00 b8 7f 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort ones<ushort>()
; ones_g[11] = {0f 1f 44 00 00 b8 ff ff 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short ones<short>()
; ones_g[11] = {0f 1f 44 00 00 b8 ff 7f 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint ones<uint>()
; ones_g[11] = {0f 1f 44 00 00 b8 ff ff ff ff c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ones<int>()
; ones_g[11] = {0f 1f 44 00 00 b8 ff ff ff 7f c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong ones<ulong>()
; ones_g[16] = {0f 1f 44 00 00 48 b8 ff ff ff ff ff ff ff ff c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long ones<long>()
; ones_g[16] = {0f 1f 44 00 00 48 b8 ff ff ff ff ff ff ff 7f c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
