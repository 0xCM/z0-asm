------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(double src)
; convert64f~convert_g64f[14] = {c5 f8 77 66 90 c4 e1 fb 2c c0 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(double src)
; convert64f~convert_g64f[14] = {c5 f8 77 66 90 c5 fb 2c c0 48 0f be c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
0009h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(double src)
; convert64f~convert_g64f[14] = {c5 f8 77 66 90 c4 e1 fb 2c c0 0f b7 c0 c3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(double src)
; convert64f~convert_g64f[18] = {c5 f8 77 66 90 c5 fb 2c c0 48 0f be c0 48 0f bf c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
0009h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(double src)
; convert64f~convert_g64f[11] = {c5 f8 77 66 90 c4 e1 fb 2c c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(double src)
; convert64f~convert_g64f[10] = {c5 f8 77 66 90 c5 fb 2c c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si eax,xmm0                     ; VCVTTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2C /r || encoded[4]{c5 fb 2c c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(double src)
; convert64f~convert_g64f[11] = {c5 f8 77 66 90 c4 e1 fb 2c c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(double src)
; convert64f~convert_g64f[11] = {c5 f8 77 66 90 c4 e1 fb 2c c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvttsd2si rax,xmm0                     ; VCVTTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2C /r || encoded[5]{c4 e1 fb 2c c0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(double src)
; convert64f~convert_g64f[10] = {c5 f8 77 66 90 c5 fb 5a c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtsd2ss xmm0,xmm0,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 fb 5a c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(double src)
; convert64f~convert_g64f[6] = {c5 f8 77 66 90 c3}
; TermCode = CTC_RET_Zx3
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h ret                                     ; RET || C3 || encoded[1]{c3}
