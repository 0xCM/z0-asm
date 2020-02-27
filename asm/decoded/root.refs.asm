------------------------------------------------------------------------------------------------------------------------
; ref byte seek<byte>(ref byte src, int count), hex://root/refs?seek#seek_g[8u](8u~ref,32i)
; seek_g[8u](8u~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte seek<sbyte>(ref sbyte src, int count), hex://root/refs?seek#seek_g[8i](8i~ref,32i)
; seek_g[8i](8i~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek<ushort>(ref ushort src, int count), hex://root/refs?seek#seek_g[16u](16u~ref,32i)
; seek_g[16u](16u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short seek<short>(ref short src, int count), hex://root/refs?seek#seek_g[16i](16i~ref,32i)
; seek_g[16i](16i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek<uint>(ref uint src, int count), hex://root/refs?seek#seek_g[32u](32u~ref,32i)
; seek_g[32u](32u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int seek<int>(ref int src, int count), hex://root/refs?seek#seek_g[32i](32i~ref,32i)
; seek_g[32i](32i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek<ulong>(ref ulong src, int count), hex://root/refs?seek#seek_g[64u](64u~ref,32i)
; seek_g[64u](64u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long seek<long>(ref long src, int count), hex://root/refs?seek#seek_g[64i](64i~ref,32i)
; seek_g[64i](64i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float seek<float>(ref float src, int count), hex://root/refs?seek#seek_g[32f](32f~ref,32i)
; seek_g[32f](32f~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double seek<double>(ref double src, int count), hex://root/refs?seek#seek_g[64f](64f~ref,32i)
; seek_g[64f](64f~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte mutable<byte>(in byte src), hex://root/refs?mutable#mutable_g[8u](8u~in)
; mutable_g[8u](8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte mutable<sbyte>(in sbyte src), hex://root/refs?mutable#mutable_g[8i](8i~in)
; mutable_g[8i](8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort mutable<ushort>(in ushort src), hex://root/refs?mutable#mutable_g[16u](16u~in)
; mutable_g[16u](16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short mutable<short>(in short src), hex://root/refs?mutable#mutable_g[16i](16i~in)
; mutable_g[16i](16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint mutable<uint>(in uint src), hex://root/refs?mutable#mutable_g[32u](32u~in)
; mutable_g[32u](32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int mutable<int>(in int src), hex://root/refs?mutable#mutable_g[32i](32i~in)
; mutable_g[32i](32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong mutable<ulong>(in ulong src), hex://root/refs?mutable#mutable_g[64u](64u~in)
; mutable_g[64u](64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long mutable<long>(in long src), hex://root/refs?mutable#mutable_g[64i](64i~in)
; mutable_g[64i](64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float mutable<float>(in float src), hex://root/refs?mutable#mutable_g[32f](32f~in)
; mutable_g[32f](32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double mutable<double>(in double src), hex://root/refs?mutable#mutable_g[64f](64f~in)
; mutable_g[64f](64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip<byte>(in byte src, int count), hex://root/refs?skip#skip_g[8u](8u~in,32i)
; skip_g[8u](8u~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte skip<sbyte>(in sbyte src, int count), hex://root/refs?skip#skip_g[8i](8i~in,32i)
; skip_g[8i](8i~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip<ushort>(in ushort src, int count), hex://root/refs?skip#skip_g[16u](16u~in,32i)
; skip_g[16u](16u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short skip<short>(in short src, int count), hex://root/refs?skip#skip_g[16i](16i~in,32i)
; skip_g[16i](16i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip<uint>(in uint src, int count), hex://root/refs?skip#skip_g[32u](32u~in,32i)
; skip_g[32u](32u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int skip<int>(in int src, int count), hex://root/refs?skip#skip_g[32i](32i~in,32i)
; skip_g[32i](32i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip<ulong>(in ulong src, int count), hex://root/refs?skip#skip_g[64u](64u~in,32i)
; skip_g[64u](64u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long skip<long>(in long src, int count), hex://root/refs?skip#skip_g[64i](64i~in,32i)
; skip_g[64i](64i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float skip<float>(in float src, int count), hex://root/refs?skip#skip_g[32f](32f~in,32i)
; skip_g[32f](32f~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double skip<double>(in double src, int count), hex://root/refs?skip#skip_g[64f](64f~in,32i)
; skip_g[64f](64f~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byterefR<byte>(ref byte src), hex://root/refs?byterefR#byterefR_g[8u](8u~ref)
; byterefR_g[8u](8u~ref)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byterefR<sbyte>(ref sbyte src), hex://root/refs?byterefR#byterefR_g[8i](8i~ref)
; byterefR_g[8i](8i~ref)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byterefR<ushort>(ref ushort src), hex://root/refs?byterefR#byterefR_g[16u](16u~ref)
; byterefR_g[16u](16u~ref)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byterefR<short>(ref short src), hex://root/refs?byterefR#byterefR_g[16i](16i~ref)
; byterefR_g[16i](16i~ref)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byterefR<uint>(ref uint src), hex://root/refs?byterefR#byterefR_g[32u](32u~ref)
; byterefR_g[32u](32u~ref)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byterefR<int>(ref int src), hex://root/refs?byterefR#byterefR_g[32i](32i~ref)
; byterefR_g[32i](32i~ref)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byterefR<ulong>(ref ulong src), hex://root/refs?byterefR#byterefR_g[64u](64u~ref)
; byterefR_g[64u](64u~ref)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byterefR<long>(ref long src), hex://root/refs?byterefR#byterefR_g[64i](64i~ref)
; byterefR_g[64i](64i~ref)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byterefR<float>(ref float src), hex://root/refs?byterefR#byterefR_g[32f](32f~ref)
; byterefR_g[32f](32f~ref)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byterefR<double>(ref double src), hex://root/refs?byterefR#byterefR_g[64f](64f~ref)
; byterefR_g[64f](64f~ref)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byteref<byte>(in byte src), hex://root/refs?byteref#byteref_g[8u](8u~in)
; byteref_g[8u](8u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byteref<sbyte>(in sbyte src), hex://root/refs?byteref#byteref_g[8i](8i~in)
; byteref_g[8i](8i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byteref<ushort>(in ushort src), hex://root/refs?byteref#byteref_g[16u](16u~in)
; byteref_g[16u](16u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byteref<short>(in short src), hex://root/refs?byteref#byteref_g[16i](16i~in)
; byteref_g[16i](16i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byteref<uint>(in uint src), hex://root/refs?byteref#byteref_g[32u](32u~in)
; byteref_g[32u](32u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byteref<int>(in int src), hex://root/refs?byteref#byteref_g[32i](32i~in)
; byteref_g[32i](32i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byteref<ulong>(in ulong src), hex://root/refs?byteref#byteref_g[64u](64u~in)
; byteref_g[64u](64u~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byteref<long>(in long src), hex://root/refs?byteref#byteref_g[64i](64i~in)
; byteref_g[64i](64i~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byteref<float>(in float src), hex://root/refs?byteref#byteref_g[32f](32f~in)
; byteref_g[32f](32f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte byteref<double>(in double src), hex://root/refs?byteref#byteref_g[64f](64f~in)
; byteref_g[64f](64f~in)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void swap<byte>(ref byte lhs, ref byte rhs), hex://root/refs?swap#swap_g[8u](8u~ref,8u~ref)
; swap_g[8u](8u~ref,8u~ref)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0x01,0x44,0x0f,0xb6,0x02,0x44,0x88,0x01,0x88,0x02,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,byte ptr [rcx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 01}
0008h movzx r8d,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 02}
000ch mov [rcx],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 01}
000fh mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void swap<sbyte>(ref sbyte lhs, ref sbyte rhs), hex://root/refs?swap#swap_g[8i](8i~ref,8i~ref)
; swap_g[8i](8i~ref,8i~ref)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0x01,0x4c,0x0f,0xbe,0x02,0x44,0x88,0x01,0x88,0x02,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,byte ptr [rcx]                ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be 01}
0009h movsx r8,byte ptr [rdx]                 ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be 02}
000dh mov [rcx],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 01}
0010h mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void swap<ushort>(ref ushort lhs, ref ushort rhs), hex://root/refs?swap#swap_g[16u](16u~ref,16u~ref)
; swap_g[16u](16u~ref,16u~ref)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0x01,0x44,0x0f,0xb7,0x02,0x66,0x44,0x89,0x01,0x66,0x89,0x02,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 01}
0008h movzx r8d,word ptr [rdx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 02}
000ch mov [rcx],r8w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 44 89 01}
0010h mov [rdx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 02}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void swap<short>(ref short lhs, ref short rhs), hex://root/refs?swap#swap_g[16i](16i~ref,16i~ref)
; swap_g[16i](16i~ref,16i~ref)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0x01,0x4c,0x0f,0xbf,0x02,0x66,0x44,0x89,0x01,0x66,0x89,0x02,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,word ptr [rcx]                ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf 01}
0009h movsx r8,word ptr [rdx]                 ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf 02}
000dh mov [rcx],r8w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 44 89 01}
0011h mov [rdx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 02}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void swap<uint>(ref uint lhs, ref uint rhs), hex://root/refs?swap#swap_g[32u](32u~ref,32u~ref)
; swap_g[32u](32u~ref,32u~ref)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x01,0x44,0x8b,0x02,0x44,0x89,0x01,0x89,0x02,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 01}
0007h mov r8d,[rdx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b 02}
000ah mov [rcx],r8d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 01}
000dh mov [rdx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 02}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void swap<int>(ref int lhs, ref int rhs), hex://root/refs?swap#swap_g[32i](32i~ref,32i~ref)
; swap_g[32i](32i~ref,32i~ref)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x01,0x44,0x8b,0x02,0x44,0x89,0x01,0x89,0x02,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 01}
0007h mov r8d,[rdx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b 02}
000ah mov [rcx],r8d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 01}
000dh mov [rdx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 02}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void swap<ulong>(ref ulong lhs, ref ulong rhs), hex://root/refs?swap#swap_g[64u](64u~ref,64u~ref)
; swap_g[64u](64u~ref,64u~ref)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x4c,0x8b,0x02,0x4c,0x89,0x01,0x48,0x89,0x02,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov r8,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 02}
000bh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
000eh mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void swap<long>(ref long lhs, ref long rhs), hex://root/refs?swap#swap_g[64i](64i~ref,64i~ref)
; swap_g[64i](64i~ref,64i~ref)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x4c,0x8b,0x02,0x4c,0x89,0x01,0x48,0x89,0x02,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov r8,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 02}
000bh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
000eh mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void swap<float>(ref float lhs, ref float rhs), hex://root/refs?swap#swap_g[32f](32f~ref,32f~ref)
; swap_g[32f](32f~ref,32f~ref)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x10,0x01,0xc5,0xfa,0x10,0x0a,0xc5,0xfa,0x11,0x09,0xc5,0xfa,0x11,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm0,dword ptr [rcx]             ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[4]{c5 fa 10 01}
0009h vmovss xmm1,dword ptr [rdx]             ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[4]{c5 fa 10 0a}
000dh vmovss dword ptr [rcx],xmm1             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 09}
0011h vmovss dword ptr [rdx],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 02}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void swap<double>(ref double lhs, ref double rhs), hex://root/refs?swap#swap_g[64f](64f~ref,64f~ref)
; swap_g[64f](64f~ref,64f~ref)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x10,0x01,0xc5,0xfb,0x10,0x0a,0xc5,0xfb,0x11,0x09,0xc5,0xfb,0x11,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm0,qword ptr [rcx]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[4]{c5 fb 10 01}
0009h vmovsd xmm1,qword ptr [rdx]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[4]{c5 fb 10 0a}
000dh vmovsd qword ptr [rcx],xmm1             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 09}
0011h vmovsd qword ptr [rdx],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 02}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<byte>(ref byte src, int count), hex://root/refs?seek8#seek8_g[8u](8u~ref,32i)
; seek8_g[8u](8u~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<sbyte>(ref sbyte src, int count), hex://root/refs?seek8#seek8_g[8i](8i~ref,32i)
; seek8_g[8i](8i~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<ushort>(ref ushort src, int count), hex://root/refs?seek8#seek8_g[16u](16u~ref,32i)
; seek8_g[16u](16u~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<short>(ref short src, int count), hex://root/refs?seek8#seek8_g[16i](16i~ref,32i)
; seek8_g[16i](16i~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<uint>(ref uint src, int count), hex://root/refs?seek8#seek8_g[32u](32u~ref,32i)
; seek8_g[32u](32u~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<int>(ref int src, int count), hex://root/refs?seek8#seek8_g[32i](32i~ref,32i)
; seek8_g[32i](32i~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<ulong>(ref ulong src, int count), hex://root/refs?seek8#seek8_g[64u](64u~ref,32i)
; seek8_g[64u](64u~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<long>(ref long src, int count), hex://root/refs?seek8#seek8_g[64i](64i~ref,32i)
; seek8_g[64i](64i~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<float>(ref float src, int count), hex://root/refs?seek8#seek8_g[32f](32f~ref,32i)
; seek8_g[32f](32f~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<double>(ref double src, int count), hex://root/refs?seek8#seek8_g[64f](64f~ref,32i)
; seek8_g[64f](64f~ref,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<byte>(ref byte src, int count), hex://root/refs?seek16#seek16_g[8u](8u~ref,32i)
; seek16_g[8u](8u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<sbyte>(ref sbyte src, int count), hex://root/refs?seek16#seek16_g[8i](8i~ref,32i)
; seek16_g[8i](8i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<ushort>(ref ushort src, int count), hex://root/refs?seek16#seek16_g[16u](16u~ref,32i)
; seek16_g[16u](16u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<short>(ref short src, int count), hex://root/refs?seek16#seek16_g[16i](16i~ref,32i)
; seek16_g[16i](16i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<uint>(ref uint src, int count), hex://root/refs?seek16#seek16_g[32u](32u~ref,32i)
; seek16_g[32u](32u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<int>(ref int src, int count), hex://root/refs?seek16#seek16_g[32i](32i~ref,32i)
; seek16_g[32i](32i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<ulong>(ref ulong src, int count), hex://root/refs?seek16#seek16_g[64u](64u~ref,32i)
; seek16_g[64u](64u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<long>(ref long src, int count), hex://root/refs?seek16#seek16_g[64i](64i~ref,32i)
; seek16_g[64i](64i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<float>(ref float src, int count), hex://root/refs?seek16#seek16_g[32f](32f~ref,32i)
; seek16_g[32f](32f~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<double>(ref double src, int count), hex://root/refs?seek16#seek16_g[64f](64f~ref,32i)
; seek16_g[64f](64f~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<byte>(ref byte src, int count), hex://root/refs?seek32#seek32_g[8u](8u~ref,32i)
; seek32_g[8u](8u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<sbyte>(ref sbyte src, int count), hex://root/refs?seek32#seek32_g[8i](8i~ref,32i)
; seek32_g[8i](8i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<ushort>(ref ushort src, int count), hex://root/refs?seek32#seek32_g[16u](16u~ref,32i)
; seek32_g[16u](16u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<short>(ref short src, int count), hex://root/refs?seek32#seek32_g[16i](16i~ref,32i)
; seek32_g[16i](16i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<uint>(ref uint src, int count), hex://root/refs?seek32#seek32_g[32u](32u~ref,32i)
; seek32_g[32u](32u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<int>(ref int src, int count), hex://root/refs?seek32#seek32_g[32i](32i~ref,32i)
; seek32_g[32i](32i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<ulong>(ref ulong src, int count), hex://root/refs?seek32#seek32_g[64u](64u~ref,32i)
; seek32_g[64u](64u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<long>(ref long src, int count), hex://root/refs?seek32#seek32_g[64i](64i~ref,32i)
; seek32_g[64i](64i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<float>(ref float src, int count), hex://root/refs?seek32#seek32_g[32f](32f~ref,32i)
; seek32_g[32f](32f~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<double>(ref double src, int count), hex://root/refs?seek32#seek32_g[64f](64f~ref,32i)
; seek32_g[64f](64f~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<byte>(ref byte src, int count), hex://root/refs?seek64#seek64_g[8u](8u~ref,32i)
; seek64_g[8u](8u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<sbyte>(ref sbyte src, int count), hex://root/refs?seek64#seek64_g[8i](8i~ref,32i)
; seek64_g[8i](8i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<ushort>(ref ushort src, int count), hex://root/refs?seek64#seek64_g[16u](16u~ref,32i)
; seek64_g[16u](16u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<short>(ref short src, int count), hex://root/refs?seek64#seek64_g[16i](16i~ref,32i)
; seek64_g[16i](16i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<uint>(ref uint src, int count), hex://root/refs?seek64#seek64_g[32u](32u~ref,32i)
; seek64_g[32u](32u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<int>(ref int src, int count), hex://root/refs?seek64#seek64_g[32i](32i~ref,32i)
; seek64_g[32i](32i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<ulong>(ref ulong src, int count), hex://root/refs?seek64#seek64_g[64u](64u~ref,32i)
; seek64_g[64u](64u~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<long>(ref long src, int count), hex://root/refs?seek64#seek64_g[64i](64i~ref,32i)
; seek64_g[64i](64i~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<float>(ref float src, int count), hex://root/refs?seek64#seek64_g[32f](32f~ref,32i)
; seek64_g[32f](32f~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<double>(ref double src, int count), hex://root/refs?seek64#seek64_g[64f](64f~ref,32i)
; seek64_g[64f](64f~ref,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seekb<byte>(ref byte src, long count), hex://root/refs?seekb#seekb_g[8u](8u~ref,64i)
; seekb_g[8u](8u~ref,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte seekb<sbyte>(ref sbyte src, long count), hex://root/refs?seekb#seekb_g[8i](8i~ref,64i)
; seekb_g[8i](8i~ref,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seekb<ushort>(ref ushort src, long count), hex://root/refs?seekb#seekb_g[16u](16u~ref,64i)
; seekb_g[16u](16u~ref,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short seekb<short>(ref short src, long count), hex://root/refs?seekb#seekb_g[16i](16i~ref,64i)
; seekb_g[16i](16i~ref,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seekb<uint>(ref uint src, long count), hex://root/refs?seekb#seekb_g[32u](32u~ref,64i)
; seekb_g[32u](32u~ref,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int seekb<int>(ref int src, long count), hex://root/refs?seekb#seekb_g[32i](32i~ref,64i)
; seekb_g[32i](32i~ref,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seekb<ulong>(ref ulong src, long count), hex://root/refs?seekb#seekb_g[64u](64u~ref,64i)
; seekb_g[64u](64u~ref,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long seekb<long>(ref long src, long count), hex://root/refs?seekb#seekb_g[64i](64i~ref,64i)
; seekb_g[64i](64i~ref,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float seekb<float>(ref float src, long count), hex://root/refs?seekb#seekb_g[32f](32f~ref,64i)
; seekb_g[32f](32f~ref,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double seekb<double>(ref double src, long count), hex://root/refs?seekb#seekb_g[64f](64f~ref,64i)
; seekb_g[64f](64f~ref,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<byte>(in byte src, int count), hex://root/refs?skip8#skip8_g[8u](8u~in,32i)
; skip8_g[8u](8u~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<sbyte>(in sbyte src, int count), hex://root/refs?skip8#skip8_g[8i](8i~in,32i)
; skip8_g[8i](8i~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<ushort>(in ushort src, int count), hex://root/refs?skip8#skip8_g[16u](16u~in,32i)
; skip8_g[16u](16u~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<short>(in short src, int count), hex://root/refs?skip8#skip8_g[16i](16i~in,32i)
; skip8_g[16i](16i~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<uint>(in uint src, int count), hex://root/refs?skip8#skip8_g[32u](32u~in,32i)
; skip8_g[32u](32u~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<int>(in int src, int count), hex://root/refs?skip8#skip8_g[32i](32i~in,32i)
; skip8_g[32i](32i~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<ulong>(in ulong src, int count), hex://root/refs?skip8#skip8_g[64u](64u~in,32i)
; skip8_g[64u](64u~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<long>(in long src, int count), hex://root/refs?skip8#skip8_g[64i](64i~in,32i)
; skip8_g[64i](64i~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<float>(in float src, int count), hex://root/refs?skip8#skip8_g[32f](32f~in,32i)
; skip8_g[32f](32f~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<double>(in double src, int count), hex://root/refs?skip8#skip8_g[64f](64f~in,32i)
; skip8_g[64f](64f~in,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x03,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<byte>(in byte src, int count), hex://root/refs?skip16#skip16_g[8u](8u~in,32i)
; skip16_g[8u](8u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<sbyte>(in sbyte src, int count), hex://root/refs?skip16#skip16_g[8i](8i~in,32i)
; skip16_g[8i](8i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<ushort>(in ushort src, int count), hex://root/refs?skip16#skip16_g[16u](16u~in,32i)
; skip16_g[16u](16u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<short>(in short src, int count), hex://root/refs?skip16#skip16_g[16i](16i~in,32i)
; skip16_g[16i](16i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<uint>(in uint src, int count), hex://root/refs?skip16#skip16_g[32u](32u~in,32i)
; skip16_g[32u](32u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<int>(in int src, int count), hex://root/refs?skip16#skip16_g[32i](32i~in,32i)
; skip16_g[32i](32i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<ulong>(in ulong src, int count), hex://root/refs?skip16#skip16_g[64u](64u~in,32i)
; skip16_g[64u](64u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<long>(in long src, int count), hex://root/refs?skip16#skip16_g[64i](64i~in,32i)
; skip16_g[64i](64i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<float>(in float src, int count), hex://root/refs?skip16#skip16_g[32f](32f~in,32i)
; skip16_g[32f](32f~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<double>(in double src, int count), hex://root/refs?skip16#skip16_g[64f](64f~in,32i)
; skip16_g[64f](64f~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x41,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 41}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<byte>(in byte src, int count), hex://root/refs?skip32#skip32_g[8u](8u~in,32i)
; skip32_g[8u](8u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<sbyte>(in sbyte src, int count), hex://root/refs?skip32#skip32_g[8i](8i~in,32i)
; skip32_g[8i](8i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<ushort>(in ushort src, int count), hex://root/refs?skip32#skip32_g[16u](16u~in,32i)
; skip32_g[16u](16u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<short>(in short src, int count), hex://root/refs?skip32#skip32_g[16i](16i~in,32i)
; skip32_g[16i](16i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<uint>(in uint src, int count), hex://root/refs?skip32#skip32_g[32u](32u~in,32i)
; skip32_g[32u](32u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<int>(in int src, int count), hex://root/refs?skip32#skip32_g[32i](32i~in,32i)
; skip32_g[32i](32i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<ulong>(in ulong src, int count), hex://root/refs?skip32#skip32_g[64u](64u~in,32i)
; skip32_g[64u](64u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<long>(in long src, int count), hex://root/refs?skip32#skip32_g[64i](64i~in,32i)
; skip32_g[64i](64i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<float>(in float src, int count), hex://root/refs?skip32#skip32_g[32f](32f~in,32i)
; skip32_g[32f](32f~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<double>(in double src, int count), hex://root/refs?skip32#skip32_g[64f](64f~in,32i)
; skip32_g[64f](64f~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0x81,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 81}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<byte>(in byte src, int count), hex://root/refs?skip64#skip64_g[8u](8u~in,32i)
; skip64_g[8u](8u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<sbyte>(in sbyte src, int count), hex://root/refs?skip64#skip64_g[8i](8i~in,32i)
; skip64_g[8i](8i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<ushort>(in ushort src, int count), hex://root/refs?skip64#skip64_g[16u](16u~in,32i)
; skip64_g[16u](16u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<short>(in short src, int count), hex://root/refs?skip64#skip64_g[16i](16i~in,32i)
; skip64_g[16i](16i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<uint>(in uint src, int count), hex://root/refs?skip64#skip64_g[32u](32u~in,32i)
; skip64_g[32u](32u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<int>(in int src, int count), hex://root/refs?skip64#skip64_g[32i](32i~in,32i)
; skip64_g[32i](32i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<ulong>(in ulong src, int count), hex://root/refs?skip64#skip64_g[64u](64u~in,32i)
; skip64_g[64u](64u~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<long>(in long src, int count), hex://root/refs?skip64#skip64_g[64i](64i~in,32i)
; skip64_g[64i](64i~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<float>(in float src, int count), hex://root/refs?skip64#skip64_g[32f](32f~in,32i)
; skip64_g[32f](32f~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<double>(in double src, int count), hex://root/refs?skip64#skip64_g[64f](64f~in,32i)
; skip64_g[64f](64f~in,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc2,0x48,0x8d,0x04,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0008h lea rax,[rcx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skipb<byte>(in byte src, long count), hex://root/refs?skipb#skipb_g[8u](8u~in,64i)
; skipb_g[8u](8u~in,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte skipb<sbyte>(in sbyte src, long count), hex://root/refs?skipb#skipb_g[8i](8i~in,64i)
; skipb_g[8i](8i~in,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skipb<ushort>(in ushort src, long count), hex://root/refs?skipb#skipb_g[16u](16u~in,64i)
; skipb_g[16u](16u~in,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x51,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 51}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short skipb<short>(in short src, long count), hex://root/refs?skipb#skipb_g[16i](16i~in,64i)
; skipb_g[16i](16i~in,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x51,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 51}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skipb<uint>(in uint src, long count), hex://root/refs?skipb#skipb_g[32u](32u~in,64i)
; skipb_g[32u](32u~in,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x91,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 91}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int skipb<int>(in int src, long count), hex://root/refs?skipb#skipb_g[32i](32i~in,64i)
; skipb_g[32i](32i~in,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x91,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 91}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skipb<ulong>(in ulong src, long count), hex://root/refs?skipb#skipb_g[64u](64u~in,64i)
; skipb_g[64u](64u~in,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0xd1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long skipb<long>(in long src, long count), hex://root/refs?skipb#skipb_g[64i](64i~in,64i)
; skipb_g[64i](64i~in,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0xd1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float skipb<float>(in float src, long count), hex://root/refs?skipb#skipb_g[32f](32f~in,64i)
; skipb_g[32f](32f~in,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x91,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 91}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double skipb<double>(in double src, long count), hex://root/refs?skipb#skipb_g[64f](64f~in,64i)
; skipb_g[64f](64f~in,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0xd1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head<byte>(Span<byte> src), hex://root/refs?head#head_g[8u](span8u)
; head_g[8u](span8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte head<sbyte>(Span<sbyte> src), hex://root/refs?head#head_g[8i](span8i)
; head_g[8i](span8i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head<ushort>(Span<ushort> src), hex://root/refs?head#head_g[16u](span16u)
; head_g[16u](span16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short head<short>(Span<short> src), hex://root/refs?head#head_g[16i](span16i)
; head_g[16i](span16i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head<uint>(Span<uint> src), hex://root/refs?head#head_g[32u](span32u)
; head_g[32u](span32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int head<int>(Span<int> src), hex://root/refs?head#head_g[32i](span32i)
; head_g[32i](span32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head<ulong>(Span<ulong> src), hex://root/refs?head#head_g[64u](span64u)
; head_g[64u](span64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long head<long>(Span<long> src), hex://root/refs?head#head_g[64i](span64i)
; head_g[64i](span64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float head<float>(Span<float> src), hex://root/refs?head#head_g[32f](span32f)
; head_g[32f](span32f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double head<double>(Span<double> src), hex://root/refs?head#head_g[64f](span64f)
; head_g[64f](span64f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head<byte>(Span<byte> src, int offset), hex://root/refs?head#head_g[8u](span8u,32i)
; head_g[8u](span8u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte head<sbyte>(Span<sbyte> src, int offset), hex://root/refs?head#head_g[8i](span8i,32i)
; head_g[8i](span8i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head<ushort>(Span<ushort> src, int offset), hex://root/refs?head#head_g[16u](span16u,32i)
; head_g[16u](span16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short head<short>(Span<short> src, int offset), hex://root/refs?head#head_g[16i](span16i,32i)
; head_g[16i](span16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head<uint>(Span<uint> src, int offset), hex://root/refs?head#head_g[32u](span32u,32i)
; head_g[32u](span32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int head<int>(Span<int> src, int offset), hex://root/refs?head#head_g[32i](span32i,32i)
; head_g[32i](span32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head<ulong>(Span<ulong> src, int offset), hex://root/refs?head#head_g[64u](span64u,32i)
; head_g[64u](span64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long head<long>(Span<long> src, int offset), hex://root/refs?head#head_g[64i](span64i,32i)
; head_g[64i](span64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float head<float>(Span<float> src, int offset), hex://root/refs?head#head_g[32f](span32f,32i)
; head_g[32f](span32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double head<double>(Span<double> src, int offset), hex://root/refs?head#head_g[64f](span64f,32i)
; head_g[64f](span64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head<byte>(ReadOnlySpan<byte> src), hex://root/refs?head#head_g[8u](uspan8u)
; head_g[8u](uspan8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte head<sbyte>(ReadOnlySpan<sbyte> src), hex://root/refs?head#head_g[8i](uspan8i)
; head_g[8i](uspan8i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head<ushort>(ReadOnlySpan<ushort> src), hex://root/refs?head#head_g[16u](uspan16u)
; head_g[16u](uspan16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short head<short>(ReadOnlySpan<short> src), hex://root/refs?head#head_g[16i](uspan16i)
; head_g[16i](uspan16i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head<uint>(ReadOnlySpan<uint> src), hex://root/refs?head#head_g[32u](uspan32u)
; head_g[32u](uspan32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int head<int>(ReadOnlySpan<int> src), hex://root/refs?head#head_g[32i](uspan32i)
; head_g[32i](uspan32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head<ulong>(ReadOnlySpan<ulong> src), hex://root/refs?head#head_g[64u](uspan64u)
; head_g[64u](uspan64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long head<long>(ReadOnlySpan<long> src), hex://root/refs?head#head_g[64i](uspan64i)
; head_g[64i](uspan64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float head<float>(ReadOnlySpan<float> src), hex://root/refs?head#head_g[32f](uspan32f)
; head_g[32f](uspan32f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double head<double>(ReadOnlySpan<double> src), hex://root/refs?head#head_g[64f](uspan64f)
; head_g[64f](uspan64f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head<byte>(ReadOnlySpan<byte> src, int offset), hex://root/refs?head#head_g[8u](uspan8u,32i)
; head_g[8u](uspan8u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte head<sbyte>(ReadOnlySpan<sbyte> src, int offset), hex://root/refs?head#head_g[8i](uspan8i,32i)
; head_g[8i](uspan8i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head<ushort>(ReadOnlySpan<ushort> src, int offset), hex://root/refs?head#head_g[16u](uspan16u,32i)
; head_g[16u](uspan16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short head<short>(ReadOnlySpan<short> src, int offset), hex://root/refs?head#head_g[16i](uspan16i,32i)
; head_g[16i](uspan16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head<uint>(ReadOnlySpan<uint> src, int offset), hex://root/refs?head#head_g[32u](uspan32u,32i)
; head_g[32u](uspan32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int head<int>(ReadOnlySpan<int> src, int offset), hex://root/refs?head#head_g[32i](uspan32i,32i)
; head_g[32i](uspan32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head<ulong>(ReadOnlySpan<ulong> src, int offset), hex://root/refs?head#head_g[64u](uspan64u,32i)
; head_g[64u](uspan64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long head<long>(ReadOnlySpan<long> src, int offset), hex://root/refs?head#head_g[64i](uspan64i,32i)
; head_g[64i](uspan64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float head<float>(ReadOnlySpan<float> src, int offset), hex://root/refs?head#head_g[32f](uspan32f,32i)
; head_g[32f](uspan32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double head<double>(ReadOnlySpan<double> src, int offset), hex://root/refs?head#head_g[64f](uspan64f,32i)
; head_g[64f](uspan64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip<byte>(Span<byte> src, int count), hex://root/refs?skip#skip_g[8u](span8u,32i)
; skip_g[8u](span8u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte skip<sbyte>(Span<sbyte> src, int count), hex://root/refs?skip#skip_g[8i](span8i,32i)
; skip_g[8i](span8i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip<ushort>(Span<ushort> src, int count), hex://root/refs?skip#skip_g[16u](span16u,32i)
; skip_g[16u](span16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short skip<short>(Span<short> src, int count), hex://root/refs?skip#skip_g[16i](span16i,32i)
; skip_g[16i](span16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip<uint>(Span<uint> src, int count), hex://root/refs?skip#skip_g[32u](span32u,32i)
; skip_g[32u](span32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int skip<int>(Span<int> src, int count), hex://root/refs?skip#skip_g[32i](span32i,32i)
; skip_g[32i](span32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip<ulong>(Span<ulong> src, int count), hex://root/refs?skip#skip_g[64u](span64u,32i)
; skip_g[64u](span64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long skip<long>(Span<long> src, int count), hex://root/refs?skip#skip_g[64i](span64i,32i)
; skip_g[64i](span64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float skip<float>(Span<float> src, int count), hex://root/refs?skip#skip_g[32f](span32f,32i)
; skip_g[32f](span32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double skip<double>(Span<double> src, int count), hex://root/refs?skip#skip_g[64f](span64f,32i)
; skip_g[64f](span64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip<byte>(ReadOnlySpan<byte> src, int count), hex://root/refs?skip#skip_g[8u](uspan8u,32i)
; skip_g[8u](uspan8u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte skip<sbyte>(ReadOnlySpan<sbyte> src, int count), hex://root/refs?skip#skip_g[8i](uspan8i,32i)
; skip_g[8i](uspan8i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip<ushort>(ReadOnlySpan<ushort> src, int count), hex://root/refs?skip#skip_g[16u](uspan16u,32i)
; skip_g[16u](uspan16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short skip<short>(ReadOnlySpan<short> src, int count), hex://root/refs?skip#skip_g[16i](uspan16i,32i)
; skip_g[16i](uspan16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip<uint>(ReadOnlySpan<uint> src, int count), hex://root/refs?skip#skip_g[32u](uspan32u,32i)
; skip_g[32u](uspan32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int skip<int>(ReadOnlySpan<int> src, int count), hex://root/refs?skip#skip_g[32i](uspan32i,32i)
; skip_g[32i](uspan32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip<ulong>(ReadOnlySpan<ulong> src, int count), hex://root/refs?skip#skip_g[64u](uspan64u,32i)
; skip_g[64u](uspan64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long skip<long>(ReadOnlySpan<long> src, int count), hex://root/refs?skip#skip_g[64i](uspan64i,32i)
; skip_g[64i](uspan64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float skip<float>(ReadOnlySpan<float> src, int count), hex://root/refs?skip#skip_g[32f](uspan32f,32i)
; skip_g[32f](uspan32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double skip<double>(ReadOnlySpan<double> src, int count), hex://root/refs?skip#skip_g[64f](uspan64f,32i)
; skip_g[64f](uspan64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double head<double>(Double[] src), hex://root/refs?head#head_g[64f]()
; head_g[64f]()[63] = {0x48,0x83,0xec,0x28,0x90,0x83,0x79,0x08,0x00,0x76,0x09,0x48,0x8d,0x41,0x10,0x48,0x83,0xc4,0x28,0xc3,0xe8,0x17,0xd0,0xce,0x5e,0xcc,0x00,0x00,0x19,0x04,0x01,0x00,0x04,0x42,0x00,0x00,0x40,0x00,0x00,0x00,0x40,0xba,0xc1,0xc8,0xf7,0x7f,0x00,0x00,0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0009h jbe short 0014h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
000bh lea rax,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 10}
000fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 d0 ce 5e}
0019h int 3                                   ; INT3 || CC || encoded[1]{cc}
001ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001ch sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
001fh add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
0022h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0024h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{40 00 00}
0027h add [rax-46h],al                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 40 ba}
002ah ror eax,0f7h                            ; ROR r/m32, imm8 || o32 C1 /1 ib || encoded[3]{c1 c8 f7}
002dh jg short 002fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
002fh add [rdi],cl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 0f}
0031h (bad)                                   ; <invalid> || <invalid> || encoded[2]{1f 44}
0033h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0035h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0038h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek<byte>(Span<byte> src, int count), hex://root/refs?seek#seek_g[8u](span8u,32i)
; seek_g[8u](span8u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte seek<sbyte>(Span<sbyte> src, int count), hex://root/refs?seek#seek_g[8i](span8i,32i)
; seek_g[8i](span8i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek<ushort>(Span<ushort> src, int count), hex://root/refs?seek#seek_g[16u](span16u,32i)
; seek_g[16u](span16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short seek<short>(Span<short> src, int count), hex://root/refs?seek#seek_g[16i](span16i,32i)
; seek_g[16i](span16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek<uint>(Span<uint> src, int count), hex://root/refs?seek#seek_g[32u](span32u,32i)
; seek_g[32u](span32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int seek<int>(Span<int> src, int count), hex://root/refs?seek#seek_g[32i](span32i,32i)
; seek_g[32i](span32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek<ulong>(Span<ulong> src, int count), hex://root/refs?seek#seek_g[64u](span64u,32i)
; seek_g[64u](span64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long seek<long>(Span<long> src, int count), hex://root/refs?seek#seek_g[64i](span64i,32i)
; seek_g[64i](span64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float seek<float>(Span<float> src, int count), hex://root/refs?seek#seek_g[32f](span32f,32i)
; seek_g[32f](span32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double seek<double>(Span<double> src, int count), hex://root/refs?seek#seek_g[64f](span64f,32i)
; seek_g[64f](span64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<byte>(Span<byte> src), hex://root/refs?head8#head8_g[8u](span8u)
; head8_g[8u](span8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<sbyte>(Span<sbyte> src), hex://root/refs?head8#head8_g[8i](span8i)
; head8_g[8i](span8i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<ushort>(Span<ushort> src), hex://root/refs?head8#head8_g[16u](span16u)
; head8_g[16u](span16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<short>(Span<short> src), hex://root/refs?head8#head8_g[16i](span16i)
; head8_g[16i](span16i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<uint>(Span<uint> src), hex://root/refs?head8#head8_g[32u](span32u)
; head8_g[32u](span32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<int>(Span<int> src), hex://root/refs?head8#head8_g[32i](span32i)
; head8_g[32i](span32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<ulong>(Span<ulong> src), hex://root/refs?head8#head8_g[64u](span64u)
; head8_g[64u](span64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<long>(Span<long> src), hex://root/refs?head8#head8_g[64i](span64i)
; head8_g[64i](span64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<float>(Span<float> src), hex://root/refs?head8#head8_g[32f](span32f)
; head8_g[32f](span32f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<double>(Span<double> src), hex://root/refs?head8#head8_g[64f](span64f)
; head8_g[64f](span64f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<byte>(Span<byte> src), hex://root/refs?head16#head16_g[8u](span8u)
; head16_g[8u](span8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<sbyte>(Span<sbyte> src), hex://root/refs?head16#head16_g[8i](span8i)
; head16_g[8i](span8i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<ushort>(Span<ushort> src), hex://root/refs?head16#head16_g[16u](span16u)
; head16_g[16u](span16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<short>(Span<short> src), hex://root/refs?head16#head16_g[16i](span16i)
; head16_g[16i](span16i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<uint>(Span<uint> src), hex://root/refs?head16#head16_g[32u](span32u)
; head16_g[32u](span32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<int>(Span<int> src), hex://root/refs?head16#head16_g[32i](span32i)
; head16_g[32i](span32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<ulong>(Span<ulong> src), hex://root/refs?head16#head16_g[64u](span64u)
; head16_g[64u](span64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<long>(Span<long> src), hex://root/refs?head16#head16_g[64i](span64i)
; head16_g[64i](span64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<float>(Span<float> src), hex://root/refs?head16#head16_g[32f](span32f)
; head16_g[32f](span32f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<double>(Span<double> src), hex://root/refs?head16#head16_g[64f](span64f)
; head16_g[64f](span64f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<byte>(Span<byte> src), hex://root/refs?head32#head32_g[8u](span8u)
; head32_g[8u](span8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<sbyte>(Span<sbyte> src), hex://root/refs?head32#head32_g[8i](span8i)
; head32_g[8i](span8i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<ushort>(Span<ushort> src), hex://root/refs?head32#head32_g[16u](span16u)
; head32_g[16u](span16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<short>(Span<short> src), hex://root/refs?head32#head32_g[16i](span16i)
; head32_g[16i](span16i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<uint>(Span<uint> src), hex://root/refs?head32#head32_g[32u](span32u)
; head32_g[32u](span32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<int>(Span<int> src), hex://root/refs?head32#head32_g[32i](span32i)
; head32_g[32i](span32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<ulong>(Span<ulong> src), hex://root/refs?head32#head32_g[64u](span64u)
; head32_g[64u](span64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<long>(Span<long> src), hex://root/refs?head32#head32_g[64i](span64i)
; head32_g[64i](span64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<float>(Span<float> src), hex://root/refs?head32#head32_g[32f](span32f)
; head32_g[32f](span32f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<double>(Span<double> src), hex://root/refs?head32#head32_g[64f](span64f)
; head32_g[64f](span64f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<byte>(ReadOnlySpan<byte> src), hex://root/refs?head8#head8_g[8u](uspan8u)
; head8_g[8u](uspan8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<sbyte>(ReadOnlySpan<sbyte> src), hex://root/refs?head8#head8_g[8i](uspan8i)
; head8_g[8i](uspan8i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<ushort>(ReadOnlySpan<ushort> src), hex://root/refs?head8#head8_g[16u](uspan16u)
; head8_g[16u](uspan16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<short>(ReadOnlySpan<short> src), hex://root/refs?head8#head8_g[16i](uspan16i)
; head8_g[16i](uspan16i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<uint>(ReadOnlySpan<uint> src), hex://root/refs?head8#head8_g[32u](uspan32u)
; head8_g[32u](uspan32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<int>(ReadOnlySpan<int> src), hex://root/refs?head8#head8_g[32i](uspan32i)
; head8_g[32i](uspan32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<ulong>(ReadOnlySpan<ulong> src), hex://root/refs?head8#head8_g[64u](uspan64u)
; head8_g[64u](uspan64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<long>(ReadOnlySpan<long> src), hex://root/refs?head8#head8_g[64i](uspan64i)
; head8_g[64i](uspan64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<float>(ReadOnlySpan<float> src), hex://root/refs?head8#head8_g[32f](uspan32f)
; head8_g[32f](uspan32f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte head8<double>(ReadOnlySpan<double> src), hex://root/refs?head8#head8_g[64f](uspan64f)
; head8_g[64f](uspan64f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<byte>(ReadOnlySpan<byte> src), hex://root/refs?head16#head16_g[8u](uspan8u)
; head16_g[8u](uspan8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<sbyte>(ReadOnlySpan<sbyte> src), hex://root/refs?head16#head16_g[8i](uspan8i)
; head16_g[8i](uspan8i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<ushort>(ReadOnlySpan<ushort> src), hex://root/refs?head16#head16_g[16u](uspan16u)
; head16_g[16u](uspan16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<short>(ReadOnlySpan<short> src), hex://root/refs?head16#head16_g[16i](uspan16i)
; head16_g[16i](uspan16i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<uint>(ReadOnlySpan<uint> src), hex://root/refs?head16#head16_g[32u](uspan32u)
; head16_g[32u](uspan32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<int>(ReadOnlySpan<int> src), hex://root/refs?head16#head16_g[32i](uspan32i)
; head16_g[32i](uspan32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<ulong>(ReadOnlySpan<ulong> src), hex://root/refs?head16#head16_g[64u](uspan64u)
; head16_g[64u](uspan64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<long>(ReadOnlySpan<long> src), hex://root/refs?head16#head16_g[64i](uspan64i)
; head16_g[64i](uspan64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<float>(ReadOnlySpan<float> src), hex://root/refs?head16#head16_g[32f](uspan32f)
; head16_g[32f](uspan32f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort head16<double>(ReadOnlySpan<double> src), hex://root/refs?head16#head16_g[64f](uspan64f)
; head16_g[64f](uspan64f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<byte>(ReadOnlySpan<byte> src), hex://root/refs?head32#head32_g[8u](uspan8u)
; head32_g[8u](uspan8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<sbyte>(ReadOnlySpan<sbyte> src), hex://root/refs?head32#head32_g[8i](uspan8i)
; head32_g[8i](uspan8i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<ushort>(ReadOnlySpan<ushort> src), hex://root/refs?head32#head32_g[16u](uspan16u)
; head32_g[16u](uspan16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<short>(ReadOnlySpan<short> src), hex://root/refs?head32#head32_g[16i](uspan16i)
; head32_g[16i](uspan16i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<uint>(ReadOnlySpan<uint> src), hex://root/refs?head32#head32_g[32u](uspan32u)
; head32_g[32u](uspan32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<int>(ReadOnlySpan<int> src), hex://root/refs?head32#head32_g[32i](uspan32i)
; head32_g[32i](uspan32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<ulong>(ReadOnlySpan<ulong> src), hex://root/refs?head32#head32_g[64u](uspan64u)
; head32_g[64u](uspan64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<long>(ReadOnlySpan<long> src), hex://root/refs?head32#head32_g[64i](uspan64i)
; head32_g[64i](uspan64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<float>(ReadOnlySpan<float> src), hex://root/refs?head32#head32_g[32f](uspan32f)
; head32_g[32f](uspan32f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint head32<double>(ReadOnlySpan<double> src), hex://root/refs?head32#head32_g[64f](uspan64f)
; head32_g[64f](uspan64f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<byte>(ReadOnlySpan<byte> src), hex://root/refs?head64#head64_g[8u](uspan8u)
; head64_g[8u](uspan8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<sbyte>(ReadOnlySpan<sbyte> src), hex://root/refs?head64#head64_g[8i](uspan8i)
; head64_g[8i](uspan8i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<ushort>(ReadOnlySpan<ushort> src), hex://root/refs?head64#head64_g[16u](uspan16u)
; head64_g[16u](uspan16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<short>(ReadOnlySpan<short> src), hex://root/refs?head64#head64_g[16i](uspan16i)
; head64_g[16i](uspan16i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<uint>(ReadOnlySpan<uint> src), hex://root/refs?head64#head64_g[32u](uspan32u)
; head64_g[32u](uspan32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<int>(ReadOnlySpan<int> src), hex://root/refs?head64#head64_g[32i](uspan32i)
; head64_g[32i](uspan32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<ulong>(ReadOnlySpan<ulong> src), hex://root/refs?head64#head64_g[64u](uspan64u)
; head64_g[64u](uspan64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<long>(ReadOnlySpan<long> src), hex://root/refs?head64#head64_g[64i](uspan64i)
; head64_g[64i](uspan64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<float>(ReadOnlySpan<float> src), hex://root/refs?head64#head64_g[32f](uspan32f)
; head64_g[32f](uspan32f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong head64<double>(ReadOnlySpan<double> src), hex://root/refs?head64#head64_g[64f](uspan64f)
; head64_g[64f](uspan64f)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seekb<byte>(Span<byte> src, long count), hex://root/refs?seekb#seekb_g[8u](span8u,64i)
; seekb_g[8u](span8u,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte seekb<sbyte>(Span<sbyte> src, long count), hex://root/refs?seekb#seekb_g[8i](span8i,64i)
; seekb_g[8i](span8i,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seekb<ushort>(Span<ushort> src, long count), hex://root/refs?seekb#seekb_g[16u](span16u,64i)
; seekb_g[16u](span16u,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short seekb<short>(Span<short> src, long count), hex://root/refs?seekb#seekb_g[16i](span16i,64i)
; seekb_g[16i](span16i,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seekb<uint>(Span<uint> src, long count), hex://root/refs?seekb#seekb_g[32u](span32u,64i)
; seekb_g[32u](span32u,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int seekb<int>(Span<int> src, long count), hex://root/refs?seekb#seekb_g[32i](span32i,64i)
; seekb_g[32i](span32i,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seekb<ulong>(Span<ulong> src, long count), hex://root/refs?seekb#seekb_g[64u](span64u,64i)
; seekb_g[64u](span64u,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long seekb<long>(Span<long> src, long count), hex://root/refs?seekb#seekb_g[64i](span64i,64i)
; seekb_g[64i](span64i,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float seekb<float>(Span<float> src, long count), hex://root/refs?seekb#seekb_g[32f](span32f,64i)
; seekb_g[32f](span32f,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double seekb<double>(Span<double> src, long count), hex://root/refs?seekb#seekb_g[64f](span64f,64i)
; seekb_g[64f](span64f,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<byte>(Span<byte> src, int count), hex://root/refs?seek8#seek8_g[8u](span8u,32i)
; seek8_g[8u](span8u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<sbyte>(Span<sbyte> src, int count), hex://root/refs?seek8#seek8_g[8i](span8i,32i)
; seek8_g[8i](span8i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<ushort>(Span<ushort> src, int count), hex://root/refs?seek8#seek8_g[16u](span16u,32i)
; seek8_g[16u](span16u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<short>(Span<short> src, int count), hex://root/refs?seek8#seek8_g[16i](span16i,32i)
; seek8_g[16i](span16i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<uint>(Span<uint> src, int count), hex://root/refs?seek8#seek8_g[32u](span32u,32i)
; seek8_g[32u](span32u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<int>(Span<int> src, int count), hex://root/refs?seek8#seek8_g[32i](span32i,32i)
; seek8_g[32i](span32i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<ulong>(Span<ulong> src, int count), hex://root/refs?seek8#seek8_g[64u](span64u,32i)
; seek8_g[64u](span64u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<long>(Span<long> src, int count), hex://root/refs?seek8#seek8_g[64i](span64i,32i)
; seek8_g[64i](span64i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<float>(Span<float> src, int count), hex://root/refs?seek8#seek8_g[32f](span32f,32i)
; seek8_g[32f](span32f,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte seek8<double>(Span<double> src, int count), hex://root/refs?seek8#seek8_g[64f](span64f,32i)
; seek8_g[64f](span64f,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<byte>(Span<byte> src, int count), hex://root/refs?seek16#seek16_g[8u](span8u,32i)
; seek16_g[8u](span8u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<sbyte>(Span<sbyte> src, int count), hex://root/refs?seek16#seek16_g[8i](span8i,32i)
; seek16_g[8i](span8i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<ushort>(Span<ushort> src, int count), hex://root/refs?seek16#seek16_g[16u](span16u,32i)
; seek16_g[16u](span16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<short>(Span<short> src, int count), hex://root/refs?seek16#seek16_g[16i](span16i,32i)
; seek16_g[16i](span16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<uint>(Span<uint> src, int count), hex://root/refs?seek16#seek16_g[32u](span32u,32i)
; seek16_g[32u](span32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<int>(Span<int> src, int count), hex://root/refs?seek16#seek16_g[32i](span32i,32i)
; seek16_g[32i](span32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<ulong>(Span<ulong> src, int count), hex://root/refs?seek16#seek16_g[64u](span64u,32i)
; seek16_g[64u](span64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<long>(Span<long> src, int count), hex://root/refs?seek16#seek16_g[64i](span64i,32i)
; seek16_g[64i](span64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<float>(Span<float> src, int count), hex://root/refs?seek16#seek16_g[32f](span32f,32i)
; seek16_g[32f](span32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort seek16<double>(Span<double> src, int count), hex://root/refs?seek16#seek16_g[64f](span64f,32i)
; seek16_g[64f](span64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<byte>(Span<byte> src, int count), hex://root/refs?seek32#seek32_g[8u](span8u,32i)
; seek32_g[8u](span8u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<sbyte>(Span<sbyte> src, int count), hex://root/refs?seek32#seek32_g[8i](span8i,32i)
; seek32_g[8i](span8i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<ushort>(Span<ushort> src, int count), hex://root/refs?seek32#seek32_g[16u](span16u,32i)
; seek32_g[16u](span16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<short>(Span<short> src, int count), hex://root/refs?seek32#seek32_g[16i](span16i,32i)
; seek32_g[16i](span16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<uint>(Span<uint> src, int count), hex://root/refs?seek32#seek32_g[32u](span32u,32i)
; seek32_g[32u](span32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<int>(Span<int> src, int count), hex://root/refs?seek32#seek32_g[32i](span32i,32i)
; seek32_g[32i](span32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<ulong>(Span<ulong> src, int count), hex://root/refs?seek32#seek32_g[64u](span64u,32i)
; seek32_g[64u](span64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<long>(Span<long> src, int count), hex://root/refs?seek32#seek32_g[64i](span64i,32i)
; seek32_g[64i](span64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<float>(Span<float> src, int count), hex://root/refs?seek32#seek32_g[32f](span32f,32i)
; seek32_g[32f](span32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint seek32<double>(Span<double> src, int count), hex://root/refs?seek32#seek32_g[64f](span64f,32i)
; seek32_g[64f](span64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<byte>(Span<byte> src, int count), hex://root/refs?seek64#seek64_g[8u](span8u,32i)
; seek64_g[8u](span8u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<sbyte>(Span<sbyte> src, int count), hex://root/refs?seek64#seek64_g[8i](span8i,32i)
; seek64_g[8i](span8i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<ushort>(Span<ushort> src, int count), hex://root/refs?seek64#seek64_g[16u](span16u,32i)
; seek64_g[16u](span16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<short>(Span<short> src, int count), hex://root/refs?seek64#seek64_g[16i](span16i,32i)
; seek64_g[16i](span16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<uint>(Span<uint> src, int count), hex://root/refs?seek64#seek64_g[32u](span32u,32i)
; seek64_g[32u](span32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<int>(Span<int> src, int count), hex://root/refs?seek64#seek64_g[32i](span32i,32i)
; seek64_g[32i](span32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<ulong>(Span<ulong> src, int count), hex://root/refs?seek64#seek64_g[64u](span64u,32i)
; seek64_g[64u](span64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<long>(Span<long> src, int count), hex://root/refs?seek64#seek64_g[64i](span64i,32i)
; seek64_g[64i](span64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<float>(Span<float> src, int count), hex://root/refs?seek64#seek64_g[32f](span32f,32i)
; seek64_g[32f](span32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong seek64<double>(Span<double> src, int count), hex://root/refs?seek64#seek64_g[64f](span64f,32i)
; seek64_g[64f](span64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<byte>(ReadOnlySpan<byte> src, int count), hex://root/refs?skip8#skip8_g[8u](uspan8u,32i)
; skip8_g[8u](uspan8u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<sbyte>(ReadOnlySpan<sbyte> src, int count), hex://root/refs?skip8#skip8_g[8i](uspan8i,32i)
; skip8_g[8i](uspan8i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<ushort>(ReadOnlySpan<ushort> src, int count), hex://root/refs?skip8#skip8_g[16u](uspan16u,32i)
; skip8_g[16u](uspan16u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<short>(ReadOnlySpan<short> src, int count), hex://root/refs?skip8#skip8_g[16i](uspan16i,32i)
; skip8_g[16i](uspan16i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<uint>(ReadOnlySpan<uint> src, int count), hex://root/refs?skip8#skip8_g[32u](uspan32u,32i)
; skip8_g[32u](uspan32u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<int>(ReadOnlySpan<int> src, int count), hex://root/refs?skip8#skip8_g[32i](uspan32i,32i)
; skip8_g[32i](uspan32i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<ulong>(ReadOnlySpan<ulong> src, int count), hex://root/refs?skip8#skip8_g[64u](uspan64u,32i)
; skip8_g[64u](uspan64u,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<long>(ReadOnlySpan<long> src, int count), hex://root/refs?skip8#skip8_g[64i](uspan64i,32i)
; skip8_g[64i](uspan64i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<float>(ReadOnlySpan<float> src, int count), hex://root/refs?skip8#skip8_g[32f](uspan32f,32i)
; skip8_g[32f](uspan32f,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skip8<double>(ReadOnlySpan<double> src, int count), hex://root/refs?skip8#skip8_g[64f](uspan64f,32i)
; skip8_g[64f](uspan64f,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<byte>(ReadOnlySpan<byte> src, int count), hex://root/refs?skip16#skip16_g[8u](uspan8u,32i)
; skip16_g[8u](uspan8u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<sbyte>(ReadOnlySpan<sbyte> src, int count), hex://root/refs?skip16#skip16_g[8i](uspan8i,32i)
; skip16_g[8i](uspan8i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<ushort>(ReadOnlySpan<ushort> src, int count), hex://root/refs?skip16#skip16_g[16u](uspan16u,32i)
; skip16_g[16u](uspan16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<short>(ReadOnlySpan<short> src, int count), hex://root/refs?skip16#skip16_g[16i](uspan16i,32i)
; skip16_g[16i](uspan16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<uint>(ReadOnlySpan<uint> src, int count), hex://root/refs?skip16#skip16_g[32u](uspan32u,32i)
; skip16_g[32u](uspan32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<int>(ReadOnlySpan<int> src, int count), hex://root/refs?skip16#skip16_g[32i](uspan32i,32i)
; skip16_g[32i](uspan32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<ulong>(ReadOnlySpan<ulong> src, int count), hex://root/refs?skip16#skip16_g[64u](uspan64u,32i)
; skip16_g[64u](uspan64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<long>(ReadOnlySpan<long> src, int count), hex://root/refs?skip16#skip16_g[64i](uspan64i,32i)
; skip16_g[64i](uspan64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<float>(ReadOnlySpan<float> src, int count), hex://root/refs?skip16#skip16_g[32f](uspan32f,32i)
; skip16_g[32f](uspan32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skip16<double>(ReadOnlySpan<double> src, int count), hex://root/refs?skip16#skip16_g[64f](uspan64f,32i)
; skip16_g[64f](uspan64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<byte>(ReadOnlySpan<byte> src, int count), hex://root/refs?skip32#skip32_g[8u](uspan8u,32i)
; skip32_g[8u](uspan8u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<sbyte>(ReadOnlySpan<sbyte> src, int count), hex://root/refs?skip32#skip32_g[8i](uspan8i,32i)
; skip32_g[8i](uspan8i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<ushort>(ReadOnlySpan<ushort> src, int count), hex://root/refs?skip32#skip32_g[16u](uspan16u,32i)
; skip32_g[16u](uspan16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<short>(ReadOnlySpan<short> src, int count), hex://root/refs?skip32#skip32_g[16i](uspan16i,32i)
; skip32_g[16i](uspan16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<uint>(ReadOnlySpan<uint> src, int count), hex://root/refs?skip32#skip32_g[32u](uspan32u,32i)
; skip32_g[32u](uspan32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<int>(ReadOnlySpan<int> src, int count), hex://root/refs?skip32#skip32_g[32i](uspan32i,32i)
; skip32_g[32i](uspan32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<ulong>(ReadOnlySpan<ulong> src, int count), hex://root/refs?skip32#skip32_g[64u](uspan64u,32i)
; skip32_g[64u](uspan64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<long>(ReadOnlySpan<long> src, int count), hex://root/refs?skip32#skip32_g[64i](uspan64i,32i)
; skip32_g[64i](uspan64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<float>(ReadOnlySpan<float> src, int count), hex://root/refs?skip32#skip32_g[32f](uspan32f,32i)
; skip32_g[32f](uspan32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skip32<double>(ReadOnlySpan<double> src, int count), hex://root/refs?skip32#skip32_g[64f](uspan64f,32i)
; skip32_g[64f](uspan64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<byte>(ReadOnlySpan<byte> src, int count), hex://root/refs?skip64#skip64_g[8u](uspan8u,32i)
; skip64_g[8u](uspan8u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<sbyte>(ReadOnlySpan<sbyte> src, int count), hex://root/refs?skip64#skip64_g[8i](uspan8i,32i)
; skip64_g[8i](uspan8i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<ushort>(ReadOnlySpan<ushort> src, int count), hex://root/refs?skip64#skip64_g[16u](uspan16u,32i)
; skip64_g[16u](uspan16u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<short>(ReadOnlySpan<short> src, int count), hex://root/refs?skip64#skip64_g[16i](uspan16i,32i)
; skip64_g[16i](uspan16i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<uint>(ReadOnlySpan<uint> src, int count), hex://root/refs?skip64#skip64_g[32u](uspan32u,32i)
; skip64_g[32u](uspan32u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<int>(ReadOnlySpan<int> src, int count), hex://root/refs?skip64#skip64_g[32i](uspan32i,32i)
; skip64_g[32i](uspan32i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<ulong>(ReadOnlySpan<ulong> src, int count), hex://root/refs?skip64#skip64_g[64u](uspan64u,32i)
; skip64_g[64u](uspan64u,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<long>(ReadOnlySpan<long> src, int count), hex://root/refs?skip64#skip64_g[64i](uspan64i,32i)
; skip64_g[64i](uspan64i,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<float>(ReadOnlySpan<float> src, int count), hex://root/refs?skip64#skip64_g[32f](uspan32f,32i)
; skip64_g[32f](uspan32f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skip64<double>(ReadOnlySpan<double> src, int count), hex://root/refs?skip64#skip64_g[64f](uspan64f,32i)
; skip64_g[64f](uspan64f,32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref byte skipb<byte>(ReadOnlySpan<byte> src, long count), hex://root/refs?skipb#skipb_g[8u](uspan8u,64i)
; skipb_g[8u](uspan8u,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte skipb<sbyte>(ReadOnlySpan<sbyte> src, long count), hex://root/refs?skipb#skipb_g[8i](uspan8i,64i)
; skipb_g[8i](uspan8i,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort skipb<ushort>(ReadOnlySpan<ushort> src, long count), hex://root/refs?skipb#skipb_g[16u](uspan16u,64i)
; skipb_g[16u](uspan16u,64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short skipb<short>(ReadOnlySpan<short> src, long count), hex://root/refs?skipb#skipb_g[16i](uspan16i,64i)
; skipb_g[16i](uspan16i,64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8d,0x04,0x50,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint skipb<uint>(ReadOnlySpan<uint> src, long count), hex://root/refs?skipb#skipb_g[32u](uspan32u,64i)
; skipb_g[32u](uspan32u,64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int skipb<int>(ReadOnlySpan<int> src, long count), hex://root/refs?skipb#skipb_g[32i](uspan32i,64i)
; skipb_g[32i](uspan32i,64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong skipb<ulong>(ReadOnlySpan<ulong> src, long count), hex://root/refs?skipb#skipb_g[64u](uspan64u,64i)
; skipb_g[64u](uspan64u,64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long skipb<long>(ReadOnlySpan<long> src, long count), hex://root/refs?skipb#skipb_g[64i](uspan64i,64i)
; skipb_g[64i](uspan64i,64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float skipb<float>(ReadOnlySpan<float> src, long count), hex://root/refs?skipb#skipb_g[32f](uspan32f,64i)
; skipb_g[32f](uspan32f,64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8d,0x04,0x90,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double skipb<double>(ReadOnlySpan<double> src, long count), hex://root/refs?skipb#skipb_g[64f](uspan64f,64i)
; skipb_g[64f](uspan64f,64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x8d,0x04,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
