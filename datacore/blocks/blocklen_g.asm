------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N8 w, byte t)
; blocklen_gn8_8u[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N8 w, sbyte t)
; blocklen_gn8_8i[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N16 w, byte t)
; blocklen_gn16_8u[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N16 w, sbyte t)
; blocklen_gn16_8i[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N16 w, ushort t)
; blocklen_gn16_16u[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N16 w, short t)
; blocklen_gn16_16i[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N32 w, byte t)
; blocklen_gn32_8u[11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N32 w, sbyte t)
; blocklen_gn32_8i[11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N32 w, ushort t)
; blocklen_gn32_16u[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N32 w, short t)
; blocklen_gn32_16i[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<uint>(N32 w, uint t)
; blocklen_gn32_32u[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<int>(N32 w, int t)
; blocklen_gn32_32i[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<float>(N32 w, float t)
; blocklen_gn32_32f[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N64 w, byte t)
; blocklen_gn64_8u[11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N64 w, sbyte t)
; blocklen_gn64_8i[11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N64 w, ushort t)
; blocklen_gn64_16u[11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N64 w, short t)
; blocklen_gn64_16i[11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<uint>(N64 w, uint t)
; blocklen_gn64_32u[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<int>(N64 w, int t)
; blocklen_gn64_32i[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ulong>(N64 w, ulong t)
; blocklen_gn64_64u[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<long>(N64 w, long t)
; blocklen_gn64_64i[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<float>(N64 w, float t)
; blocklen_gn64_32f[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<double>(N64 w, double t)
; blocklen_gn64_64f[11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N128 w, byte t)
; blocklen_gn128_8u[11] = {0f 1f 44 00 00 b8 10 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N128 w, sbyte t)
; blocklen_gn128_8i[11] = {0f 1f 44 00 00 b8 10 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N128 w, ushort t)
; blocklen_gn128_16u[11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N128 w, short t)
; blocklen_gn128_16i[11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<uint>(N128 w, uint t)
; blocklen_gn128_32u[11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<int>(N128 w, int t)
; blocklen_gn128_32i[11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ulong>(N128 w, ulong t)
; blocklen_gn128_64u[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<long>(N128 w, long t)
; blocklen_gn128_64i[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<float>(N128 w, float t)
; blocklen_gn128_32f[11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<double>(N128 w, double t)
; blocklen_gn128_64f[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N256 w, byte t)
; blocklen_gn256_8u[11] = {0f 1f 44 00 00 b8 20 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N256 w, sbyte t)
; blocklen_gn256_8i[11] = {0f 1f 44 00 00 b8 20 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N256 w, ushort t)
; blocklen_gn256_16u[11] = {0f 1f 44 00 00 b8 10 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N256 w, short t)
; blocklen_gn256_16i[11] = {0f 1f 44 00 00 b8 10 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<uint>(N256 w, uint t)
; blocklen_gn256_32u[11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<int>(N256 w, int t)
; blocklen_gn256_32i[11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ulong>(N256 w, ulong t)
; blocklen_gn256_64u[11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<long>(N256 w, long t)
; blocklen_gn256_64i[11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<float>(N256 w, float t)
; blocklen_gn256_32f[11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<double>(N256 w, double t)
; blocklen_gn256_64f[11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N512 w, byte t)
; blocklen_gn512_8u[11] = {0f 1f 44 00 00 b8 40 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N512 w, sbyte t)
; blocklen_gn512_8i[11] = {0f 1f 44 00 00 b8 40 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N512 w, ushort t)
; blocklen_gn512_16u[11] = {0f 1f 44 00 00 b8 20 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N512 w, short t)
; blocklen_gn512_16i[11] = {0f 1f 44 00 00 b8 20 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<uint>(N512 w, uint t)
; blocklen_gn512_32u[11] = {0f 1f 44 00 00 b8 10 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<int>(N512 w, int t)
; blocklen_gn512_32i[11] = {0f 1f 44 00 00 b8 10 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ulong>(N512 w, ulong t)
; blocklen_gn512_64u[11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<long>(N512 w, long t)
; blocklen_gn512_64i[11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<float>(N512 w, float t)
; blocklen_gn512_32f[11] = {0f 1f 44 00 00 b8 10 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<double>(N512 w, double t)
; blocklen_gn512_64f[11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
