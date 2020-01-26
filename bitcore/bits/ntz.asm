------------------------------------------------------------------------------------------------------------------------
; int ntz(byte src)
; ntz_8u[23] = {0f 1f 44 00 00 0f b6 c1 85 c0 74 05 f3 0f bc c0 c3 b8 08 00 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah je short 0011h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000ch tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
0011h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(short src)
; ntz_16i[24] = {0f 1f 44 00 00 48 0f bf c1 85 c0 74 05 f3 0f bc c0 c3 b8 10 00 00 00 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh je short 0012h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000dh tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(ushort src)
; ntz_16u[23] = {0f 1f 44 00 00 0f b7 c1 85 c0 74 05 f3 0f bc c0 c3 b8 10 00 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah je short 0011h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000ch tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
0011h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(int src)
; ntz_32i[12] = {0f 1f 44 00 00 33 c0 f3 0f bc c1 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h tzcnt eax,ecx                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(uint src)
; ntz_32u[12] = {0f 1f 44 00 00 33 c0 f3 0f bc c1 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h tzcnt eax,ecx                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(long src)
; ntz_64i[13] = {0f 1f 44 00 00 33 c0 f3 48 0f bc c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h tzcnt rax,rcx                           ; TZCNT r64, r/m64 || F3 REX.W 0F BC /r || encoded[5]{f3 48 0f bc c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(ulong src)
; ntz_64u[13] = {0f 1f 44 00 00 33 c0 f3 48 0f bc c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h tzcnt rax,rcx                           ; TZCNT r64, r/m64 || F3 REX.W 0F BC /r || encoded[5]{f3 48 0f bc c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ntz(sbyte src)
; ntz_8i[24] = {0f 1f 44 00 00 48 0f be c1 85 c0 74 05 f3 0f bc c0 c3 b8 08 00 00 00 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh je short 0012h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000dh tzcnt eax,eax                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
