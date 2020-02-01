------------------------------------------------------------------------------------------------------------------------
; byte promote<byte>(bit src)
; promote_g[18] = {0f 1f 44 00 00 85 c9 75 03 33 c0 c3 b8 ff 00 00 00 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte promote<sbyte>(bit src)
; promote_g[18] = {0f 1f 44 00 00 85 c9 75 03 33 c0 c3 b8 7f 00 00 00 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort promote<ushort>(bit src)
; promote_g[18] = {0f 1f 44 00 00 85 c9 75 03 33 c0 c3 b8 ff ff 00 00 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short promote<short>(bit src)
; promote_g[18] = {0f 1f 44 00 00 85 c9 75 03 33 c0 c3 b8 ff 7f 00 00 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint promote<uint>(bit src)
; promote_g[18] = {0f 1f 44 00 00 85 c9 75 03 33 c0 c3 b8 ff ff ff ff c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int promote<int>(bit src)
; promote_g[18] = {0f 1f 44 00 00 85 c9 75 03 33 c0 c3 b8 ff ff ff 7f c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong promote<ulong>(bit src)
; promote_g[23] = {0f 1f 44 00 00 85 c9 75 03 33 c0 c3 48 b8 ff ff ff ff ff ff ff ff c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long promote<long>(bit src)
; promote_g[23] = {0f 1f 44 00 00 85 c9 75 03 33 c0 c3 48 b8 ff ff ff ff ff ff ff 7f c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
