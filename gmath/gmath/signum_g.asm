------------------------------------------------------------------------------------------------------------------------
; Sign:int signum<byte>(byte a)
; signum_g8u[25] = {0f 1f 44 00 00 0f b6 c1 85 c0 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0013h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ch mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0011h jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0013h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum<sbyte>(sbyte a)
; signum_g8i[24] = {0f 1f 44 00 00 48 0f be c1 8b d0 f7 d2 ff c2 c1 ea 1f c1 f8 1f 0b c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
000fh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0012h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum<ushort>(ushort a)
; signum_g16u[25] = {0f 1f 44 00 00 0f b7 c1 85 c0 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0013h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ch mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0011h jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0013h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum<Int16>(Int16 a)
; signum_g16i[24] = {0f 1f 44 00 00 48 0f bf c1 8b d0 f7 d2 ff c2 c1 ea 1f c1 f8 1f 0b c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
000fh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0012h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum<uint>(uint a)
; signum_g32u[22] = {0f 1f 44 00 00 85 c9 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum<int>(int a)
; signum_g32i[20] = {0f 1f 44 00 00 8b c1 f7 d0 ff c0 c1 e8 1f c1 f9 1f 0b c1 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum<ulong>(ulong a)
; signum_g64u[23] = {0f 1f 44 00 00 48 85 c9 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h jne short 0011h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000fh jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0011h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum<long>(long a)
; signum_g64i[27] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 ff c0 48 c1 e8 3f 48 c1 f9 3f 8b d1 0b c2 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh inc rax                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c0}
000eh shr rax,3fh                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 3f}
0012h sar rcx,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f9 3f}
0016h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
