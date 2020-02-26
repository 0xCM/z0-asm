------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(short src), hex://root/Converter?convert#convert_g[8u](16i)
; convert_g[8u](16i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(short src), hex://root/Converter?convert#convert_g[8i](16i)
; convert_g[8i](16i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(short src), hex://root/Converter?convert#convert_g[16u](16i)
; convert_g[16u](16i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(short src), hex://root/Converter?convert#convert_g[16i](16i)
; convert_g[16i](16i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(short src), hex://root/Converter?convert#convert_g[32u](16i)
; convert_g[32u](16i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(short src), hex://root/Converter?convert#convert_g[32i](16i)
; convert_g[32i](16i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(short src), hex://root/Converter?convert#convert_g[64u](16i)
; convert_g[64u](16i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x63,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(short src), hex://root/Converter?convert#convert_g[64i](16i)
; convert_g[64i](16i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x63,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(short src), hex://root/Converter?convert#convert_g[32f](16i)
; convert_g[32f](16i)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x0f,0xbf,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000dh vcvtsi2ss xmm0,xmm0,eax                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(short src), hex://root/Converter?convert#convert_g[64f](16i)
; convert_g[64f](16i)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x0f,0xbf,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000dh vcvtsi2sd xmm0,xmm0,eax                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(ushort src), hex://root/Converter?convert#convert_g[8u](16u)
; convert_g[8u](16u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(ushort src), hex://root/Converter?convert#convert_g[8i](16u)
; convert_g[8i](16u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(ushort src), hex://root/Converter?convert#convert_g[16u](16u)
; convert_g[16u](16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(ushort src), hex://root/Converter?convert#convert_g[16i](16u)
; convert_g[16i](16u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(ushort src), hex://root/Converter?convert#convert_g[32u](16u)
; convert_g[32u](16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(ushort src), hex://root/Converter?convert#convert_g[32i](16u)
; convert_g[32i](16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(ushort src), hex://root/Converter?convert#convert_g[64u](16u)
; convert_g[64u](16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(ushort src), hex://root/Converter?convert#convert_g[64i](16u)
; convert_g[64i](16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(ushort src), hex://root/Converter?convert#convert_g[32f](16u)
; convert_g[32f](16u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x0f,0xb7,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000ch vcvtsi2ss xmm0,xmm0,eax                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(ushort src), hex://root/Converter?convert#convert_g[64f](16u)
; convert_g[64f](16u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x0f,0xb7,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000ch vcvtsi2sd xmm0,xmm0,eax                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(float src), hex://root/Converter?convert#convert_g[8u](32f)
; convert_g[8u](32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc4,0xe1,0xfb,0x2c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(float src), hex://root/Converter?convert#convert_g[8i](32f)
; convert_g[8i](32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc5,0xfb,0x2c,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(float src), hex://root/Converter?convert#convert_g[16u](32f)
; convert_g[16u](32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc4,0xe1,0xfb,0x2c,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(float src), hex://root/Converter?convert#convert_g[16i](32f)
; convert_g[16i](32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc5,0xfb,0x2c,0xc0,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(float src), hex://root/Converter?convert#convert_g[32u](32f)
; convert_g[32u](32f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfa,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttss2si rax,xmm0                     ; VCVTTSS2SI r64, xmm1/m32 || VEX.LIG.F3.0F.W1 2C /r || encoded[5]{c4 e1 fa 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(float src), hex://root/Converter?convert#convert_g[32i](32f)
; convert_g[32i](32f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc5,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(float src), hex://root/Converter?convert#convert_g[64u](32f)
; convert_g[64u](32f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfa,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttss2si rax,xmm0                     ; VCVTTSS2SI r64, xmm1/m32 || VEX.LIG.F3.0F.W1 2C /r || encoded[5]{c4 e1 fa 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(float src), hex://root/Converter?convert#convert_g[64i](32f)
; convert_g[64i](32f)[15] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc4,0xe1,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(float src), hex://root/Converter?convert#convert_g[32f](32f)
; convert_g[32f](32f)[6] = {0xc5,0xf8,0x77,0x66,0x90,0xc3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(float src), hex://root/Converter?convert#convert_g[64f](32f)
; convert_g[64f](32f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(int src), hex://root/Converter?convert#convert_g[8u](32i)
; convert_g[8u](32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(int src), hex://root/Converter?convert#convert_g[8i](32i)
; convert_g[8i](32i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(int src), hex://root/Converter?convert#convert_g[16u](32i)
; convert_g[16u](32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(int src), hex://root/Converter?convert#convert_g[16i](32i)
; convert_g[16i](32i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(int src), hex://root/Converter?convert#convert_g[32u](32i)
; convert_g[32u](32i)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(int src), hex://root/Converter?convert#convert_g[32i](32i)
; convert_g[32i](32i)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(int src), hex://root/Converter?convert#convert_g[64u](32i)
; convert_g[64u](32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(int src), hex://root/Converter?convert#convert_g[64i](32i)
; convert_g[64i](32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(int src), hex://root/Converter?convert#convert_g[32f](32i)
; convert_g[32f](32i)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2ss xmm0,xmm0,ecx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(int src), hex://root/Converter?convert#convert_g[64f](32i)
; convert_g[64f](32i)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2sd xmm0,xmm0,ecx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(uint src), hex://root/Converter?convert#convert_g[8u](32u)
; convert_g[8u](32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(uint src), hex://root/Converter?convert#convert_g[8i](32u)
; convert_g[8i](32u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(uint src), hex://root/Converter?convert#convert_g[16u](32u)
; convert_g[16u](32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(uint src), hex://root/Converter?convert#convert_g[16i](32u)
; convert_g[16i](32u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(uint src), hex://root/Converter?convert#convert_g[32u](32u)
; convert_g[32u](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(uint src), hex://root/Converter?convert#convert_g[32i](32u)
; convert_g[32i](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(uint src), hex://root/Converter?convert#convert_g[64u](32u)
; convert_g[64u](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(uint src), hex://root/Converter?convert#convert_g[64i](32u)
; convert_g[64i](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(uint src), hex://root/Converter?convert#convert_g[32f](32u)
; convert_g[32f](32u)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2ss xmm0,xmm0,ecx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(uint src), hex://root/Converter?convert#convert_g[64f](32u)
; convert_g[64f](32u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x8b,0xc1,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000bh vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(double src), hex://root/Converter?convert#convert_g[8u](64f)
; convert_g[8u](64f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(double src), hex://root/Converter?convert#convert_g[8i](64f)
; convert_g[8i](64f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x2c,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
0009h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(double src), hex://root/Converter?convert#convert_g[16u](64f)
; convert_g[16u](64f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2c,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(double src), hex://root/Converter?convert#convert_g[16i](64f)
; convert_g[16i](64f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x2c,0xc0,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
0009h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(double src), hex://root/Converter?convert#convert_g[32u](64f)
; convert_g[32u](64f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(double src), hex://root/Converter?convert#convert_g[32i](64f)
; convert_g[32i](64f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(double src), hex://root/Converter?convert#convert_g[64u](64f)
; convert_g[64u](64f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(double src), hex://root/Converter?convert#convert_g[64i](64f)
; convert_g[64i](64f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(double src), hex://root/Converter?convert#convert_g[32f](64f)
; convert_g[32f](64f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x5a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtsd2ss xmm0,xmm0,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 fb 5a c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(double src), hex://root/Converter?convert#convert_g[64f](64f)
; convert_g[64f](64f)[6] = {0xc5,0xf8,0x77,0x66,0x90,0xc3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(long src), hex://root/Converter?convert#convert_g[8u](64i)
; convert_g[8u](64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(long src), hex://root/Converter?convert#convert_g[8i](64i)
; convert_g[8i](64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(long src), hex://root/Converter?convert#convert_g[16u](64i)
; convert_g[16u](64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(long src), hex://root/Converter?convert#convert_g[16i](64i)
; convert_g[16i](64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(long src), hex://root/Converter?convert#convert_g[32u](64i)
; convert_g[32u](64i)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(long src), hex://root/Converter?convert#convert_g[32i](64i)
; convert_g[32i](64i)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(long src), hex://root/Converter?convert#convert_g[64u](64i)
; convert_g[64u](64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(long src), hex://root/Converter?convert#convert_g[64i](64i)
; convert_g[64i](64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(long src), hex://root/Converter?convert#convert_g[32f](64i)
; convert_g[32f](64i)[15] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfa,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2ss xmm0,xmm0,rcx                 ; VCVTSI2SS xmm1, xmm2, r/m64 || VEX.LIG.F3.0F.W1 2A /r || encoded[5]{c4 e1 fa 2a c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(long src), hex://root/Converter?convert#convert_g[64f](64i)
; convert_g[64f](64i)[15] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2sd xmm0,xmm0,rcx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(ulong src), hex://root/Converter?convert#convert_g[8u](64u)
; convert_g[8u](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(ulong src), hex://root/Converter?convert#convert_g[8i](64u)
; convert_g[8i](64u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(ulong src), hex://root/Converter?convert#convert_g[16u](64u)
; convert_g[16u](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(ulong src), hex://root/Converter?convert#convert_g[16i](64u)
; convert_g[16i](64u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(ulong src), hex://root/Converter?convert#convert_g[32u](64u)
; convert_g[32u](64u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(ulong src), hex://root/Converter?convert#convert_g[32i](64u)
; convert_g[32i](64u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(ulong src), hex://root/Converter?convert#convert_g[64u](64u)
; convert_g[64u](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(ulong src), hex://root/Converter?convert#convert_g[64i](64u)
; convert_g[64i](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(ulong src), hex://root/Converter?convert#convert_g[32f](64u)
; convert_g[32f](64u)[32] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc1,0x48,0x85,0xc9,0x7d,0x08,0xc5,0xfb,0x58,0x05,0x0d,0x00,0x00,0x00,0xc5,0xfb,0x5a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2sd xmm0,xmm0,rcx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c1}
000eh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0011h jge short 001bh                         ; JGE rel8 || 7D cb || encoded[2]{7d 08}
0013h vaddsd xmm0,xmm0,qword ptr [rip+0dh]    ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 0d 00 00 00}
001bh vcvtsd2ss xmm0,xmm0,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 fb 5a c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(ulong src), hex://root/Converter?convert#convert_g[64f](64u)
; convert_g[64f](64u)[15] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2sd xmm0,xmm0,rcx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(sbyte src), hex://root/Converter?convert#convert_g[8u](8i)
; convert_g[8u](8i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(sbyte src), hex://root/Converter?convert#convert_g[8i](8i)
; convert_g[8i](8i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(sbyte src), hex://root/Converter?convert#convert_g[16u](8i)
; convert_g[16u](8i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(sbyte src), hex://root/Converter?convert#convert_g[16i](8i)
; convert_g[16i](8i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(sbyte src), hex://root/Converter?convert#convert_g[32u](8i)
; convert_g[32u](8i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(sbyte src), hex://root/Converter?convert#convert_g[32i](8i)
; convert_g[32i](8i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(sbyte src), hex://root/Converter?convert#convert_g[64u](8i)
; convert_g[64u](8i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x63,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(sbyte src), hex://root/Converter?convert#convert_g[64i](8i)
; convert_g[64i](8i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x63,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(sbyte src), hex://root/Converter?convert#convert_g[32f](8i)
; convert_g[32f](8i)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x0f,0xbe,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000dh vcvtsi2ss xmm0,xmm0,eax                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(sbyte src), hex://root/Converter?convert#convert_g[64f](8i)
; convert_g[64f](8i)[22] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x0f,0xbe,0xc1,0x48,0x63,0xc0,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0010h vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(byte src), hex://root/Converter?convert#convert_g[8u](8u)
; convert_g[8u](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(byte src), hex://root/Converter?convert#convert_g[8i](8u)
; convert_g[8i](8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(byte src), hex://root/Converter?convert#convert_g[16u](8u)
; convert_g[16u](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(byte src), hex://root/Converter?convert#convert_g[16i](8u)
; convert_g[16i](8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(byte src), hex://root/Converter?convert#convert_g[32u](8u)
; convert_g[32u](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(byte src), hex://root/Converter?convert#convert_g[32i](8u)
; convert_g[32i](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(byte src), hex://root/Converter?convert#convert_g[64u](8u)
; convert_g[64u](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(byte src), hex://root/Converter?convert#convert_g[64i](8u)
; convert_g[64i](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(byte src), hex://root/Converter?convert#convert_g[32f](8u)
; convert_g[32f](8u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x0f,0xb6,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000ch vcvtsi2ss xmm0,xmm0,eax                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(byte src), hex://root/Converter?convert#convert_g[64f](8u)
; convert_g[64f](8u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x0f,0xb6,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000ch vcvtsi2sd xmm0,xmm0,eax                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object oconvert(object src, NumericKind:uint dst), hex://root/Converter?oconvert#oconvert_(object,NumericKind~32u)
; oconvert_(object,NumericKind~32u)[322] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x8b,0xfa,0x48,0x85,0xf6,0x75,0x04,0x33,0xc9,0xeb,0x0b,0x48,0x8b,0xce,0xe8,0xe4,0xf4,0xb6,0x5e,0x48,0x8b,0xc8,0xe8,0x8c,0x4c,0x6f,0x4e,0x83,0xc0,0xfb,0x83,0xf8,0x09,0x0f,0x87,0x08,0x01,0x00,0x00,0x8b,0xc8,0x48,0x8d,0x15,0x0f,0x01,0x00,0x00,0x8b,0x14,0x8a,0x48,0x8d,0x05,0xc8,0xff,0xff,0xff,0x48,0x03,0xd0,0xff,0xe2,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x40,0xd8,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x48,0xd8,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x50,0xd8,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x58,0xd8,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x60,0xd8,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x68,0xd8,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x70,0xd8,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x78,0xd8,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x80,0xd8,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x88,0xd8,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000bh test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
000eh jne short 0014h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0010h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0012h jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
0014h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0017h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 f4 b6 5e}
001ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001fh call 7ff816d3bf80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 4c 6f 4e}
0024h add eax,0fffffffbh                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 fb}
0027h cmp eax,9                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 09}
002ah ja near ptr 0138h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 01 00 00}
0030h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0032h lea rdx,[rip+10fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 0f 01 00 00}
0039h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
003ch lea rax,[rip-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 c8 ff ff ff}
0043h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0046h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0048h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
004ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004dh mov rax,7ff7c775d840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 d8 75 c7 f7 7f 00 00}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0060h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0062h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0065h mov rax,7ff7c775d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 d8 75 c7 f7 7f 00 00}
006fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0078h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
007ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
007dh mov rax,7ff7c775d850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 d8 75 c7 f7 7f 00 00}
0087h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0090h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0092h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0095h mov rax,7ff7c775d858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 d8 75 c7 f7 7f 00 00}
009fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00a8h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00aah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00adh mov rax,7ff7c775d860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 d8 75 c7 f7 7f 00 00}
00b7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bbh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bdh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00c0h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h mov rax,7ff7c775d868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 d8 75 c7 f7 7f 00 00}
00cfh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00d3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d5h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00d8h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00dah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00ddh mov rax,7ff7c775d870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 d8 75 c7 f7 7f 00 00}
00e7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00ebh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ech pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00edh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00f0h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00f2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f5h mov rax,7ff7c775d878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d8 75 c7 f7 7f 00 00}
00ffh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0103h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0104h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0105h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0108h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
010ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
010dh mov rax,7ff7c775d880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 d8 75 c7 f7 7f 00 00}
0117h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
011bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
011dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0120h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0122h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0125h mov rax,7ff7c775d888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 d8 75 c7 f7 7f 00 00}
012fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0133h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0134h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0135h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0138h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
013bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0140h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0141h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object from8i(NumericKind:uint dst, object src), hex://root/Converter?from8i#from8i_(NumericKind~32u,object)
; from8i_(NumericKind~32u,object)[813] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xf2,0x81,0xf9,0x20,0x00,0x00,0x42,0x77,0x4e,0x81,0xf9,0x10,0x00,0x04,0x20,0x77,0x1d,0x81,0xf9,0x08,0x00,0x01,0x20,0x0f,0x84,0x84,0x00,0x00,0x00,0x81,0xf9,0x10,0x00,0x04,0x20,0x0f,0x84,0x2f,0x01,0x00,0x00,0xe9,0xec,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x10,0x20,0x0f,0x84,0x99,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x40,0x20,0x0f,0x84,0x0b,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x00,0x42,0x0f,0x84,0x40,0x02,0x00,0x00,0xe9,0xc3,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x77,0x19,0x81,0xf9,0x40,0x00,0x00,0x44,0x0f,0x84,0x6b,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x74,0x6a,0xe9,0xa2,0x02,0x00,0x00,0x81,0xf9,0x10,0x00,0x08,0x80,0x0f,0x84,0x96,0x00,0x00,0x00,0x81,0xf9,0x20,0x00,0x20,0x80,0x0f,0x84,0x06,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x80,0x80,0x0f,0x84,0x74,0x01,0x00,0x00,0xe9,0x79,0x02,0x00,0x00,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x34,0xbe,0xbe,0x5e,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x75,0xf7,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x88,0x50,0x08,0xe9,0x40,0x02,0x00,0x00,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf8,0xbd,0xbe,0x5e,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x39,0xf7,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x88,0x50,0x08,0xe9,0x03,0x02,0x00,0x00,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xbb,0xbd,0xbe,0x5e,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xfc,0xf6,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0xc5,0x01,0x00,0x00,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x7d,0xbd,0xbe,0x5e,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xbe,0xf6,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0x87,0x01,0x00,0x00,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x3f,0xbd,0xbe,0x5e,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x80,0xf6,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x89,0x50,0x08,0xe9,0x4a,0x01,0x00,0x00,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x02,0xbd,0xbe,0x5e,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x43,0xf6,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x89,0x50,0x08,0xe9,0x0d,0x01,0x00,0x00,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xc5,0xbc,0xbe,0x5e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x06,0xf6,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x48,0x63,0xd2,0x48,0x89,0x50,0x08,0xe9,0xcc,0x00,0x00,0x00,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x84,0xbc,0xbe,0x5e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xc5,0xf5,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x48,0x63,0xd2,0x48,0x89,0x50,0x08,0xe9,0x8b,0x00,0x00,0x00,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x43,0xbc,0xbe,0x5e,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x84,0xf5,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc2,0xc5,0xfa,0x11,0x40,0x08,0xeb,0x47,0x48,0xba,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xff,0xbb,0xbe,0x5e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x40,0xf5,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc2,0xc5,0xfb,0x11,0x40,0x08,0xeb,0x03,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0324h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ec 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01ddh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 99 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 025bh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 0b 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 029ch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 40 02 00 00}
005ch jmp near ptr 0324h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c3 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02e0h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6b 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0324h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 01a0h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 06 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 021ah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 74 01 00 00}
00a6h jmp near ptr 0324h                      ; JMP rel32 || E9 cd || encoded[5]{e9 79 02 00 00}
00abh mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
00c7h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 be be 5e}
00cch mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00d6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f7 c1 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 40 02 00 00}
00e7h mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0103h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 bd be 5e}
0108h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f7 c1 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 02 00 00}
0124h mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0140h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb bd be 5e}
0145h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
014fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc f6 c1 5e}
0154h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c5 01 00 00}
0162h mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
017eh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d bd be 5e}
0183h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
018dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f6 c1 5e}
0192h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
0197h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019bh jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 01 00 00}
01a0h mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
01aah cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01adh je short 01c1h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01afh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b2h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
01bch call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f bd be 5e}
01c1h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01cbh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 f6 c1 5e}
01d0h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
01d5h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d8h jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4a 01 00 00}
01ddh mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
01e7h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01eah je short 01feh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01ech mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01efh mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
01f9h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 bd be 5e}
01feh mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0208h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 f6 c1 5e}
020dh movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
0212h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0215h jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 01 00 00}
021ah mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
0224h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0227h je short 023bh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0229h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
022ch mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0236h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 bc be 5e}
023bh mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0245h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f6 c1 5e}
024ah movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
024fh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0252h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0256h jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 00 00 00}
025bh mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
0265h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0268h je short 027ch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
026ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
026dh mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0277h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 bc be 5e}
027ch mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
0286h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f5 c1 5e}
028bh movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
0290h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0293h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0297h jmp near ptr 0327h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8b 00 00 00}
029ch mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
02a6h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02a9h je short 02bdh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02abh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02aeh mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
02b8h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 bc be 5e}
02bdh mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02c7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 f5 c1 5e}
02cch movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
02d1h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02d5h vcvtsi2ss xmm0,xmm0,edx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c2}
02d9h vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02deh jmp short 0327h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
02e0h mov rdx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 70 c7 f7 7f 00 00}
02eah cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02edh je short 0301h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f2h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
02fch call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff bb be 5e}
0301h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
030bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 f5 c1 5e}
0310h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
0315h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0319h vcvtsi2sd xmm0,xmm0,edx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c2}
031dh vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0322h jmp short 0327h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0324h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0327h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
032bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
032ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object from8u(NumericKind:uint dst, object src), hex://root/Converter?from8u#from8u_(NumericKind~32u,object)
; from8u_(NumericKind~32u,object)[799] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xf2,0x81,0xf9,0x20,0x00,0x00,0x42,0x77,0x4e,0x81,0xf9,0x10,0x00,0x04,0x20,0x77,0x1d,0x81,0xf9,0x08,0x00,0x01,0x20,0x0f,0x84,0x84,0x00,0x00,0x00,0x81,0xf9,0x10,0x00,0x04,0x20,0x0f,0x84,0x2e,0x01,0x00,0x00,0xe9,0xde,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x10,0x20,0x0f,0x84,0x96,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x40,0x20,0x0f,0x84,0x03,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x00,0x42,0x0f,0x84,0x34,0x02,0x00,0x00,0xe9,0xb5,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x77,0x19,0x81,0xf9,0x40,0x00,0x00,0x44,0x0f,0x84,0x5e,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x74,0x6a,0xe9,0x94,0x02,0x00,0x00,0x81,0xf9,0x10,0x00,0x08,0x80,0x0f,0x84,0x96,0x00,0x00,0x00,0x81,0xf9,0x20,0x00,0x20,0x80,0x0f,0x84,0x04,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x80,0x80,0x0f,0x84,0x70,0x01,0x00,0x00,0xe9,0x6b,0x02,0x00,0x00,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe4,0xba,0xbe,0x5e,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x25,0xf4,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x88,0x50,0x08,0xe9,0x32,0x02,0x00,0x00,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa8,0xba,0xbe,0x5e,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe9,0xf3,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x88,0x50,0x08,0xe9,0xf5,0x01,0x00,0x00,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6b,0xba,0xbe,0x5e,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xac,0xf3,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0xb8,0x01,0x00,0x00,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2e,0xba,0xbe,0x5e,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6f,0xf3,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0x7b,0x01,0x00,0x00,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf1,0xb9,0xbe,0x5e,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x32,0xf3,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x89,0x50,0x08,0xe9,0x3f,0x01,0x00,0x00,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb5,0xb9,0xbe,0x5e,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf6,0xf2,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x89,0x50,0x08,0xe9,0x03,0x01,0x00,0x00,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x79,0xb9,0xbe,0x5e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xba,0xf2,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0xc6,0x00,0x00,0x00,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x3c,0xb9,0xbe,0x5e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x7d,0xf2,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0x89,0x00,0x00,0x00,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xff,0xb8,0xbe,0x5e,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x40,0xf2,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc2,0xc5,0xfa,0x11,0x40,0x08,0xeb,0x46,0x48,0xba,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xbc,0xb8,0xbe,0x5e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xfd,0xf1,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc2,0xc5,0xfb,0x11,0x40,0x08,0xeb,0x03,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0161h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2e 01 00 00}
0033h jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 de 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0253h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 03 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 0290h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 34 02 00 00}
005ch jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02d3h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 5e 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 94 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019eh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 04 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0216h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 70 01 00 00}
00a6h jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
00abh mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00c7h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ba be 5e}
00cch mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00d6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 f4 c1 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 32 02 00 00}
00e7h mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
0103h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 ba be 5e}
0108h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f3 c1 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 01 00 00}
0124h mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
0140h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b ba be 5e}
0145h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
014fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac f3 c1 5e}
0154h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
0158h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015ch jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 01 00 00}
0161h mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
016bh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016eh je short 0182h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0170h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0173h mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
017dh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e ba be 5e}
0182h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
018ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f f3 c1 5e}
0191h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
0195h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
0199h jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 01 00 00}
019eh mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
01a8h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01abh je short 01bfh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01adh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b0h mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
01bah call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 b9 be 5e}
01bfh mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01c9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f3 c1 5e}
01ceh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
01d2h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d5h jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3f 01 00 00}
01dah mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
01e4h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e7h je short 01fbh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ech mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
01f6h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 b9 be 5e}
01fbh mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0205h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 f2 c1 5e}
020ah movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
020eh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0211h jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 01 00 00}
0216h mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
0220h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0223h je short 0237h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0225h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0228h mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
0232h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 b9 be 5e}
0237h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0241h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba f2 c1 5e}
0246h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
024ah mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024eh jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c6 00 00 00}
0253h mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
025dh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0260h je short 0274h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0262h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0265h mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
026fh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c b9 be 5e}
0274h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
027eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f2 c1 5e}
0283h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
0287h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
028bh jmp near ptr 0319h                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 00 00 00}
0290h mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
029ah cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
029dh je short 02b1h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
029fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a2h mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
02ach call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff b8 be 5e}
02b1h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02bbh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 f2 c1 5e}
02c0h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
02c4h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c8h vcvtsi2ss xmm0,xmm0,edx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c2}
02cch vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02d1h jmp short 0319h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
02d3h mov rdx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 70 c7 f7 7f 00 00}
02ddh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02e0h je short 02f4h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02e2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e5h mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
02efh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc b8 be 5e}
02f4h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
02feh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f1 c1 5e}
0303h movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
0307h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
030bh vcvtsi2sd xmm0,xmm0,edx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c2}
030fh vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0314h jmp short 0319h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0316h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0319h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
031dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
031eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object from16i(NumericKind:uint dst, object src), hex://root/Converter?from16i#from16i_(NumericKind~32u,object)
; from16i_(NumericKind~32u,object)[812] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xf2,0x81,0xf9,0x20,0x00,0x00,0x42,0x77,0x4e,0x81,0xf9,0x10,0x00,0x04,0x20,0x77,0x1d,0x81,0xf9,0x08,0x00,0x01,0x20,0x0f,0x84,0x84,0x00,0x00,0x00,0x81,0xf9,0x10,0x00,0x04,0x20,0x0f,0x84,0x2f,0x01,0x00,0x00,0xe9,0xeb,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x10,0x20,0x0f,0x84,0x98,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x40,0x20,0x0f,0x84,0x0a,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x00,0x42,0x0f,0x84,0x3f,0x02,0x00,0x00,0xe9,0xc2,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x77,0x19,0x81,0xf9,0x40,0x00,0x00,0x44,0x0f,0x84,0x6a,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x74,0x6a,0xe9,0xa1,0x02,0x00,0x00,0x81,0xf9,0x10,0x00,0x08,0x80,0x0f,0x84,0x96,0x00,0x00,0x00,0x81,0xf9,0x20,0x00,0x20,0x80,0x0f,0x84,0x05,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x80,0x80,0x0f,0x84,0x73,0x01,0x00,0x00,0xe9,0x78,0x02,0x00,0x00,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa4,0xb7,0xbe,0x5e,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe5,0xf0,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x88,0x50,0x08,0xe9,0x3f,0x02,0x00,0x00,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x68,0xb7,0xbe,0x5e,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa9,0xf0,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x88,0x50,0x08,0xe9,0x02,0x02,0x00,0x00,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2b,0xb7,0xbe,0x5e,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6c,0xf0,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0xc4,0x01,0x00,0x00,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xed,0xb6,0xbe,0x5e,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2e,0xf0,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0x87,0x01,0x00,0x00,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb0,0xb6,0xbe,0x5e,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf1,0xef,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0x89,0x50,0x08,0xe9,0x4a,0x01,0x00,0x00,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x73,0xb6,0xbe,0x5e,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb4,0xef,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0x89,0x50,0x08,0xe9,0x0d,0x01,0x00,0x00,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x36,0xb6,0xbe,0x5e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x77,0xef,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0x48,0x63,0xd2,0x48,0x89,0x50,0x08,0xe9,0xcc,0x00,0x00,0x00,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf5,0xb5,0xbe,0x5e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x36,0xef,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0x48,0x63,0xd2,0x48,0x89,0x50,0x08,0xe9,0x8b,0x00,0x00,0x00,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb4,0xb5,0xbe,0x5e,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf5,0xee,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc2,0xc5,0xfa,0x11,0x40,0x08,0xeb,0x47,0x48,0xba,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x70,0xb5,0xbe,0x5e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb1,0xee,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc2,0xc5,0xfb,0x11,0x40,0x08,0xeb,0x03,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0323h                      ; JMP rel32 || E9 cd || encoded[5]{e9 eb 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 98 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 025ah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 0a 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 029bh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 3f 02 00 00}
005ch jmp near ptr 0323h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02dfh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0323h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a1 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0219h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 73 01 00 00}
00a6h jmp near ptr 0323h                      ; JMP rel32 || E9 cd || encoded[5]{e9 78 02 00 00}
00abh mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
00c7h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b7 be 5e}
00cch mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00d6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f0 c1 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3f 02 00 00}
00e7h mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
0103h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 b7 be 5e}
0108h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 f0 c1 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 02 02 00 00}
0124h mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
0140h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b b7 be 5e}
0145h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
014fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c f0 c1 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c4 01 00 00}
0162h mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
017eh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed b6 be 5e}
0183h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
018dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e f0 c1 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 01 00 00}
019fh mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
01bbh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 b6 be 5e}
01c0h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01cah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 ef c1 5e}
01cfh movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
01d4h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d7h jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4a 01 00 00}
01dch mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
01e6h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e9h je short 01fdh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01ebh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01eeh mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
01f8h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 b6 be 5e}
01fdh mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0207h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 ef c1 5e}
020ch movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0211h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0214h jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 01 00 00}
0219h mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
0223h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0226h je short 023ah                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0228h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
022bh mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
0235h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 b6 be 5e}
023ah mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0244h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ef c1 5e}
0249h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
024eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0251h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0255h jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 00 00 00}
025ah mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
0264h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0267h je short 027bh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0269h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
026ch mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
0276h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 b5 be 5e}
027bh mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
0285h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 ef c1 5e}
028ah movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
028fh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0292h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0296h jmp near ptr 0326h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8b 00 00 00}
029bh mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
02a5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02a8h je short 02bch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02aah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02adh mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
02b7h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 b5 be 5e}
02bch mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 ee c1 5e}
02cbh movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
02d0h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02d4h vcvtsi2ss xmm0,xmm0,edx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c2}
02d8h vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02ddh jmp short 0326h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
02dfh mov rdx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 70 c7 f7 7f 00 00}
02e9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02ech je short 0300h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f1h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
02fbh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 b5 be 5e}
0300h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
030ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 ee c1 5e}
030fh movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0314h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0318h vcvtsi2sd xmm0,xmm0,edx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c2}
031ch vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0321h jmp short 0326h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0323h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0326h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
032ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
032bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object from16u(NumericKind:uint dst, object src), hex://root/Converter?from16u#from16u_(NumericKind~32u,object)
; from16u_(NumericKind~32u,object)[800] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xf2,0x81,0xf9,0x20,0x00,0x00,0x42,0x77,0x4e,0x81,0xf9,0x10,0x00,0x04,0x20,0x77,0x1d,0x81,0xf9,0x08,0x00,0x01,0x20,0x0f,0x84,0x84,0x00,0x00,0x00,0x81,0xf9,0x10,0x00,0x04,0x20,0x0f,0x84,0x2f,0x01,0x00,0x00,0xe9,0xdf,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x10,0x20,0x0f,0x84,0x97,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x40,0x20,0x0f,0x84,0x04,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x00,0x42,0x0f,0x84,0x35,0x02,0x00,0x00,0xe9,0xb6,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x77,0x19,0x81,0xf9,0x40,0x00,0x00,0x44,0x0f,0x84,0x5f,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x74,0x6a,0xe9,0x95,0x02,0x00,0x00,0x81,0xf9,0x10,0x00,0x08,0x80,0x0f,0x84,0x96,0x00,0x00,0x00,0x81,0xf9,0x20,0x00,0x20,0x80,0x0f,0x84,0x05,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x80,0x80,0x0f,0x84,0x71,0x01,0x00,0x00,0xe9,0x6c,0x02,0x00,0x00,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x54,0xb4,0xbe,0x5e,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x95,0xed,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x88,0x50,0x08,0xe9,0x33,0x02,0x00,0x00,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x18,0xb4,0xbe,0x5e,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x59,0xed,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x88,0x50,0x08,0xe9,0xf6,0x01,0x00,0x00,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xdb,0xb3,0xbe,0x5e,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x1c,0xed,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0xb8,0x01,0x00,0x00,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x9d,0xb3,0xbe,0x5e,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xde,0xec,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0x7b,0x01,0x00,0x00,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x60,0xb3,0xbe,0x5e,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa1,0xec,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0x89,0x50,0x08,0xe9,0x3f,0x01,0x00,0x00,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x24,0xb3,0xbe,0x5e,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x65,0xec,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0x89,0x50,0x08,0xe9,0x03,0x01,0x00,0x00,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe8,0xb2,0xbe,0x5e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x29,0xec,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0xc6,0x00,0x00,0x00,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xab,0xb2,0xbe,0x5e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xec,0xeb,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0x89,0x00,0x00,0x00,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6e,0xb2,0xbe,0x5e,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xaf,0xeb,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc2,0xc5,0xfa,0x11,0x40,0x08,0xeb,0x46,0x48,0xba,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2b,0xb2,0xbe,0x5e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6c,0xeb,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc2,0xc5,0xfb,0x11,0x40,0x08,0xeb,0x03,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 97 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0254h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 04 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 0291h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 02 00 00}
005ch jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b6 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02d4h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 5f 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0217h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 71 01 00 00}
00a6h jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6c 02 00 00}
00abh mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
00c7h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 b4 be 5e}
00cch mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00d6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 ed c1 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 02 00 00}
00e7h mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
0103h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 b4 be 5e}
0108h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ed c1 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f6 01 00 00}
0124h mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
0140h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db b3 be 5e}
0145h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
014fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c ed c1 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 01 00 00}
0162h mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
017eh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d b3 be 5e}
0183h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
018dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de ec c1 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 01 00 00}
019fh mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
01bbh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 b3 be 5e}
01c0h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01cah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ec c1 5e}
01cfh movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
01d3h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d6h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 3f 01 00 00}
01dbh mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
01e5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e8h je short 01fch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01eah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01edh mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
01f7h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b3 be 5e}
01fch mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0206h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 ec c1 5e}
020bh movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
020fh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0212h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 01 00 00}
0217h mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
0221h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0224h je short 0238h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0226h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0229h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
0233h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 b2 be 5e}
0238h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0242h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ec c1 5e}
0247h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
024bh mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024fh jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c6 00 00 00}
0254h mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
025eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0261h je short 0275h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0263h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0266h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
0270h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab b2 be 5e}
0275h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
027fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec eb c1 5e}
0284h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0288h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
028ch jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 00 00 00}
0291h mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
029bh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
029eh je short 02b2h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02a0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a3h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
02adh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e b2 be 5e}
02b2h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02bch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af eb c1 5e}
02c1h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
02c5h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c9h vcvtsi2ss xmm0,xmm0,edx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c2}
02cdh vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02d2h jmp short 031ah                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
02d4h mov rdx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 70 c7 f7 7f 00 00}
02deh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02e1h je short 02f5h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e6h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
02f0h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b b2 be 5e}
02f5h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
02ffh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c eb c1 5e}
0304h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0308h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
030ch vcvtsi2sd xmm0,xmm0,edx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c2}
0310h vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0315h jmp short 031ah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0317h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
031ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
031eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
031fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object from32i(NumericKind:uint dst, object src), hex://root/Converter?from32i#from32i_(NumericKind~32u,object)
; from32i_(NumericKind~32u,object)[796] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xf2,0x81,0xf9,0x20,0x00,0x00,0x42,0x77,0x4e,0x81,0xf9,0x10,0x00,0x04,0x20,0x77,0x1d,0x81,0xf9,0x08,0x00,0x01,0x20,0x0f,0x84,0x84,0x00,0x00,0x00,0x81,0xf9,0x10,0x00,0x04,0x20,0x0f,0x84,0x2f,0x01,0x00,0x00,0xe9,0xdb,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x10,0x20,0x0f,0x84,0x96,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x40,0x20,0x0f,0x84,0x04,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x00,0x42,0x0f,0x84,0x37,0x02,0x00,0x00,0xe9,0xb2,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x77,0x19,0x81,0xf9,0x40,0x00,0x00,0x44,0x0f,0x84,0x5e,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x74,0x6a,0xe9,0x91,0x02,0x00,0x00,0x81,0xf9,0x10,0x00,0x08,0x80,0x0f,0x84,0x96,0x00,0x00,0x00,0x81,0xf9,0x20,0x00,0x20,0x80,0x0f,0x84,0x05,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x80,0x80,0x0f,0x84,0x6f,0x01,0x00,0x00,0xe9,0x68,0x02,0x00,0x00,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x14,0xb1,0xbe,0x5e,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x55,0xea,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x88,0x50,0x08,0xe9,0x2f,0x02,0x00,0x00,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd8,0xb0,0xbe,0x5e,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x19,0xea,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x88,0x50,0x08,0xe9,0xf2,0x01,0x00,0x00,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x9b,0xb0,0xbe,0x5e,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xdc,0xe9,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0xb4,0x01,0x00,0x00,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x5d,0xb0,0xbe,0x5e,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x9e,0xe9,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0x77,0x01,0x00,0x00,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x20,0xb0,0xbe,0x5e,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x61,0xe9,0xc1,0x5e,0x8b,0x56,0x08,0x89,0x50,0x08,0xe9,0x3c,0x01,0x00,0x00,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe5,0xaf,0xbe,0x5e,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x26,0xe9,0xc1,0x5e,0x8b,0x56,0x08,0x89,0x50,0x08,0xe9,0x01,0x01,0x00,0x00,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xaa,0xaf,0xbe,0x5e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xeb,0xe8,0xc1,0x5e,0x8b,0x56,0x08,0x48,0x63,0xd2,0x48,0x89,0x50,0x08,0xe9,0xc2,0x00,0x00,0x00,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6b,0xaf,0xbe,0x5e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xac,0xe8,0xc1,0x5e,0x8b,0x56,0x08,0x48,0x63,0xd2,0x48,0x89,0x50,0x08,0xe9,0x83,0x00,0x00,0x00,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2c,0xaf,0xbe,0x5e,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6d,0xe8,0xc1,0x5e,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0x46,0x08,0xc5,0xfa,0x11,0x40,0x08,0xeb,0x43,0x48,0xba,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xec,0xae,0xbe,0x5e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2d,0xe8,0xc1,0x5e,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0x46,0x08,0xc5,0xfb,0x11,0x40,0x08,0xeb,0x03,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0313h                      ; JMP rel32 || E9 cd || encoded[5]{e9 db 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0254h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 04 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 0293h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 37 02 00 00}
005ch jmp near ptr 0313h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02d3h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 5e 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0313h                      ; JMP rel32 || E9 cd || encoded[5]{e9 91 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0215h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6f 01 00 00}
00a6h jmp near ptr 0313h                      ; JMP rel32 || E9 cd || encoded[5]{e9 68 02 00 00}
00abh mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
00c7h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 b1 be 5e}
00cch mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00d6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 ea c1 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2f 02 00 00}
00e7h mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
0103h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 b0 be 5e}
0108h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 ea c1 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f2 01 00 00}
0124h mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
0140h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b b0 be 5e}
0145h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
014fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc e9 c1 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b4 01 00 00}
0162h mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
017eh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d b0 be 5e}
0183h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
018dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e e9 c1 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 77 01 00 00}
019fh mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01bbh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 b0 be 5e}
01c0h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01cah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 e9 c1 5e}
01cfh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
01d2h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d5h jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3c 01 00 00}
01dah mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
01e4h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e7h je short 01fbh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ech mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01f6h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 af be 5e}
01fbh mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0205h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 e9 c1 5e}
020ah mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
020dh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0210h jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 01 01 00 00}
0215h mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
021fh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0222h je short 0236h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0224h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0227h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
0231h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa af be 5e}
0236h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0240h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb e8 c1 5e}
0245h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0248h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
024bh mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024fh jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 00 00 00}
0254h mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
025eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0261h je short 0275h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0263h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0266h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
0270h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b af be 5e}
0275h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
027fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac e8 c1 5e}
0284h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0287h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
028ah mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
028eh jmp near ptr 0316h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
0293h mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
029dh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02a0h je short 02b4h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02a2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a5h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
02afh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c af be 5e}
02b4h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02beh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d e8 c1 5e}
02c3h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c7h vcvtsi2ss xmm0,xmm0,dword ptr [rsi+8]   ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[5]{c5 fa 2a 46 08}
02cch vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02d1h jmp short 0316h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
02d3h mov rdx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 70 c7 f7 7f 00 00}
02ddh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02e0h je short 02f4h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02e2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e5h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
02efh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec ae be 5e}
02f4h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
02feh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d e8 c1 5e}
0303h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0307h vcvtsi2sd xmm0,xmm0,dword ptr [rsi+8]   ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[5]{c5 fb 2a 46 08}
030ch vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0311h jmp short 0316h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0313h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0316h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
031ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
031bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object from32u(NumericKind:uint dst, object src), hex://root/Converter?from32u#from32u_(NumericKind~32u,object)
; from32u_(NumericKind~32u,object)[800] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xf2,0x81,0xf9,0x20,0x00,0x00,0x42,0x77,0x4e,0x81,0xf9,0x10,0x00,0x04,0x20,0x77,0x1d,0x81,0xf9,0x08,0x00,0x01,0x20,0x0f,0x84,0x84,0x00,0x00,0x00,0x81,0xf9,0x10,0x00,0x04,0x20,0x0f,0x84,0x2f,0x01,0x00,0x00,0xe9,0xdf,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x10,0x20,0x0f,0x84,0x96,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x40,0x20,0x0f,0x84,0x01,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x00,0x42,0x0f,0x84,0x31,0x02,0x00,0x00,0xe9,0xb6,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x77,0x19,0x81,0xf9,0x40,0x00,0x00,0x44,0x0f,0x84,0x5f,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x74,0x6a,0xe9,0x95,0x02,0x00,0x00,0x81,0xf9,0x10,0x00,0x08,0x80,0x0f,0x84,0x96,0x00,0x00,0x00,0x81,0xf9,0x20,0x00,0x20,0x80,0x0f,0x84,0x05,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x80,0x80,0x0f,0x84,0x6f,0x01,0x00,0x00,0xe9,0x6c,0x02,0x00,0x00,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd4,0xad,0xbe,0x5e,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x15,0xe7,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x88,0x50,0x08,0xe9,0x33,0x02,0x00,0x00,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x98,0xad,0xbe,0x5e,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd9,0xe6,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x88,0x50,0x08,0xe9,0xf6,0x01,0x00,0x00,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x5b,0xad,0xbe,0x5e,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x9c,0xe6,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0xb8,0x01,0x00,0x00,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x1d,0xad,0xbe,0x5e,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x5e,0xe6,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0x7b,0x01,0x00,0x00,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe0,0xac,0xbe,0x5e,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x21,0xe6,0xc1,0x5e,0x8b,0x56,0x08,0x89,0x50,0x08,0xe9,0x40,0x01,0x00,0x00,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa5,0xac,0xbe,0x5e,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe6,0xe5,0xc1,0x5e,0x8b,0x56,0x08,0x89,0x50,0x08,0xe9,0x05,0x01,0x00,0x00,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6a,0xac,0xbe,0x5e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xab,0xe5,0xc1,0x5e,0x8b,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0xc9,0x00,0x00,0x00,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2e,0xac,0xbe,0x5e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6f,0xe5,0xc1,0x5e,0x8b,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0x8d,0x00,0x00,0x00,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf2,0xab,0xbe,0x5e,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x33,0xe5,0xc1,0x5e,0x8b,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc2,0xc5,0xfb,0x5a,0xc0,0xc5,0xfa,0x11,0x40,0x08,0xeb,0x46,0x48,0xba,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xab,0xab,0xbe,0x5e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xec,0xe4,0xc1,0x5e,0x8b,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc2,0xc5,0xfb,0x11,0x40,0x08,0xeb,0x03,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0251h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 01 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 028dh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 31 02 00 00}
005ch jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b6 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02d4h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 5f 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0215h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6f 01 00 00}
00a6h jmp near ptr 0317h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6c 02 00 00}
00abh mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
00c7h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 ad be 5e}
00cch mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00d6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 e7 c1 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 02 00 00}
00e7h mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0103h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 ad be 5e}
0108h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 e6 c1 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f6 01 00 00}
0124h mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0140h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b ad be 5e}
0145h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
014fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c e6 c1 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 01 00 00}
0162h mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
017eh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d ad be 5e}
0183h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
018dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e6 c1 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 01 00 00}
019fh mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
01bbh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 ac be 5e}
01c0h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01cah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 e6 c1 5e}
01cfh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
01d2h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d5h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 40 01 00 00}
01dah mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
01e4h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e7h je short 01fbh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ech mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
01f6h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 ac be 5e}
01fbh mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0205h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 e5 c1 5e}
020ah mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
020dh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0210h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 01 00 00}
0215h mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
021fh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0222h je short 0236h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0224h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0227h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0231h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a ac be 5e}
0236h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0240h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab e5 c1 5e}
0245h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0248h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024ch jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 00 00 00}
0251h mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
025bh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
025eh je short 0272h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0260h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0263h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
026dh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e ac be 5e}
0272h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
027ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f e5 c1 5e}
0281h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0284h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0288h jmp near ptr 031ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 00 00 00}
028dh mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
0297h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
029ah je short 02aeh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
029ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
029fh mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
02a9h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 ab be 5e}
02aeh mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02b8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 e5 c1 5e}
02bdh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
02c0h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c4h vcvtsi2sd xmm0,xmm0,rdx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c2}
02c9h vcvtsd2ss xmm0,xmm0,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 fb 5a c0}
02cdh vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02d2h jmp short 031ah                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
02d4h mov rdx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 70 c7 f7 7f 00 00}
02deh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02e1h je short 02f5h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e6h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
02f0h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ab be 5e}
02f5h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
02ffh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec e4 c1 5e}
0304h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0307h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
030bh vcvtsi2sd xmm0,xmm0,rdx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c2}
0310h vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0315h jmp short 031ah                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0317h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
031ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
031eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
031fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object from64i(NumericKind:uint dst, object src), hex://root/Converter?from64i#from64i_(NumericKind~32u,object)
; from64i_(NumericKind~32u,object)[794] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xf2,0x81,0xf9,0x20,0x00,0x00,0x42,0x77,0x4e,0x81,0xf9,0x10,0x00,0x04,0x20,0x77,0x1d,0x81,0xf9,0x08,0x00,0x01,0x20,0x0f,0x84,0x84,0x00,0x00,0x00,0x81,0xf9,0x10,0x00,0x04,0x20,0x0f,0x84,0x2f,0x01,0x00,0x00,0xe9,0xd9,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x10,0x20,0x0f,0x84,0x96,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x40,0x20,0x0f,0x84,0x02,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x00,0x42,0x0f,0x84,0x33,0x02,0x00,0x00,0xe9,0xb0,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x77,0x19,0x81,0xf9,0x40,0x00,0x00,0x44,0x0f,0x84,0x5b,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x74,0x6a,0xe9,0x8f,0x02,0x00,0x00,0x81,0xf9,0x10,0x00,0x08,0x80,0x0f,0x84,0x96,0x00,0x00,0x00,0x81,0xf9,0x20,0x00,0x20,0x80,0x0f,0x84,0x05,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x80,0x80,0x0f,0x84,0x6f,0x01,0x00,0x00,0xe9,0x66,0x02,0x00,0x00,0x48,0xba,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x94,0xaa,0xbe,0x5e,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd5,0xe3,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x88,0x50,0x08,0xe9,0x2d,0x02,0x00,0x00,0x48,0xba,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x58,0xaa,0xbe,0x5e,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x99,0xe3,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x88,0x50,0x08,0xe9,0xf0,0x01,0x00,0x00,0x48,0xba,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x1b,0xaa,0xbe,0x5e,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x5c,0xe3,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0xb2,0x01,0x00,0x00,0x48,0xba,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xdd,0xa9,0xbe,0x5e,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x1e,0xe3,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0x75,0x01,0x00,0x00,0x48,0xba,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa0,0xa9,0xbe,0x5e,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe1,0xe2,0xc1,0x5e,0x8b,0x56,0x08,0x89,0x50,0x08,0xe9,0x3a,0x01,0x00,0x00,0x48,0xba,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x65,0xa9,0xbe,0x5e,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa6,0xe2,0xc1,0x5e,0x8b,0x56,0x08,0x89,0x50,0x08,0xe9,0xff,0x00,0x00,0x00,0x48,0xba,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2a,0xa9,0xbe,0x5e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6b,0xe2,0xc1,0x5e,0x48,0x8b,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0xc2,0x00,0x00,0x00,0x48,0xba,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xed,0xa8,0xbe,0x5e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2e,0xe2,0xc1,0x5e,0x48,0x8b,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0x85,0x00,0x00,0x00,0x48,0xba,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb0,0xa8,0xbe,0x5e,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf1,0xe1,0xc1,0x5e,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfa,0x2a,0x46,0x08,0xc5,0xfa,0x11,0x40,0x08,0xeb,0x44,0x48,0xba,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6f,0xa8,0xbe,0x5e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb0,0xe1,0xc1,0x5e,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0x46,0x08,0xc5,0xfb,0x11,0x40,0x08,0xeb,0x03,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0311h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0252h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 02 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 028fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 33 02 00 00}
005ch jmp near ptr 0311h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b0 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02d0h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 5b 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0311h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8f 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0215h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6f 01 00 00}
00a6h jmp near ptr 0311h                      ; JMP rel32 || E9 cd || encoded[5]{e9 66 02 00 00}
00abh mov rdx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 70 c7 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
00c7h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 aa be 5e}
00cch mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00d6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 e3 c1 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2d 02 00 00}
00e7h mov rdx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 70 c7 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0103h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 aa be 5e}
0108h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e3 c1 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f0 01 00 00}
0124h mov rdx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 70 c7 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0140h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b aa be 5e}
0145h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
014fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c e3 c1 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 01 00 00}
0162h mov rdx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 70 c7 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
017eh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd a9 be 5e}
0183h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
018dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e e3 c1 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
019fh mov rdx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 70 c7 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
01bbh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 a9 be 5e}
01c0h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01cah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 e2 c1 5e}
01cfh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
01d2h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d5h jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3a 01 00 00}
01dah mov rdx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 70 c7 f7 7f 00 00}
01e4h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e7h je short 01fbh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ech mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
01f6h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a9 be 5e}
01fbh mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0205h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 e2 c1 5e}
020ah mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
020dh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0210h jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ff 00 00 00}
0215h mov rdx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 70 c7 f7 7f 00 00}
021fh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0222h je short 0236h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0224h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0227h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0231h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a a9 be 5e}
0236h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0240h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e2 c1 5e}
0245h mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
0249h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024dh jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 00 00 00}
0252h mov rdx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 70 c7 f7 7f 00 00}
025ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
025fh je short 0273h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0261h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0264h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
026eh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed a8 be 5e}
0273h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
027dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e e2 c1 5e}
0282h mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
0286h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
028ah jmp near ptr 0314h                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 00 00 00}
028fh mov rdx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 70 c7 f7 7f 00 00}
0299h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
029ch je short 02b0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
029eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a1h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
02abh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 a8 be 5e}
02b0h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02bah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e1 c1 5e}
02bfh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c3h vcvtsi2ss xmm0,xmm0,qword ptr [rsi+8]   ; VCVTSI2SS xmm1, xmm2, r/m64 || VEX.LIG.F3.0F.W1 2A /r || encoded[6]{c4 e1 fa 2a 46 08}
02c9h vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02ceh jmp short 0314h                         ; JMP rel8 || EB cb || encoded[2]{eb 44}
02d0h mov rdx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 70 c7 f7 7f 00 00}
02dah cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02ddh je short 02f1h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02dfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e2h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
02ech call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f a8 be 5e}
02f1h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
02fbh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 e1 c1 5e}
0300h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0304h vcvtsi2sd xmm0,xmm0,qword ptr [rsi+8]   ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[6]{c4 e1 fb 2a 46 08}
030ah vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
030fh jmp short 0314h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0311h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0314h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0318h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0319h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object from64u(NumericKind:uint dst, object src), hex://root/Converter?from64u#from64u_(NumericKind~32u,object)
; from64u_(NumericKind~32u,object)[830] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xf2,0x81,0xf9,0x20,0x00,0x00,0x42,0x77,0x4e,0x81,0xf9,0x10,0x00,0x04,0x20,0x77,0x1d,0x81,0xf9,0x08,0x00,0x01,0x20,0x0f,0x84,0x84,0x00,0x00,0x00,0x81,0xf9,0x10,0x00,0x04,0x20,0x0f,0x84,0x2f,0x01,0x00,0x00,0xe9,0xfd,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x10,0x20,0x0f,0x84,0x96,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x40,0x20,0x0f,0x84,0x02,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x00,0x42,0x0f,0x84,0x33,0x02,0x00,0x00,0xe9,0xd4,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x77,0x19,0x81,0xf9,0x40,0x00,0x00,0x44,0x0f,0x84,0x6f,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x74,0x6a,0xe9,0xb3,0x02,0x00,0x00,0x81,0xf9,0x10,0x00,0x08,0x80,0x0f,0x84,0x96,0x00,0x00,0x00,0x81,0xf9,0x20,0x00,0x20,0x80,0x0f,0x84,0x05,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x80,0x80,0x0f,0x84,0x6f,0x01,0x00,0x00,0xe9,0x8a,0x02,0x00,0x00,0x48,0xba,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x54,0xa7,0xbe,0x5e,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x95,0xe0,0xc1,0x5e,0x0f,0xb6,0x56,0x08,0x88,0x50,0x08,0xe9,0x51,0x02,0x00,0x00,0x48,0xba,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x18,0xa7,0xbe,0x5e,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x59,0xe0,0xc1,0x5e,0x48,0x0f,0xbe,0x56,0x08,0x88,0x50,0x08,0xe9,0x14,0x02,0x00,0x00,0x48,0xba,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xdb,0xa6,0xbe,0x5e,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x1c,0xe0,0xc1,0x5e,0x48,0x0f,0xbf,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0xd6,0x01,0x00,0x00,0x48,0xba,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x9d,0xa6,0xbe,0x5e,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xde,0xdf,0xc1,0x5e,0x0f,0xb7,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0x99,0x01,0x00,0x00,0x48,0xba,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x60,0xa6,0xbe,0x5e,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa1,0xdf,0xc1,0x5e,0x8b,0x56,0x08,0x89,0x50,0x08,0xe9,0x5e,0x01,0x00,0x00,0x48,0xba,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x25,0xa6,0xbe,0x5e,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x66,0xdf,0xc1,0x5e,0x8b,0x56,0x08,0x89,0x50,0x08,0xe9,0x23,0x01,0x00,0x00,0x48,0xba,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xea,0xa5,0xbe,0x5e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2b,0xdf,0xc1,0x5e,0x48,0x8b,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0xe6,0x00,0x00,0x00,0x48,0xba,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xad,0xa5,0xbe,0x5e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xee,0xde,0xc1,0x5e,0x48,0x8b,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0xa9,0x00,0x00,0x00,0x48,0xba,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x70,0xa5,0xbe,0x5e,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb1,0xde,0xc1,0x5e,0x48,0x8b,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc2,0x48,0x85,0xd2,0x7d,0x08,0xc5,0xfb,0x58,0x05,0x6f,0x00,0x00,0x00,0xc5,0xfb,0x5a,0xc0,0xc5,0xfa,0x11,0x40,0x08,0xeb,0x54,0x48,0xba,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x1b,0xa5,0xbe,0x5e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x5c,0xde,0xc1,0x5e,0x48,0x8b,0x56,0x08,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc2,0x48,0x85,0xd2,0x7d,0x08,0xc5,0xfb,0x58,0x05,0x1a,0x00,0x00,0x00,0xc5,0xfb,0x11,0x40,0x08,0xeb,0x03,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x20,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0011h ja short 0061h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0013h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
0019h ja short 0038h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001bh cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0021h je near ptr 00abh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0027h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002dh je near ptr 0162h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 2f 01 00 00}
0033h jmp near ptr 0335h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fd 02 00 00}
0038h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003eh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 01 00 00}
0044h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004ah je near ptr 0252h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 02 02 00 00}
0050h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0056h je near ptr 028fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 33 02 00 00}
005ch jmp near ptr 0335h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d4 02 00 00}
0061h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0067h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0069h cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
006fh je near ptr 02e4h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6f 02 00 00}
0075h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007bh je short 00e7h                          ; JE rel8 || 74 cb || encoded[2]{74 6a}
007dh jmp near ptr 0335h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b3 02 00 00}
0082h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0088h je near ptr 0124h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 96 00 00 00}
008eh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0094h je near ptr 019fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 05 01 00 00}
009ah cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a0h je near ptr 0215h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6f 01 00 00}
00a6h jmp near ptr 0335h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8a 02 00 00}
00abh mov rdx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 70 c7 f7 7f 00 00}
00b5h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b8h je short 00cch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00bdh mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
00c7h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 a7 be 5e}
00cch mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00d6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 e0 c1 5e}
00dbh movzx edx,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 56 08}
00dfh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e2h jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 51 02 00 00}
00e7h mov rdx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 70 c7 f7 7f 00 00}
00f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f4h je short 0108h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f9h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
0103h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 a7 be 5e}
0108h mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 e0 c1 5e}
0117h movsx rdx,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 56 08}
011ch mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
011fh jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 14 02 00 00}
0124h mov rdx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 70 c7 f7 7f 00 00}
012eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0131h je short 0145h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0133h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0136h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
0140h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db a6 be 5e}
0145h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
014fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c e0 c1 5e}
0154h movsx rdx,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 56 08}
0159h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015dh jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d6 01 00 00}
0162h mov rdx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 70 c7 f7 7f 00 00}
016ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
016fh je short 0183h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0171h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0174h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
017eh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d a6 be 5e}
0183h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
018dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de df c1 5e}
0192h movzx edx,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 56 08}
0196h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019ah jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 01 00 00}
019fh mov rdx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 70 c7 f7 7f 00 00}
01a9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ach je short 01c0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b1h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
01bbh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 a6 be 5e}
01c0h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01cah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 df c1 5e}
01cfh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
01d2h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01d5h jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5e 01 00 00}
01dah mov rdx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 70 c7 f7 7f 00 00}
01e4h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01e7h je short 01fbh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ech mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
01f6h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 a6 be 5e}
01fbh mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
0205h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 df c1 5e}
020ah mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
020dh mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0210h jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 23 01 00 00}
0215h mov rdx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 70 c7 f7 7f 00 00}
021fh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0222h je short 0236h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0224h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0227h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
0231h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea a5 be 5e}
0236h mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0240h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b df c1 5e}
0245h mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
0249h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
024dh jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e6 00 00 00}
0252h mov rdx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 70 c7 f7 7f 00 00}
025ch cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
025fh je short 0273h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0261h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0264h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
026eh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad a5 be 5e}
0273h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
027dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee de c1 5e}
0282h mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
0286h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
028ah jmp near ptr 0338h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a9 00 00 00}
028fh mov rdx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 70 c7 f7 7f 00 00}
0299h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
029ch je short 02b0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
029eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a1h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
02abh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 a5 be 5e}
02b0h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02bah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 de c1 5e}
02bfh mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
02c3h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
02c7h vcvtsi2sd xmm0,xmm0,rdx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c2}
02cch test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
02cfh jge short 02d9h                         ; JGE rel8 || 7D cb || encoded[2]{7d 08}
02d1h vaddsd xmm0,xmm0,qword ptr [rip+6fh]    ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 6f 00 00 00}
02d9h vcvtsd2ss xmm0,xmm0,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 fb 5a c0}
02ddh vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02e2h jmp short 0338h                         ; JMP rel8 || EB cb || encoded[2]{eb 54}
02e4h mov rdx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 70 c7 f7 7f 00 00}
02eeh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02f1h je short 0305h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f6h mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
0300h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b a5 be 5e}
0305h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
030fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c de c1 5e}
0314h mov rdx,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 56 08}
0318h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
031ch vcvtsi2sd xmm0,xmm0,rdx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c2}
0321h test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0324h jge short 032eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 08}
0326h vaddsd xmm0,xmm0,qword ptr [rip+1ah]    ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 1a 00 00 00}
032eh vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0333h jmp short 0338h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0335h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0338h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
033ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
033dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object from32f(NumericKind:uint dst, object src), hex://root/Converter?from32f#from32f_(NumericKind~32u,object)
; from32f_(NumericKind~32u,object)[807] = {0x57,0x56,0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0xf2,0x81,0xf9,0x20,0x00,0x00,0x42,0x77,0x4e,0x81,0xf9,0x10,0x00,0x04,0x20,0x77,0x1d,0x81,0xf9,0x08,0x00,0x01,0x20,0x0f,0x84,0x84,0x00,0x00,0x00,0x81,0xf9,0x10,0x00,0x04,0x20,0x0f,0x84,0x30,0x01,0x00,0x00,0xe9,0xe4,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x10,0x20,0x0f,0x84,0x9a,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x40,0x20,0x0f,0x84,0x0b,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x00,0x42,0x0f,0x84,0x48,0x02,0x00,0x00,0xe9,0xbb,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x77,0x19,0x81,0xf9,0x40,0x00,0x00,0x44,0x0f,0x84,0x6b,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x74,0x6b,0xe9,0x9a,0x02,0x00,0x00,0x81,0xf9,0x10,0x00,0x08,0x80,0x0f,0x84,0x97,0x00,0x00,0x00,0x81,0xf9,0x20,0x00,0x20,0x80,0x0f,0x84,0x07,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x80,0x80,0x0f,0x84,0x76,0x01,0x00,0x00,0xe9,0x71,0x02,0x00,0x00,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe3,0xa3,0xbe,0x5e,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x24,0xdd,0xc1,0x5e,0xc5,0xfa,0x2c,0x56,0x08,0x88,0x50,0x08,0xe9,0x37,0x02,0x00,0x00,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa6,0xa3,0xbe,0x5e,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe7,0xdc,0xc1,0x5e,0xc5,0xfa,0x2c,0x56,0x08,0x88,0x50,0x08,0xe9,0xfa,0x01,0x00,0x00,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x69,0xa3,0xbe,0x5e,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xaa,0xdc,0xc1,0x5e,0xc5,0xfa,0x2c,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0xbc,0x01,0x00,0x00,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2b,0xa3,0xbe,0x5e,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x6c,0xdc,0xc1,0x5e,0xc5,0xfa,0x2c,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0x7e,0x01,0x00,0x00,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xed,0xa2,0xbe,0x5e,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2e,0xdc,0xc1,0x5e,0xc5,0xfa,0x2c,0x56,0x08,0x89,0x50,0x08,0xe9,0x41,0x01,0x00,0x00,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb0,0xa2,0xbe,0x5e,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xf1,0xdb,0xc1,0x5e,0xc4,0xe1,0xfa,0x2c,0x56,0x08,0x89,0x50,0x08,0xe9,0x03,0x01,0x00,0x00,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x72,0xa2,0xbe,0x5e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xb3,0xdb,0xc1,0x5e,0xc4,0xe1,0xfa,0x2c,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0xc4,0x00,0x00,0x00,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x33,0xa2,0xbe,0x5e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x74,0xdb,0xc1,0x5e,0x48,0x8b,0xf8,0xc5,0xfa,0x5a,0x46,0x08,0xe8,0xf7,0x47,0xd4,0x5e,0x48,0x89,0x47,0x08,0x48,0x8b,0xc7,0xe9,0x7b,0x00,0x00,0x00,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xea,0xa1,0xbe,0x5e,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2b,0xdb,0xc1,0x5e,0xc5,0xfa,0x10,0x46,0x08,0xc5,0xfa,0x11,0x40,0x08,0xeb,0x3f,0x48,0xba,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xae,0xa1,0xbe,0x5e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xef,0xda,0xc1,0x5e,0xc5,0xfa,0x5a,0x46,0x08,0xc5,0xfb,0x11,0x40,0x08,0xeb,0x03,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000ch cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0012h ja short 0062h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0014h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
001ah ja short 0039h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001ch cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0022h je near ptr 00ach                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0028h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002eh je near ptr 0164h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 30 01 00 00}
0034h jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e4 02 00 00}
0039h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003fh je near ptr 01dfh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 9a 01 00 00}
0045h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004bh je near ptr 025ch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 0b 02 00 00}
0051h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0057h je near ptr 02a5h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 48 02 00 00}
005dh jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 02 00 00}
0062h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0068h ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
006ah cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
0070h je near ptr 02e1h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6b 02 00 00}
0076h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007ch je short 00e9h                          ; JE rel8 || 74 cb || encoded[2]{74 6b}
007eh jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9a 02 00 00}
0083h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0089h je near ptr 0126h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 97 00 00 00}
008fh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0095h je near ptr 01a2h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 07 01 00 00}
009bh cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a1h je near ptr 021dh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 76 01 00 00}
00a7h jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 02 00 00}
00ach mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
00b6h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b9h je short 00cdh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00beh mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
00c8h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a3 be 5e}
00cdh mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00d7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 dd c1 5e}
00dch vcvttss2si edx,dword ptr [rsi+8]        ; VCVTTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2C /r || encoded[5]{c5 fa 2c 56 08}
00e1h mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e4h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 37 02 00 00}
00e9h mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
00f3h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f6h je short 010ah                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00fbh mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
0105h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 a3 be 5e}
010ah mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0114h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 dc c1 5e}
0119h vcvttss2si edx,dword ptr [rsi+8]        ; VCVTTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2C /r || encoded[5]{c5 fa 2c 56 08}
011eh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
0121h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fa 01 00 00}
0126h mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
0130h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0133h je short 0147h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0135h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0138h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
0142h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a3 be 5e}
0147h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
0151h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa dc c1 5e}
0156h vcvttss2si edx,dword ptr [rsi+8]        ; VCVTTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2C /r || encoded[5]{c5 fa 2c 56 08}
015bh mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015fh jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bc 01 00 00}
0164h mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
016eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0171h je short 0185h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0173h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0176h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
0180h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b a3 be 5e}
0185h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
018fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c dc c1 5e}
0194h vcvttss2si edx,dword ptr [rsi+8]        ; VCVTTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2C /r || encoded[5]{c5 fa 2c 56 08}
0199h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019dh jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 01 00 00}
01a2h mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
01ach cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01afh je short 01c3h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b4h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
01beh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed a2 be 5e}
01c3h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01cdh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e dc c1 5e}
01d2h vcvttss2si edx,dword ptr [rsi+8]        ; VCVTTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2C /r || encoded[5]{c5 fa 2c 56 08}
01d7h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01dah jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 41 01 00 00}
01dfh mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
01e9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ech je short 0200h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01f1h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
01fbh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 a2 be 5e}
0200h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
020ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 db c1 5e}
020fh vcvttss2si rdx,dword ptr [rsi+8]        ; VCVTTSS2SI r64, xmm1/m32 || VEX.LIG.F3.0F.W1 2C /r || encoded[6]{c4 e1 fa 2c 56 08}
0215h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0218h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 01 00 00}
021dh mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
0227h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
022ah je short 023eh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
022ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
022fh mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
0239h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 a2 be 5e}
023eh mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 db c1 5e}
024dh vcvttss2si rdx,dword ptr [rsi+8]        ; VCVTTSS2SI r64, xmm1/m32 || VEX.LIG.F3.0F.W1 2C /r || encoded[6]{c4 e1 fa 2c 56 08}
0253h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0257h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c4 00 00 00}
025ch mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
0266h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0269h je short 027dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
026bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
026eh mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
0278h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 a2 be 5e}
027dh mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
0287h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 db c1 5e}
028ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
028fh vcvtss2sd xmm0,xmm0,dword ptr [rsi+8]   ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[5]{c5 fa 5a 46 08}
0294h call 7ff82738d940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 47 d4 5e}
0299h mov [rdi+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 08}
029dh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
02a0h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 00 00 00}
02a5h mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
02afh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02b2h je short 02c6h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02b7h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02c1h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea a1 be 5e}
02c6h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b db c1 5e}
02d5h vmovss xmm0,dword ptr [rsi+8]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 46 08}
02dah vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02dfh jmp short 0320h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
02e1h mov rdx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 70 c7 f7 7f 00 00}
02ebh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02eeh je short 0302h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f3h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02fdh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae a1 be 5e}
0302h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
030ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef da c1 5e}
0311h vcvtss2sd xmm0,xmm0,dword ptr [rsi+8]   ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[5]{c5 fa 5a 46 08}
0316h vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
031bh jmp short 0320h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
031dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0320h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0324h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0325h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0326h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object from64f(NumericKind:uint dst, object src), hex://root/Converter?from64f#from64f_(NumericKind~32u,object)
; from64f_(NumericKind~32u,object)[807] = {0x57,0x56,0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0xf2,0x81,0xf9,0x20,0x00,0x00,0x42,0x77,0x4e,0x81,0xf9,0x10,0x00,0x04,0x20,0x77,0x1d,0x81,0xf9,0x08,0x00,0x01,0x20,0x0f,0x84,0x84,0x00,0x00,0x00,0x81,0xf9,0x10,0x00,0x04,0x20,0x0f,0x84,0x30,0x01,0x00,0x00,0xe9,0xe4,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x10,0x20,0x0f,0x84,0x9a,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x40,0x20,0x0f,0x84,0x0b,0x02,0x00,0x00,0x81,0xf9,0x20,0x00,0x00,0x42,0x0f,0x84,0x48,0x02,0x00,0x00,0xe9,0xbb,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x77,0x19,0x81,0xf9,0x40,0x00,0x00,0x44,0x0f,0x84,0x6b,0x02,0x00,0x00,0x81,0xf9,0x08,0x00,0x02,0x80,0x74,0x6b,0xe9,0x9a,0x02,0x00,0x00,0x81,0xf9,0x10,0x00,0x08,0x80,0x0f,0x84,0x97,0x00,0x00,0x00,0x81,0xf9,0x20,0x00,0x20,0x80,0x0f,0x84,0x07,0x01,0x00,0x00,0x81,0xf9,0x40,0x00,0x80,0x80,0x0f,0x84,0x76,0x01,0x00,0x00,0xe9,0x71,0x02,0x00,0x00,0x48,0xba,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x93,0xa0,0xbe,0x5e,0x48,0xb9,0x58,0x77,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xd4,0xd9,0xc1,0x5e,0xc5,0xfb,0x2c,0x56,0x08,0x88,0x50,0x08,0xe9,0x37,0x02,0x00,0x00,0x48,0xba,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x56,0xa0,0xbe,0x5e,0x48,0xb9,0x68,0x6f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x97,0xd9,0xc1,0x5e,0xc5,0xfb,0x2c,0x56,0x08,0x88,0x50,0x08,0xe9,0xfa,0x01,0x00,0x00,0x48,0xba,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x19,0xa0,0xbe,0x5e,0x48,0xb9,0x48,0x7f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x5a,0xd9,0xc1,0x5e,0xc5,0xfb,0x2c,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0xbc,0x01,0x00,0x00,0x48,0xba,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xdb,0x9f,0xbe,0x5e,0x48,0xb9,0x38,0x87,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x1c,0xd9,0xc1,0x5e,0xc5,0xfb,0x2c,0x56,0x08,0x66,0x89,0x50,0x08,0xe9,0x7e,0x01,0x00,0x00,0x48,0xba,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x9d,0x9f,0xbe,0x5e,0x48,0xb9,0x08,0x8f,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xde,0xd8,0xc1,0x5e,0xc5,0xfb,0x2c,0x56,0x08,0x89,0x50,0x08,0xe9,0x41,0x01,0x00,0x00,0x48,0xba,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x60,0x9f,0xbe,0x5e,0x48,0xb9,0xd8,0x96,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xa1,0xd8,0xc1,0x5e,0xc4,0xe1,0xfb,0x2c,0x56,0x08,0x89,0x50,0x08,0xe9,0x03,0x01,0x00,0x00,0x48,0xba,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x22,0x9f,0xbe,0x5e,0x48,0xb9,0xa8,0x9e,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x63,0xd8,0xc1,0x5e,0xc4,0xe1,0xfb,0x2c,0x56,0x08,0x48,0x89,0x50,0x08,0xe9,0xc4,0x00,0x00,0x00,0x48,0xba,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xe3,0x9e,0xbe,0x5e,0x48,0xb9,0x78,0xa6,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x24,0xd8,0xc1,0x5e,0x48,0x8b,0xf8,0xc5,0xfb,0x10,0x46,0x08,0xe8,0xa7,0x44,0xd4,0x5e,0x48,0x89,0x47,0x08,0x48,0x8b,0xc7,0xe9,0x7b,0x00,0x00,0x00,0x48,0xba,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x9a,0x9e,0xbe,0x5e,0x48,0xb9,0x58,0xaf,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xdb,0xd7,0xc1,0x5e,0xc5,0xfb,0x5a,0x46,0x08,0xc5,0xfa,0x11,0x40,0x08,0xeb,0x3f,0x48,0xba,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x39,0x16,0x74,0x12,0x48,0x8b,0xd6,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x5e,0x9e,0xbe,0x5e,0x48,0xb9,0x38,0xb8,0x70,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x9f,0xd7,0xc1,0x5e,0xc5,0xfb,0x10,0x46,0x08,0xc5,0xfb,0x11,0x40,0x08,0xeb,0x03,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000ch cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0012h ja short 0062h                          ; JA rel8 || 77 cb || encoded[2]{77 4e}
0014h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
001ah ja short 0039h                          ; JA rel8 || 77 cb || encoded[2]{77 1d}
001ch cmp ecx,20010008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 01 20}
0022h je near ptr 00ach                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 84 00 00 00}
0028h cmp ecx,20040010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 04 20}
002eh je near ptr 0164h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 30 01 00 00}
0034h jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e4 02 00 00}
0039h cmp ecx,20100020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 10 20}
003fh je near ptr 01dfh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 9a 01 00 00}
0045h cmp ecx,20400040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 40 20}
004bh je near ptr 025ch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 0b 02 00 00}
0051h cmp ecx,42000020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 00 42}
0057h je near ptr 02a5h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 48 02 00 00}
005dh jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 02 00 00}
0062h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
0068h ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
006ah cmp ecx,44000040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 00 44}
0070h je near ptr 02e1h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6b 02 00 00}
0076h cmp ecx,80020008h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 08 00 02 80}
007ch je short 00e9h                          ; JE rel8 || 74 cb || encoded[2]{74 6b}
007eh jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9a 02 00 00}
0083h cmp ecx,80080010h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 10 00 08 80}
0089h je near ptr 0126h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 97 00 00 00}
008fh cmp ecx,80200020h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 20 00 20 80}
0095h je near ptr 01a2h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 07 01 00 00}
009bh cmp ecx,80800040h                       ; CMP r/m32, imm32 || o32 81 /7 id || encoded[6]{81 f9 40 00 80 80}
00a1h je near ptr 021dh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 76 01 00 00}
00a7h jmp near ptr 031dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 02 00 00}
00ach mov rdx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 70 c7 f7 7f 00 00}
00b6h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00b9h je short 00cdh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00beh mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
00c8h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 a0 be 5e}
00cdh mov rcx,7ff7c7707758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 70 c7 f7 7f 00 00}
00d7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 d9 c1 5e}
00dch vcvttsd2si edx,qword ptr [rsi+8]        ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[5]{c5 fb 2c 56 08}
00e1h mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
00e4h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 37 02 00 00}
00e9h mov rdx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 70 c7 f7 7f 00 00}
00f3h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
00f6h je short 010ah                          ; JE rel8 || 74 cb || encoded[2]{74 12}
00f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00fbh mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
0105h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 a0 be 5e}
010ah mov rcx,7ff7c7706f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 70 c7 f7 7f 00 00}
0114h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 d9 c1 5e}
0119h vcvttsd2si edx,qword ptr [rsi+8]        ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[5]{c5 fb 2c 56 08}
011eh mov [rax+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 50 08}
0121h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fa 01 00 00}
0126h mov rdx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 70 c7 f7 7f 00 00}
0130h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0133h je short 0147h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0135h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0138h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
0142h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a0 be 5e}
0147h mov rcx,7ff7c7707f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 70 c7 f7 7f 00 00}
0151h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a d9 c1 5e}
0156h vcvttsd2si edx,qword ptr [rsi+8]        ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[5]{c5 fb 2c 56 08}
015bh mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
015fh jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bc 01 00 00}
0164h mov rdx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 70 c7 f7 7f 00 00}
016eh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0171h je short 0185h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0173h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0176h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
0180h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 9f be 5e}
0185h mov rcx,7ff7c7708738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 70 c7 f7 7f 00 00}
018fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c d9 c1 5e}
0194h vcvttsd2si edx,qword ptr [rsi+8]        ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[5]{c5 fb 2c 56 08}
0199h mov [rax+8],dx                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 50 08}
019dh jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 01 00 00}
01a2h mov rdx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 70 c7 f7 7f 00 00}
01ach cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01afh je short 01c3h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01b4h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
01beh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 9f be 5e}
01c3h mov rcx,7ff7c7708f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 70 c7 f7 7f 00 00}
01cdh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de d8 c1 5e}
01d2h vcvttsd2si edx,qword ptr [rsi+8]        ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[5]{c5 fb 2c 56 08}
01d7h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
01dah jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 41 01 00 00}
01dfh mov rdx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 70 c7 f7 7f 00 00}
01e9h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
01ech je short 0200h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
01eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01f1h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
01fbh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 9f be 5e}
0200h mov rcx,7ff7c77096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 70 c7 f7 7f 00 00}
020ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 d8 c1 5e}
020fh vcvttsd2si rdx,qword ptr [rsi+8]        ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[6]{c4 e1 fb 2c 56 08}
0215h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0218h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 01 00 00}
021dh mov rdx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 70 c7 f7 7f 00 00}
0227h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
022ah je short 023eh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
022ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
022fh mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
0239h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 9f be 5e}
023eh mov rcx,7ff7c7709ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 70 c7 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 d8 c1 5e}
024dh vcvttsd2si rdx,qword ptr [rsi+8]        ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[6]{c4 e1 fb 2c 56 08}
0253h mov [rax+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 50 08}
0257h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c4 00 00 00}
025ch mov rdx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 70 c7 f7 7f 00 00}
0266h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0269h je short 027dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
026bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
026eh mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
0278h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 9e be 5e}
027dh mov rcx,7ff7c770a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 70 c7 f7 7f 00 00}
0287h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d8 c1 5e}
028ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
028fh vmovsd xmm0,qword ptr [rsi+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 46 08}
0294h call 7ff82738d940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 44 d4 5e}
0299h mov [rdi+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 08}
029dh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
02a0h jmp near ptr 0320h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 00 00 00}
02a5h mov rdx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 70 c7 f7 7f 00 00}
02afh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02b2h je short 02c6h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02b7h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
02c1h call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 9e be 5e}
02c6h mov rcx,7ff7c770af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 70 c7 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db d7 c1 5e}
02d5h vcvtsd2ss xmm0,xmm0,qword ptr [rsi+8]   ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[5]{c5 fb 5a 46 08}
02dah vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
02dfh jmp short 0320h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
02e1h mov rdx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 70 c7 f7 7f 00 00}
02ebh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02eeh je short 0302h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f3h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
02fdh call 7ff827233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 9e be 5e}
0302h mov rcx,7ff7c770b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 70 c7 f7 7f 00 00}
030ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f d7 c1 5e}
0311h vmovsd xmm0,qword ptr [rsi+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 46 08}
0316h vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
031bh jmp short 0320h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
031dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0320h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0324h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0325h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0326h ret                                     ; RET || C3 || encoded[1]{c3}
