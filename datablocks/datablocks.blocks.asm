------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N128 w, byte t), hex://datablocks/blocks?blocklen#blocklen_g[8u](n128,8u)
; blocklen_g[8u](n128,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x10,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N128 w, sbyte t), hex://datablocks/blocks?blocklen#blocklen_g[8i](n128,8i)
; blocklen_g[8i](n128,8i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x10,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N128 w, ushort t), hex://datablocks/blocks?blocklen#blocklen_g[16u](n128,16u)
; blocklen_g[16u](n128,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N128 w, short t), hex://datablocks/blocks?blocklen#blocklen_g[16i](n128,16i)
; blocklen_g[16i](n128,16i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<uint>(N128 w, uint t), hex://datablocks/blocks?blocklen#blocklen_g[32u](n128,32u)
; blocklen_g[32u](n128,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x04,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<int>(N128 w, int t), hex://datablocks/blocks?blocklen#blocklen_g[32i](n128,32i)
; blocklen_g[32i](n128,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x04,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ulong>(N128 w, ulong t), hex://datablocks/blocks?blocklen#blocklen_g[64u](n128,64u)
; blocklen_g[64u](n128,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x02,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<long>(N128 w, long t), hex://datablocks/blocks?blocklen#blocklen_g[64i](n128,64i)
; blocklen_g[64i](n128,64i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x02,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<float>(N128 w, float t), hex://datablocks/blocks?blocklen#blocklen_g[32f](n128,32f)
; blocklen_g[32f](n128,32f)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x04,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<double>(N128 w, double t), hex://datablocks/blocks?blocklen#blocklen_g[64f](n128,64f)
; blocklen_g[64f](n128,64f)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x02,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N256 w, byte t), hex://datablocks/blocks?blocklen#blocklen_g[8u](n256,8u)
; blocklen_g[8u](n256,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x20,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N256 w, sbyte t), hex://datablocks/blocks?blocklen#blocklen_g[8i](n256,8i)
; blocklen_g[8i](n256,8i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x20,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N256 w, ushort t), hex://datablocks/blocks?blocklen#blocklen_g[16u](n256,16u)
; blocklen_g[16u](n256,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x10,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N256 w, short t), hex://datablocks/blocks?blocklen#blocklen_g[16i](n256,16i)
; blocklen_g[16i](n256,16i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x10,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<uint>(N256 w, uint t), hex://datablocks/blocks?blocklen#blocklen_g[32u](n256,32u)
; blocklen_g[32u](n256,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<int>(N256 w, int t), hex://datablocks/blocks?blocklen#blocklen_g[32i](n256,32i)
; blocklen_g[32i](n256,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ulong>(N256 w, ulong t), hex://datablocks/blocks?blocklen#blocklen_g[64u](n256,64u)
; blocklen_g[64u](n256,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x04,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<long>(N256 w, long t), hex://datablocks/blocks?blocklen#blocklen_g[64i](n256,64i)
; blocklen_g[64i](n256,64i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x04,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<float>(N256 w, float t), hex://datablocks/blocks?blocklen#blocklen_g[32f](n256,32f)
; blocklen_g[32f](n256,32f)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<double>(N256 w, double t), hex://datablocks/blocks?blocklen#blocklen_g[64f](n256,64f)
; blocklen_g[64f](n256,64f)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x04,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N512 w, byte t), hex://datablocks/blocks?blocklen#blocklen_g[8u](n512,8u)
; blocklen_g[8u](n512,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x40,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N512 w, sbyte t), hex://datablocks/blocks?blocklen#blocklen_g[8i](n512,8i)
; blocklen_g[8i](n512,8i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x40,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N512 w, ushort t), hex://datablocks/blocks?blocklen#blocklen_g[16u](n512,16u)
; blocklen_g[16u](n512,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x20,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N512 w, short t), hex://datablocks/blocks?blocklen#blocklen_g[16i](n512,16i)
; blocklen_g[16i](n512,16i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x20,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<uint>(N512 w, uint t), hex://datablocks/blocks?blocklen#blocklen_g[32u](n512,32u)
; blocklen_g[32u](n512,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x10,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<int>(N512 w, int t), hex://datablocks/blocks?blocklen#blocklen_g[32i](n512,32i)
; blocklen_g[32i](n512,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x10,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ulong>(N512 w, ulong t), hex://datablocks/blocks?blocklen#blocklen_g[64u](n512,64u)
; blocklen_g[64u](n512,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<long>(N512 w, long t), hex://datablocks/blocks?blocklen#blocklen_g[64i](n512,64i)
; blocklen_g[64i](n512,64i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<float>(N512 w, float t), hex://datablocks/blocks?blocklen#blocklen_g[32f](n512,32f)
; blocklen_g[32f](n512,32f)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x10,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<double>(N512 w, double t), hex://datablocks/blocks?blocklen#blocklen_g[64f](n512,64f)
; blocklen_g[64f](n512,64f)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block16<byte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8u](8u,b16x8u~in)
; broadcast_g[8u](8u,b16x8u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb6,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x70,0xc9,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c775c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 c9 75 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block16<sbyte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8i](8i,b16x8i~in)
; broadcast_g[8i](8i,b16x8i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbe,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd5,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d5 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block16<ushort> dst), hex://datablocks/blocks?broadcast#broadcast_g[16u](16u,b16x16u~in)
; broadcast_g[16u](16u,b16x16u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb7,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x50,0xe2,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7a2e250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e2 a2 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block16<short> dst), hex://datablocks/blocks?broadcast#broadcast_g[16i](16i,b16x16i~in)
; broadcast_g[16i](16i,b16x16i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbf,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd6,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d6 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block32<byte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8u](8u,b32x8u~in)
; broadcast_g[8u](8u,b32x8u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb6,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x70,0xc9,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c775c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 c9 75 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block32<sbyte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8i](8i,b32x8i~in)
; broadcast_g[8i](8i,b32x8i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbe,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd5,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d5 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block32<ushort> dst), hex://datablocks/blocks?broadcast#broadcast_g[16u](16u,b32x16u~in)
; broadcast_g[16u](16u,b32x16u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb7,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x50,0xe2,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7a2e250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e2 a2 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block32<short> dst), hex://datablocks/blocks?broadcast#broadcast_g[16i](16i,b32x16i~in)
; broadcast_g[16i](16i,b32x16i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbf,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd6,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d6 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<uint>(uint data, in Block32<uint> dst), hex://datablocks/blocks?broadcast#broadcast_g[32u](32u,b32x32u~in)
; broadcast_g[32u](32u,b32x32u~in)[23] = {0x8b,0xc1,0x0f,0x1f,0x00,0x48,0x8b,0xca,0x8b,0xd0,0x48,0xb8,0x60,0xe4,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7a2e460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e4 a2 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<int>(int data, in Block32<int> dst), hex://datablocks/blocks?broadcast#broadcast_g[32i](32i,b32x32i~in)
; broadcast_g[32i](32i,b32x32i~in)[23] = {0x8b,0xc1,0x0f,0x1f,0x00,0x48,0x8b,0xca,0x8b,0xd0,0x48,0xb8,0xf8,0x7f,0xa1,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7a17ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 7f a1 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<float>(float data, in Block32<float> dst), hex://datablocks/blocks?broadcast#broadcast_g[32f](32f,b32x32f~in)
; broadcast_g[32f](32f,b32x32f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0xca,0xc5,0xf8,0x28,0xc8,0x48,0xb8,0x08,0xdf,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7e5df08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 df e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block64<byte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8u](8u,b64x8u~in)
; broadcast_g[8u](8u,b64x8u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb6,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x70,0xc9,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c775c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 c9 75 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block64<sbyte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8i](8i,b64x8i~in)
; broadcast_g[8i](8i,b64x8i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbe,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd5,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d5 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block64<ushort> dst), hex://datablocks/blocks?broadcast#broadcast_g[16u](16u,b64x16u~in)
; broadcast_g[16u](16u,b64x16u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb7,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x50,0xe2,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7a2e250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e2 a2 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block64<short> dst), hex://datablocks/blocks?broadcast#broadcast_g[16i](16i,b64x16i~in)
; broadcast_g[16i](16i,b64x16i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbf,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd6,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d6 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<uint>(uint data, in Block64<uint> dst), hex://datablocks/blocks?broadcast#broadcast_g[32u](32u,b64x32u~in)
; broadcast_g[32u](32u,b64x32u~in)[23] = {0x8b,0xc1,0x0f,0x1f,0x00,0x48,0x8b,0xca,0x8b,0xd0,0x48,0xb8,0x60,0xe4,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7a2e460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e4 a2 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<int>(int data, in Block64<int> dst), hex://datablocks/blocks?broadcast#broadcast_g[32i](32i,b64x32i~in)
; broadcast_g[32i](32i,b64x32i~in)[23] = {0x8b,0xc1,0x0f,0x1f,0x00,0x48,0x8b,0xca,0x8b,0xd0,0x48,0xb8,0xf8,0x7f,0xa1,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7a17ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 7f a1 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ulong>(ulong data, in Block64<ulong> dst), hex://datablocks/blocks?broadcast#broadcast_g[64u](64u,b64x64u~in)
; broadcast_g[64u](64u,b64x64u~in)[24] = {0x48,0x8b,0xc1,0x66,0x90,0x48,0x8b,0xca,0x48,0x8b,0xd0,0x48,0xb8,0x60,0xe7,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7a2e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e7 a2 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<long>(long data, in Block64<long> dst), hex://datablocks/blocks?broadcast#broadcast_g[64i](64i,b64x64i~in)
; broadcast_g[64i](64i,b64x64i~in)[24] = {0x48,0x8b,0xc1,0x66,0x90,0x48,0x8b,0xca,0x48,0x8b,0xd0,0x48,0xb8,0x78,0xd8,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7e5d878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d8 e5 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<float>(float data, in Block64<float> dst), hex://datablocks/blocks?broadcast#broadcast_g[32f](32f,b64x32f~in)
; broadcast_g[32f](32f,b64x32f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0xca,0xc5,0xf8,0x28,0xc8,0x48,0xb8,0x08,0xdf,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7e5df08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 df e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<double>(double data, in Block64<double> dst), hex://datablocks/blocks?broadcast#broadcast_g[64f](64f,b64x64f~in)
; broadcast_g[64f](64f,b64x64f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0xca,0xc5,0xf8,0x28,0xc8,0x48,0xb8,0x38,0xe0,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7e5e038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 e0 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block128<byte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8u](8u,b128x8u~in)
; broadcast_g[8u](8u,b128x8u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb6,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x70,0xc9,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c775c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 c9 75 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block128<sbyte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8i](8i,b128x8i~in)
; broadcast_g[8i](8i,b128x8i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbe,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd5,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d5 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block128<ushort> dst), hex://datablocks/blocks?broadcast#broadcast_g[16u](16u,b128x16u~in)
; broadcast_g[16u](16u,b128x16u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb7,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x50,0xe2,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7a2e250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e2 a2 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block128<short> dst), hex://datablocks/blocks?broadcast#broadcast_g[16i](16i,b128x16i~in)
; broadcast_g[16i](16i,b128x16i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbf,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd6,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d6 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<uint>(uint data, in Block128<uint> dst), hex://datablocks/blocks?broadcast#broadcast_g[32u](32u,b128x32u~in)
; broadcast_g[32u](32u,b128x32u~in)[23] = {0x8b,0xc1,0x0f,0x1f,0x00,0x48,0x8b,0xca,0x8b,0xd0,0x48,0xb8,0x60,0xe4,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7a2e460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e4 a2 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<int>(int data, in Block128<int> dst), hex://datablocks/blocks?broadcast#broadcast_g[32i](32i,b128x32i~in)
; broadcast_g[32i](32i,b128x32i~in)[23] = {0x8b,0xc1,0x0f,0x1f,0x00,0x48,0x8b,0xca,0x8b,0xd0,0x48,0xb8,0xf8,0x7f,0xa1,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7a17ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 7f a1 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ulong>(ulong data, in Block128<ulong> dst), hex://datablocks/blocks?broadcast#broadcast_g[64u](64u,b128x64u~in)
; broadcast_g[64u](64u,b128x64u~in)[24] = {0x48,0x8b,0xc1,0x66,0x90,0x48,0x8b,0xca,0x48,0x8b,0xd0,0x48,0xb8,0x60,0xe7,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7a2e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e7 a2 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<long>(long data, in Block128<long> dst), hex://datablocks/blocks?broadcast#broadcast_g[64i](64i,b128x64i~in)
; broadcast_g[64i](64i,b128x64i~in)[24] = {0x48,0x8b,0xc1,0x66,0x90,0x48,0x8b,0xca,0x48,0x8b,0xd0,0x48,0xb8,0x78,0xd8,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7e5d878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d8 e5 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<float>(float data, in Block128<float> dst), hex://datablocks/blocks?broadcast#broadcast_g[32f](32f,b128x32f~in)
; broadcast_g[32f](32f,b128x32f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0xca,0xc5,0xf8,0x28,0xc8,0x48,0xb8,0x08,0xdf,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7e5df08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 df e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<double>(double data, in Block128<double> dst), hex://datablocks/blocks?broadcast#broadcast_g[64f](64f,b128x64f~in)
; broadcast_g[64f](64f,b128x64f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0xca,0xc5,0xf8,0x28,0xc8,0x48,0xb8,0x38,0xe0,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7e5e038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 e0 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block256<byte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8u](8u,b256x8u~in)
; broadcast_g[8u](8u,b256x8u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb6,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x70,0xc9,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c775c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 c9 75 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block256<sbyte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8i](8i,b256x8i~in)
; broadcast_g[8i](8i,b256x8i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbe,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd5,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d5 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block256<ushort> dst), hex://datablocks/blocks?broadcast#broadcast_g[16u](16u,b256x16u~in)
; broadcast_g[16u](16u,b256x16u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb7,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x50,0xe2,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7a2e250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e2 a2 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block256<short> dst), hex://datablocks/blocks?broadcast#broadcast_g[16i](16i,b256x16i~in)
; broadcast_g[16i](16i,b256x16i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbf,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd6,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d6 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<uint>(uint data, in Block256<uint> dst), hex://datablocks/blocks?broadcast#broadcast_g[32u](32u,b256x32u~in)
; broadcast_g[32u](32u,b256x32u~in)[23] = {0x8b,0xc1,0x0f,0x1f,0x00,0x48,0x8b,0xca,0x8b,0xd0,0x48,0xb8,0x60,0xe4,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7a2e460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e4 a2 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<int>(int data, in Block256<int> dst), hex://datablocks/blocks?broadcast#broadcast_g[32i](32i,b256x32i~in)
; broadcast_g[32i](32i,b256x32i~in)[23] = {0x8b,0xc1,0x0f,0x1f,0x00,0x48,0x8b,0xca,0x8b,0xd0,0x48,0xb8,0xf8,0x7f,0xa1,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7a17ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 7f a1 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ulong>(ulong data, in Block256<ulong> dst), hex://datablocks/blocks?broadcast#broadcast_g[64u](64u,b256x64u~in)
; broadcast_g[64u](64u,b256x64u~in)[24] = {0x48,0x8b,0xc1,0x66,0x90,0x48,0x8b,0xca,0x48,0x8b,0xd0,0x48,0xb8,0x60,0xe7,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7a2e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e7 a2 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<long>(long data, in Block256<long> dst), hex://datablocks/blocks?broadcast#broadcast_g[64i](64i,b256x64i~in)
; broadcast_g[64i](64i,b256x64i~in)[24] = {0x48,0x8b,0xc1,0x66,0x90,0x48,0x8b,0xca,0x48,0x8b,0xd0,0x48,0xb8,0x78,0xd8,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7e5d878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d8 e5 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<float>(float data, in Block256<float> dst), hex://datablocks/blocks?broadcast#broadcast_g[32f](32f,b256x32f~in)
; broadcast_g[32f](32f,b256x32f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0xca,0xc5,0xf8,0x28,0xc8,0x48,0xb8,0x08,0xdf,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7e5df08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 df e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<double>(double data, in Block256<double> dst), hex://datablocks/blocks?broadcast#broadcast_g[64f](64f,b256x64f~in)
; broadcast_g[64f](64f,b256x64f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0xca,0xc5,0xf8,0x28,0xc8,0x48,0xb8,0x38,0xe0,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7e5e038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 e0 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<byte>(byte data, in Block512<byte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8u](8u,b512x8u~in)
; broadcast_g[8u](8u,b512x8u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb6,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x70,0xc9,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c775c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 c9 75 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<sbyte>(sbyte data, in Block512<sbyte> dst), hex://datablocks/blocks?broadcast#broadcast_g[8i](8i,b512x8i~in)
; broadcast_g[8i](8i,b512x8i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbe,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd5,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d5 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ushort>(ushort data, in Block512<ushort> dst), hex://datablocks/blocks?broadcast#broadcast_g[16u](16u,b512x16u~in)
; broadcast_g[16u](16u,b512x16u~in)[24] = {0x48,0x8b,0xc2,0x66,0x90,0x0f,0xb7,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x50,0xe2,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0008h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000bh mov rax,7ff7c7a2e250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e2 a2 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<short>(short data, in Block512<short> dst), hex://datablocks/blocks?broadcast#broadcast_g[16i](16i,b512x16i~in)
; broadcast_g[16i](16i,b512x16i~in)[25] = {0x48,0x8b,0xc2,0x66,0x90,0x48,0x0f,0xbf,0xd1,0x48,0x8b,0xc8,0x48,0xb8,0x78,0xd6,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0009h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000ch mov rax,7ff7c7e5d678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d6 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<uint>(uint data, in Block512<uint> dst), hex://datablocks/blocks?broadcast#broadcast_g[32u](32u,b512x32u~in)
; broadcast_g[32u](32u,b512x32u~in)[23] = {0x8b,0xc1,0x0f,0x1f,0x00,0x48,0x8b,0xca,0x8b,0xd0,0x48,0xb8,0x60,0xe4,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7a2e460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e4 a2 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<int>(int data, in Block512<int> dst), hex://datablocks/blocks?broadcast#broadcast_g[32i](32i,b512x32i~in)
; broadcast_g[32i](32i,b512x32i~in)[23] = {0x8b,0xc1,0x0f,0x1f,0x00,0x48,0x8b,0xca,0x8b,0xd0,0x48,0xb8,0xf8,0x7f,0xa1,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah mov rax,7ff7c7a17ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 7f a1 c7 f7 7f 00 00}
0014h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<ulong>(ulong data, in Block512<ulong> dst), hex://datablocks/blocks?broadcast#broadcast_g[64u](64u,b512x64u~in)
; broadcast_g[64u](64u,b512x64u~in)[24] = {0x48,0x8b,0xc1,0x66,0x90,0x48,0x8b,0xca,0x48,0x8b,0xd0,0x48,0xb8,0x60,0xe7,0xa2,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7a2e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e7 a2 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<long>(long data, in Block512<long> dst), hex://datablocks/blocks?broadcast#broadcast_g[64i](64i,b512x64i~in)
; broadcast_g[64i](64i,b512x64i~in)[24] = {0x48,0x8b,0xc1,0x66,0x90,0x48,0x8b,0xca,0x48,0x8b,0xd0,0x48,0xb8,0x78,0xd8,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh mov rax,7ff7c7e5d878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d8 e5 c7 f7 7f 00 00}
0015h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<float>(float data, in Block512<float> dst), hex://datablocks/blocks?broadcast#broadcast_g[32f](32f,b512x32f~in)
; broadcast_g[32f](32f,b512x32f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0xca,0xc5,0xf8,0x28,0xc8,0x48,0xb8,0x08,0xdf,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7e5df08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 df e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; void broadcast<double>(double data, in Block512<double> dst), hex://datablocks/blocks?broadcast#broadcast_g[64f](64f,b512x64f~in)
; broadcast_g[64f](64f,b512x64f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0xca,0xc5,0xf8,0x28,0xc8,0x48,0xb8,0x38,0xe0,0xe5,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0008h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000ch mov rax,7ff7c7e5e038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 e0 e5 c7 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; Block16<byte> cellalloc<byte>(N16 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8u](n16,32i)
; cellalloc_g[8u](n16,32i)[76] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xe9,0x1f,0x41,0x03,0xc8,0xd1,0xf9,0x41,0x8b,0xd0,0xc1,0xea,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xfe,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xd5,0xfa,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c824b9b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 fa ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<sbyte> cellalloc<sbyte>(N16 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8i](n16,32i)
; cellalloc_g[8i](n16,32i)[76] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xe9,0x1f,0x41,0x03,0xc8,0xd1,0xf9,0x41,0x8b,0xd0,0xc1,0xea,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xfe,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x4d,0xfc,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c824bb90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d fc ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<ushort> cellalloc<ushort>(N16 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16u](n16,32i)
; cellalloc_g[16u](n16,32i)[66] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x00,0x41,0x03,0xc8,0x83,0xe1,0xff,0x41,0x8b,0xd0,0x2b,0xd1,0x74,0x05,0x41,0xff,0xc0,0xeb,0x00,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x37,0xfc,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c824bbd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 fc ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<short> cellalloc<short>(N16 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16i](n16,32i)
; cellalloc_g[16i](n16,32i)[66] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x00,0x41,0x03,0xc8,0x83,0xe1,0xff,0x41,0x8b,0xd0,0x2b,0xd1,0x74,0x05,0x41,0xff,0xc0,0xeb,0x00,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x17,0xfc,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c824bc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 fc ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<byte> cellalloc<byte>(N32 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8u](n32,32i)
; cellalloc_g[8u](n32,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x03,0x41,0x03,0xc8,0xc1,0xf9,0x02,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x41,0x03,0xd0,0x83,0xe2,0xfc,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x96,0xfd,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824be00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fd ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<sbyte> cellalloc<sbyte>(N32 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8i](n32,32i)
; cellalloc_g[8i](n32,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x03,0x41,0x03,0xc8,0xc1,0xf9,0x02,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x41,0x03,0xd0,0x83,0xe2,0xfc,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x96,0xfd,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824be70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fd ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<ushort> cellalloc<ushort>(N32 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16u](n32,32i)
; cellalloc_g[16u](n32,32i)[76] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xe9,0x1f,0x41,0x03,0xc8,0xd1,0xf9,0x41,0x8b,0xd0,0xc1,0xea,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xfe,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xd5,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c824c118h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 fb ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<short> cellalloc<short>(N32 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16i](n32,32i)
; cellalloc_g[16i](n32,32i)[76] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xe9,0x1f,0x41,0x03,0xc8,0xd1,0xf9,0x41,0x8b,0xd0,0xc1,0xea,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xfe,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xb5,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c824c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 fb ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<uint> cellalloc<uint>(N32 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32u](n32,32i)
; cellalloc_g[32u](n32,32i)[66] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x00,0x41,0x03,0xc8,0x83,0xe1,0xff,0x41,0x8b,0xd0,0x2b,0xd1,0x74,0x05,0x41,0xff,0xc0,0xeb,0x00,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x9f,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c824c198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f fb ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<int> cellalloc<int>(N32 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32i](n32,32i)
; cellalloc_g[32i](n32,32i)[66] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x00,0x41,0x03,0xc8,0x83,0xe1,0xff,0x41,0x8b,0xd0,0x2b,0xd1,0x74,0x05,0x41,0xff,0xc0,0xeb,0x00,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x7f,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c824c1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f fb ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<float> cellalloc<float>(N32 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32f](n32,32i)
; cellalloc_g[32f](n32,32i)[70] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x00,0x41,0x03,0xc8,0x83,0xe1,0xff,0x41,0x8b,0xd0,0x2b,0xd1,0x74,0x05,0x41,0xff,0xc0,0xeb,0x00,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0xc5,0xe0,0x57,0xdb,0xe8,0x5b,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0024h je short 002bh                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0026h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0029h jmp short 002bh                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0034h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0038h call 7ff7c824c218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b fb ff ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<byte> cellalloc<byte>(N64 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8u](n64,32i)
; cellalloc_g[8u](n64,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x07,0x41,0x03,0xc8,0xc1,0xf9,0x03,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x07,0x41,0x03,0xd0,0x83,0xe2,0xf8,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xde,0xfc,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824c408h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<sbyte> cellalloc<sbyte>(N64 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8i](n64,32i)
; cellalloc_g[8i](n64,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x07,0x41,0x03,0xc8,0xc1,0xf9,0x03,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x07,0x41,0x03,0xd0,0x83,0xe2,0xf8,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xde,0xfc,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824c478h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ushort> cellalloc<ushort>(N64 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16u](n64,32i)
; cellalloc_g[16u](n64,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x03,0x41,0x03,0xc8,0xc1,0xf9,0x02,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x41,0x03,0xd0,0x83,0xe2,0xfc,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xae,0xfc,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824c4b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<short> cellalloc<short>(N64 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16i](n64,32i)
; cellalloc_g[16i](n64,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x03,0x41,0x03,0xc8,0xc1,0xf9,0x02,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x41,0x03,0xd0,0x83,0xe2,0xfc,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xae,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824c828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<uint> cellalloc<uint>(N64 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32u](n64,32i)
; cellalloc_g[32u](n64,32i)[76] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xe9,0x1f,0x41,0x03,0xc8,0xd1,0xf9,0x41,0x8b,0xd0,0xc1,0xea,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xfe,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x85,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c824c868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 fb ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<int> cellalloc<int>(N64 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32i](n64,32i)
; cellalloc_g[32i](n64,32i)[76] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xe9,0x1f,0x41,0x03,0xc8,0xd1,0xf9,0x41,0x8b,0xd0,0xc1,0xea,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xfe,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x65,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c824c8a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 fb ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ulong> cellalloc<ulong>(N64 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64u](n64,32i)
; cellalloc_g[64u](n64,32i)[66] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x00,0x41,0x03,0xc8,0x83,0xe1,0xff,0x41,0x8b,0xd0,0x2b,0xd1,0x74,0x05,0x41,0xff,0xc0,0xeb,0x00,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x4f,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c824c8e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f fb ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<long> cellalloc<long>(N64 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64i](n64,32i)
; cellalloc_g[64i](n64,32i)[66] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x00,0x41,0x03,0xc8,0x83,0xe1,0xff,0x41,0x8b,0xd0,0x2b,0xd1,0x74,0x05,0x41,0xff,0xc0,0xeb,0x00,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x2f,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0026h jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0028h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002bh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0031h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0034h call 7ff7c824c928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f fb ff ff}
0039h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
003ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<float> cellalloc<float>(N64 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32f](n64,32i)
; cellalloc_g[32f](n64,32i)[80] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xe9,0x1f,0x41,0x03,0xc8,0xd1,0xf9,0x41,0x8b,0xd0,0xc1,0xea,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xfe,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0xc5,0xe0,0x57,0xdb,0xe8,0x01,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
001bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001eh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0021h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0024h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0027h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002ah je short 0032h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
002ch lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0030h jmp short 0035h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0032h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0035h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0038h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003eh vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0042h call 7ff7c824c968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 fb ff ff}
0047h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<double> cellalloc<double>(N64 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64f](n64,32i)
; cellalloc_g[64f](n64,32i)[70] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x00,0x41,0x03,0xc8,0x83,0xe1,0xff,0x41,0x8b,0xd0,0x2b,0xd1,0x74,0x05,0x41,0xff,0xc0,0xeb,0x00,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0xc5,0xe0,0x57,0xdb,0xe8,0xdb,0xfa,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 00}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch and ecx,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 ff}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0024h je short 002bh                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0026h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0029h jmp short 002bh                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0034h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0038h call 7ff7c824c9a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fa ff ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<byte> cellalloc<byte>(N128 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8u](n128,32i)
; cellalloc_g[8u](n128,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x0f,0x41,0x03,0xc8,0xc1,0xf9,0x04,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x0f,0x41,0x03,0xd0,0x83,0xe2,0xf0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x5e,0xfc,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824cb98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<sbyte> cellalloc<sbyte>(N128 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8i](n128,32i)
; cellalloc_g[8i](n128,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x0f,0x41,0x03,0xc8,0xc1,0xf9,0x04,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x0f,0x41,0x03,0xd0,0x83,0xe2,0xf0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x3e,0xfc,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824cbe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e fc ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ushort> cellalloc<ushort>(N128 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16u](n128,32i)
; cellalloc_g[16u](n128,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x07,0x41,0x03,0xc8,0xc1,0xf9,0x03,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x07,0x41,0x03,0xd0,0x83,0xe2,0xf8,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xfe,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824cc18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<short> cellalloc<short>(N128 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16i](n128,32i)
; cellalloc_g[16i](n128,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x07,0x41,0x03,0xc8,0xc1,0xf9,0x03,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x07,0x41,0x03,0xd0,0x83,0xe2,0xf8,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xce,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<uint> cellalloc<uint>(N128 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32u](n128,32i)
; cellalloc_g[32u](n128,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x03,0x41,0x03,0xc8,0xc1,0xf9,0x02,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x41,0x03,0xd0,0x83,0xe2,0xfc,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x8e,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<int> cellalloc<int>(N128 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32i](n128,32i)
; cellalloc_g[32i](n128,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x03,0x41,0x03,0xc8,0xc1,0xf9,0x02,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x41,0x03,0xd0,0x83,0xe2,0xfc,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x4e,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d0b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ulong> cellalloc<ulong>(N128 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64u](n128,32i)
; cellalloc_g[64u](n128,32i)[76] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xe9,0x1f,0x41,0x03,0xc8,0xd1,0xf9,0x41,0x8b,0xd0,0xc1,0xea,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xfe,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x15,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c824d0e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 fb ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<long> cellalloc<long>(N128 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64i](n128,32i)
; cellalloc_g[64i](n128,32i)[76] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xe9,0x1f,0x41,0x03,0xc8,0xd1,0xf9,0x41,0x8b,0xd0,0xc1,0xea,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xfe,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xe5,0xfa,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0013h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0016h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
0018h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001bh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
001eh add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0021h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0024h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0027h je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0029h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
002dh jmp short 0032h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0032h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0035h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
003eh call 7ff7c824d118h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 fa ff ff}
0043h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0046h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<float> cellalloc<float>(N128 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32f](n128,32i)
; cellalloc_g[32f](n128,32i)[87] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x03,0x41,0x03,0xc8,0xc1,0xf9,0x02,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x41,0x03,0xd0,0x83,0xe2,0xfc,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0xc5,0xe0,0x57,0xdb,0xe8,0xaa,0xfa,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0025h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0028h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
002bh and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002eh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0031h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0033h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0037h jmp short 003ch                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0039h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
003ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003fh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0045h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0049h call 7ff7c824d148h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<double> cellalloc<double>(N128 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64f](n128,32i)
; cellalloc_g[64f](n128,32i)[80] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xe9,0x1f,0x41,0x03,0xc8,0xd1,0xf9,0x41,0x8b,0xd0,0xc1,0xea,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xfe,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0xc5,0xe0,0x57,0xdb,0xe8,0x71,0xfa,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h shr ecx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f9}
001bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001eh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0021h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0024h and edx,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fe}
0027h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002ah je short 0032h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
002ch lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0030h jmp short 0035h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0032h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0035h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0038h movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
003eh vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0042h call 7ff7c824d178h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 fa ff ff}
0047h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<byte> cellalloc<byte>(N256 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8u](n256,32i)
; cellalloc_g[8u](n256,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x1f,0x41,0x03,0xc8,0xc1,0xf9,0x05,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xe0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xe6,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 05}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 e0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<sbyte> cellalloc<sbyte>(N256 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8i](n256,32i)
; cellalloc_g[8i](n256,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x1f,0x41,0x03,0xc8,0xc1,0xf9,0x05,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xe0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xc6,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 05}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 e0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d3b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ushort> cellalloc<ushort>(N256 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16u](n256,32i)
; cellalloc_g[16u](n256,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x0f,0x41,0x03,0xc8,0xc1,0xf9,0x04,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x0f,0x41,0x03,0xd0,0x83,0xe2,0xf0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x86,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d3e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<short> cellalloc<short>(N256 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16i](n256,32i)
; cellalloc_g[16i](n256,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x0f,0x41,0x03,0xc8,0xc1,0xf9,0x04,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x0f,0x41,0x03,0xd0,0x83,0xe2,0xf0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x46,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<uint> cellalloc<uint>(N256 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32u](n256,32i)
; cellalloc_g[32u](n256,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x07,0x41,0x03,0xc8,0xc1,0xf9,0x03,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x07,0x41,0x03,0xd0,0x83,0xe2,0xf8,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xbe,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d8f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<int> cellalloc<int>(N256 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32i](n256,32i)
; cellalloc_g[32i](n256,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x07,0x41,0x03,0xc8,0xc1,0xf9,0x03,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x07,0x41,0x03,0xd0,0x83,0xe2,0xf8,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x7e,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ulong> cellalloc<ulong>(N256 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64u](n256,32i)
; cellalloc_g[64u](n256,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x03,0x41,0x03,0xc8,0xc1,0xf9,0x02,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x41,0x03,0xd0,0x83,0xe2,0xfc,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x3e,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<long> cellalloc<long>(N256 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64i](n256,32i)
; cellalloc_g[64i](n256,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x03,0x41,0x03,0xc8,0xc1,0xf9,0x02,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x41,0x03,0xd0,0x83,0xe2,0xfc,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xfe,0xfa,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824d988h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fa ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<float> cellalloc<float>(N256 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32f](n256,32i)
; cellalloc_g[32f](n256,32i)[87] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x07,0x41,0x03,0xc8,0xc1,0xf9,0x03,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x07,0x41,0x03,0xd0,0x83,0xe2,0xf8,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0xc5,0xe0,0x57,0xdb,0xe8,0xba,0xfa,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0025h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0028h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
002bh and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002eh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0031h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0033h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0037h jmp short 003ch                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0039h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
003ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003fh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0045h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0049h call 7ff7c824d9b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<double> cellalloc<double>(N256 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64f](n256,32i)
; cellalloc_g[64f](n256,32i)[87] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x03,0x41,0x03,0xc8,0xc1,0xf9,0x02,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x41,0x03,0xd0,0x83,0xe2,0xfc,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0xc5,0xe0,0x57,0xdb,0xe8,0x7a,0xfa,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 03}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch sar ecx,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 02}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0025h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0028h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
002bh and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
002eh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0031h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0033h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0037h jmp short 003ch                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0039h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
003ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003fh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0045h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0049h call 7ff7c824d9e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<byte> cellalloc<byte>(N512 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8u](n512,32i)
; cellalloc_g[8u](n512,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x3f,0x41,0x03,0xc8,0xc1,0xf9,0x06,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x3f,0x41,0x03,0xd0,0x83,0xe2,0xc0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xfe,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 3f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,6                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 06}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffc0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 c0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824dbd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<sbyte> cellalloc<sbyte>(N512 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[8i](n512,32i)
; cellalloc_g[8i](n512,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x3f,0x41,0x03,0xc8,0xc1,0xf9,0x06,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x3f,0x41,0x03,0xd0,0x83,0xe2,0xc0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xde,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 3f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,6                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 06}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffc0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 c0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824dc28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ushort> cellalloc<ushort>(N512 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16u](n512,32i)
; cellalloc_g[16u](n512,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x1f,0x41,0x03,0xc8,0xc1,0xf9,0x05,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xe0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x9e,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 05}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 e0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824dc58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<short> cellalloc<short>(N512 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[16i](n512,32i)
; cellalloc_g[16i](n512,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x1f,0x41,0x03,0xc8,0xc1,0xf9,0x05,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x1f,0x41,0x03,0xd0,0x83,0xe2,0xe0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x5e,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 1f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 05}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 e0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824dc88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<uint> cellalloc<uint>(N512 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32u](n512,32i)
; cellalloc_g[32u](n512,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x0f,0x41,0x03,0xc8,0xc1,0xf9,0x04,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x0f,0x41,0x03,0xd0,0x83,0xe2,0xf0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x1e,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824dcb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<int> cellalloc<int>(N512 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32i](n512,32i)
; cellalloc_g[32i](n512,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x0f,0x41,0x03,0xc8,0xc1,0xf9,0x04,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x0f,0x41,0x03,0xd0,0x83,0xe2,0xf0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0xae,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824e1b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ulong> cellalloc<ulong>(N512 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64u](n512,32i)
; cellalloc_g[64u](n512,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x07,0x41,0x03,0xc8,0xc1,0xf9,0x03,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x07,0x41,0x03,0xd0,0x83,0xe2,0xf8,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x6e,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824e1e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<long> cellalloc<long>(N512 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64i](n512,32i)
; cellalloc_g[64i](n512,32i)[83] = {0x56,0x48,0x83,0xec,0x20,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x07,0x41,0x03,0xc8,0xc1,0xf9,0x03,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x07,0x41,0x03,0xd0,0x83,0xe2,0xf8,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0x45,0x33,0xc9,0xe8,0x2e,0xfb,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0016h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
0019h sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001fh sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0022h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0025h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
0028h and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002bh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
002eh je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0030h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0042h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0045h call 7ff7c824e218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e fb ff ff}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<float> cellalloc<float>(N512 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[32f](n512,32i)
; cellalloc_g[32f](n512,32i)[87] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x0f,0x41,0x03,0xc8,0xc1,0xf9,0x04,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x0f,0x41,0x03,0xd0,0x83,0xe2,0xf0,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0xc5,0xe0,0x57,0xdb,0xe8,0xea,0xfa,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch sar ecx,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 04}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0025h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0028h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
002bh and edx,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f0}
002eh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0031h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0033h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0037h jmp short 003ch                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0039h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
003ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003fh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0045h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0049h call 7ff7c824e248h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<double> cellalloc<double>(N512 n, int cellcount), hex://datablocks/blocks?cellalloc#cellalloc_g[64f](n512,32i)
; cellalloc_g[64f](n512,32i)[87] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x89,0x54,0x24,0x38,0x48,0x8b,0xf1,0x41,0x8b,0xc8,0xc1,0xf9,0x1f,0x83,0xe1,0x07,0x41,0x03,0xc8,0xc1,0xf9,0x03,0x41,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x07,0x41,0x03,0xd0,0x83,0xe2,0xf8,0x44,0x2b,0xc2,0x74,0x06,0x44,0x8d,0x41,0x01,0xeb,0x03,0x44,0x8b,0xc1,0x48,0x8b,0xce,0x48,0x0f,0xbe,0x54,0x24,0x38,0xc5,0xe0,0x57,0xdb,0xe8,0xaa,0xfa,0xff,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0013h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0016h and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0019h add ecx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c8}
001ch sar ecx,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 03}
001fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0022h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0025h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0028h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
002bh and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
002eh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0031h je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0033h lea r8d,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 41 01}
0037h jmp short 003ch                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0039h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
003ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003fh movsx rdx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 54 24 38}
0045h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0049h call 7ff7c824e278h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fa ff ff}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<byte>(N8 n, int count), hex://datablocks/blocks?aligned#aligned_g[8u](n8,32i)
; aligned_g[8u](n8,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<sbyte>(N8 n, int count), hex://datablocks/blocks?aligned#aligned_g[8i](n8,32i)
; aligned_g[8i](n8,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ushort>(N8 n, int count), hex://datablocks/blocks?aligned#aligned_g[16u](n8,32i)
; aligned_g[16u](n8,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<short>(N8 n, int count), hex://datablocks/blocks?aligned#aligned_g[16i](n8,32i)
; aligned_g[16i](n8,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<uint>(N8 n, int count), hex://datablocks/blocks?aligned#aligned_g[32u](n8,32i)
; aligned_g[32u](n8,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<int>(N8 n, int count), hex://datablocks/blocks?aligned#aligned_g[32i](n8,32i)
; aligned_g[32i](n8,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ulong>(N8 n, int count), hex://datablocks/blocks?aligned#aligned_g[64u](n8,32i)
; aligned_g[64u](n8,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<long>(N8 n, int count), hex://datablocks/blocks?aligned#aligned_g[64i](n8,32i)
; aligned_g[64i](n8,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<float>(N8 n, int count), hex://datablocks/blocks?aligned#aligned_g[32f](n8,32i)
; aligned_g[32f](n8,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<double>(N8 n, int count), hex://datablocks/blocks?aligned#aligned_g[64f](n8,32i)
; aligned_g[64f](n8,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<byte>(N16 n, int count), hex://datablocks/blocks?aligned#aligned_g[8u](n16,32i)
; aligned_g[8u](n16,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<sbyte>(N16 n, int count), hex://datablocks/blocks?aligned#aligned_g[8i](n16,32i)
; aligned_g[8i](n16,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ushort>(N16 n, int count), hex://datablocks/blocks?aligned#aligned_g[16u](n16,32i)
; aligned_g[16u](n16,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x00,0x03,0xc2,0x83,0xe0,0xff,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 00}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 ff}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<short>(N16 n, int count), hex://datablocks/blocks?aligned#aligned_g[16i](n16,32i)
; aligned_g[16i](n16,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x00,0x03,0xc2,0x83,0xe0,0xff,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 00}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 ff}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<uint>(N16 n, int count), hex://datablocks/blocks?aligned#aligned_g[32u](n16,32i)
; aligned_g[32u](n16,32i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc9,0x8b,0xc2,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<int>(N16 n, int count), hex://datablocks/blocks?aligned#aligned_g[32i](n16,32i)
; aligned_g[32i](n16,32i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc9,0x8b,0xc2,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ulong>(N16 n, int count), hex://datablocks/blocks?aligned#aligned_g[64u](n16,32i)
; aligned_g[64u](n16,32i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc9,0x8b,0xc2,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<long>(N16 n, int count), hex://datablocks/blocks?aligned#aligned_g[64i](n16,32i)
; aligned_g[64i](n16,32i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc9,0x8b,0xc2,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<float>(N16 n, int count), hex://datablocks/blocks?aligned#aligned_g[32f](n16,32i)
; aligned_g[32f](n16,32i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc9,0x8b,0xc2,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<double>(N16 n, int count), hex://datablocks/blocks?aligned#aligned_g[64f](n16,32i)
; aligned_g[64f](n16,32i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc9,0x8b,0xc2,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<byte>(N32 n, int count), hex://datablocks/blocks?aligned#aligned_g[8u](n32,32i)
; aligned_g[8u](n32,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<sbyte>(N32 n, int count), hex://datablocks/blocks?aligned#aligned_g[8i](n32,32i)
; aligned_g[8i](n32,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ushort>(N32 n, int count), hex://datablocks/blocks?aligned#aligned_g[16u](n32,32i)
; aligned_g[16u](n32,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<short>(N32 n, int count), hex://datablocks/blocks?aligned#aligned_g[16i](n32,32i)
; aligned_g[16i](n32,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<uint>(N32 n, int count), hex://datablocks/blocks?aligned#aligned_g[32u](n32,32i)
; aligned_g[32u](n32,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x00,0x03,0xc2,0x83,0xe0,0xff,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 00}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 ff}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<int>(N32 n, int count), hex://datablocks/blocks?aligned#aligned_g[32i](n32,32i)
; aligned_g[32i](n32,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x00,0x03,0xc2,0x83,0xe0,0xff,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 00}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 ff}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ulong>(N32 n, int count), hex://datablocks/blocks?aligned#aligned_g[64u](n32,32i)
; aligned_g[64u](n32,32i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc9,0x8b,0xc2,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<long>(N32 n, int count), hex://datablocks/blocks?aligned#aligned_g[64i](n32,32i)
; aligned_g[64i](n32,32i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc9,0x8b,0xc2,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<float>(N32 n, int count), hex://datablocks/blocks?aligned#aligned_g[32f](n32,32i)
; aligned_g[32f](n32,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x00,0x03,0xc2,0x83,0xe0,0xff,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 00}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 ff}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<double>(N32 n, int count), hex://datablocks/blocks?aligned#aligned_g[64f](n32,32i)
; aligned_g[64f](n32,32i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc9,0x8b,0xc2,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ah idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<byte>(N64 n, int count), hex://datablocks/blocks?aligned#aligned_g[8u](n64,32i)
; aligned_g[8u](n64,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<sbyte>(N64 n, int count), hex://datablocks/blocks?aligned#aligned_g[8i](n64,32i)
; aligned_g[8i](n64,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ushort>(N64 n, int count), hex://datablocks/blocks?aligned#aligned_g[16u](n64,32i)
; aligned_g[16u](n64,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<short>(N64 n, int count), hex://datablocks/blocks?aligned#aligned_g[16i](n64,32i)
; aligned_g[16i](n64,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<uint>(N64 n, int count), hex://datablocks/blocks?aligned#aligned_g[32u](n64,32i)
; aligned_g[32u](n64,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<int>(N64 n, int count), hex://datablocks/blocks?aligned#aligned_g[32i](n64,32i)
; aligned_g[32i](n64,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ulong>(N64 n, int count), hex://datablocks/blocks?aligned#aligned_g[64u](n64,32i)
; aligned_g[64u](n64,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x00,0x03,0xc2,0x83,0xe0,0xff,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 00}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 ff}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<long>(N64 n, int count), hex://datablocks/blocks?aligned#aligned_g[64i](n64,32i)
; aligned_g[64i](n64,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x00,0x03,0xc2,0x83,0xe0,0xff,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 00}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 ff}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<float>(N64 n, int count), hex://datablocks/blocks?aligned#aligned_g[32f](n64,32i)
; aligned_g[32f](n64,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<double>(N64 n, int count), hex://datablocks/blocks?aligned#aligned_g[64f](n64,32i)
; aligned_g[64f](n64,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x00,0x03,0xc2,0x83,0xe0,0xff,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 00}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffffh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 ff}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<byte>(N128 n, int count), hex://datablocks/blocks?aligned#aligned_g[8u](n128,32i)
; aligned_g[8u](n128,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x0f,0x03,0xc2,0x83,0xe0,0xf0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<sbyte>(N128 n, int count), hex://datablocks/blocks?aligned#aligned_g[8i](n128,32i)
; aligned_g[8i](n128,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x0f,0x03,0xc2,0x83,0xe0,0xf0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ushort>(N128 n, int count), hex://datablocks/blocks?aligned#aligned_g[16u](n128,32i)
; aligned_g[16u](n128,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<short>(N128 n, int count), hex://datablocks/blocks?aligned#aligned_g[16i](n128,32i)
; aligned_g[16i](n128,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<uint>(N128 n, int count), hex://datablocks/blocks?aligned#aligned_g[32u](n128,32i)
; aligned_g[32u](n128,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<int>(N128 n, int count), hex://datablocks/blocks?aligned#aligned_g[32i](n128,32i)
; aligned_g[32i](n128,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ulong>(N128 n, int count), hex://datablocks/blocks?aligned#aligned_g[64u](n128,32i)
; aligned_g[64u](n128,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<long>(N128 n, int count), hex://datablocks/blocks?aligned#aligned_g[64i](n128,32i)
; aligned_g[64i](n128,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<float>(N128 n, int count), hex://datablocks/blocks?aligned#aligned_g[32f](n128,32i)
; aligned_g[32f](n128,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<double>(N128 n, int count), hex://datablocks/blocks?aligned#aligned_g[64f](n128,32i)
; aligned_g[64f](n128,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xe8,0x1f,0x03,0xc2,0x83,0xe0,0xfe,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000ch and eax,0fffffffeh                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fe}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<byte>(N256 n, int count), hex://datablocks/blocks?aligned#aligned_g[8u](n256,32i)
; aligned_g[8u](n256,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x1f,0x03,0xc2,0x83,0xe0,0xe0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 1f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 e0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<sbyte>(N256 n, int count), hex://datablocks/blocks?aligned#aligned_g[8i](n256,32i)
; aligned_g[8i](n256,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x1f,0x03,0xc2,0x83,0xe0,0xe0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 1f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 e0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ushort>(N256 n, int count), hex://datablocks/blocks?aligned#aligned_g[16u](n256,32i)
; aligned_g[16u](n256,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x0f,0x03,0xc2,0x83,0xe0,0xf0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<short>(N256 n, int count), hex://datablocks/blocks?aligned#aligned_g[16i](n256,32i)
; aligned_g[16i](n256,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x0f,0x03,0xc2,0x83,0xe0,0xf0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<uint>(N256 n, int count), hex://datablocks/blocks?aligned#aligned_g[32u](n256,32i)
; aligned_g[32u](n256,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<int>(N256 n, int count), hex://datablocks/blocks?aligned#aligned_g[32i](n256,32i)
; aligned_g[32i](n256,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ulong>(N256 n, int count), hex://datablocks/blocks?aligned#aligned_g[64u](n256,32i)
; aligned_g[64u](n256,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<long>(N256 n, int count), hex://datablocks/blocks?aligned#aligned_g[64i](n256,32i)
; aligned_g[64i](n256,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<float>(N256 n, int count), hex://datablocks/blocks?aligned#aligned_g[32f](n256,32i)
; aligned_g[32f](n256,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<double>(N256 n, int count), hex://datablocks/blocks?aligned#aligned_g[64f](n256,32i)
; aligned_g[64f](n256,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x03,0x03,0xc2,0x83,0xe0,0xfc,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 03}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 fc}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<byte>(N512 n, int count), hex://datablocks/blocks?aligned#aligned_g[8u](n512,32i)
; aligned_g[8u](n512,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x3f,0x03,0xc2,0x83,0xe0,0xc0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 3f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffc0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 c0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<sbyte>(N512 n, int count), hex://datablocks/blocks?aligned#aligned_g[8i](n512,32i)
; aligned_g[8i](n512,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x3f,0x03,0xc2,0x83,0xe0,0xc0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 3f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffc0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 c0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ushort>(N512 n, int count), hex://datablocks/blocks?aligned#aligned_g[16u](n512,32i)
; aligned_g[16u](n512,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x1f,0x03,0xc2,0x83,0xe0,0xe0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 1f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 e0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<short>(N512 n, int count), hex://datablocks/blocks?aligned#aligned_g[16i](n512,32i)
; aligned_g[16i](n512,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x1f,0x03,0xc2,0x83,0xe0,0xe0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 1f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0ffffffe0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 e0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<uint>(N512 n, int count), hex://datablocks/blocks?aligned#aligned_g[32u](n512,32i)
; aligned_g[32u](n512,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x0f,0x03,0xc2,0x83,0xe0,0xf0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<int>(N512 n, int count), hex://datablocks/blocks?aligned#aligned_g[32i](n512,32i)
; aligned_g[32i](n512,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x0f,0x03,0xc2,0x83,0xe0,0xf0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<ulong>(N512 n, int count), hex://datablocks/blocks?aligned#aligned_g[64u](n512,32i)
; aligned_g[64u](n512,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<long>(N512 n, int count), hex://datablocks/blocks?aligned#aligned_g[64i](n512,32i)
; aligned_g[64i](n512,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<float>(N512 n, int count), hex://datablocks/blocks?aligned#aligned_g[32f](n512,32i)
; aligned_g[32f](n512,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x0f,0x03,0xc2,0x83,0xe0,0xf0,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff0h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f0}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool aligned<double>(N512 n, int count), hex://datablocks/blocks?aligned#aligned_g[64f](n512,32i)
; aligned_g[64f](n512,32i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc1,0xf8,0x1f,0x83,0xe0,0x07,0x03,0xc2,0x83,0xe0,0xf8,0x2b,0xd0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh and eax,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 f8}
0012h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<byte> alloc<byte>(N16 w, int blocks, byte t), hex://datablocks/blocks?alloc#alloc_g[8u](n16,32i,8u)
; alloc_g[8u](n16,32i,8u)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xd1,0xe0,0x49,0x63,0xd0,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa5,0x70,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x36,0x61,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 70 01 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 61 01 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<sbyte> alloc<sbyte>(N16 w, int blocks, sbyte t), hex://datablocks/blocks?alloc#alloc_g[8i](n16,32i,8i)
; alloc_g[8i](n16,32i,8i)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xd1,0xe0,0x49,0x63,0xd0,0x48,0xb9,0x98,0xf0,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x35,0x70,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xc6,0x60,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c770f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 70 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 70 01 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 60 01 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<ushort> alloc<ushort>(N16 w, int blocks, ushort t), hex://datablocks/blocks?alloc#alloc_g[16u](n16,32i,16u)
; alloc_g[16u](n16,32i,16u)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x49,0x63,0xd0,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xc8,0x6f,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x59,0x60,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 6f 01 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 60 01 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<short> alloc<short>(N16 w, int blocks, short t), hex://datablocks/blocks?alloc#alloc_g[16i](n16,32i,16i)
; alloc_g[16i](n16,32i,16i)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x49,0x63,0xd0,0x48,0xb9,0x40,0x81,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x58,0x6f,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xe9,0x5f,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c8058140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 81 05 c8 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 6f 01 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 5f 01 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<byte> alloc<byte>(N32 w, int blocks, byte t), hex://datablocks/blocks?alloc#alloc_g[8u](n32,32i,8u)
; alloc_g[8u](n32,32i,8u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x02,0x49,0x63,0xd0,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe4,0x6e,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x75,0x5f,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 6e 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 5f 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<sbyte> alloc<sbyte>(N32 w, int blocks, sbyte t), hex://datablocks/blocks?alloc#alloc_g[8i](n32,32i,8i)
; alloc_g[8i](n32,32i,8i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x02,0x49,0x63,0xd0,0x48,0xb9,0x98,0xf0,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x74,0x6e,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x05,0x5f,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c770f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 70 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 6e 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 5f 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<ushort> alloc<ushort>(N32 w, int blocks, ushort t), hex://datablocks/blocks?alloc#alloc_g[16u](n32,32i,16u)
; alloc_g[16u](n32,32i,16u)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xd1,0xe0,0x49,0x63,0xd0,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x05,0x6e,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x96,0x5e,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 6e 01 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 5e 01 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<short> alloc<short>(N32 w, int blocks, short t), hex://datablocks/blocks?alloc#alloc_g[16i](n32,32i,16i)
; alloc_g[16i](n32,32i,16i)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xd1,0xe0,0x49,0x63,0xd0,0x48,0xb9,0x40,0x81,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x95,0x6d,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x26,0x5e,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c8058140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 81 05 c8 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 6d 01 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 5e 01 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<uint> alloc<uint>(N32 w, int blocks, uint t), hex://datablocks/blocks?alloc#alloc_g[32u](n32,32i,32u)
; alloc_g[32u](n32,32i,32u)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x49,0x63,0xd0,0x48,0xb9,0x20,0x84,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x28,0x6d,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xb9,0x5d,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c8058420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 05 c8 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 6d 01 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 5d 01 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<int> alloc<int>(N32 w, int blocks, int t), hex://datablocks/blocks?alloc#alloc_g[32i](n32,32i,32i)
; alloc_g[32i](n32,32i,32i)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x49,0x63,0xd0,0x48,0xb9,0x48,0x5f,0x7d,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb8,0x6c,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x49,0x5d,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c77d5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7d c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 6c 01 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 5d 01 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<float> alloc<float>(N32 w, int blocks, float t), hex://datablocks/blocks?alloc#alloc_g[32f](n32,32i,32f)
; alloc_g[32f](n32,32i,32f)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x49,0x63,0xd0,0x48,0xb9,0x00,0xab,0xb7,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x48,0x6c,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xd9,0x5c,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c7b7ab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab b7 c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 6c 01 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 5c 01 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<byte> alloc<byte>(N64 w, int blocks, byte t), hex://datablocks/blocks?alloc#alloc_g[8u](n64,32i,8u)
; alloc_g[8u](n64,32i,8u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x03,0x49,0x63,0xd0,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd4,0x6b,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x65,0x5c,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 6b 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 5c 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<sbyte> alloc<sbyte>(N64 w, int blocks, sbyte t), hex://datablocks/blocks?alloc#alloc_g[8i](n64,32i,8i)
; alloc_g[8i](n64,32i,8i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x03,0x49,0x63,0xd0,0x48,0xb9,0x98,0xf0,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x64,0x6b,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xf5,0x5b,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c770f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 70 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 6b 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 5b 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ushort> alloc<ushort>(N64 w, int blocks, ushort t), hex://datablocks/blocks?alloc#alloc_g[16u](n64,32i,16u)
; alloc_g[16u](n64,32i,16u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x02,0x49,0x63,0xd0,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf4,0x6a,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x85,0x5b,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 6a 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 5b 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<short> alloc<short>(N64 w, int blocks, short t), hex://datablocks/blocks?alloc#alloc_g[16i](n64,32i,16i)
; alloc_g[16i](n64,32i,16i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x02,0x49,0x63,0xd0,0x48,0xb9,0x40,0x81,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x84,0x6a,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x15,0x5b,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8058140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 81 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 6a 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 5b 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<uint> alloc<uint>(N64 w, int blocks, uint t), hex://datablocks/blocks?alloc#alloc_g[32u](n64,32i,32u)
; alloc_g[32u](n64,32i,32u)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xd1,0xe0,0x49,0x63,0xd0,0x48,0xb9,0x20,0x84,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x15,0x6a,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xa6,0x5a,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c8058420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 05 c8 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 6a 01 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 5a 01 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<int> alloc<int>(N64 w, int blocks, int t), hex://datablocks/blocks?alloc#alloc_g[32i](n64,32i,32i)
; alloc_g[32i](n64,32i,32i)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xd1,0xe0,0x49,0x63,0xd0,0x48,0xb9,0x48,0x5f,0x7d,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa5,0x69,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x36,0x5a,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c77d5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7d c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 69 01 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 5a 01 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ulong> alloc<ulong>(N64 w, int blocks, ulong t), hex://datablocks/blocks?alloc#alloc_g[64u](n64,32i,64u)
; alloc_g[64u](n64,32i,64u)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x49,0x63,0xd0,0x48,0xb9,0xc8,0x70,0xa0,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x38,0x69,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xc9,0x59,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c7a070c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 70 a0 c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 69 01 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 59 01 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<long> alloc<long>(N64 w, int blocks, long t), hex://datablocks/blocks?alloc#alloc_g[64i](n64,32i,64i)
; alloc_g[64i](n64,32i,64i)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x49,0x63,0xd0,0x48,0xb9,0xc0,0x8c,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xc8,0x68,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x59,0x59,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c8058cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 05 c8 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 68 01 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 59 01 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<float> alloc<float>(N64 w, int blocks, float t), hex://datablocks/blocks?alloc#alloc_g[32f](n64,32i,32f)
; alloc_g[32f](n64,32i,32f)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xd1,0xe0,0x49,0x63,0xd0,0x48,0xb9,0x00,0xab,0xb7,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x55,0x68,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xe6,0x58,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c7b7ab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab b7 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 68 01 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 58 01 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<double> alloc<double>(N64 w, int blocks, double t), hex://datablocks/blocks?alloc#alloc_g[64f](n64,32i,64f)
; alloc_g[64f](n64,32i,64f)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x49,0x63,0xd0,0x48,0xb9,0x08,0xad,0xb7,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe8,0x67,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x79,0x58,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0019h mov rcx,7ff7c7b7ad08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ad b7 c7 f7 7f 00 00}
0023h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 67 01 5f}
0028h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
002fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
003dh lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0042h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 58 01 5f}
0047h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0049h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<byte> alloc<byte>(N128 w, int blocks, byte t), hex://datablocks/blocks?alloc#alloc_g[8u](n128,32i,8u)
; alloc_g[8u](n128,32i,8u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x04,0x49,0x63,0xd0,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x64,0x63,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xf5,0x53,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 63 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 53 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<sbyte> alloc<sbyte>(N128 w, int blocks, sbyte t), hex://datablocks/blocks?alloc#alloc_g[8i](n128,32i,8i)
; alloc_g[8i](n128,32i,8i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x04,0x49,0x63,0xd0,0x48,0xb9,0x98,0xf0,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf4,0x62,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x85,0x53,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c770f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 70 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 62 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 53 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ushort> alloc<ushort>(N128 w, int blocks, ushort t), hex://datablocks/blocks?alloc#alloc_g[16u](n128,32i,16u)
; alloc_g[16u](n128,32i,16u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x03,0x49,0x63,0xd0,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x84,0x62,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x15,0x53,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 62 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 53 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<short> alloc<short>(N128 w, int blocks, short t), hex://datablocks/blocks?alloc#alloc_g[16i](n128,32i,16i)
; alloc_g[16i](n128,32i,16i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x03,0x49,0x63,0xd0,0x48,0xb9,0x40,0x81,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x14,0x62,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xa5,0x52,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8058140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 81 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 62 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 52 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<uint> alloc<uint>(N128 w, int blocks, uint t), hex://datablocks/blocks?alloc#alloc_g[32u](n128,32i,32u)
; alloc_g[32u](n128,32i,32u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x02,0x49,0x63,0xd0,0x48,0xb9,0x20,0x84,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xa4,0x61,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x35,0x52,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8058420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 61 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 52 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<int> alloc<int>(N128 w, int blocks, int t), hex://datablocks/blocks?alloc#alloc_g[32i](n128,32i,32i)
; alloc_g[32i](n128,32i,32i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x02,0x49,0x63,0xd0,0x48,0xb9,0x48,0x5f,0x7d,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x34,0x61,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xc5,0x51,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c77d5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7d c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 61 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 51 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ulong> alloc<ulong>(N128 w, int blocks, ulong t), hex://datablocks/blocks?alloc#alloc_g[64u](n128,32i,64u)
; alloc_g[64u](n128,32i,64u)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xd1,0xe0,0x49,0x63,0xd0,0x48,0xb9,0xc8,0x70,0xa0,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xc5,0x60,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x56,0x51,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c7a070c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 70 a0 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 60 01 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 51 01 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<long> alloc<long>(N128 w, int blocks, long t), hex://datablocks/blocks?alloc#alloc_g[64i](n128,32i,64i)
; alloc_g[64i](n128,32i,64i)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xd1,0xe0,0x49,0x63,0xd0,0x48,0xb9,0xc0,0x8c,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x55,0x60,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xe6,0x50,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c8058cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 05 c8 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 60 01 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 50 01 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<float> alloc<float>(N128 w, int blocks, float t), hex://datablocks/blocks?alloc#alloc_g[32f](n128,32i,32f)
; alloc_g[32f](n128,32i,32f)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x02,0x49,0x63,0xd0,0x48,0xb9,0x00,0xab,0xb7,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe4,0x5f,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x75,0x50,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c7b7ab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab b7 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 5f 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 50 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<double> alloc<double>(N128 w, int blocks, double t), hex://datablocks/blocks?alloc#alloc_g[64f](n128,32i,64f)
; alloc_g[64f](n128,32i,64f)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xd1,0xe0,0x49,0x63,0xd0,0x48,0xb9,0x08,0xad,0xb7,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x75,0x5f,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x06,0x50,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0019h movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001ch mov rcx,7ff7c7b7ad08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ad b7 c7 f7 7f 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 5f 01 5f}
002bh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
002fh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0032h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0040h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0045h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 50 01 5f}
004ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004fh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<byte> alloc<byte>(N256 w, int blocks, byte t), hex://datablocks/blocks?alloc#alloc_g[8u](n256,32i,8u)
; alloc_g[8u](n256,32i,8u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x05,0x49,0x63,0xd0,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x04,0x5f,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x95,0x4f,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 05}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 5f 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 4f 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<sbyte> alloc<sbyte>(N256 w, int blocks, sbyte t), hex://datablocks/blocks?alloc#alloc_g[8i](n256,32i,8i)
; alloc_g[8i](n256,32i,8i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x05,0x49,0x63,0xd0,0x48,0xb9,0x98,0xf0,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x94,0x5e,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x25,0x4f,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 05}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c770f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 70 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 5e 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 4f 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ushort> alloc<ushort>(N256 w, int blocks, ushort t), hex://datablocks/blocks?alloc#alloc_g[16u](n256,32i,16u)
; alloc_g[16u](n256,32i,16u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x04,0x49,0x63,0xd0,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x24,0x5e,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xb5,0x4e,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 5e 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 4e 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<short> alloc<short>(N256 w, int blocks, short t), hex://datablocks/blocks?alloc#alloc_g[16i](n256,32i,16i)
; alloc_g[16i](n256,32i,16i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x04,0x49,0x63,0xd0,0x48,0xb9,0x40,0x81,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb4,0x5d,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x45,0x4e,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8058140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 81 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 5d 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 4e 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<uint> alloc<uint>(N256 w, int blocks, uint t), hex://datablocks/blocks?alloc#alloc_g[32u](n256,32i,32u)
; alloc_g[32u](n256,32i,32u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x03,0x49,0x63,0xd0,0x48,0xb9,0x20,0x84,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x44,0x5d,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xd5,0x4d,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8058420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 5d 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 4d 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<int> alloc<int>(N256 w, int blocks, int t), hex://datablocks/blocks?alloc#alloc_g[32i](n256,32i,32i)
; alloc_g[32i](n256,32i,32i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x03,0x49,0x63,0xd0,0x48,0xb9,0x48,0x5f,0x7d,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd4,0x5c,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x65,0x4d,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c77d5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7d c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 5c 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 4d 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ulong> alloc<ulong>(N256 w, int blocks, ulong t), hex://datablocks/blocks?alloc#alloc_g[64u](n256,32i,64u)
; alloc_g[64u](n256,32i,64u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x02,0x49,0x63,0xd0,0x48,0xb9,0xc8,0x70,0xa0,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x64,0x5c,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xf5,0x4c,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c7a070c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 70 a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 5c 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 4c 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<long> alloc<long>(N256 w, int blocks, long t), hex://datablocks/blocks?alloc#alloc_g[64i](n256,32i,64i)
; alloc_g[64i](n256,32i,64i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x02,0x49,0x63,0xd0,0x48,0xb9,0xc0,0x8c,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xf4,0x5b,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x85,0x4c,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8058cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 5b 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 4c 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<float> alloc<float>(N256 w, int blocks, float t), hex://datablocks/blocks?alloc#alloc_g[32f](n256,32i,32f)
; alloc_g[32f](n256,32i,32f)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x03,0x49,0x63,0xd0,0x48,0xb9,0x00,0xab,0xb7,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x84,0x5b,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x15,0x4c,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c7b7ab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab b7 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 5b 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 4c 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<double> alloc<double>(N256 w, int blocks, double t), hex://datablocks/blocks?alloc#alloc_g[64f](n256,32i,64f)
; alloc_g[64f](n256,32i,64f)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x02,0x49,0x63,0xd0,0x48,0xb9,0x08,0xad,0xb7,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x14,0x5b,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xa5,0x4b,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c7b7ad08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ad b7 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 5b 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 4b 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<byte> alloc<byte>(N512 w, int blocks, byte t), hex://datablocks/blocks?alloc#alloc_g[8u](n512,32i,8u)
; alloc_g[8u](n512,32i,8u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x06,0x49,0x63,0xd0,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x94,0x56,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x25,0x47,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 06}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 56 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 47 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<sbyte> alloc<sbyte>(N512 w, int blocks, sbyte t), hex://datablocks/blocks?alloc#alloc_g[8i](n512,32i,8i)
; alloc_g[8i](n512,32i,8i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x06,0x49,0x63,0xd0,0x48,0xb9,0x98,0xf0,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x24,0x56,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xb5,0x46,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 06}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c770f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 70 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 56 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 46 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ushort> alloc<ushort>(N512 w, int blocks, ushort t), hex://datablocks/blocks?alloc#alloc_g[16u](n512,32i,16u)
; alloc_g[16u](n512,32i,16u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x05,0x49,0x63,0xd0,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xb4,0x55,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x45,0x46,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 05}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 55 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 46 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<short> alloc<short>(N512 w, int blocks, short t), hex://datablocks/blocks?alloc#alloc_g[16i](n512,32i,16i)
; alloc_g[16i](n512,32i,16i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x05,0x49,0x63,0xd0,0x48,0xb9,0x40,0x81,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x44,0x55,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xd5,0x45,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 05}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8058140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 81 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 55 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 45 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<uint> alloc<uint>(N512 w, int blocks, uint t), hex://datablocks/blocks?alloc#alloc_g[32u](n512,32i,32u)
; alloc_g[32u](n512,32i,32u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x04,0x49,0x63,0xd0,0x48,0xb9,0x20,0x84,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0xd4,0x54,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x65,0x45,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8058420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 54 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 45 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<int> alloc<int>(N512 w, int blocks, int t), hex://datablocks/blocks?alloc#alloc_g[32i](n512,32i,32i)
; alloc_g[32i](n512,32i,32i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x04,0x49,0x63,0xd0,0x48,0xb9,0x48,0x5f,0x7d,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x64,0x54,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xf5,0x44,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c77d5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7d c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 54 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 44 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<ulong> alloc<ulong>(N512 w, int blocks, ulong t), hex://datablocks/blocks?alloc#alloc_g[64u](n512,32i,64u)
; alloc_g[64u](n512,32i,64u)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x03,0x49,0x63,0xd0,0x48,0xb9,0xc8,0x70,0xa0,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf4,0x53,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x85,0x44,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c7a070c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 70 a0 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 53 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 44 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<long> alloc<long>(N512 w, int blocks, long t), hex://datablocks/blocks?alloc#alloc_g[64i](n512,32i,64i)
; alloc_g[64i](n512,32i,64i)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x03,0x49,0x63,0xd0,0x48,0xb9,0xc0,0x8c,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xe8,0x84,0x53,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x15,0x44,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c8058cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 05 c8 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 53 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 44 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<float> alloc<float>(N512 w, int blocks, float t), hex://datablocks/blocks?alloc#alloc_g[32f](n512,32i,32f)
; alloc_g[32f](n512,32i,32f)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x04,0x49,0x63,0xd0,0x48,0xb9,0x00,0xab,0xb7,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x14,0x53,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0xa5,0x43,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c7b7ab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab b7 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 53 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 43 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block512<double> alloc<double>(N512 w, int blocks, double t), hex://datablocks/blocks?alloc#alloc_g[64f](n512,32i,64f)
; alloc_g[64f](n512,32i,64f)[88] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8b,0xd9,0x41,0xc1,0xe0,0x03,0x49,0x63,0xd0,0x48,0xb9,0x08,0xad,0xb7,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa4,0x52,0x01,0x5f,0x48,0x8d,0x50,0x10,0x8b,0x40,0x08,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x20,0xe8,0x35,0x43,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
001ah movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
001dh mov rcx,7ff7c7b7ad08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ad b7 c7 f7 7f 00 00}
0027h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 52 01 5f}
002ch lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0030h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0033h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 43 01 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N8 w, byte t), hex://datablocks/blocks?blocklen#blocklen_g[8u](n8,8u)
; blocklen_g[8u](n8,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N8 w, sbyte t), hex://datablocks/blocks?blocklen#blocklen_g[8i](n8,8i)
; blocklen_g[8i](n8,8i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N16 w, byte t), hex://datablocks/blocks?blocklen#blocklen_g[8u](n16,8u)
; blocklen_g[8u](n16,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x02,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N16 w, sbyte t), hex://datablocks/blocks?blocklen#blocklen_g[8i](n16,8i)
; blocklen_g[8i](n16,8i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x02,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N16 w, ushort t), hex://datablocks/blocks?blocklen#blocklen_g[16u](n16,16u)
; blocklen_g[16u](n16,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N16 w, short t), hex://datablocks/blocks?blocklen#blocklen_g[16i](n16,16i)
; blocklen_g[16i](n16,16i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N32 w, byte t), hex://datablocks/blocks?blocklen#blocklen_g[8u](n32,8u)
; blocklen_g[8u](n32,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x04,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N32 w, sbyte t), hex://datablocks/blocks?blocklen#blocklen_g[8i](n32,8i)
; blocklen_g[8i](n32,8i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x04,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N32 w, ushort t), hex://datablocks/blocks?blocklen#blocklen_g[16u](n32,16u)
; blocklen_g[16u](n32,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x02,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N32 w, short t), hex://datablocks/blocks?blocklen#blocklen_g[16i](n32,16i)
; blocklen_g[16i](n32,16i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x02,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<uint>(N32 w, uint t), hex://datablocks/blocks?blocklen#blocklen_g[32u](n32,32u)
; blocklen_g[32u](n32,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<int>(N32 w, int t), hex://datablocks/blocks?blocklen#blocklen_g[32i](n32,32i)
; blocklen_g[32i](n32,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<float>(N32 w, float t), hex://datablocks/blocks?blocklen#blocklen_g[32f](n32,32f)
; blocklen_g[32f](n32,32f)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<byte>(N64 w, byte t), hex://datablocks/blocks?blocklen#blocklen_g[8u](n64,8u)
; blocklen_g[8u](n64,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<sbyte>(N64 w, sbyte t), hex://datablocks/blocks?blocklen#blocklen_g[8i](n64,8i)
; blocklen_g[8i](n64,8i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x08,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ushort>(N64 w, ushort t), hex://datablocks/blocks?blocklen#blocklen_g[16u](n64,16u)
; blocklen_g[16u](n64,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x04,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<short>(N64 w, short t), hex://datablocks/blocks?blocklen#blocklen_g[16i](n64,16i)
; blocklen_g[16i](n64,16i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x04,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<uint>(N64 w, uint t), hex://datablocks/blocks?blocklen#blocklen_g[32u](n64,32u)
; blocklen_g[32u](n64,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x02,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<int>(N64 w, int t), hex://datablocks/blocks?blocklen#blocklen_g[32i](n64,32i)
; blocklen_g[32i](n64,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x02,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<ulong>(N64 w, ulong t), hex://datablocks/blocks?blocklen#blocklen_g[64u](n64,64u)
; blocklen_g[64u](n64,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<long>(N64 w, long t), hex://datablocks/blocks?blocklen#blocklen_g[64i](n64,64i)
; blocklen_g[64i](n64,64i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<float>(N64 w, float t), hex://datablocks/blocks?blocklen#blocklen_g[32f](n64,32f)
; blocklen_g[32f](n64,32f)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x02,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blocklen<double>(N64 w, double t), hex://datablocks/blocks?blocklen#blocklen_g[64f](n64,64f)
; blocklen_g[64f](n64,64f)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<ushort> cells(N16 n, ushort x0), hex://datablocks/blocks?cells#cells_(n16,16u)
; cells_(n16,16u)[106] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x01,0x00,0x00,0x00,0xe8,0x95,0x48,0x01,0x5f,0x66,0x89,0x70,0x10,0x48,0x83,0xc0,0x10,0xba,0x01,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x13,0x39,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0021h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 48 01 5f}
002bh mov [rax+10h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 10}
002fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0033h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0038h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
003dh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0041h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0045h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
004ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0050h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0053h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0058h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 39 01 5f}
005dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0062h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block16<ulong> cells(N16 n, ulong x0), hex://datablocks/blocks?cells#cells_(n16,64u)
; cells_(n16,64u)[210] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x48,0xb9,0xc8,0x70,0xa0,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x01,0x00,0x00,0x00,0xe8,0x05,0x48,0x01,0x5f,0x48,0x8b,0xf8,0x48,0x89,0x77,0x10,0xb8,0x01,0x00,0x00,0x00,0x45,0x33,0xc0,0x99,0x41,0xf7,0xf8,0xba,0x01,0x00,0x00,0x00,0x83,0xea,0x00,0x74,0x4f,0xba,0x1a,0x00,0x00,0x00,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xb9,0x30,0x7a,0x01,0x90,0xb0,0x02,0x00,0x00,0x4d,0x8b,0x09,0x48,0xb9,0x38,0x7a,0x01,0x90,0xb0,0x02,0x00,0x00,0x48,0x8b,0x09,0x48,0x8d,0x44,0x24,0x28,0x44,0x88,0x00,0x89,0x50,0x04,0x48,0x8b,0x54,0x24,0x28,0x48,0x89,0x54,0x24,0x20,0xba,0x01,0x00,0x00,0x00,0x4d,0x8b,0xc1,0x4c,0x8b,0xc9,0xb9,0x10,0x00,0x00,0x00,0xe8,0x79,0xcf,0x50,0xff,0x48,0x83,0xc7,0x10,0xb8,0x01,0x00,0x00,0x00,0x48,0x8d,0x54,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x02,0x48,0x8d,0x54,0x24,0x30,0x48,0x89,0x3a,0x89,0x42,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x1b,0x38,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h mov rcx,7ff7c7a070c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 70 a0 c7 f7 7f 00 00}
0021h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 48 01 5f}
002bh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
002eh mov [rdi+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 77 10}
0032h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0037h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
003bh idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
003eh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0043h sub edx,0                               ; SUB r/m32, imm8 || o32 83 /5 ib || encoded[3]{83 ea 00}
0046h je short 0097h                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
0048h mov edx,1ah                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 1a 00 00 00}
004dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0053h mov r9,2b090017a30h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 30 7a 01 90 b0 02 00 00}
005dh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0060h mov rcx,2b090017a38h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 7a 01 90 b0 02 00 00}
006ah mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006dh lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0072h mov [rax],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 00}
0075h mov [rax+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 04}
0078h mov rdx,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 28}
007dh mov [rsp+20h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 20}
0082h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0087h mov r8,r9                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c1}
008ah mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
008dh mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0092h call 7ff7c775f5c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 cf 50 ff}
0097h add rdi,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c7 10}
009bh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
00a0h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
00a5h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
00a9h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
00adh lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
00b2h mov [rdx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3a}
00b5h mov [rdx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 42 08}
00b8h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00bbh lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
00c0h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 38 01 5f}
00c5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00c7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00cah add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00ceh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cfh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<ulong> cells(N32 n, ulong x0), hex://datablocks/blocks?cells#cells_(n32,64u)
; cells_(n32,64u)[210] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x48,0xb9,0xc8,0x70,0xa0,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x01,0x00,0x00,0x00,0xe8,0x05,0x43,0x01,0x5f,0x48,0x8b,0xf8,0x48,0x89,0x77,0x10,0xb8,0x01,0x00,0x00,0x00,0x45,0x33,0xc0,0x99,0x41,0xf7,0xf8,0xba,0x01,0x00,0x00,0x00,0x83,0xea,0x00,0x74,0x4f,0xba,0x2a,0x00,0x00,0x00,0x41,0xb8,0x01,0x00,0x00,0x00,0x49,0xb9,0x30,0x7a,0x01,0x90,0xb0,0x02,0x00,0x00,0x4d,0x8b,0x09,0x48,0xb9,0x38,0x7a,0x01,0x90,0xb0,0x02,0x00,0x00,0x48,0x8b,0x09,0x48,0x8d,0x44,0x24,0x28,0x44,0x88,0x00,0x89,0x50,0x04,0x48,0x8b,0x54,0x24,0x28,0x48,0x89,0x54,0x24,0x20,0xba,0x01,0x00,0x00,0x00,0x4d,0x8b,0xc1,0x4c,0x8b,0xc9,0xb9,0x20,0x00,0x00,0x00,0xe8,0x79,0xca,0x50,0xff,0x48,0x83,0xc7,0x10,0xb8,0x01,0x00,0x00,0x00,0x48,0x8d,0x54,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x02,0x48,0x8d,0x54,0x24,0x30,0x48,0x89,0x3a,0x89,0x42,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x1b,0x33,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h mov rcx,7ff7c7a070c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 70 a0 c7 f7 7f 00 00}
0021h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 43 01 5f}
002bh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
002eh mov [rdi+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 77 10}
0032h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0037h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
003ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
003bh idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
003eh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0043h sub edx,0                               ; SUB r/m32, imm8 || o32 83 /5 ib || encoded[3]{83 ea 00}
0046h je short 0097h                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
0048h mov edx,2ah                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 2a 00 00 00}
004dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0053h mov r9,2b090017a30h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 30 7a 01 90 b0 02 00 00}
005dh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0060h mov rcx,2b090017a38h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 7a 01 90 b0 02 00 00}
006ah mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006dh lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0072h mov [rax],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 00}
0075h mov [rax+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 04}
0078h mov rdx,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 28}
007dh mov [rsp+20h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 20}
0082h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0087h mov r8,r9                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c1}
008ah mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
008dh mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0092h call 7ff7c775f5c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 ca 50 ff}
0097h add rdi,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c7 10}
009bh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
00a0h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
00a5h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
00a9h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
00adh lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
00b2h mov [rdx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3a}
00b5h mov [rdx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 42 08}
00b8h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00bbh lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
00c0h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 33 01 5f}
00c5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00c7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00cah add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00ceh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cfh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<byte> cells(N32 n, byte x0, byte x1, byte x2, byte x3), hex://datablocks/blocks?cells#cells_(n32,8u,8u,8u,8u)
; cells_(n32,8u,8u,8u,8u)[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x04,0x00,0x00,0x00,0xe8,0x12,0x42,0x01,0x5f,0x40,0x88,0x70,0x10,0x40,0x88,0x78,0x11,0x8b,0xb4,0x24,0x80,0x00,0x00,0x00,0x40,0x88,0x70,0x12,0x8b,0xb4,0x24,0x88,0x00,0x00,0x00,0x40,0x88,0x70,0x13,0x48,0x83,0xc0,0x10,0xba,0x04,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x76,0x32,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0024h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 42 01 5f}
002eh mov [rax+10h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 10}
0032h mov [rax+11h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 11}
0036h mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
003dh mov [rax+12h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 12}
0041h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
0048h mov [rax+13h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 13}
004ch add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0050h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0055h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
005ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005eh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0062h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0067h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
006ah mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
006dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0070h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0075h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 32 01 5f}
007ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007fh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<ushort> cells(N32 n, ushort x0, ushort x1), hex://datablocks/blocks?cells#cells_(n32,16u,16u)
; cells_(n32,16u,16u)[113] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x62,0x41,0x01,0x5f,0x66,0x89,0x70,0x10,0x66,0x89,0x78,0x12,0x48,0x83,0xc0,0x10,0xba,0x02,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xdc,0x31,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0024h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 41 01 5f}
002eh mov [rax+10h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 10}
0032h mov [rax+12h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 12}
0036h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
003ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
003fh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0054h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0057h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005ah lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
005fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 31 01 5f}
0064h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0066h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0069h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
006dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block32<uint> cells(N32 n, uint x0), hex://datablocks/blocks?cells#cells_(n32,32u)
; cells_(n32,32u)[105] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x48,0xb9,0x20,0x84,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x01,0x00,0x00,0x00,0xe8,0xd5,0x40,0x01,0x5f,0x89,0x70,0x10,0x48,0x83,0xc0,0x10,0xba,0x01,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x54,0x31,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov rcx,7ff7c8058420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 05 c8 f7 7f 00 00}
0021h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 40 01 5f}
002bh mov [rax+10h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 10}
002eh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0032h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0037h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
003ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0040h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0044h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0049h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004ch mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
004fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0052h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0057h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 31 01 5f}
005ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0065h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0066h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0067h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0068h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<byte> cells(N64 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7), hex://datablocks/blocks?cells#cells_(n64,8u,8u,8u,8u,8u,8u,8u,8u)
; cells_(n64,8u,8u,8u,8u,8u,8u,8u,8u)[179] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x08,0x00,0x00,0x00,0xe8,0x42,0x40,0x01,0x5f,0x40,0x88,0x70,0x10,0x40,0x88,0x78,0x11,0x8b,0xb4,0x24,0x80,0x00,0x00,0x00,0x40,0x88,0x70,0x12,0x8b,0xb4,0x24,0x88,0x00,0x00,0x00,0x40,0x88,0x70,0x13,0x8b,0xb4,0x24,0x90,0x00,0x00,0x00,0x40,0x88,0x70,0x14,0x8b,0xb4,0x24,0x98,0x00,0x00,0x00,0x40,0x88,0x70,0x15,0x8b,0xb4,0x24,0xa0,0x00,0x00,0x00,0x40,0x88,0x70,0x16,0x8b,0xb4,0x24,0xa8,0x00,0x00,0x00,0x40,0x88,0x70,0x17,0x48,0x83,0xc0,0x10,0xba,0x08,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x7a,0x30,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0024h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 40 01 5f}
002eh mov [rax+10h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 10}
0032h mov [rax+11h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 11}
0036h mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
003dh mov [rax+12h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 12}
0041h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
0048h mov [rax+13h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 13}
004ch mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
0053h mov [rax+14h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 14}
0057h mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
005eh mov [rax+15h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 15}
0062h mov esi,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a0 00 00 00}
0069h mov [rax+16h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 16}
006dh mov esi,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a8 00 00 00}
0074h mov [rax+17h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 17}
0078h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
007ch mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0081h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0086h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
008ah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
008eh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0093h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0096h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0099h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
009ch lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
00a1h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 30 01 5f}
00a6h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a8h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00abh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ushort> cells(N64 n, ushort x0, ushort x1, ushort x2, ushort x3), hex://datablocks/blocks?cells#cells_(n64,16u,16u,16u,16u)
; cells_(n64,16u,16u,16u,16u)[135] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x04,0x00,0x00,0x00,0xe8,0x72,0x3f,0x01,0x5f,0x66,0x89,0x70,0x10,0x66,0x89,0x78,0x12,0x8b,0xb4,0x24,0x80,0x00,0x00,0x00,0x66,0x89,0x70,0x14,0x8b,0xb4,0x24,0x88,0x00,0x00,0x00,0x66,0x89,0x70,0x16,0x48,0x83,0xc0,0x10,0xba,0x04,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xd6,0x2f,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0024h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 3f 01 5f}
002eh mov [rax+10h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 10}
0032h mov [rax+12h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 12}
0036h mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
003dh mov [rax+14h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 14}
0041h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
0048h mov [rax+16h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 16}
004ch add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0050h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0055h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
005ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005eh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0062h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0067h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
006ah mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
006dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0070h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0075h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 2f 01 5f}
007ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007fh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<uint> cells(N64 n, uint x0, uint x1), hex://datablocks/blocks?cells#cells_(n64,32u,32u)
; cells_(n64,32u,32u)[111] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x20,0x84,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xc2,0x3e,0x01,0x5f,0x89,0x70,0x10,0x89,0x78,0x14,0x48,0x83,0xc0,0x10,0xba,0x02,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x3e,0x2f,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c8058420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 05 c8 f7 7f 00 00}
0024h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 3e 01 5f}
002eh mov [rax+10h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 10}
0031h mov [rax+14h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 14}
0034h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0038h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
003dh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0042h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0046h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ah lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
004fh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0052h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0055h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0058h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
005dh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 2f 01 5f}
0062h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0064h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0067h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
006bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block64<ulong> cells(N64 n, ulong x0), hex://datablocks/blocks?cells#cells_(n64,64u)
; cells_(n64,64u)[106] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x48,0xb9,0xc8,0x70,0xa0,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x01,0x00,0x00,0x00,0xe8,0x35,0x3e,0x01,0x5f,0x48,0x89,0x70,0x10,0x48,0x83,0xc0,0x10,0xba,0x01,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xb3,0x2e,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h mov rcx,7ff7c7a070c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 70 a0 c7 f7 7f 00 00}
0021h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0026h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 3e 01 5f}
002bh mov [rax+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 10}
002fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0033h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0038h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
003dh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0041h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0045h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
004ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
004dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0050h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0053h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0058h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 2e 01 5f}
005dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0062h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<byte> cells(N128 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xA, byte xB, byte xC, byte xD, byte xE, byte xF), hex://datablocks/blocks?cells#cells_(n128,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u)
; cells_(n128,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u)[272] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x10,0x00,0x00,0x00,0xe8,0x9d,0x39,0x01,0x5f,0x40,0x88,0x70,0x10,0x40,0x88,0x78,0x11,0x8b,0xb4,0x24,0x80,0x00,0x00,0x00,0x40,0x88,0x70,0x12,0x8b,0xb4,0x24,0x88,0x00,0x00,0x00,0x40,0x88,0x70,0x13,0x8b,0xb4,0x24,0x90,0x00,0x00,0x00,0x40,0x88,0x70,0x14,0x8b,0xb4,0x24,0x98,0x00,0x00,0x00,0x40,0x88,0x70,0x15,0x8b,0xb4,0x24,0xa0,0x00,0x00,0x00,0x40,0x88,0x70,0x16,0x8b,0xb4,0x24,0xa8,0x00,0x00,0x00,0x40,0x88,0x70,0x17,0x8b,0xb4,0x24,0xb0,0x00,0x00,0x00,0x40,0x88,0x70,0x18,0x8b,0xb4,0x24,0xb8,0x00,0x00,0x00,0x40,0x88,0x70,0x19,0x8b,0xb4,0x24,0xc0,0x00,0x00,0x00,0x40,0x88,0x70,0x1a,0x8b,0xb4,0x24,0xc8,0x00,0x00,0x00,0x40,0x88,0x70,0x1b,0x8b,0xb4,0x24,0xd0,0x00,0x00,0x00,0x40,0x88,0x70,0x1c,0x8b,0xb4,0x24,0xd8,0x00,0x00,0x00,0x40,0x88,0x70,0x1d,0x8b,0xb4,0x24,0xe0,0x00,0x00,0x00,0x40,0x88,0x70,0x1e,0x8b,0xb4,0x24,0xe8,0x00,0x00,0x00,0x40,0x88,0x70,0x1f,0x48,0x83,0xc0,0x10,0xba,0x10,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x7d,0x29,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0019h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
001ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001fh mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0029h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
002eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 39 01 5f}
0033h mov [rax+10h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 10}
0037h mov [rax+11h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 11}
003bh mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
0042h mov [rax+12h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 12}
0046h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
004dh mov [rax+13h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 13}
0051h mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
0058h mov [rax+14h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 14}
005ch mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
0063h mov [rax+15h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 15}
0067h mov esi,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a0 00 00 00}
006eh mov [rax+16h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 16}
0072h mov esi,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a8 00 00 00}
0079h mov [rax+17h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 17}
007dh mov esi,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b0 00 00 00}
0084h mov [rax+18h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 18}
0088h mov esi,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b8 00 00 00}
008fh mov [rax+19h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 19}
0093h mov esi,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c0 00 00 00}
009ah mov [rax+1ah],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1a}
009eh mov esi,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c8 00 00 00}
00a5h mov [rax+1bh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1b}
00a9h mov esi,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d0 00 00 00}
00b0h mov [rax+1ch],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1c}
00b4h mov esi,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d8 00 00 00}
00bbh mov [rax+1dh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1d}
00bfh mov esi,[rsp+0e0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 e0 00 00 00}
00c6h mov [rax+1eh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1e}
00cah mov esi,[rsp+0e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 e8 00 00 00}
00d1h mov [rax+1fh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1f}
00d5h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d9h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
00deh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
00e3h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
00e7h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00ebh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
00f0h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
00f3h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
00f6h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00f9h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
00feh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 29 01 5f}
0103h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0105h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0108h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
010ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
010dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ushort> cells(N128 n, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7), hex://datablocks/blocks?cells#cells_(n128,16u,16u,16u,16u,16u,16u,16u,16u)
; cells_(n128,16u,16u,16u,16u,16u,16u,16u,16u)[179] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x08,0x00,0x00,0x00,0xe8,0x72,0x38,0x01,0x5f,0x66,0x89,0x70,0x10,0x66,0x89,0x78,0x12,0x8b,0xb4,0x24,0x80,0x00,0x00,0x00,0x66,0x89,0x70,0x14,0x8b,0xb4,0x24,0x88,0x00,0x00,0x00,0x66,0x89,0x70,0x16,0x8b,0xb4,0x24,0x90,0x00,0x00,0x00,0x66,0x89,0x70,0x18,0x8b,0xb4,0x24,0x98,0x00,0x00,0x00,0x66,0x89,0x70,0x1a,0x8b,0xb4,0x24,0xa0,0x00,0x00,0x00,0x66,0x89,0x70,0x1c,0x8b,0xb4,0x24,0xa8,0x00,0x00,0x00,0x66,0x89,0x70,0x1e,0x48,0x83,0xc0,0x10,0xba,0x08,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xaa,0x28,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0024h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 38 01 5f}
002eh mov [rax+10h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 10}
0032h mov [rax+12h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 12}
0036h mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
003dh mov [rax+14h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 14}
0041h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
0048h mov [rax+16h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 16}
004ch mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
0053h mov [rax+18h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 18}
0057h mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
005eh mov [rax+1ah],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1a}
0062h mov esi,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a0 00 00 00}
0069h mov [rax+1ch],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1c}
006dh mov esi,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a8 00 00 00}
0074h mov [rax+1eh],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1e}
0078h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
007ch mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0081h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0086h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
008ah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
008eh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0093h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0096h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0099h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
009ch lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
00a1h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 28 01 5f}
00a6h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a8h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00abh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<uint> cells(N128 n, uint x0, uint x1, uint x2, uint x3), hex://datablocks/blocks?cells#cells_(n128,32u,32u,32u,32u)
; cells_(n128,32u,32u,32u,32u)[131] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x20,0x84,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x04,0x00,0x00,0x00,0xe8,0xa2,0x37,0x01,0x5f,0x89,0x70,0x10,0x89,0x78,0x14,0x8b,0xb4,0x24,0x80,0x00,0x00,0x00,0x89,0x70,0x18,0x8b,0xb4,0x24,0x88,0x00,0x00,0x00,0x89,0x70,0x1c,0x48,0x83,0xc0,0x10,0xba,0x04,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x0a,0x28,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c8058420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 05 c8 f7 7f 00 00}
0024h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 37 01 5f}
002eh mov [rax+10h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 10}
0031h mov [rax+14h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 14}
0034h mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
003bh mov [rax+18h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 18}
003eh mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
0045h mov [rax+1ch],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 1c}
0048h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
004ch mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0051h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0056h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005ah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005eh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0063h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0066h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0069h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006ch lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0071h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 28 01 5f}
0076h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0078h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007bh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
007fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block128<ulong> cells(N128 n, ulong x0, ulong x1), hex://datablocks/blocks?cells#cells_(n128,64u,64u)
; cells_(n128,64u,64u)[113] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x49,0x8b,0xf9,0x48,0xb9,0xc8,0x70,0xa0,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x02,0x37,0x01,0x5f,0x48,0x89,0x70,0x10,0x48,0x89,0x78,0x18,0x48,0x83,0xc0,0x10,0xba,0x02,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x7c,0x27,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
001ah mov rcx,7ff7c7a070c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 70 a0 c7 f7 7f 00 00}
0024h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 37 01 5f}
002eh mov [rax+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 10}
0032h mov [rax+18h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 18}
0036h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
003ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
003fh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0051h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0054h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0057h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005ah lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
005fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 27 01 5f}
0064h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0066h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0069h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
006dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<byte> cells(N256 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xA, byte xB, byte xC, byte xD, byte xE, byte xF, byte x10, byte x11, byte x12, byte x13, byte x14, byte x15, byte x16, byte x17, byte x18, byte x19, byte x1A, byte x1B, byte x1C, byte x1D, byte x1E, byte x1F), hex://datablocks/blocks?cells#cells_(n256,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u)
; cells_(n256,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u)[448] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x10,0xea,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x20,0x00,0x00,0x00,0xe8,0x6d,0x36,0x01,0x5f,0x40,0x88,0x70,0x10,0x40,0x88,0x78,0x11,0x8b,0xb4,0x24,0x80,0x00,0x00,0x00,0x40,0x88,0x70,0x12,0x8b,0xb4,0x24,0x88,0x00,0x00,0x00,0x40,0x88,0x70,0x13,0x8b,0xb4,0x24,0x90,0x00,0x00,0x00,0x40,0x88,0x70,0x14,0x8b,0xb4,0x24,0x98,0x00,0x00,0x00,0x40,0x88,0x70,0x15,0x8b,0xb4,0x24,0xa0,0x00,0x00,0x00,0x40,0x88,0x70,0x16,0x8b,0xb4,0x24,0xa8,0x00,0x00,0x00,0x40,0x88,0x70,0x17,0x8b,0xb4,0x24,0xb0,0x00,0x00,0x00,0x40,0x88,0x70,0x18,0x8b,0xb4,0x24,0xb8,0x00,0x00,0x00,0x40,0x88,0x70,0x19,0x8b,0xb4,0x24,0xc0,0x00,0x00,0x00,0x40,0x88,0x70,0x1a,0x8b,0xb4,0x24,0xc8,0x00,0x00,0x00,0x40,0x88,0x70,0x1b,0x8b,0xb4,0x24,0xd0,0x00,0x00,0x00,0x40,0x88,0x70,0x1c,0x8b,0xb4,0x24,0xd8,0x00,0x00,0x00,0x40,0x88,0x70,0x1d,0x8b,0xb4,0x24,0xe0,0x00,0x00,0x00,0x40,0x88,0x70,0x1e,0x8b,0xb4,0x24,0xe8,0x00,0x00,0x00,0x40,0x88,0x70,0x1f,0x8b,0xb4,0x24,0xf0,0x00,0x00,0x00,0x40,0x88,0x70,0x20,0x8b,0xb4,0x24,0xf8,0x00,0x00,0x00,0x40,0x88,0x70,0x21,0x8b,0xb4,0x24,0x00,0x01,0x00,0x00,0x40,0x88,0x70,0x22,0x8b,0xb4,0x24,0x08,0x01,0x00,0x00,0x40,0x88,0x70,0x23,0x8b,0xb4,0x24,0x10,0x01,0x00,0x00,0x40,0x88,0x70,0x24,0x8b,0xb4,0x24,0x18,0x01,0x00,0x00,0x40,0x88,0x70,0x25,0x8b,0xb4,0x24,0x20,0x01,0x00,0x00,0x40,0x88,0x70,0x26,0x8b,0xb4,0x24,0x28,0x01,0x00,0x00,0x40,0x88,0x70,0x27,0x8b,0xb4,0x24,0x30,0x01,0x00,0x00,0x40,0x88,0x70,0x28,0x8b,0xb4,0x24,0x38,0x01,0x00,0x00,0x40,0x88,0x70,0x29,0x8b,0xb4,0x24,0x40,0x01,0x00,0x00,0x40,0x88,0x70,0x2a,0x8b,0xb4,0x24,0x48,0x01,0x00,0x00,0x40,0x88,0x70,0x2b,0x8b,0xb4,0x24,0x50,0x01,0x00,0x00,0x40,0x88,0x70,0x2c,0x8b,0xb4,0x24,0x58,0x01,0x00,0x00,0x40,0x88,0x70,0x2d,0x8b,0xb4,0x24,0x60,0x01,0x00,0x00,0x40,0x88,0x70,0x2e,0x8b,0xb4,0x24,0x68,0x01,0x00,0x00,0x40,0x88,0x70,0x2f,0x48,0x83,0xc0,0x10,0xba,0x20,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x9d,0x25,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0019h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
001ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001fh mov rcx,7ff7c770ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 70 c7 f7 7f 00 00}
0029h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
002eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 36 01 5f}
0033h mov [rax+10h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 10}
0037h mov [rax+11h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 11}
003bh mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
0042h mov [rax+12h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 12}
0046h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
004dh mov [rax+13h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 13}
0051h mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
0058h mov [rax+14h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 14}
005ch mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
0063h mov [rax+15h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 15}
0067h mov esi,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a0 00 00 00}
006eh mov [rax+16h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 16}
0072h mov esi,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a8 00 00 00}
0079h mov [rax+17h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 17}
007dh mov esi,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b0 00 00 00}
0084h mov [rax+18h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 18}
0088h mov esi,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b8 00 00 00}
008fh mov [rax+19h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 19}
0093h mov esi,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c0 00 00 00}
009ah mov [rax+1ah],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1a}
009eh mov esi,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c8 00 00 00}
00a5h mov [rax+1bh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1b}
00a9h mov esi,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d0 00 00 00}
00b0h mov [rax+1ch],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1c}
00b4h mov esi,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d8 00 00 00}
00bbh mov [rax+1dh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1d}
00bfh mov esi,[rsp+0e0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 e0 00 00 00}
00c6h mov [rax+1eh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1e}
00cah mov esi,[rsp+0e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 e8 00 00 00}
00d1h mov [rax+1fh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 1f}
00d5h mov esi,[rsp+0f0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 f0 00 00 00}
00dch mov [rax+20h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 20}
00e0h mov esi,[rsp+0f8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 f8 00 00 00}
00e7h mov [rax+21h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 21}
00ebh mov esi,[rsp+100h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 00 01 00 00}
00f2h mov [rax+22h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 22}
00f6h mov esi,[rsp+108h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 08 01 00 00}
00fdh mov [rax+23h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 23}
0101h mov esi,[rsp+110h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 10 01 00 00}
0108h mov [rax+24h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 24}
010ch mov esi,[rsp+118h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 18 01 00 00}
0113h mov [rax+25h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 25}
0117h mov esi,[rsp+120h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 20 01 00 00}
011eh mov [rax+26h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 26}
0122h mov esi,[rsp+128h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 28 01 00 00}
0129h mov [rax+27h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 27}
012dh mov esi,[rsp+130h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 30 01 00 00}
0134h mov [rax+28h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 28}
0138h mov esi,[rsp+138h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 38 01 00 00}
013fh mov [rax+29h],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 29}
0143h mov esi,[rsp+140h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 40 01 00 00}
014ah mov [rax+2ah],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2a}
014eh mov esi,[rsp+148h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 48 01 00 00}
0155h mov [rax+2bh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2b}
0159h mov esi,[rsp+150h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 50 01 00 00}
0160h mov [rax+2ch],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2c}
0164h mov esi,[rsp+158h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 58 01 00 00}
016bh mov [rax+2dh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2d}
016fh mov esi,[rsp+160h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 60 01 00 00}
0176h mov [rax+2eh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2e}
017ah mov esi,[rsp+168h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 68 01 00 00}
0181h mov [rax+2fh],sil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 2f}
0185h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0189h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
018eh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0193h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0197h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
019bh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
01a0h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
01a3h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
01a6h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01a9h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
01aeh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 25 01 5f}
01b3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01b5h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01b8h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
01bch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01bdh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01beh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bfh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ushort> cells(N256 n, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort xA, ushort xB, ushort xC, ushort xD, ushort xE, ushort xF), hex://datablocks/blocks?cells#cells_(n256,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u)
; cells_(n256,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u)[272] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x40,0x7b,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x10,0x00,0x00,0x00,0xe8,0x8d,0x34,0x01,0x5f,0x66,0x89,0x70,0x10,0x66,0x89,0x78,0x12,0x8b,0xb4,0x24,0x80,0x00,0x00,0x00,0x66,0x89,0x70,0x14,0x8b,0xb4,0x24,0x88,0x00,0x00,0x00,0x66,0x89,0x70,0x16,0x8b,0xb4,0x24,0x90,0x00,0x00,0x00,0x66,0x89,0x70,0x18,0x8b,0xb4,0x24,0x98,0x00,0x00,0x00,0x66,0x89,0x70,0x1a,0x8b,0xb4,0x24,0xa0,0x00,0x00,0x00,0x66,0x89,0x70,0x1c,0x8b,0xb4,0x24,0xa8,0x00,0x00,0x00,0x66,0x89,0x70,0x1e,0x8b,0xb4,0x24,0xb0,0x00,0x00,0x00,0x66,0x89,0x70,0x20,0x8b,0xb4,0x24,0xb8,0x00,0x00,0x00,0x66,0x89,0x70,0x22,0x8b,0xb4,0x24,0xc0,0x00,0x00,0x00,0x66,0x89,0x70,0x24,0x8b,0xb4,0x24,0xc8,0x00,0x00,0x00,0x66,0x89,0x70,0x26,0x8b,0xb4,0x24,0xd0,0x00,0x00,0x00,0x66,0x89,0x70,0x28,0x8b,0xb4,0x24,0xd8,0x00,0x00,0x00,0x66,0x89,0x70,0x2a,0x8b,0xb4,0x24,0xe0,0x00,0x00,0x00,0x66,0x89,0x70,0x2c,0x8b,0xb4,0x24,0xe8,0x00,0x00,0x00,0x66,0x89,0x70,0x2e,0x48,0x83,0xc0,0x10,0xba,0x10,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x6d,0x24,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0019h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
001ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001fh mov rcx,7ff7c8057b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7b 05 c8 f7 7f 00 00}
0029h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
002eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 34 01 5f}
0033h mov [rax+10h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 10}
0037h mov [rax+12h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 12}
003bh mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
0042h mov [rax+14h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 14}
0046h mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
004dh mov [rax+16h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 16}
0051h mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
0058h mov [rax+18h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 18}
005ch mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
0063h mov [rax+1ah],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1a}
0067h mov esi,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a0 00 00 00}
006eh mov [rax+1ch],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1c}
0072h mov esi,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a8 00 00 00}
0079h mov [rax+1eh],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 1e}
007dh mov esi,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b0 00 00 00}
0084h mov [rax+20h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 20}
0088h mov esi,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 b8 00 00 00}
008fh mov [rax+22h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 22}
0093h mov esi,[rsp+0c0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c0 00 00 00}
009ah mov [rax+24h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 24}
009eh mov esi,[rsp+0c8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 c8 00 00 00}
00a5h mov [rax+26h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 26}
00a9h mov esi,[rsp+0d0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d0 00 00 00}
00b0h mov [rax+28h],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 28}
00b4h mov esi,[rsp+0d8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 d8 00 00 00}
00bbh mov [rax+2ah],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 2a}
00bfh mov esi,[rsp+0e0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 e0 00 00 00}
00c6h mov [rax+2ch],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 2c}
00cah mov esi,[rsp+0e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 e8 00 00 00}
00d1h mov [rax+2eh],si                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 2e}
00d5h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d9h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
00deh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
00e3h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
00e7h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00ebh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
00f0h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
00f3h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
00f6h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00f9h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
00feh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 24 01 5f}
0103h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0105h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0108h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
010ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
010dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<uint> cells(N256 n, uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7), hex://datablocks/blocks?cells#cells_(n256,32u,32u,32u,32u,32u,32u,32u,32u)
; cells_(n256,32u,32u,32u,32u,32u,32u,32u,32u)[171] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x41,0x8b,0xf0,0x41,0x8b,0xf9,0x48,0xb9,0x20,0x84,0x05,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x08,0x00,0x00,0x00,0xe8,0x62,0x33,0x01,0x5f,0x89,0x70,0x10,0x89,0x78,0x14,0x8b,0xb4,0x24,0x80,0x00,0x00,0x00,0x89,0x70,0x18,0x8b,0xb4,0x24,0x88,0x00,0x00,0x00,0x89,0x70,0x1c,0x8b,0xb4,0x24,0x90,0x00,0x00,0x00,0x89,0x70,0x20,0x8b,0xb4,0x24,0x98,0x00,0x00,0x00,0x89,0x70,0x24,0x8b,0xb4,0x24,0xa0,0x00,0x00,0x00,0x89,0x70,0x28,0x8b,0xb4,0x24,0xa8,0x00,0x00,0x00,0x89,0x70,0x2c,0x48,0x83,0xc0,0x10,0xba,0x08,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xa2,0x23,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
0017h mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
001ah mov rcx,7ff7c8058420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 05 c8 f7 7f 00 00}
0024h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 33 01 5f}
002eh mov [rax+10h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 10}
0031h mov [rax+14h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 14}
0034h mov esi,[rsp+80h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 80 00 00 00}
003bh mov [rax+18h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 18}
003eh mov esi,[rsp+88h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 88 00 00 00}
0045h mov [rax+1ch],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 1c}
0048h mov esi,[rsp+90h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 90 00 00 00}
004fh mov [rax+20h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 20}
0052h mov esi,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 98 00 00 00}
0059h mov [rax+24h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 24}
005ch mov esi,[rsp+0a0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a0 00 00 00}
0063h mov [rax+28h],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 28}
0066h mov esi,[rsp+0a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 a8 00 00 00}
006dh mov [rax+2ch],esi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 2c}
0070h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0074h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0079h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
007eh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0082h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0086h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
008bh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
008eh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0091h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0094h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0099h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 23 01 5f}
009eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a0h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a3h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00aah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Block256<ulong> cells(N256 n, ulong x0, ulong x1, ulong x2, ulong x3), hex://datablocks/blocks?cells#cells_(n256,64u,64u,64u,64u)
; cells_(n256,64u,64u,64u,64u)[137] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x49,0x8b,0xf9,0x48,0xb9,0xc8,0x70,0xa0,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x04,0x00,0x00,0x00,0xe8,0x92,0x32,0x01,0x5f,0x48,0x89,0x70,0x10,0x48,0x89,0x78,0x18,0x48,0x8b,0xb4,0x24,0x80,0x00,0x00,0x00,0x48,0x89,0x70,0x20,0x48,0x8b,0xb4,0x24,0x88,0x00,0x00,0x00,0x48,0x89,0x70,0x28,0x48,0x83,0xc0,0x10,0xba,0x04,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x30,0x48,0x89,0x01,0x89,0x51,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xf4,0x22,0x01,0x5f,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
001ah mov rcx,7ff7c7a070c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 70 a0 c7 f7 7f 00 00}
0024h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0029h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 32 01 5f}
002eh mov [rax+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 10}
0032h mov [rax+18h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 18}
0036h mov rsi,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 80 00 00 00}
003eh mov [rax+20h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 20}
0042h mov rsi,[rsp+88h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 88 00 00 00}
004ah mov [rax+28h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 28}
004eh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0052h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0057h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
005ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0060h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0064h lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0069h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
006ch mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
006fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0072h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0077h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 22 01 5f}
007ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0081h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0085h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
