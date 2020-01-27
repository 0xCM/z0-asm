------------------------------------------------------------------------------------------------------------------------
; bit positive(sbyte a)
; positive_8i[18] = {0f 1f 44 00 00 48 0f be c1 85 c0 0f 9f c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(byte a)
; positive_8u[14] = {0f 1f 44 00 00 84 c9 0f 97 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,cl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c9}
0007h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(short a)
; positive_16i[18] = {0f 1f 44 00 00 48 0f bf c1 85 c0 0f 9f c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(ushort a)
; positive_16u[17] = {0f 1f 44 00 00 0f b7 c1 85 c0 0f 9f c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(int a)
; positive_32i[14] = {0f 1f 44 00 00 85 c9 0f 9f c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(uint a)
; positive_32u[14] = {0f 1f 44 00 00 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(long a)
; positive_64i[15] = {0f 1f 44 00 00 48 85 c9 0f 9f c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(ulong a)
; positive_64u[15] = {0f 1f 44 00 00 48 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(float a)
; positive_32f[20] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f8 2e c1 0f 97 c0 0f b6 c0 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(double a)
; positive_64f[20] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f9 2e c1 0f 97 c0 0f b6 c0 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}