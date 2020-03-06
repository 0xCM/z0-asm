------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<byte>(in byte src), hex://root/bitconvert?GetBytes#GetBytes_g[8u](8u~in)
; GetBytes_g[8u](8u~in)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x11,0xc7,0x41,0x08,0x01,0x00,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0008h mov dword ptr [rcx+8],1                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 41 08 01 00 00 00}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<sbyte>(in sbyte src), hex://root/bitconvert?GetBytes#GetBytes_g[8i](8i~in)
; GetBytes_g[8i](8i~in)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x11,0xc7,0x41,0x08,0x01,0x00,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0008h mov dword ptr [rcx+8],1                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 41 08 01 00 00 00}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<ushort>(in ushort src), hex://root/bitconvert?GetBytes#GetBytes_g[16u](16u~in)
; GetBytes_g[16u](16u~in)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x11,0xc7,0x41,0x08,0x02,0x00,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0008h mov dword ptr [rcx+8],2                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 41 08 02 00 00 00}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<short>(in short src), hex://root/bitconvert?GetBytes#GetBytes_g[16i](16i~in)
; GetBytes_g[16i](16i~in)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x11,0xc7,0x41,0x08,0x02,0x00,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0008h mov dword ptr [rcx+8],2                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 41 08 02 00 00 00}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<uint>(in uint src), hex://root/bitconvert?GetBytes#GetBytes_g[32u](32u~in)
; GetBytes_g[32u](32u~in)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x11,0xc7,0x41,0x08,0x04,0x00,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0008h mov dword ptr [rcx+8],4                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 41 08 04 00 00 00}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<int>(in int src), hex://root/bitconvert?GetBytes#GetBytes_g[32i](32i~in)
; GetBytes_g[32i](32i~in)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x11,0xc7,0x41,0x08,0x04,0x00,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0008h mov dword ptr [rcx+8],4                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 41 08 04 00 00 00}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<ulong>(in ulong src), hex://root/bitconvert?GetBytes#GetBytes_g[64u](64u~in)
; GetBytes_g[64u](64u~in)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x11,0xc7,0x41,0x08,0x08,0x00,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0008h mov dword ptr [rcx+8],8                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 41 08 08 00 00 00}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<long>(in long src), hex://root/bitconvert?GetBytes#GetBytes_g[64i](64i~in)
; GetBytes_g[64i](64i~in)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x11,0xc7,0x41,0x08,0x08,0x00,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0008h mov dword ptr [rcx+8],8                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 41 08 08 00 00 00}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<float>(in float src), hex://root/bitconvert?GetBytes#GetBytes_g[32f](32f~in)
; GetBytes_g[32f](32f~in)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x11,0xc7,0x41,0x08,0x04,0x00,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0008h mov dword ptr [rcx+8],4                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 41 08 04 00 00 00}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> GetBytes<double>(in double src), hex://root/bitconvert?GetBytes#GetBytes_g[64f](64f~in)
; GetBytes_g[64f](64f~in)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x11,0xc7,0x41,0x08,0x08,0x00,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0008h mov dword ptr [rcx+8],8                 ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 41 08 08 00 00 00}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<byte>(in byte src, Span<byte> dst), hex://root/bitconvert?GetBytes#GetBytes_g[8u](8u~in,span8u)
; GetBytes_g[8u](8u~in,span8u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x0f,0xb6,0x11,0x88,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,byte ptr [rcx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 11}
000bh mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<sbyte>(in sbyte src, Span<byte> dst), hex://root/bitconvert?GetBytes#GetBytes_g[8i](8i~in,span8u)
; GetBytes_g[8i](8i~in,span8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x48,0x0f,0xbe,0x11,0x88,0x10,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movsx rdx,byte ptr [rcx]                ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be 11}
000ch mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<ushort>(in ushort src, Span<byte> dst), hex://root/bitconvert?GetBytes#GetBytes_g[16u](16u~in,span8u)
; GetBytes_g[16u](16u~in,span8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x0f,0xb7,0x11,0x66,0x89,0x10,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 11}
000bh mov [rax],dx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 10}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<short>(in short src, Span<byte> dst), hex://root/bitconvert?GetBytes#GetBytes_g[16i](16i~in,span8u)
; GetBytes_g[16i](16i~in,span8u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x48,0x0f,0xbf,0x11,0x66,0x89,0x10,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movsx rdx,word ptr [rcx]                ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf 11}
000ch mov [rax],dx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 10}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<uint>(in uint src, Span<byte> dst), hex://root/bitconvert?GetBytes#GetBytes_g[32u](32u~in,span8u)
; GetBytes_g[32u](32u~in,span8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x8b,0x11,0x89,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 11}
000ah mov [rax],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 10}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<int>(in int src, Span<byte> dst), hex://root/bitconvert?GetBytes#GetBytes_g[32i](32i~in,span8u)
; GetBytes_g[32i](32i~in,span8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x8b,0x11,0x89,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 11}
000ah mov [rax],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 10}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<ulong>(in ulong src, Span<byte> dst), hex://root/bitconvert?GetBytes#GetBytes_g[64u](64u~in,span8u)
; GetBytes_g[64u](64u~in,span8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x48,0x8b,0x11,0x48,0x89,0x10,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
000bh mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<long>(in long src, Span<byte> dst), hex://root/bitconvert?GetBytes#GetBytes_g[64i](64i~in,span8u)
; GetBytes_g[64i](64i~in,span8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x48,0x8b,0x11,0x48,0x89,0x10,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
000bh mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<float>(in float src, Span<byte> dst), hex://root/bitconvert?GetBytes#GetBytes_g[32f](32f~in,span8u)
; GetBytes_g[32f](32f~in,span8u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x02,0xc5,0xfa,0x10,0x01,0xc5,0xfa,0x11,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovss xmm0,dword ptr [rcx]             ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[4]{c5 fa 10 01}
000ch vmovss dword ptr [rax],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 00}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void GetBytes<double>(in double src, Span<byte> dst), hex://root/bitconvert?GetBytes#GetBytes_g[64f](64f~in,span8u)
; GetBytes_g[64f](64f~in,span8u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x02,0xc5,0xfb,0x10,0x01,0xc5,0xfb,0x11,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovsd xmm0,qword ptr [rcx]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[4]{c5 fb 10 01}
000ch vmovsd qword ptr [rax],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 00}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float ToSingle(int src), hex://root/bitconvert?ToSingle#ToSingle_(32i)
; ToSingle_(32i)[20] = {0x50,0xc5,0xf8,0x77,0x90,0x89,0x4c,0x24,0x04,0xc5,0xfa,0x10,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
0009h vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
000fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float ToSingle(uint src), hex://root/bitconvert?ToSingle#ToSingle_(32u)
; ToSingle_(32u)[20] = {0x50,0xc5,0xf8,0x77,0x90,0x89,0x4c,0x24,0x04,0xc5,0xfa,0x10,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
0009h vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
000fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double ToDouble(long src), hex://root/bitconvert?ToDouble#ToDouble_(64i)
; ToDouble_(64i)[19] = {0x50,0xc5,0xf8,0x77,0x90,0x48,0x89,0x0c,0x24,0xc5,0xfb,0x10,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 0c 24}
0009h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
000eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double ToDouble(ulong src), hex://root/bitconvert?ToDouble#ToDouble_(64u)
; ToDouble_(64u)[19] = {0x50,0xc5,0xf8,0x77,0x90,0x48,0x89,0x0c,0x24,0xc5,0xfb,0x10,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 0c 24}
0009h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
000eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ToInt32(float src), hex://root/bitconvert?ToInt32#ToInt32_(32f)
; ToInt32_(32f)[20] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
000fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint ToUInt32(float src), hex://root/bitconvert?ToUInt32#ToUInt32_(32f)
; ToUInt32_(32f)[20] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
000fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long ToInt64(double src), hex://root/bitconvert?ToInt64#ToInt64_(64f)
; ToInt64_(64f)[19] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfb,0x11,0x04,0x24,0x48,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
000ah mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
000eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong ToUInt64(double src), hex://root/bitconvert?ToUInt64#ToUInt64_(64f)
; ToUInt64_(64f)[19] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfb,0x11,0x04,0x24,0x48,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
000ah mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
000eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
