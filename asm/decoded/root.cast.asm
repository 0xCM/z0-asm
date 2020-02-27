------------------------------------------------------------------------------------------------------------------------
; byte to<byte>(sbyte src), hex://root/Cast?to#to_g[8u](8i)
; to_g[8u](8i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte to<sbyte>(sbyte src), hex://root/Cast?to#to_g[8i](8i)
; to_g[8i](8i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort to<ushort>(sbyte src), hex://root/Cast?to#to_g[16u](8i)
; to_g[16u](8i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short to<short>(sbyte src), hex://root/Cast?to#to_g[16i](8i)
; to_g[16i](8i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint to<uint>(sbyte src), hex://root/Cast?to#to_g[32u](8i)
; to_g[32u](8i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to<int>(sbyte src), hex://root/Cast?to#to_g[32i](8i)
; to_g[32i](8i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong to<ulong>(sbyte src), hex://root/Cast?to#to_g[64u](8i)
; to_g[64u](8i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x63,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to<long>(sbyte src), hex://root/Cast?to#to_g[64i](8i)
; to_g[64i](8i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x63,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float to<float>(sbyte src), hex://root/Cast?to#to_g[32f](8i)
; to_g[32f](8i)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x0f,0xbe,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000dh vcvtsi2ss xmm0,xmm0,eax                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double to<double>(sbyte src), hex://root/Cast?to#to_g[64f](8i)
; to_g[64f](8i)[22] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x0f,0xbe,0xc1,0x48,0x63,0xc0,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0010h vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte to<byte>(byte src), hex://root/Cast?to#to_g[8u](8u)
; to_g[8u](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte to<sbyte>(byte src), hex://root/Cast?to#to_g[8i](8u)
; to_g[8i](8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort to<ushort>(byte src), hex://root/Cast?to#to_g[16u](8u)
; to_g[16u](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short to<short>(byte src), hex://root/Cast?to#to_g[16i](8u)
; to_g[16i](8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint to<uint>(byte src), hex://root/Cast?to#to_g[32u](8u)
; to_g[32u](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to<int>(byte src), hex://root/Cast?to#to_g[32i](8u)
; to_g[32i](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong to<ulong>(byte src), hex://root/Cast?to#to_g[64u](8u)
; to_g[64u](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to<long>(byte src), hex://root/Cast?to#to_g[64i](8u)
; to_g[64i](8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float to<float>(byte src), hex://root/Cast?to#to_g[32f](8u)
; to_g[32f](8u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x0f,0xb6,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000ch vcvtsi2ss xmm0,xmm0,eax                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double to<double>(byte src), hex://root/Cast?to#to_g[64f](8u)
; to_g[64f](8u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x0f,0xb6,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000ch vcvtsi2sd xmm0,xmm0,eax                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte to<byte>(short src), hex://root/Cast?to#to_g[8u](16i)
; to_g[8u](16i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte to<sbyte>(short src), hex://root/Cast?to#to_g[8i](16i)
; to_g[8i](16i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort to<ushort>(short src), hex://root/Cast?to#to_g[16u](16i)
; to_g[16u](16i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short to<short>(short src), hex://root/Cast?to#to_g[16i](16i)
; to_g[16i](16i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint to<uint>(short src), hex://root/Cast?to#to_g[32u](16i)
; to_g[32u](16i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to<int>(short src), hex://root/Cast?to#to_g[32i](16i)
; to_g[32i](16i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong to<ulong>(short src), hex://root/Cast?to#to_g[64u](16i)
; to_g[64u](16i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x63,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to<long>(short src), hex://root/Cast?to#to_g[64i](16i)
; to_g[64i](16i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x63,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float to<float>(short src), hex://root/Cast?to#to_g[32f](16i)
; to_g[32f](16i)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x0f,0xbf,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000dh vcvtsi2ss xmm0,xmm0,eax                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double to<double>(short src), hex://root/Cast?to#to_g[64f](16i)
; to_g[64f](16i)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x0f,0xbf,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000dh vcvtsi2sd xmm0,xmm0,eax                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte to<byte>(ushort src), hex://root/Cast?to#to_g[8u](16u)
; to_g[8u](16u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte to<sbyte>(ushort src), hex://root/Cast?to#to_g[8i](16u)
; to_g[8i](16u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort to<ushort>(ushort src), hex://root/Cast?to#to_g[16u](16u)
; to_g[16u](16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short to<short>(ushort src), hex://root/Cast?to#to_g[16i](16u)
; to_g[16i](16u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint to<uint>(ushort src), hex://root/Cast?to#to_g[32u](16u)
; to_g[32u](16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to<int>(ushort src), hex://root/Cast?to#to_g[32i](16u)
; to_g[32i](16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong to<ulong>(ushort src), hex://root/Cast?to#to_g[64u](16u)
; to_g[64u](16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to<long>(ushort src), hex://root/Cast?to#to_g[64i](16u)
; to_g[64i](16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float to<float>(ushort src), hex://root/Cast?to#to_g[32f](16u)
; to_g[32f](16u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x0f,0xb7,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000ch vcvtsi2ss xmm0,xmm0,eax                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double to<double>(ushort src), hex://root/Cast?to#to_g[64f](16u)
; to_g[64f](16u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x0f,0xb7,0xc1,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000ch vcvtsi2sd xmm0,xmm0,eax                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte to<byte>(int src), hex://root/Cast?to#to_g[8u](32i)
; to_g[8u](32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte to<sbyte>(int src), hex://root/Cast?to#to_g[8i](32i)
; to_g[8i](32i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort to<ushort>(int src), hex://root/Cast?to#to_g[16u](32i)
; to_g[16u](32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short to<short>(int src), hex://root/Cast?to#to_g[16i](32i)
; to_g[16i](32i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint to<uint>(int src), hex://root/Cast?to#to_g[32u](32i)
; to_g[32u](32i)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to<int>(int src), hex://root/Cast?to#to_g[32i](32i)
; to_g[32i](32i)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong to<ulong>(int src), hex://root/Cast?to#to_g[64u](32i)
; to_g[64u](32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to<long>(int src), hex://root/Cast?to#to_g[64i](32i)
; to_g[64i](32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float to<float>(int src), hex://root/Cast?to#to_g[32f](32i)
; to_g[32f](32i)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2ss xmm0,xmm0,ecx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double to<double>(int src), hex://root/Cast?to#to_g[64f](32i)
; to_g[64f](32i)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2sd xmm0,xmm0,ecx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte to<byte>(uint src), hex://root/Cast?to#to_g[8u](32u)
; to_g[8u](32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte to<sbyte>(uint src), hex://root/Cast?to#to_g[8i](32u)
; to_g[8i](32u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort to<ushort>(uint src), hex://root/Cast?to#to_g[16u](32u)
; to_g[16u](32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short to<short>(uint src), hex://root/Cast?to#to_g[16i](32u)
; to_g[16i](32u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint to<uint>(uint src), hex://root/Cast?to#to_g[32u](32u)
; to_g[32u](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to<int>(uint src), hex://root/Cast?to#to_g[32i](32u)
; to_g[32i](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong to<ulong>(uint src), hex://root/Cast?to#to_g[64u](32u)
; to_g[64u](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to<long>(uint src), hex://root/Cast?to#to_g[64i](32u)
; to_g[64i](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float to<float>(uint src), hex://root/Cast?to#to_g[32f](32u)
; to_g[32f](32u)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2ss xmm0,xmm0,ecx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double to<double>(uint src), hex://root/Cast?to#to_g[64f](32u)
; to_g[64f](32u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0x8b,0xc1,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000bh vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte to<byte>(long src), hex://root/Cast?to#to_g[8u](64i)
; to_g[8u](64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte to<sbyte>(long src), hex://root/Cast?to#to_g[8i](64i)
; to_g[8i](64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort to<ushort>(long src), hex://root/Cast?to#to_g[16u](64i)
; to_g[16u](64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short to<short>(long src), hex://root/Cast?to#to_g[16i](64i)
; to_g[16i](64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint to<uint>(long src), hex://root/Cast?to#to_g[32u](64i)
; to_g[32u](64i)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to<int>(long src), hex://root/Cast?to#to_g[32i](64i)
; to_g[32i](64i)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong to<ulong>(long src), hex://root/Cast?to#to_g[64u](64i)
; to_g[64u](64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to<long>(long src), hex://root/Cast?to#to_g[64i](64i)
; to_g[64i](64i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float to<float>(long src), hex://root/Cast?to#to_g[32f](64i)
; to_g[32f](64i)[15] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfa,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2ss xmm0,xmm0,rcx                 ; VCVTSI2SS xmm1, xmm2, r/m64 || VEX.LIG.F3.0F.W1 2A /r || encoded[5]{c4 e1 fa 2a c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double to<double>(long src), hex://root/Cast?to#to_g[64f](64i)
; to_g[64f](64i)[15] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2sd xmm0,xmm0,rcx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte to<byte>(ulong src), hex://root/Cast?to#to_g[8u](64u)
; to_g[8u](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte to<sbyte>(ulong src), hex://root/Cast?to#to_g[8i](64u)
; to_g[8i](64u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort to<ushort>(ulong src), hex://root/Cast?to#to_g[16u](64u)
; to_g[16u](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short to<short>(ulong src), hex://root/Cast?to#to_g[16i](64u)
; to_g[16i](64u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint to<uint>(ulong src), hex://root/Cast?to#to_g[32u](64u)
; to_g[32u](64u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to<int>(ulong src), hex://root/Cast?to#to_g[32i](64u)
; to_g[32i](64u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong to<ulong>(ulong src), hex://root/Cast?to#to_g[64u](64u)
; to_g[64u](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to<long>(ulong src), hex://root/Cast?to#to_g[64i](64u)
; to_g[64i](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float to<float>(ulong src), hex://root/Cast?to#to_g[32f](64u)
; to_g[32f](64u)[32] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc1,0x48,0x85,0xc9,0x7d,0x08,0xc5,0xfb,0x58,0x05,0x0d,0x00,0x00,0x00,0xc5,0xfb,0x5a,0xc0,0xc3}
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
; double to<double>(ulong src), hex://root/Cast?to#to_g[64f](64u)
; to_g[64f](64u)[15] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2sd xmm0,xmm0,rcx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte to<byte>(float src), hex://root/Cast?to#to_g[8u](32f)
; to_g[8u](32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc4,0xe1,0xfb,0x2c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte to<sbyte>(float src), hex://root/Cast?to#to_g[8i](32f)
; to_g[8i](32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc5,0xfb,0x2c,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort to<ushort>(float src), hex://root/Cast?to#to_g[16u](32f)
; to_g[16u](32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc4,0xe1,0xfb,0x2c,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short to<short>(float src), hex://root/Cast?to#to_g[16i](32f)
; to_g[16i](32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc5,0xfb,0x2c,0xc0,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint to<uint>(float src), hex://root/Cast?to#to_g[32u](32f)
; to_g[32u](32f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfa,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttss2si rax,xmm0                     ; VCVTTSS2SI r64, xmm1/m32 || VEX.LIG.F3.0F.W1 2C /r || encoded[5]{c4 e1 fa 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to<int>(float src), hex://root/Cast?to#to_g[32i](32f)
; to_g[32i](32f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc5,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong to<ulong>(float src), hex://root/Cast?to#to_g[64u](32f)
; to_g[64u](32f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfa,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttss2si rax,xmm0                     ; VCVTTSS2SI r64, xmm1/m32 || VEX.LIG.F3.0F.W1 2C /r || encoded[5]{c4 e1 fa 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to<long>(float src), hex://root/Cast?to#to_g[64i](32f)
; to_g[64i](32f)[15] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc4,0xe1,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float to<float>(float src), hex://root/Cast?to#to_g[32f](32f)
; to_g[32f](32f)[6] = {0xc5,0xf8,0x77,0x66,0x90,0xc3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double to<double>(float src), hex://root/Cast?to#to_g[64f](32f)
; to_g[64f](32f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte to<byte>(double src), hex://root/Cast?to#to_g[8u](64f)
; to_g[8u](64f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte to<sbyte>(double src), hex://root/Cast?to#to_g[8i](64f)
; to_g[8i](64f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x2c,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
0009h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort to<ushort>(double src), hex://root/Cast?to#to_g[16u](64f)
; to_g[16u](64f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2c,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short to<short>(double src), hex://root/Cast?to#to_g[16i](64f)
; to_g[16i](64f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x2c,0xc0,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
0009h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint to<uint>(double src), hex://root/Cast?to#to_g[32u](64f)
; to_g[32u](64f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to<int>(double src), hex://root/Cast?to#to_g[32i](64f)
; to_g[32i](64f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong to<ulong>(double src), hex://root/Cast?to#to_g[64u](64f)
; to_g[64u](64f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to<long>(double src), hex://root/Cast?to#to_g[64i](64f)
; to_g[64i](64f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2c,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float to<float>(double src), hex://root/Cast?to#to_g[32f](64f)
; to_g[32f](64f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x5a,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtsd2ss xmm0,xmm0,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 fb 5a c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double to<double>(double src), hex://root/Cast?to#to_g[64f](64f)
; to_g[64f](64f)[6] = {0xc5,0xf8,0x77,0x66,0x90,0xc3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; object ocast(object src, NumericKind:uint dst), hex://root/Cast?ocast#ocast_(object,NumericKind~32u)
; ocast_(object,NumericKind~32u)[322] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x8b,0xfa,0x48,0x85,0xf6,0x75,0x04,0x33,0xc9,0xeb,0x0b,0x48,0x8b,0xce,0xe8,0xf4,0xc2,0xb0,0x5e,0x48,0x8b,0xc8,0xe8,0x9c,0x1a,0x88,0x4d,0x83,0xc0,0xfb,0x83,0xf8,0x09,0x0f,0x87,0x08,0x01,0x00,0x00,0x8b,0xc8,0x48,0x8d,0x15,0x0f,0x01,0x00,0x00,0x8b,0x14,0x8a,0x48,0x8d,0x05,0xc8,0xff,0xff,0xff,0x48,0x03,0xd0,0xff,0xe2,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x30,0xc6,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x38,0xc6,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x40,0xc6,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x48,0xc6,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x50,0xc6,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x58,0xc6,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x60,0xc6,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x68,0xc6,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x70,0xc6,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x8b,0xcf,0x48,0x8b,0xd6,0x48,0xb8,0x78,0xc6,0x75,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x83,0xc4,0x28,0x5e,0x5f,0x48,0xff,0xe0,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
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
0017h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 c2 b0 5e}
001ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001fh call 7ff815f2bf80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 1a 88 4d}
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
004dh mov rax,7ff7c775c630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 c6 75 c7 f7 7f 00 00}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0060h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0062h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0065h mov rax,7ff7c775c638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 c6 75 c7 f7 7f 00 00}
006fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0078h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
007ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
007dh mov rax,7ff7c775c640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 c6 75 c7 f7 7f 00 00}
0087h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0090h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0092h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0095h mov rax,7ff7c775c648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 c6 75 c7 f7 7f 00 00}
009fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00a8h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00aah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00adh mov rax,7ff7c775c650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 c6 75 c7 f7 7f 00 00}
00b7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bbh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bdh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00c0h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h mov rax,7ff7c775c658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 c6 75 c7 f7 7f 00 00}
00cfh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00d3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d5h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00d8h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00dah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00ddh mov rax,7ff7c775c660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 c6 75 c7 f7 7f 00 00}
00e7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00ebh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ech pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00edh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00f0h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00f2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00f5h mov rax,7ff7c775c668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 c6 75 c7 f7 7f 00 00}
00ffh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0103h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0104h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0105h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0108h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
010ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
010dh mov rax,7ff7c775c670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 c6 75 c7 f7 7f 00 00}
0117h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
011bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
011dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0120h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0122h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0125h mov rax,7ff7c775c678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 c6 75 c7 f7 7f 00 00}
012fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0133h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0134h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0135h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0138h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
013bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0140h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0141h ret                                     ; RET || C3 || encoded[1]{c3}
