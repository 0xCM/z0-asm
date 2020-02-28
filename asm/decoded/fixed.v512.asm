------------------------------------------------------------------------------------------------------------------------
; ref Vector512<byte> vgeneric<byte>(in Vector512<sbyte> src), hex://fixed/v512?vgeneric#vgeneric_g[8u](v512x8i~in)
; vgeneric_g[8u](v512x8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<sbyte> vgeneric<sbyte>(in Vector512<sbyte> src), hex://fixed/v512?vgeneric#vgeneric_g[8i](v512x8i~in)
; vgeneric_g[8i](v512x8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ushort> vgeneric<ushort>(in Vector512<sbyte> src), hex://fixed/v512?vgeneric#vgeneric_g[16u](v512x8i~in)
; vgeneric_g[16u](v512x8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<short> vgeneric<short>(in Vector512<sbyte> src), hex://fixed/v512?vgeneric#vgeneric_g[16i](v512x8i~in)
; vgeneric_g[16i](v512x8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<uint> vgeneric<uint>(in Vector512<sbyte> src), hex://fixed/v512?vgeneric#vgeneric_g[32u](v512x8i~in)
; vgeneric_g[32u](v512x8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<int> vgeneric<int>(in Vector512<sbyte> src), hex://fixed/v512?vgeneric#vgeneric_g[32i](v512x8i~in)
; vgeneric_g[32i](v512x8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ulong> vgeneric<ulong>(in Vector512<sbyte> src), hex://fixed/v512?vgeneric#vgeneric_g[64u](v512x8i~in)
; vgeneric_g[64u](v512x8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<long> vgeneric<long>(in Vector512<sbyte> src), hex://fixed/v512?vgeneric#vgeneric_g[64i](v512x8i~in)
; vgeneric_g[64i](v512x8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<float> vgeneric<float>(in Vector512<sbyte> src), hex://fixed/v512?vgeneric#vgeneric_g[32f](v512x8i~in)
; vgeneric_g[32f](v512x8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<double> vgeneric<double>(in Vector512<sbyte> src), hex://fixed/v512?vgeneric#vgeneric_g[64f](v512x8i~in)
; vgeneric_g[64f](v512x8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<byte> vgeneric<byte>(in Vector512<byte> src), hex://fixed/v512?vgeneric#vgeneric_g[8u](v512x8u~in)
; vgeneric_g[8u](v512x8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<sbyte> vgeneric<sbyte>(in Vector512<byte> src), hex://fixed/v512?vgeneric#vgeneric_g[8i](v512x8u~in)
; vgeneric_g[8i](v512x8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ushort> vgeneric<ushort>(in Vector512<byte> src), hex://fixed/v512?vgeneric#vgeneric_g[16u](v512x8u~in)
; vgeneric_g[16u](v512x8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<short> vgeneric<short>(in Vector512<byte> src), hex://fixed/v512?vgeneric#vgeneric_g[16i](v512x8u~in)
; vgeneric_g[16i](v512x8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<uint> vgeneric<uint>(in Vector512<byte> src), hex://fixed/v512?vgeneric#vgeneric_g[32u](v512x8u~in)
; vgeneric_g[32u](v512x8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<int> vgeneric<int>(in Vector512<byte> src), hex://fixed/v512?vgeneric#vgeneric_g[32i](v512x8u~in)
; vgeneric_g[32i](v512x8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ulong> vgeneric<ulong>(in Vector512<byte> src), hex://fixed/v512?vgeneric#vgeneric_g[64u](v512x8u~in)
; vgeneric_g[64u](v512x8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<long> vgeneric<long>(in Vector512<byte> src), hex://fixed/v512?vgeneric#vgeneric_g[64i](v512x8u~in)
; vgeneric_g[64i](v512x8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<float> vgeneric<float>(in Vector512<byte> src), hex://fixed/v512?vgeneric#vgeneric_g[32f](v512x8u~in)
; vgeneric_g[32f](v512x8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<double> vgeneric<double>(in Vector512<byte> src), hex://fixed/v512?vgeneric#vgeneric_g[64f](v512x8u~in)
; vgeneric_g[64f](v512x8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<byte> vgeneric<byte>(in Vector512<short> src), hex://fixed/v512?vgeneric#vgeneric_g[8u](v512x16i~in)
; vgeneric_g[8u](v512x16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<sbyte> vgeneric<sbyte>(in Vector512<short> src), hex://fixed/v512?vgeneric#vgeneric_g[8i](v512x16i~in)
; vgeneric_g[8i](v512x16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ushort> vgeneric<ushort>(in Vector512<short> src), hex://fixed/v512?vgeneric#vgeneric_g[16u](v512x16i~in)
; vgeneric_g[16u](v512x16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<short> vgeneric<short>(in Vector512<short> src), hex://fixed/v512?vgeneric#vgeneric_g[16i](v512x16i~in)
; vgeneric_g[16i](v512x16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<uint> vgeneric<uint>(in Vector512<short> src), hex://fixed/v512?vgeneric#vgeneric_g[32u](v512x16i~in)
; vgeneric_g[32u](v512x16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<int> vgeneric<int>(in Vector512<short> src), hex://fixed/v512?vgeneric#vgeneric_g[32i](v512x16i~in)
; vgeneric_g[32i](v512x16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ulong> vgeneric<ulong>(in Vector512<short> src), hex://fixed/v512?vgeneric#vgeneric_g[64u](v512x16i~in)
; vgeneric_g[64u](v512x16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<long> vgeneric<long>(in Vector512<short> src), hex://fixed/v512?vgeneric#vgeneric_g[64i](v512x16i~in)
; vgeneric_g[64i](v512x16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<float> vgeneric<float>(in Vector512<short> src), hex://fixed/v512?vgeneric#vgeneric_g[32f](v512x16i~in)
; vgeneric_g[32f](v512x16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<double> vgeneric<double>(in Vector512<short> src), hex://fixed/v512?vgeneric#vgeneric_g[64f](v512x16i~in)
; vgeneric_g[64f](v512x16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<byte> vgeneric<byte>(in Vector512<ushort> src), hex://fixed/v512?vgeneric#vgeneric_g[8u](v512x16u~in)
; vgeneric_g[8u](v512x16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<sbyte> vgeneric<sbyte>(in Vector512<ushort> src), hex://fixed/v512?vgeneric#vgeneric_g[8i](v512x16u~in)
; vgeneric_g[8i](v512x16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ushort> vgeneric<ushort>(in Vector512<ushort> src), hex://fixed/v512?vgeneric#vgeneric_g[16u](v512x16u~in)
; vgeneric_g[16u](v512x16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<short> vgeneric<short>(in Vector512<ushort> src), hex://fixed/v512?vgeneric#vgeneric_g[16i](v512x16u~in)
; vgeneric_g[16i](v512x16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<uint> vgeneric<uint>(in Vector512<ushort> src), hex://fixed/v512?vgeneric#vgeneric_g[32u](v512x16u~in)
; vgeneric_g[32u](v512x16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<int> vgeneric<int>(in Vector512<ushort> src), hex://fixed/v512?vgeneric#vgeneric_g[32i](v512x16u~in)
; vgeneric_g[32i](v512x16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ulong> vgeneric<ulong>(in Vector512<ushort> src), hex://fixed/v512?vgeneric#vgeneric_g[64u](v512x16u~in)
; vgeneric_g[64u](v512x16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<long> vgeneric<long>(in Vector512<ushort> src), hex://fixed/v512?vgeneric#vgeneric_g[64i](v512x16u~in)
; vgeneric_g[64i](v512x16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<float> vgeneric<float>(in Vector512<ushort> src), hex://fixed/v512?vgeneric#vgeneric_g[32f](v512x16u~in)
; vgeneric_g[32f](v512x16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<double> vgeneric<double>(in Vector512<ushort> src), hex://fixed/v512?vgeneric#vgeneric_g[64f](v512x16u~in)
; vgeneric_g[64f](v512x16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<byte> vgeneric<byte>(in Vector512<int> src), hex://fixed/v512?vgeneric#vgeneric_g[8u](v512x32i~in)
; vgeneric_g[8u](v512x32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<sbyte> vgeneric<sbyte>(in Vector512<int> src), hex://fixed/v512?vgeneric#vgeneric_g[8i](v512x32i~in)
; vgeneric_g[8i](v512x32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ushort> vgeneric<ushort>(in Vector512<int> src), hex://fixed/v512?vgeneric#vgeneric_g[16u](v512x32i~in)
; vgeneric_g[16u](v512x32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<short> vgeneric<short>(in Vector512<int> src), hex://fixed/v512?vgeneric#vgeneric_g[16i](v512x32i~in)
; vgeneric_g[16i](v512x32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<uint> vgeneric<uint>(in Vector512<int> src), hex://fixed/v512?vgeneric#vgeneric_g[32u](v512x32i~in)
; vgeneric_g[32u](v512x32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<int> vgeneric<int>(in Vector512<int> src), hex://fixed/v512?vgeneric#vgeneric_g[32i](v512x32i~in)
; vgeneric_g[32i](v512x32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ulong> vgeneric<ulong>(in Vector512<int> src), hex://fixed/v512?vgeneric#vgeneric_g[64u](v512x32i~in)
; vgeneric_g[64u](v512x32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<long> vgeneric<long>(in Vector512<int> src), hex://fixed/v512?vgeneric#vgeneric_g[64i](v512x32i~in)
; vgeneric_g[64i](v512x32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<float> vgeneric<float>(in Vector512<int> src), hex://fixed/v512?vgeneric#vgeneric_g[32f](v512x32i~in)
; vgeneric_g[32f](v512x32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<double> vgeneric<double>(in Vector512<int> src), hex://fixed/v512?vgeneric#vgeneric_g[64f](v512x32i~in)
; vgeneric_g[64f](v512x32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<byte> vgeneric<byte>(in Vector512<uint> src), hex://fixed/v512?vgeneric#vgeneric_g[8u](v512x32u~in)
; vgeneric_g[8u](v512x32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<sbyte> vgeneric<sbyte>(in Vector512<uint> src), hex://fixed/v512?vgeneric#vgeneric_g[8i](v512x32u~in)
; vgeneric_g[8i](v512x32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ushort> vgeneric<ushort>(in Vector512<uint> src), hex://fixed/v512?vgeneric#vgeneric_g[16u](v512x32u~in)
; vgeneric_g[16u](v512x32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<short> vgeneric<short>(in Vector512<uint> src), hex://fixed/v512?vgeneric#vgeneric_g[16i](v512x32u~in)
; vgeneric_g[16i](v512x32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<uint> vgeneric<uint>(in Vector512<uint> src), hex://fixed/v512?vgeneric#vgeneric_g[32u](v512x32u~in)
; vgeneric_g[32u](v512x32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<int> vgeneric<int>(in Vector512<uint> src), hex://fixed/v512?vgeneric#vgeneric_g[32i](v512x32u~in)
; vgeneric_g[32i](v512x32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ulong> vgeneric<ulong>(in Vector512<uint> src), hex://fixed/v512?vgeneric#vgeneric_g[64u](v512x32u~in)
; vgeneric_g[64u](v512x32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<long> vgeneric<long>(in Vector512<uint> src), hex://fixed/v512?vgeneric#vgeneric_g[64i](v512x32u~in)
; vgeneric_g[64i](v512x32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<float> vgeneric<float>(in Vector512<uint> src), hex://fixed/v512?vgeneric#vgeneric_g[32f](v512x32u~in)
; vgeneric_g[32f](v512x32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<double> vgeneric<double>(in Vector512<uint> src), hex://fixed/v512?vgeneric#vgeneric_g[64f](v512x32u~in)
; vgeneric_g[64f](v512x32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<byte> vgeneric<byte>(in Vector512<long> src), hex://fixed/v512?vgeneric#vgeneric_g[8u](v512x64i~in)
; vgeneric_g[8u](v512x64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<sbyte> vgeneric<sbyte>(in Vector512<long> src), hex://fixed/v512?vgeneric#vgeneric_g[8i](v512x64i~in)
; vgeneric_g[8i](v512x64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ushort> vgeneric<ushort>(in Vector512<long> src), hex://fixed/v512?vgeneric#vgeneric_g[16u](v512x64i~in)
; vgeneric_g[16u](v512x64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<short> vgeneric<short>(in Vector512<long> src), hex://fixed/v512?vgeneric#vgeneric_g[16i](v512x64i~in)
; vgeneric_g[16i](v512x64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<uint> vgeneric<uint>(in Vector512<long> src), hex://fixed/v512?vgeneric#vgeneric_g[32u](v512x64i~in)
; vgeneric_g[32u](v512x64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<int> vgeneric<int>(in Vector512<long> src), hex://fixed/v512?vgeneric#vgeneric_g[32i](v512x64i~in)
; vgeneric_g[32i](v512x64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ulong> vgeneric<ulong>(in Vector512<long> src), hex://fixed/v512?vgeneric#vgeneric_g[64u](v512x64i~in)
; vgeneric_g[64u](v512x64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<long> vgeneric<long>(in Vector512<long> src), hex://fixed/v512?vgeneric#vgeneric_g[64i](v512x64i~in)
; vgeneric_g[64i](v512x64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<float> vgeneric<float>(in Vector512<long> src), hex://fixed/v512?vgeneric#vgeneric_g[32f](v512x64i~in)
; vgeneric_g[32f](v512x64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<double> vgeneric<double>(in Vector512<long> src), hex://fixed/v512?vgeneric#vgeneric_g[64f](v512x64i~in)
; vgeneric_g[64f](v512x64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<byte> vgeneric<byte>(in Vector512<ulong> src), hex://fixed/v512?vgeneric#vgeneric_g[8u](v512x64u~in)
; vgeneric_g[8u](v512x64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<sbyte> vgeneric<sbyte>(in Vector512<ulong> src), hex://fixed/v512?vgeneric#vgeneric_g[8i](v512x64u~in)
; vgeneric_g[8i](v512x64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ushort> vgeneric<ushort>(in Vector512<ulong> src), hex://fixed/v512?vgeneric#vgeneric_g[16u](v512x64u~in)
; vgeneric_g[16u](v512x64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<short> vgeneric<short>(in Vector512<ulong> src), hex://fixed/v512?vgeneric#vgeneric_g[16i](v512x64u~in)
; vgeneric_g[16i](v512x64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<uint> vgeneric<uint>(in Vector512<ulong> src), hex://fixed/v512?vgeneric#vgeneric_g[32u](v512x64u~in)
; vgeneric_g[32u](v512x64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<int> vgeneric<int>(in Vector512<ulong> src), hex://fixed/v512?vgeneric#vgeneric_g[32i](v512x64u~in)
; vgeneric_g[32i](v512x64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ulong> vgeneric<ulong>(in Vector512<ulong> src), hex://fixed/v512?vgeneric#vgeneric_g[64u](v512x64u~in)
; vgeneric_g[64u](v512x64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<long> vgeneric<long>(in Vector512<ulong> src), hex://fixed/v512?vgeneric#vgeneric_g[64i](v512x64u~in)
; vgeneric_g[64i](v512x64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<float> vgeneric<float>(in Vector512<ulong> src), hex://fixed/v512?vgeneric#vgeneric_g[32f](v512x64u~in)
; vgeneric_g[32f](v512x64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<double> vgeneric<double>(in Vector512<ulong> src), hex://fixed/v512?vgeneric#vgeneric_g[64f](v512x64u~in)
; vgeneric_g[64f](v512x64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<byte> vgeneric<byte>(in Vector512<float> src), hex://fixed/v512?vgeneric#vgeneric_g[8u](v512x32f~in)
; vgeneric_g[8u](v512x32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<sbyte> vgeneric<sbyte>(in Vector512<float> src), hex://fixed/v512?vgeneric#vgeneric_g[8i](v512x32f~in)
; vgeneric_g[8i](v512x32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ushort> vgeneric<ushort>(in Vector512<float> src), hex://fixed/v512?vgeneric#vgeneric_g[16u](v512x32f~in)
; vgeneric_g[16u](v512x32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<short> vgeneric<short>(in Vector512<float> src), hex://fixed/v512?vgeneric#vgeneric_g[16i](v512x32f~in)
; vgeneric_g[16i](v512x32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<uint> vgeneric<uint>(in Vector512<float> src), hex://fixed/v512?vgeneric#vgeneric_g[32u](v512x32f~in)
; vgeneric_g[32u](v512x32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<int> vgeneric<int>(in Vector512<float> src), hex://fixed/v512?vgeneric#vgeneric_g[32i](v512x32f~in)
; vgeneric_g[32i](v512x32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ulong> vgeneric<ulong>(in Vector512<float> src), hex://fixed/v512?vgeneric#vgeneric_g[64u](v512x32f~in)
; vgeneric_g[64u](v512x32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<long> vgeneric<long>(in Vector512<float> src), hex://fixed/v512?vgeneric#vgeneric_g[64i](v512x32f~in)
; vgeneric_g[64i](v512x32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<float> vgeneric<float>(in Vector512<float> src), hex://fixed/v512?vgeneric#vgeneric_g[32f](v512x32f~in)
; vgeneric_g[32f](v512x32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<double> vgeneric<double>(in Vector512<float> src), hex://fixed/v512?vgeneric#vgeneric_g[64f](v512x32f~in)
; vgeneric_g[64f](v512x32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<byte> vgeneric<byte>(in Vector512<double> src), hex://fixed/v512?vgeneric#vgeneric_g[8u](v512x64f~in)
; vgeneric_g[8u](v512x64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<sbyte> vgeneric<sbyte>(in Vector512<double> src), hex://fixed/v512?vgeneric#vgeneric_g[8i](v512x64f~in)
; vgeneric_g[8i](v512x64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ushort> vgeneric<ushort>(in Vector512<double> src), hex://fixed/v512?vgeneric#vgeneric_g[16u](v512x64f~in)
; vgeneric_g[16u](v512x64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<short> vgeneric<short>(in Vector512<double> src), hex://fixed/v512?vgeneric#vgeneric_g[16i](v512x64f~in)
; vgeneric_g[16i](v512x64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<uint> vgeneric<uint>(in Vector512<double> src), hex://fixed/v512?vgeneric#vgeneric_g[32u](v512x64f~in)
; vgeneric_g[32u](v512x64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<int> vgeneric<int>(in Vector512<double> src), hex://fixed/v512?vgeneric#vgeneric_g[32i](v512x64f~in)
; vgeneric_g[32i](v512x64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<ulong> vgeneric<ulong>(in Vector512<double> src), hex://fixed/v512?vgeneric#vgeneric_g[64u](v512x64f~in)
; vgeneric_g[64u](v512x64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<long> vgeneric<long>(in Vector512<double> src), hex://fixed/v512?vgeneric#vgeneric_g[64i](v512x64f~in)
; vgeneric_g[64i](v512x64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<float> vgeneric<float>(in Vector512<double> src), hex://fixed/v512?vgeneric#vgeneric_g[32f](v512x64f~in)
; vgeneric_g[32f](v512x64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector512<double> vgeneric<double>(in Vector512<double> src), hex://fixed/v512?vgeneric#vgeneric_g[64f](v512x64f~in)
; vgeneric_g[64f](v512x64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<short> Create(short x0, short x1, short x2, short x3, short x4, short x5, short x6, short x7, short x8, short x9, short x10, short x11, short x12, short x13, short x14, short x15, short x16, short x17, short x18, short x19, short x20, short x21, short x22, short x23, short x24, short x25, short x26, short x27, short x28, short x29, short x30, short x31), hex://fixed/v512?Create#Create_(16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i)
; Create_(16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i,16i)[487] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x0f,0xbf,0xc2,0xc5,0xf9,0x6e,0xc0,0x49,0x0f,0xbf,0xc0,0xc5,0xf9,0xc4,0xc0,0x01,0x49,0x0f,0xbf,0xc1,0xc5,0xf9,0xc4,0xc0,0x02,0x8b,0x44,0x24,0x28,0x48,0x0f,0xbf,0xc0,0xc5,0xf9,0xc4,0xc0,0x03,0x8b,0x44,0x24,0x30,0x48,0x0f,0xbf,0xc0,0xc5,0xf9,0xc4,0xc0,0x04,0x8b,0x44,0x24,0x38,0x48,0x0f,0xbf,0xc0,0xc5,0xf9,0xc4,0xc0,0x05,0x8b,0x44,0x24,0x40,0x48,0x0f,0xbf,0xc0,0xc5,0xf9,0xc4,0xc0,0x06,0x8b,0x44,0x24,0x48,0x48,0x0f,0xbf,0xc0,0xc5,0xf9,0xc4,0xc0,0x07,0x8b,0x44,0x24,0x50,0x48,0x0f,0xbf,0xc0,0xc5,0xf9,0x6e,0xc8,0x8b,0x44,0x24,0x58,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x01,0x8b,0x44,0x24,0x60,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x02,0x8b,0x44,0x24,0x68,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x03,0x8b,0x44,0x24,0x70,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x04,0x8b,0x44,0x24,0x78,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x05,0x8b,0x84,0x24,0x80,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x06,0x8b,0x84,0x24,0x88,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x07,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0x8b,0x84,0x24,0x90,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf9,0x6e,0xc8,0x8b,0x84,0x24,0x98,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x01,0x8b,0x84,0x24,0xa0,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x02,0x8b,0x84,0x24,0xa8,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x03,0x8b,0x84,0x24,0xb0,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x04,0x8b,0x84,0x24,0xb8,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x05,0x8b,0x84,0x24,0xc0,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x06,0x8b,0x84,0x24,0xc8,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf1,0xc4,0xc8,0x07,0x8b,0x84,0x24,0xd0,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xf9,0x6e,0xd0,0x8b,0x84,0x24,0xd8,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xe9,0xc4,0xd0,0x01,0x8b,0x84,0x24,0xe0,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xe9,0xc4,0xd0,0x02,0x8b,0x84,0x24,0xe8,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xe9,0xc4,0xd0,0x03,0x8b,0x84,0x24,0xf0,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xe9,0xc4,0xd0,0x04,0x8b,0x84,0x24,0xf8,0x00,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xe9,0xc4,0xd0,0x05,0x8b,0x84,0x24,0x00,0x01,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xe9,0xc4,0xd0,0x06,0x8b,0x84,0x24,0x08,0x01,0x00,0x00,0x48,0x0f,0xbf,0xc0,0xc5,0xe9,0xc4,0xd0,0x07,0xc4,0xe3,0x75,0x38,0xca,0x01,0xc5,0xfd,0x11,0x01,0xc5,0xfd,0x11,0x49,0x20,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0011h vpinsrw xmm0,xmm0,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 01}
0016h movsx rax,r9w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c1}
001ah vpinsrw xmm0,xmm0,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 02}
001fh mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0023h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0027h vpinsrw xmm0,xmm0,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 03}
002ch mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0030h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0034h vpinsrw xmm0,xmm0,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 04}
0039h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
003dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0041h vpinsrw xmm0,xmm0,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 05}
0046h mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
004ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
004eh vpinsrw xmm0,xmm0,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 06}
0053h mov eax,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 48}
0057h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
005bh vpinsrw xmm0,xmm0,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 07}
0060h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
0064h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0068h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
006ch mov eax,[rsp+58h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 58}
0070h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0074h vpinsrw xmm1,xmm1,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 01}
0079h mov eax,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 60}
007dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0081h vpinsrw xmm1,xmm1,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 02}
0086h mov eax,[rsp+68h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 68}
008ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
008eh vpinsrw xmm1,xmm1,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 03}
0093h mov eax,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 70}
0097h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
009bh vpinsrw xmm1,xmm1,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 04}
00a0h mov eax,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 78}
00a4h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00a8h vpinsrw xmm1,xmm1,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 05}
00adh mov eax,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 80 00 00 00}
00b4h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00b8h vpinsrw xmm1,xmm1,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 06}
00bdh mov eax,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 88 00 00 00}
00c4h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00c8h vpinsrw xmm1,xmm1,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 07}
00cdh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
00d3h mov eax,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 90 00 00 00}
00dah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00deh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00e2h mov eax,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 98 00 00 00}
00e9h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00edh vpinsrw xmm1,xmm1,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 01}
00f2h mov eax,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 a0 00 00 00}
00f9h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00fdh vpinsrw xmm1,xmm1,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 02}
0102h mov eax,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 a8 00 00 00}
0109h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
010dh vpinsrw xmm1,xmm1,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 03}
0112h mov eax,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b0 00 00 00}
0119h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
011dh vpinsrw xmm1,xmm1,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 04}
0122h mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
0129h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
012dh vpinsrw xmm1,xmm1,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 05}
0132h mov eax,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 c0 00 00 00}
0139h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
013dh vpinsrw xmm1,xmm1,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 06}
0142h mov eax,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 c8 00 00 00}
0149h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
014dh vpinsrw xmm1,xmm1,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 07}
0152h mov eax,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 d0 00 00 00}
0159h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
015dh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
0161h mov eax,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 d8 00 00 00}
0168h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
016ch vpinsrw xmm2,xmm2,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 01}
0171h mov eax,[rsp+0e0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 e0 00 00 00}
0178h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
017ch vpinsrw xmm2,xmm2,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 02}
0181h mov eax,[rsp+0e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 e8 00 00 00}
0188h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
018ch vpinsrw xmm2,xmm2,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 03}
0191h mov eax,[rsp+0f0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f0 00 00 00}
0198h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
019ch vpinsrw xmm2,xmm2,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 04}
01a1h mov eax,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f8 00 00 00}
01a8h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
01ach vpinsrw xmm2,xmm2,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 05}
01b1h mov eax,[rsp+100h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 00 01 00 00}
01b8h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
01bch vpinsrw xmm2,xmm2,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 06}
01c1h mov eax,[rsp+108h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 08 01 00 00}
01c8h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
01cch vpinsrw xmm2,xmm2,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 07}
01d1h vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
01d7h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01dbh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
01e0h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01e3h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01e6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> Create(ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort x10, ushort x11, ushort x12, ushort x13, ushort x14, ushort x15, ushort x16, ushort x17, ushort x18, ushort x19, ushort x20, ushort x21, ushort x22, ushort x23, ushort x24, ushort x25, ushort x26, ushort x27, ushort x28, ushort x29, ushort x30, ushort x31), hex://fixed/v512?Create#Create_(16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u)
; Create_(16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u)[457] = {0xc5,0xf8,0x77,0x66,0x90,0x0f,0xb7,0xc2,0xc5,0xf9,0x6e,0xc0,0x41,0x0f,0xb7,0xc0,0xc5,0xf9,0xc4,0xc0,0x01,0x41,0x0f,0xb7,0xc1,0xc5,0xf9,0xc4,0xc0,0x02,0x8b,0x44,0x24,0x28,0x0f,0xb7,0xc0,0xc5,0xf9,0xc4,0xc0,0x03,0x8b,0x44,0x24,0x30,0x0f,0xb7,0xc0,0xc5,0xf9,0xc4,0xc0,0x04,0x8b,0x44,0x24,0x38,0x0f,0xb7,0xc0,0xc5,0xf9,0xc4,0xc0,0x05,0x8b,0x44,0x24,0x40,0x0f,0xb7,0xc0,0xc5,0xf9,0xc4,0xc0,0x06,0x8b,0x44,0x24,0x48,0x0f,0xb7,0xc0,0xc5,0xf9,0xc4,0xc0,0x07,0x8b,0x44,0x24,0x50,0x0f,0xb7,0xc0,0xc5,0xf9,0x6e,0xc8,0x8b,0x44,0x24,0x58,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x01,0x8b,0x44,0x24,0x60,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x02,0x8b,0x44,0x24,0x68,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x03,0x8b,0x44,0x24,0x70,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x04,0x8b,0x44,0x24,0x78,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x05,0x8b,0x84,0x24,0x80,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x06,0x8b,0x84,0x24,0x88,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x07,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0x8b,0x84,0x24,0x90,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf9,0x6e,0xc8,0x8b,0x84,0x24,0x98,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x01,0x8b,0x84,0x24,0xa0,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x02,0x8b,0x84,0x24,0xa8,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x03,0x8b,0x84,0x24,0xb0,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x04,0x8b,0x84,0x24,0xb8,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x05,0x8b,0x84,0x24,0xc0,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x06,0x8b,0x84,0x24,0xc8,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf1,0xc4,0xc8,0x07,0x8b,0x84,0x24,0xd0,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xf9,0x6e,0xd0,0x8b,0x84,0x24,0xd8,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xe9,0xc4,0xd0,0x01,0x8b,0x84,0x24,0xe0,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xe9,0xc4,0xd0,0x02,0x8b,0x84,0x24,0xe8,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xe9,0xc4,0xd0,0x03,0x8b,0x84,0x24,0xf0,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xe9,0xc4,0xd0,0x04,0x8b,0x84,0x24,0xf8,0x00,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xe9,0xc4,0xd0,0x05,0x8b,0x84,0x24,0x00,0x01,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xe9,0xc4,0xd0,0x06,0x8b,0x84,0x24,0x08,0x01,0x00,0x00,0x0f,0xb7,0xc0,0xc5,0xe9,0xc4,0xd0,0x07,0xc4,0xe3,0x75,0x38,0xca,0x01,0xc5,0xfd,0x11,0x01,0xc5,0xfd,0x11,0x49,0x20,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000ch movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0010h vpinsrw xmm0,xmm0,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 01}
0015h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0019h vpinsrw xmm0,xmm0,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 02}
001eh mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0022h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0025h vpinsrw xmm0,xmm0,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 03}
002ah mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
002eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0031h vpinsrw xmm0,xmm0,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 04}
0036h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
003ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
003dh vpinsrw xmm0,xmm0,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 05}
0042h mov eax,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 40}
0046h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0049h vpinsrw xmm0,xmm0,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 06}
004eh mov eax,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 48}
0052h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0055h vpinsrw xmm0,xmm0,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 07}
005ah mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
005eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0061h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0065h mov eax,[rsp+58h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 58}
0069h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
006ch vpinsrw xmm1,xmm1,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 01}
0071h mov eax,[rsp+60h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 60}
0075h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0078h vpinsrw xmm1,xmm1,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 02}
007dh mov eax,[rsp+68h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 68}
0081h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0084h vpinsrw xmm1,xmm1,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 03}
0089h mov eax,[rsp+70h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 70}
008dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0090h vpinsrw xmm1,xmm1,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 04}
0095h mov eax,[rsp+78h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 78}
0099h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
009ch vpinsrw xmm1,xmm1,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 05}
00a1h mov eax,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 80 00 00 00}
00a8h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00abh vpinsrw xmm1,xmm1,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 06}
00b0h mov eax,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 88 00 00 00}
00b7h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00bah vpinsrw xmm1,xmm1,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 07}
00bfh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
00c5h mov eax,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 90 00 00 00}
00cch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00cfh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00d3h mov eax,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 98 00 00 00}
00dah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00ddh vpinsrw xmm1,xmm1,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 01}
00e2h mov eax,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 a0 00 00 00}
00e9h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00ech vpinsrw xmm1,xmm1,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 02}
00f1h mov eax,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 a8 00 00 00}
00f8h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00fbh vpinsrw xmm1,xmm1,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 03}
0100h mov eax,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b0 00 00 00}
0107h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
010ah vpinsrw xmm1,xmm1,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 04}
010fh mov eax,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 b8 00 00 00}
0116h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0119h vpinsrw xmm1,xmm1,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 05}
011eh mov eax,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 c0 00 00 00}
0125h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0128h vpinsrw xmm1,xmm1,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 06}
012dh mov eax,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 c8 00 00 00}
0134h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0137h vpinsrw xmm1,xmm1,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f1 c4 c8 07}
013ch mov eax,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 d0 00 00 00}
0143h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0146h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
014ah mov eax,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 d8 00 00 00}
0151h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0154h vpinsrw xmm2,xmm2,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 01}
0159h mov eax,[rsp+0e0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 e0 00 00 00}
0160h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0163h vpinsrw xmm2,xmm2,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 02}
0168h mov eax,[rsp+0e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 e8 00 00 00}
016fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0172h vpinsrw xmm2,xmm2,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 03}
0177h mov eax,[rsp+0f0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f0 00 00 00}
017eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0181h vpinsrw xmm2,xmm2,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 04}
0186h mov eax,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 f8 00 00 00}
018dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0190h vpinsrw xmm2,xmm2,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 05}
0195h mov eax,[rsp+100h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 00 01 00 00}
019ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
019fh vpinsrw xmm2,xmm2,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 06}
01a4h mov eax,[rsp+108h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 08 01 00 00}
01abh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01aeh vpinsrw xmm2,xmm2,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 07}
01b3h vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
01b9h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01bdh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
01c2h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c5h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01c8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> Create(int x0, int x1, int x2, int x3, int x4, int x5, int x6, int x7, int x8, int x9, int x10, int x11, int x12, int x13, int x14, int x15), hex://fixed/v512?Create#Create_(32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i)
; Create_(32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i,32i)[153] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x6e,0xc2,0xc4,0xc3,0x79,0x22,0xc0,0x01,0xc4,0xc3,0x79,0x22,0xc1,0x02,0xc4,0xe3,0x79,0x22,0x44,0x24,0x28,0x03,0xc5,0xf9,0x6e,0x4c,0x24,0x30,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x38,0x01,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x40,0x02,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x48,0x03,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xf9,0x6e,0x4c,0x24,0x50,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x58,0x01,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x60,0x02,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x68,0x03,0xc5,0xf9,0x6e,0x54,0x24,0x70,0xc4,0xe3,0x69,0x22,0x54,0x24,0x78,0x01,0xc4,0xe3,0x69,0x22,0x94,0x24,0x80,0x00,0x00,0x00,0x02,0xc4,0xe3,0x69,0x22,0x94,0x24,0x88,0x00,0x00,0x00,0x03,0xc4,0xe3,0x75,0x38,0xca,0x01,0xc5,0xfd,0x11,0x01,0xc5,0xfd,0x11,0x49,0x20,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovd xmm0,edx                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c2}
0009h vpinsrd xmm0,xmm0,r8d,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c0 01}
000fh vpinsrd xmm0,xmm0,r9d,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c1 02}
0015h vpinsrd xmm0,xmm0,dword ptr [rsp+28h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 79 22 44 24 28 03}
001dh vmovd xmm1,dword ptr [rsp+30h]          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[6]{c5 f9 6e 4c 24 30}
0023h vpinsrd xmm1,xmm1,dword ptr [rsp+38h],1 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 38 01}
002bh vpinsrd xmm1,xmm1,dword ptr [rsp+40h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 40 02}
0033h vpinsrd xmm1,xmm1,dword ptr [rsp+48h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 48 03}
003bh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0041h vmovd xmm1,dword ptr [rsp+50h]          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[6]{c5 f9 6e 4c 24 50}
0047h vpinsrd xmm1,xmm1,dword ptr [rsp+58h],1 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 58 01}
004fh vpinsrd xmm1,xmm1,dword ptr [rsp+60h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 60 02}
0057h vpinsrd xmm1,xmm1,dword ptr [rsp+68h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 68 03}
005fh vmovd xmm2,dword ptr [rsp+70h]          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[6]{c5 f9 6e 54 24 70}
0065h vpinsrd xmm2,xmm2,dword ptr [rsp+78h],1 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 69 22 54 24 78 01}
006dh vpinsrd xmm2,xmm2,dword ptr [rsp+80h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[11]{c4 e3 69 22 94 24 80 00 00 00 02}
0078h vpinsrd xmm2,xmm2,dword ptr [rsp+88h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[11]{c4 e3 69 22 94 24 88 00 00 00 03}
0083h vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
0089h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0092h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0095h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> Create(uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7, uint x8, uint x9, uint x10, uint x11, uint x12, uint x13, uint x14, uint x15), hex://fixed/v512?Create#Create_(32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u)
; Create_(32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u,32u)[153] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x6e,0xc2,0xc4,0xc3,0x79,0x22,0xc0,0x01,0xc4,0xc3,0x79,0x22,0xc1,0x02,0xc4,0xe3,0x79,0x22,0x44,0x24,0x28,0x03,0xc5,0xf9,0x6e,0x4c,0x24,0x30,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x38,0x01,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x40,0x02,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x48,0x03,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xf9,0x6e,0x4c,0x24,0x50,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x58,0x01,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x60,0x02,0xc4,0xe3,0x71,0x22,0x4c,0x24,0x68,0x03,0xc5,0xf9,0x6e,0x54,0x24,0x70,0xc4,0xe3,0x69,0x22,0x54,0x24,0x78,0x01,0xc4,0xe3,0x69,0x22,0x94,0x24,0x80,0x00,0x00,0x00,0x02,0xc4,0xe3,0x69,0x22,0x94,0x24,0x88,0x00,0x00,0x00,0x03,0xc4,0xe3,0x75,0x38,0xca,0x01,0xc5,0xfd,0x11,0x01,0xc5,0xfd,0x11,0x49,0x20,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovd xmm0,edx                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c2}
0009h vpinsrd xmm0,xmm0,r8d,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c0 01}
000fh vpinsrd xmm0,xmm0,r9d,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c1 02}
0015h vpinsrd xmm0,xmm0,dword ptr [rsp+28h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 79 22 44 24 28 03}
001dh vmovd xmm1,dword ptr [rsp+30h]          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[6]{c5 f9 6e 4c 24 30}
0023h vpinsrd xmm1,xmm1,dword ptr [rsp+38h],1 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 38 01}
002bh vpinsrd xmm1,xmm1,dword ptr [rsp+40h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 40 02}
0033h vpinsrd xmm1,xmm1,dword ptr [rsp+48h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 48 03}
003bh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0041h vmovd xmm1,dword ptr [rsp+50h]          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[6]{c5 f9 6e 4c 24 50}
0047h vpinsrd xmm1,xmm1,dword ptr [rsp+58h],1 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 58 01}
004fh vpinsrd xmm1,xmm1,dword ptr [rsp+60h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 60 02}
0057h vpinsrd xmm1,xmm1,dword ptr [rsp+68h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 71 22 4c 24 68 03}
005fh vmovd xmm2,dword ptr [rsp+70h]          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[6]{c5 f9 6e 54 24 70}
0065h vpinsrd xmm2,xmm2,dword ptr [rsp+78h],1 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[8]{c4 e3 69 22 54 24 78 01}
006dh vpinsrd xmm2,xmm2,dword ptr [rsp+80h],2 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[11]{c4 e3 69 22 94 24 80 00 00 00 02}
0078h vpinsrd xmm2,xmm2,dword ptr [rsp+88h],3 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[11]{c4 e3 69 22 94 24 88 00 00 00 03}
0083h vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
0089h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0092h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0095h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> Create(long x0, long x1, long x2, long x3, long x4, long x5, long x6, long x7), hex://fixed/v512?Create#Create_(64i,64i,64i,64i,64i,64i,64i,64i)
; Create_(64i,64i,64i,64i,64i,64i,64i,64i)[87] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xf9,0x6e,0xc2,0xc4,0xc3,0xf9,0x22,0xc0,0x01,0xc4,0xc1,0xf9,0x6e,0xc9,0xc4,0xe3,0xf1,0x22,0x4c,0x24,0x28,0x01,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc4,0xe1,0xf9,0x6e,0x4c,0x24,0x30,0xc4,0xe3,0xf1,0x22,0x4c,0x24,0x38,0x01,0xc4,0xe1,0xf9,0x6e,0x54,0x24,0x40,0xc4,0xe3,0xe9,0x22,0x54,0x24,0x48,0x01,0xc4,0xe3,0x75,0x38,0xca,0x01,0xc5,0xfd,0x11,0x01,0xc5,0xfd,0x11,0x49,0x20,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
000ah vpinsrq xmm0,xmm0,r8,1                  ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 c3 f9 22 c0 01}
0010h vmovq xmm1,r9                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c9}
0015h vpinsrq xmm1,xmm1,qword ptr [rsp+28h],1 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[8]{c4 e3 f1 22 4c 24 28 01}
001dh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0023h vmovq xmm1,qword ptr [rsp+30h]          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[7]{c4 e1 f9 6e 4c 24 30}
002ah vpinsrq xmm1,xmm1,qword ptr [rsp+38h],1 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[8]{c4 e3 f1 22 4c 24 38 01}
0032h vmovq xmm2,qword ptr [rsp+40h]          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[7]{c4 e1 f9 6e 54 24 40}
0039h vpinsrq xmm2,xmm2,qword ptr [rsp+48h],1 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[8]{c4 e3 e9 22 54 24 48 01}
0041h vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
0047h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
004bh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> Create(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5, ulong x6, ulong x7), hex://fixed/v512?Create#Create_(64u,64u,64u,64u,64u,64u,64u,64u)
; Create_(64u,64u,64u,64u,64u,64u,64u,64u)[87] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xf9,0x6e,0xc2,0xc4,0xc3,0xf9,0x22,0xc0,0x01,0xc4,0xc1,0xf9,0x6e,0xc9,0xc4,0xe3,0xf1,0x22,0x4c,0x24,0x28,0x01,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc4,0xe1,0xf9,0x6e,0x4c,0x24,0x30,0xc4,0xe3,0xf1,0x22,0x4c,0x24,0x38,0x01,0xc4,0xe1,0xf9,0x6e,0x54,0x24,0x40,0xc4,0xe3,0xe9,0x22,0x54,0x24,0x48,0x01,0xc4,0xe3,0x75,0x38,0xca,0x01,0xc5,0xfd,0x11,0x01,0xc5,0xfd,0x11,0x49,0x20,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
000ah vpinsrq xmm0,xmm0,r8,1                  ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 c3 f9 22 c0 01}
0010h vmovq xmm1,r9                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c9}
0015h vpinsrq xmm1,xmm1,qword ptr [rsp+28h],1 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[8]{c4 e3 f1 22 4c 24 28 01}
001dh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0023h vmovq xmm1,qword ptr [rsp+30h]          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[7]{c4 e1 f9 6e 4c 24 30}
002ah vpinsrq xmm1,xmm1,qword ptr [rsp+38h],1 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[8]{c4 e3 f1 22 4c 24 38 01}
0032h vmovq xmm2,qword ptr [rsp+40h]          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[7]{c4 e1 f9 6e 54 24 40}
0039h vpinsrq xmm2,xmm2,qword ptr [rsp+48h],1 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[8]{c4 e3 e9 22 54 24 48 01}
0041h vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
0047h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
004bh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<float> Create(float x0, float x1, float x2, float x3, float x4, float x5, float x6, float x7, float x8, float x9, float x10, float x11, float x12, float x13, float x14, float x15), hex://fixed/v512?Create#Create_(32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f)
; Create_(32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f)[189] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x71,0x21,0xca,0x10,0xc4,0xe3,0x71,0x21,0xcb,0x20,0xc5,0xfa,0x10,0x44,0x24,0x28,0xc4,0xe3,0x71,0x21,0xc0,0x30,0xc5,0xfa,0x10,0x4c,0x24,0x30,0xc5,0xfa,0x10,0x54,0x24,0x38,0xc4,0xe3,0x71,0x21,0xca,0x10,0xc5,0xfa,0x10,0x54,0x24,0x40,0xc4,0xe3,0x71,0x21,0xca,0x20,0xc5,0xfa,0x10,0x54,0x24,0x48,0xc4,0xe3,0x71,0x21,0xca,0x30,0xc4,0xe3,0x7d,0x18,0xc1,0x01,0xc5,0xfa,0x10,0x4c,0x24,0x50,0xc5,0xfa,0x10,0x54,0x24,0x58,0xc4,0xe3,0x71,0x21,0xca,0x10,0xc5,0xfa,0x10,0x54,0x24,0x60,0xc4,0xe3,0x71,0x21,0xca,0x20,0xc5,0xfa,0x10,0x54,0x24,0x68,0xc4,0xe3,0x71,0x21,0xca,0x30,0xc5,0xfa,0x10,0x54,0x24,0x70,0xc5,0xfa,0x10,0x5c,0x24,0x78,0xc4,0xe3,0x69,0x21,0xd3,0x10,0xc5,0xfa,0x10,0x9c,0x24,0x80,0x00,0x00,0x00,0xc4,0xe3,0x69,0x21,0xd3,0x20,0xc5,0xfa,0x10,0x9c,0x24,0x88,0x00,0x00,0x00,0xc4,0xe3,0x69,0x21,0xd3,0x30,0xc4,0xe3,0x75,0x18,0xca,0x01,0xc5,0xfd,0x11,0x01,0xc5,0xfd,0x11,0x49,0x20,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vinsertps xmm1,xmm1,xmm2,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 10}
000bh vinsertps xmm1,xmm1,xmm3,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 cb 20}
0011h vmovss xmm0,dword ptr [rsp+28h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 28}
0017h vinsertps xmm0,xmm1,xmm0,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 c0 30}
001dh vmovss xmm1,dword ptr [rsp+30h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 4c 24 30}
0023h vmovss xmm2,dword ptr [rsp+38h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 38}
0029h vinsertps xmm1,xmm1,xmm2,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 10}
002fh vmovss xmm2,dword ptr [rsp+40h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 40}
0035h vinsertps xmm1,xmm1,xmm2,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 20}
003bh vmovss xmm2,dword ptr [rsp+48h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 48}
0041h vinsertps xmm1,xmm1,xmm2,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 30}
0047h vinsertf128 ymm0,ymm0,xmm1,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 7d 18 c1 01}
004dh vmovss xmm1,dword ptr [rsp+50h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 4c 24 50}
0053h vmovss xmm2,dword ptr [rsp+58h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 58}
0059h vinsertps xmm1,xmm1,xmm2,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 10}
005fh vmovss xmm2,dword ptr [rsp+60h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 60}
0065h vinsertps xmm1,xmm1,xmm2,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 20}
006bh vmovss xmm2,dword ptr [rsp+68h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 68}
0071h vinsertps xmm1,xmm1,xmm2,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 30}
0077h vmovss xmm2,dword ptr [rsp+70h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 70}
007dh vmovss xmm3,dword ptr [rsp+78h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 5c 24 78}
0083h vinsertps xmm2,xmm2,xmm3,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d3 10}
0089h vmovss xmm3,dword ptr [rsp+80h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[9]{c5 fa 10 9c 24 80 00 00 00}
0092h vinsertps xmm2,xmm2,xmm3,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d3 20}
0098h vmovss xmm3,dword ptr [rsp+88h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[9]{c5 fa 10 9c 24 88 00 00 00}
00a1h vinsertps xmm2,xmm2,xmm3,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d3 30}
00a7h vinsertf128 ymm1,ymm1,xmm2,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 75 18 ca 01}
00adh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00b1h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
00b6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00b9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<double> Create(double x0, double x1, double x2, double x3, double x4, double x5, double x6, double x7), hex://fixed/v512?Create#Create_(64f,64f,64f,64f,64f,64f,64f,64f)
; Create_(64f,64f,64f,64f,64f,64f,64f,64f)[79] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf0,0x16,0xc2,0xc5,0xfb,0x10,0x4c,0x24,0x28,0xc5,0xe0,0x16,0xc9,0xc4,0xe3,0x7d,0x18,0xc1,0x01,0xc5,0xfb,0x10,0x4c,0x24,0x30,0xc5,0xfb,0x10,0x54,0x24,0x38,0xc5,0xf0,0x16,0xca,0xc5,0xfb,0x10,0x54,0x24,0x40,0xc5,0xfb,0x10,0x5c,0x24,0x48,0xc5,0xe8,0x16,0xd3,0xc4,0xe3,0x75,0x18,0xca,0x01,0xc5,0xfd,0x11,0x01,0xc5,0xfd,0x11,0x49,0x20,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovlhps xmm0,xmm1,xmm2                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 f0 16 c2}
0009h vmovsd xmm1,qword ptr [rsp+28h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 4c 24 28}
000fh vmovlhps xmm1,xmm3,xmm1                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 e0 16 c9}
0013h vinsertf128 ymm0,ymm0,xmm1,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 7d 18 c1 01}
0019h vmovsd xmm1,qword ptr [rsp+30h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 4c 24 30}
001fh vmovsd xmm2,qword ptr [rsp+38h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 54 24 38}
0025h vmovlhps xmm1,xmm1,xmm2                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 f0 16 ca}
0029h vmovsd xmm2,qword ptr [rsp+40h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 54 24 40}
002fh vmovsd xmm3,qword ptr [rsp+48h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 5c 24 48}
0035h vmovlhps xmm2,xmm2,xmm3                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 e8 16 d3}
0039h vinsertf128 ymm1,ymm1,xmm2,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 75 18 ca 01}
003fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0043h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0048h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
